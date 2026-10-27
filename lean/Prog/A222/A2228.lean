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
import Seq.B000.C015
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C037
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C003
import Seq.B002.C004
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C001
import Seq.B008.C000
import Seq.B009.C000
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
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024

/-!
# A222800: Number of 7Xn 0..3 arrays with exactly floor(7Xn/2) elements unequal to at least one horizontal or antidiagonal neighbor, with new values introduced in row major 0..3 order.

The programs for A222800, there is no canonical definition to state claims against.
-/

/-! ## A222800.P12593310781010310210

`A222794(A167487(n+5))`
-/

namespace A222800.P12593310781010310210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222794 (A167487 (n + 5)).toNat

end

end A222800.P12593310781010310210

/-! ## A222800.P17307889816226753489

`A222794(eq[11, A066657(n)])`
-/

namespace A222800.P17307889816226753489
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222794 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222800.P17307889816226753489

/-! ## A222800.P6403119840815999703

`A222794(eq[8, A131818(n+1)])`
-/

namespace A222800.P6403119840815999703
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222794 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222800.P6403119840815999703

/-! ## A222800.P11290158365843638949

`A222794(A141214(n+2)+A043066(n+2))`
-/

namespace A222800.P11290158365843638949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222794 (A141214 (n + 2) + A043066 (n + 2)).toNat

end

end A222800.P11290158365843638949

/-! ## A222800.P15481682158650328272

`A222794(A055998(n+3)+A043066(n+2))`
-/

namespace A222800.P15481682158650328272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222794 (A055998 (n + 3) + A043066 (n + 2)).toNat

end

end A222800.P15481682158650328272

/-!
# A222801: Number of elements in n-th row of A222417.

The programs for A222801, there is no canonical definition to state claims against.
-/

/-! ## A222801.P16054183277609672666

`Δ[eq[1, A222417(n+1)]]`
-/

namespace A222801.P16054183277609672666
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222417 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A222801.P16054183277609672666

/-! ## A222801.P6169077880595127428

`Δ[record[A236847(n)-A222417(n+1)]]`
-/

namespace A222801.P6169077880595127428
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236847 n - A222417 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A222801.P6169077880595127428

/-! ## A222801.P7447770199189110586

`Δ[A103205(record[n/A222417(n+1)])]`
-/

namespace A222801.P7447770199189110586
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A222417 (n + 1) : ℚ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103205 (SequenceMachineLib.roundAway (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A222801.P7447770199189110586

/-! ## A222801.P17080602667497873516

`Δ[record[A000265(n+1)-A222417(n+1)]]`
-/

namespace A222801.P17080602667497873516
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1) - A222417 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A222801.P17080602667497873516

/-! ## A222801.P13485419582183497132

`Δ[record[A186111(n+1)-A222417(n+1)]]`
-/

namespace A222801.P13485419582183497132
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186111 (n + 1) - A222417 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A222801.P13485419582183497132

/-!
# A222802: When A114183 decreases in value for the n-th time, dropping to k (say), a(n) is the number of steps earlier that floor(k/2) appeared in A114183.

The programs for A222802, there is no canonical definition to state claims against.
-/

/-! ## A222802.P5323910763809080747

`3*n+5+A040114(A224815(3*(n+1)))`
-/

namespace A222802.P5323910763809080747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n + 5 : ℤ) + A040114 ((A224815 (3 * (n + 1))).toNat + 10)

end

end A222802.P5323910763809080747

/-! ## A222802.P6963837775808259947

`A002808(3*n+2)-A152235(A000244(n))`
-/

namespace A222802.P6963837775808259947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (3 * n + 2) - A152235 (A000244 n).toNat

end

end A222802.P6963837775808259947

/-!
# A222805: A bisection of A222803.

The programs for A222805, there is no canonical definition to state claims against.
-/

/-! ## A222805.P2580336807846239125

`A222803(2*n)`
-/

namespace A222805.P2580336807846239125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222803 (2 * n)

end

end A222805.P2580336807846239125

/-! ## A222805.P1039572811042409539

`A222803(A004277(n))+A000007(n)`
-/

namespace A222805.P1039572811042409539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222803 (A004277 n).toNat + A000007 n

end

end A222805.P1039572811042409539

/-! ## A222805.P12173638429647480799

`A222803(A004277(n))+A151933(n)`
-/

namespace A222805.P12173638429647480799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222803 (A004277 n).toNat + A151933 n

end

end A222805.P12173638429647480799

/-! ## A222805.P9591681157545734680

`A222803(record[A005131(n)])+A000007(n)`
-/

namespace A222805.P9591681157545734680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005131 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222803 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + A000007 n

end

end A222805.P9591681157545734680

/-! ## A222805.P2877074433018890109

`A222803(A004277(n))+A008683(A008574(n))`
-/

namespace A222805.P2877074433018890109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222803 (A004277 n).toNat + A008683 (A008574 n).toNat

end

end A222805.P2877074433018890109

/-!
# A222806: A bisection of A222804.

The programs for A222806, there is no canonical definition to state claims against.
-/

/-! ## A222806.P11150377403784501436

`A222804(2*n)`
-/

namespace A222806.P11150377403784501436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222804 (2 * n)

end

end A222806.P11150377403784501436

/-! ## A222806.P13899392737216265975

`and(-1, A222804(A005843(n)))`
-/

namespace A222806.P13899392737216265975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A222804 (A005843 n).toNat)

end

end A222806.P13899392737216265975

/-! ## A222806.P11897798924442412735

`A222804(A004277(n))-floor(acot(n))`
-/

namespace A222806.P11897798924442412735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222804 (A004277 n).toNat - ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A222806.P11897798924442412735

/-! ## A222806.P10342540075727260798

`A222804(A004277(n))-A000007(n)`
-/

namespace A222806.P10342540075727260798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222804 (A004277 n).toNat - A000007 n

end

end A222806.P10342540075727260798

/-!
# A222807: Number of subsets A of {0,1,...,n-1} with |A+A| > |A-A|.

The programs for A222807, there is no canonical definition to state claims against.
-/

/-! ## A222807.P13581610375934982982

`∑[∑[A224893(n+1)]]`
-/

namespace A222807.P13581610375934982982
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224893 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A222807.P13581610375934982982

/-!
# A222808: Number of subsets A of {0,1,...,n-1} with |A+A| < |A-A|.

The programs for A222808, there is no canonical definition to state claims against.
-/

/-! ## A222808.P14823235839969139514

`A004277(A000079(n))-A118544(n+1)`
-/

namespace A222808.P14823235839969139514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A000079 n).toNat - A118544 (n + 1)

end

end A222808.P14823235839969139514

/-! ## A222808.P10982407154942618746

`A358506(A000079(n+1))-A118544(n+1)`
-/

namespace A222808.P10982407154942618746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358506 (A000079 (n + 1)).toNat - A118544 (n + 1)

end

end A222808.P10982407154942618746

/-! ## A222808.P7525085303944366642

`A014681(A126646(n))-A118544(n+1)`
-/

namespace A222808.P7525085303944366642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A126646 n).toNat - A118544 (n + 1)

end

end A222808.P7525085303944366642

/-! ## A222808.P4084590059454009009

`A267099(A060547(3*n+1))-A118544(n+1)`
-/

namespace A222808.P4084590059454009009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267099 (A060547 (3 * n + 1)).toNat - A118544 (n + 1)

end

end A222808.P4084590059454009009

/-! ## A222808.P15554176661600101735

`A142150(A020707(n))-A118544(n+1)`
-/

namespace A222808.P15554176661600101735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A020707 n).toNat - A118544 (n + 1)

end

end A222808.P15554176661600101735

/-!
# A222809: Number of n-digit numbers N such that the reversal of N divides N but is different from N.

The programs for A222809, there is no canonical definition to state claims against.
-/

/-! ## A222809.P10027187460008983688

`A222811(n+1)-A050683(n+1)`
-/

namespace A222809.P10027187460008983688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222811 (n + 1) - A050683 (n + 1)

end

end A222809.P10027187460008983688

/-! ## A222809.P5786400430877620190

`A222811(n+1)-A052268(∑[char[2*n]])`
-/

namespace A222809.P5786400430877620190
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222811 (n + 1) - A052268 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A222809.P5786400430877620190

/-! ## A222809.P5132345860547285588

`A222811(n+1)-A004669(A168236(n+1))`
-/

namespace A222809.P5132345860547285588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222811 (n + 1) - A004669 (A168236 (n + 1)).toNat

end

end A222809.P5132345860547285588

/-! ## A222809.P15223728349765398224

`A222811(n+1)-A070252(A131055(n+2))`
-/

namespace A222809.P15223728349765398224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222811 (n + 1) - A070252 (A131055 (n + 2)).toNat

end

end A222809.P15223728349765398224

/-! ## A222809.P15451395443907601976

`A222811(n+1)-A037124(A168419(n+2))`
-/

namespace A222809.P15451395443907601976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222811 (n + 1) - A037124 (A168419 (n + 2)).toNat

end

end A222809.P15451395443907601976

/-!
# A222811: Number of n-digit numbers N such that the reversal of N divides N.

The programs for A222811, there is no canonical definition to state claims against.
-/

/-! ## A222811.P6650468256946051944

`A222809(n+1)+A050683(n+1)`
-/

namespace A222811.P6650468256946051944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222809 (n + 1) + A050683 (n + 1)

end

end A222811.P6650468256946051944

/-! ## A222811.P6769129543942143420

`A222809(n+1)+A052268(∑[char[2*n]])`
-/

namespace A222811.P6769129543942143420
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222809 (n + 1) + A052268 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A222811.P6769129543942143420

/-! ## A222811.P958149895883922327

`A222809(n+1)+A004669(A168236(n+1))`
-/

namespace A222811.P958149895883922327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222809 (n + 1) + A004669 (A168236 (n + 1)).toNat

end

end A222811.P958149895883922327

/-! ## A222811.P13065137075278831208

`A222809(n+1)+A070252(A131055(n+2))`
-/

namespace A222811.P13065137075278831208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222809 (n + 1) + A070252 (A131055 (n + 2)).toNat

end

end A222811.P13065137075278831208

/-! ## A222811.P16110903367858073412

`A222809(n+1)+A037124(A168419(n+2))`
-/

namespace A222811.P16110903367858073412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222809 (n + 1) + A037124 (A168419 (n + 2)).toNat

end

end A222811.P16110903367858073412

/-!
# A222813: Numbers whose binary representation is palindromic and in which all runs of 0's and 1's have length at least 2.

The programs for A222813, there is no canonical definition to state claims against.
-/

/-! ## A222813.P6466212866132844720

`∩[A044918(n+1), A377625(n+1)]`
-/

namespace A222813.P6466212866132844720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044918 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377625 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A222813.P6466212866132844720

/-! ## A222813.P4526353129870524836

`∩[A161604(n+1), A377625(n+1)]`
-/

namespace A222813.P4526353129870524836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161604 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377625 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A222813.P4526353129870524836

/-! ## A222813.P8837544577699403176

`∩[A006995(n+1), A033015(n+1)]`
-/

namespace A222813.P8837544577699403176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006995 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033015 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A222813.P8837544577699403176

/-! ## A222813.P7580207694653379913

`∩[A033015(n+1), A180204(n+1)]`
-/

namespace A222813.P7580207694653379913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033015 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180204 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A222813.P7580207694653379913

/-! ## A222813.P16645615185140546382

`∩[A033015(n+1), A377625(n+1)]`
-/

namespace A222813.P16645615185140546382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033015 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377625 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A222813.P16645615185140546382

/-! ## A222813.P409034786388873354

`∩[A377625(n+1), A391584(n+1)]`
-/

namespace A222813.P409034786388873354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377625 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391584 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A222813.P409034786388873354

/-! ## A222813.P16184150357096398555

`∩[A144795(n+1), A377625(n+1)]`
-/

namespace A222813.P16184150357096398555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144795 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377625 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A222813.P16184150357096398555

/-! ## A222813.P12820086777836327462

`∩[A175054(n+1), A377625(n+1)]`
-/

namespace A222813.P12820086777836327462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175054 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377625 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A222813.P12820086777836327462

/-! ## A222813.P16418363386508061230

`record[A145799(A033015(n+1))]`
-/

namespace A222813.P16418363386508061230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145799 (A033015 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222813.P16418363386508061230

/-! ## A222813.P3225389392699077318

`record[A318925(A006995(n+3))]`
-/

namespace A222813.P3225389392699077318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318925 (A006995 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222813.P3225389392699077318

/-!
# A222814: Numbers (not ending in 0) which are 9 times their digit-reversal.

The programs for A222814, there is no canonical definition to state claims against.
-/

/-! ## A222814.P4810755483765637248

`9*A001232(n+1)`
-/

namespace A222814.P4810755483765637248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A001232 (n + 1)

end

end A222814.P4810755483765637248

/-! ## A222814.P3293029485929341809

`9*A008918(n+1)/2`
-/

namespace A222814.P3293029485929341809
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  9 * ((A008918 (n + 1) : ℚ) / 2)

end

end A222814.P3293029485929341809

/-! ## A222814.P4631309956755449300

`A222815(n+1)+A001232(n+1)`
-/

namespace A222814.P4631309956755449300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222815 (n + 1) + A001232 (n + 1)

end

end A222814.P4631309956755449300

/-! ## A222814.P9707683968537219658

`A222815(n+1)+A008918(n+1)/2`
-/

namespace A222814.P9707683968537219658
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A222815 (n + 1) : ℚ) + (A008918 (n + 1) : ℚ) / 2

end

end A222814.P9707683968537219658

/-! ## A222814.P12820168347929258440

`A001232(n+1)+A285040(n+1)+A285040(n+1)`
-/

namespace A222814.P12820168347929258440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001232 (n + 1) + (A285040 (n + 1) + A285040 (n + 1))

end

end A222814.P12820168347929258440

/-! ## A222814.P11147315961502730549

`(A008918(n+1)+A001232(n+1))²/A001232(n+1)`
-/

namespace A222814.P11147315961502730549
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A008918 (n + 1) + A001232 (n + 1)) ^ 2 : ℚ) / (A001232 (n + 1) : ℚ)

end

end A222814.P11147315961502730549

/-! ## A222814.P1316005321244400708

`(A285040(n+1)+A008918(n+1))²/A285040(n+1)`
-/

namespace A222814.P1316005321244400708
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A285040 (n + 1) + A008918 (n + 1)) ^ 2 : ℚ) / (A285040 (n + 1) : ℚ)

end

end A222814.P1316005321244400708

/-! ## A222814.P7156330557072644431

`3*A101706(n+2)`
-/

namespace A222814.P7156330557072644431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A101706 (n + 2)

end

end A222814.P7156330557072644431

/-! ## A222814.P867572856101179387

`3/2*A101704(n+2)`
-/

namespace A222814.P867572856101179387
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 2 * (A101704 (n + 2) : ℚ)

end

end A222814.P867572856101179387

/-! ## A222814.P12802360581563905752

`A101706(n+2)+A101704(n+2)`
-/

namespace A222814.P12802360581563905752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101706 (n + 2) + A101704 (n + 2)

end

end A222814.P12802360581563905752

/-! ## A222814.P4983723380988773432

`A101706(n+2)²/A001232(n+1)`
-/

namespace A222814.P4983723380988773432
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A101706 (n + 2) ^ 2 : ℚ) / (A001232 (n + 1) : ℚ)

end

end A222814.P4983723380988773432

/-! ## A222814.P1458868563130810523

`A101704(n+2)²/A285040(n+1)`
-/

namespace A222814.P1458868563130810523
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A101704 (n + 2) ^ 2 : ℚ) / (A285040 (n + 1) : ℚ)

end

end A222814.P1458868563130810523

/-! ## A222814.P15700147333866622277

`A001232(n+1)+A101704(n+2)+A008918(n+1)`
-/

namespace A222814.P15700147333866622277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001232 (n + 1) + (A101704 (n + 2) + A008918 (n + 1))

end

end A222814.P15700147333866622277

/-! ## A222814.P12205552296019374846

`A008918(n+1)+A285040(n+1)+A101706(n+2)`
-/

namespace A222814.P12205552296019374846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008918 (n + 1) + (A285040 (n + 1) + A101706 (n + 2))

end

end A222814.P12205552296019374846

/-! ## A222814.P11740920553276882999

`A101706(n+2)+lcm(A010696(n+1), A101706(n+2))`
-/

namespace A222814.P11740920553276882999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101706 (n + 2) + (Int.lcm (A010696 (n + 1)) (A101706 (n + 2)) : ℤ)

end

end A222814.P11740920553276882999

/-!
# A222815: Numbers (not ending in 0) which are 4 times their digit-reversal.

The programs for A222815, there is no canonical definition to state claims against.
-/

/-! ## A222815.P10189183680539854728

`2*A285040(n+1)`
-/

namespace A222815.P10189183680539854728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A285040 (n + 1)

end

end A222815.P10189183680539854728

/-! ## A222815.P13499150117855843528

`4*A008918(n+1)`
-/

namespace A222815.P13499150117855843528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A008918 (n + 1)

end

end A222815.P13499150117855843528

/-! ## A222815.P1264020358149911254

`8*A001232(n+1)`
-/

namespace A222815.P1264020358149911254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A001232 (n + 1)

end

end A222815.P1264020358149911254

/-! ## A222815.P13220434406515863102

`A222814(n+1)-A001232(n+1)`
-/

namespace A222815.P13220434406515863102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222814 (n + 1) - A001232 (n + 1)

end

end A222815.P13220434406515863102

/-! ## A222815.P7082300994426202897

`A285040(n+1)²/A008918(n+1)`
-/

namespace A222815.P7082300994426202897
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A285040 (n + 1) ^ 2 : ℚ) / (A008918 (n + 1) : ℚ)

end

end A222815.P7082300994426202897

/-! ## A222815.P7630914748444411673

`A222814(n+1)-A008918(n+1)/2`
-/

namespace A222815.P7630914748444411673
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A222814 (n + 1) : ℚ) - (A008918 (n + 1) : ℚ) / 2

end

end A222815.P7630914748444411673

/-! ## A222815.P16986903595556594035

`A222814(n+1)-gcd(A222814(n+1), A285040(n+1))`
-/

namespace A222815.P16986903595556594035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222814 (n + 1) - (Int.gcd (A222814 (n + 1)) (A285040 (n + 1)) : ℤ)

end

end A222815.P16986903595556594035

/-! ## A222815.P7991591432035069405

`A101704(n+2)+A008918(n+1)`
-/

namespace A222815.P7991591432035069405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101704 (n + 2) + A008918 (n + 1)

end

end A222815.P7991591432035069405

/-! ## A222815.P13264764529479875792

`A001232(n+1)+A101704(n+2)+A001232(n+1)`
-/

namespace A222815.P13264764529479875792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001232 (n + 1) + (A101704 (n + 2) + A001232 (n + 1))

end

end A222815.P13264764529479875792

/-! ## A222815.P1581299225206192295

`A001232(n+1)+A285040(n+1)+A101706(n+2)`
-/

namespace A222815.P1581299225206192295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001232 (n + 1) + (A285040 (n + 1) + A101706 (n + 2))

end

end A222815.P1581299225206192295

/-! ## A222815.P11006562774332032166

`A008918(n+1)+A101706(n+2)+A101706(n+2)`
-/

namespace A222815.P11006562774332032166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008918 (n + 1) + (A101706 (n + 2) + A101706 (n + 2))

end

end A222815.P11006562774332032166

/-! ## A222815.P11510655367214002234

`A101704(n+2)+A101704(n+2)-A285040(n+1)`
-/

namespace A222815.P11510655367214002234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101704 (n + 2) + (A101704 (n + 2) - A285040 (n + 1))

end

end A222815.P11510655367214002234

/-! ## A222815.P14078063688534171851

`record[lcm(8, A008919(n+1))]`
-/

namespace A222815.P14078063688534171851
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 8 (A008919 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222815.P14078063688534171851

/-!
# A222816: Numbers k that divide the base-5 reversal of k.

The programs for A222816, there is no canonical definition to state claims against.
-/

/-! ## A222816.P4888434405439973350

`eq[abs(1-n)+1, gcd(2*n, A055951(n))]`
-/

namespace A222816.P4888434405439973350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)| + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * n : ℤ) (A055951 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A222816.P4888434405439973350

/-! ## A222816.P1514780132232848927

`eq[gcd(2*n, A055951(n)), A028310(n)]`
-/

namespace A222816.P1514780132232848927
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * n : ℤ) (A055951 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A222816.P1514780132232848927

/-! ## A222816.P14676153890241951598

`eq[A030104(n)%A004277(n), A000038(n)]`
-/

namespace A222816.P14676153890241951598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030104 n) (A004277 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A222816.P14676153890241951598

/-!
# A222817: Irregular triangle read by rows: row n gives list of nontrivial reverse multipliers for base n.

The programs for A222817, there is no canonical definition to state claims against.
-/

/-! ## A222817.P4148463979078149816

`filter[A222818(n+2), A354807(#)]`
-/

namespace A222817.P4148463979078149816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222818 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354807 (f1 j).toNat = 1) n)

end

end A222817.P4148463979078149816

/-! ## A222817.P7636798748875012702

`A222818(lt[1, A222818(n+2)]+2)`
-/

namespace A222817.P7636798748875012702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222818 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222818 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2)

end

end A222817.P7636798748875012702

/-! ## A222817.P182427310985567724

`A077610(n+2)+A005361(A000108(n))`
-/

namespace A222817.P182427310985567724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077610 (n + 2) + A005361 (A000108 n).toNat

end

end A222817.P182427310985567724

/-! ## A222817.P17736017670200700370

`A329376(A000108(n))+A077609(n+2)`
-/

namespace A222817.P17736017670200700370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329376 (A000108 n).toNat + A077609 (n + 2)

end

end A222817.P17736017670200700370

/-! ## A222817.P4873299746033027832

`A360721(A049016(n))+A077610(n+2)`
-/

namespace A222817.P4873299746033027832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360721 (A049016 n).toNat + A077610 (n + 2)

end

end A222817.P4873299746033027832

/-!
# A222818: Irregular triangle read by rows: row n gives list of reverse multipliers for base n.

The programs for A222818, there is no canonical definition to state claims against.
-/

/-! ## A222818.P14732856277819744059

`A124769(∪[A064896(n+1), A225792(n+1)])`
-/

namespace A222818.P14732856277819744059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064896 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225792 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124769 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A222818.P14732856277819744059

/-! ## A222818.P10685085043513216021

`A124769(∪[A006355(3*(n+1)), A064896(n+1)])`
-/

namespace A222818.P10685085043513216021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006355 (3 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064896 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124769 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A222818.P10685085043513216021

/-! ## A222818.P1182132826287647853

`A246359(record[A121757(n)])`
-/

namespace A222818.P1182132826287647853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121757 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246359 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A222818.P1182132826287647853

/-! ## A222818.P5005460549628151173

`A099563(A164213(n))+char[4]`
-/

namespace A222818.P5005460549628151173
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099563 (A164213 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A222818.P5005460549628151173

/-! ## A222818.P6958465978011474726

`A099563(A077947(n)+∑[n])`
-/

namespace A222818.P6958465978011474726
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099563 (A077947 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A222818.P6958465978011474726

/-!
# A222819: a(n) = number of nontrivial reverse multipliers for base n.

The programs for A222819, there is no canonical definition to state claims against.
-/

/-! ## A222819.P7571626902647679391

`A222820(n+2)-1`
-/

namespace A222819.P7571626902647679391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222820 (n + 2) - 1

end

end A222819.P7571626902647679391

/-! ## A222819.P5262168833698878208

`A002837(A222820(n+2))`
-/

namespace A222819.P5262168833698878208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002837 (A222820 (n + 2)).toNat

end

end A222819.P5262168833698878208

/-! ## A222819.P3161251884324460303

`A057918(A222820(n+2)²)`
-/

namespace A222819.P3161251884324460303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057918 (A222820 (n + 2) ^ 2).toNat

end

end A222819.P3161251884324460303

/-! ## A222819.P2775090189300422315

`A023444(A222820(n+2)+1)`
-/

namespace A222819.P2775090189300422315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A222820 (n + 2) + 1).toNat

end

end A222819.P2775090189300422315

/-! ## A222819.P5045934477951914570

`A023446(A222820(n+2)+3)`
-/

namespace A222819.P5045934477951914570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023446 (A222820 (n + 2) + 3).toNat

end

end A222819.P5045934477951914570

/-!
# A222820: a(n) is the number of reverse multipliers for base n.

The programs for A222820, there is no canonical definition to state claims against.
-/

/-! ## A222820.P18421724993756199311

`A222819(n+2)+1`
-/

namespace A222820.P18421724993756199311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222819 (n + 2) + 1

end

end A222820.P18421724993756199311

/-! ## A222820.P1281081293727479301

`A348553(A222819(n+2))`
-/

namespace A222820.P1281081293727479301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348553 (A222819 (n + 2)).toNat

end

end A222820.P1281081293727479301

/-! ## A222820.P4975502378618066641

`Δ[eq[1, A222818(n+2)]]`
-/

namespace A222820.P4975502378618066641
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222818 (n + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A222820.P4975502378618066641

/-! ## A222820.P10938956190211882497

`Δ[A023444(lt[A222818(n+2), 2])]`
-/

namespace A222820.P10938956190211882497
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222818 (n + 2)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A222820.P10938956190211882497

/-! ## A222820.P6006973991964075328

`A028310(Δ[lt[A222818(n+2), 2]])`
-/

namespace A222820.P6006973991964075328
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222818 (n + 2)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A222820.P6006973991964075328

/-!
# A222822: Number of idempotent 3X3 0..n matrices.

The programs for A222822, there is no canonical definition to state claims against.
-/

/-! ## A222822.P18113991086281168201

`A224334(n+1)+A224525(n+1)+2`
-/

namespace A222822.P18113991086281168201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224334 (n + 1) + (A224525 (n + 1) + 2)

end

end A222822.P18113991086281168201

/-! ## A222822.P4980351210975137829

`A224525(n+1)+A079578(A224334(n+1))`
-/

namespace A222822.P4980351210975137829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224525 (n + 1) + A079578 (A224334 (n + 1)).toNat

end

end A222822.P4980351210975137829

/-! ## A222822.P14738234197871189678

`A222821(∑[n+2]+4)`
-/

namespace A222822.P14738234197871189678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222821 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A222822.P14738234197871189678

/-!
# A222823: Number of idempotent 4X4 0..n matrices.

The programs for A222823, there is no canonical definition to state claims against.
-/

/-! ## A222823.P13474004951249517617

`A222821(∑[n+3]+7)`
-/

namespace A222823.P13474004951249517617
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222821 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A222823.P13474004951249517617

/-! ## A222823.P3644185218005703088

`A222821(A055999(n)+10)*A353806(n+1)`
-/

namespace A222823.P3644185218005703088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222821 (A055999 n + 10).toNat * A353806 (n + 1)

end

end A222823.P3644185218005703088

/-!
# A222824: Number of idempotent 5X5 0..n matrices.

The programs for A222824, there is no canonical definition to state claims against.
-/

/-! ## A222824.P7460804326017097644

`A222821(A155212(n)+13)`
-/

namespace A222824.P7460804326017097644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222821 (A155212 n + 13).toNat

end

end A222824.P7460804326017097644

/-!
# A222825: Number of nX2 0..3 arrays with no more than floor(nX2/2) elements equal to at least one horizontal, vertical or antidiagonal neighbor, with new values introduced in row major 0..3 order.

The programs for A222825, there is no canonical definition to state claims against.
-/

/-! ## A222825.P12201984226148845133

`A222828(∑[n+1]+2)`
-/

namespace A222825.P12201984226148845133
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222828 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A222825.P12201984226148845133

/-! ## A222825.P7289252591234426315

`record[gcd(A222828(n+1), A264405(n))]`
-/

namespace A222825.P7289252591234426315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A222828 (n + 1)) (A264405 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222825.P7289252591234426315

/-! ## A222825.P14443799746992300225

`record[gcd(A051910(n), A222828(n+2))]`
-/

namespace A222825.P14443799746992300225
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A051910 n) (A222828 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222825.P14443799746992300225

/-! ## A222825.P2258088511475912898

`lcm(A158388(n), A222828(A167499(n)-3))`
-/

namespace A222825.P2258088511475912898
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A158388 n) (A222828 (A167499 n - 3).toNat)

end

end A222825.P2258088511475912898

/-! ## A222825.P1115005485995895562

`record[A222828(∑[A152271(n)])]`
-/

namespace A222825.P1115005485995895562
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222828 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222825.P1115005485995895562

/-!
# A222826: Number of nX3 0..3 arrays with no more than floor(nX3/2) elements equal to at least one horizontal, vertical or antidiagonal neighbor, with new values introduced in row major 0..3 order.

The programs for A222826, there is no canonical definition to state claims against.
-/

/-! ## A222826.P8118445916276677853

`A222828(∑[n+2]+4)`
-/

namespace A222826.P8118445916276677853
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222828 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A222826.P8118445916276677853

/-! ## A222826.P3845631013675516766

`abs(2-A222828(A167614(n+1)))+2`
-/

namespace A222826.P3845631013675516766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A222828 (A167614 (n + 1)).toNat| + 2

end

end A222826.P3845631013675516766

/-! ## A222826.P14808705971159733716

`A222828(A167614(n+1))+A011731(n)`
-/

namespace A222826.P14808705971159733716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222828 (A167614 (n + 1)).toNat + A011731 n

end

end A222826.P14808705971159733716

/-! ## A222826.P17834558985744849926

`A222828(A167614(n+1))+A025442(n)`
-/

namespace A222826.P17834558985744849926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222828 (A167614 (n + 1)).toNat + A025442 n

end

end A222826.P17834558985744849926

/-! ## A222826.P9660647445148388931

`A222828(A167614(n+1))+A025444(n)`
-/

namespace A222826.P9660647445148388931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222828 (A167614 (n + 1)).toNat + A025444 n

end

end A222826.P9660647445148388931

/-!
# A222827: Number of nX4 0..3 arrays with no more than floor(nX4/2) elements equal to at least one horizontal, vertical or antidiagonal neighbor, with new values introduced in row major 0..3 order.

The programs for A222827, there is no canonical definition to state claims against.
-/

/-! ## A222827.P2196563128954844540

`A222828(∑[n+3]+7)`
-/

namespace A222827.P2196563128954844540
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222828 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A222827.P2196563128954844540

/-! ## A222827.P13282054559314862245

`or(A121262(n), A222828(A141214(n+1)))`
-/

namespace A222827.P13282054559314862245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A121262 n) (A222828 (A141214 (n + 1)).toNat)

end

end A222827.P13282054559314862245

/-! ## A222827.P6880231766730551713

`or(A188037(n+1), A222828(A141214(n+1)))`
-/

namespace A222827.P6880231766730551713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A188037 (n + 1)) (A222828 (A141214 (n + 1)).toNat)

end

end A222827.P6880231766730551713

/-!
# A222828: T(n,k)=Number of nXk 0..3 arrays with no more than floor(nXk/2) elements equal to at least one horizontal, vertical or antidiagonal neighbor, with new values introduced in row major 0..3 order.

The programs for A222828, there is no canonical definition to state claims against.
-/

/-! ## A222828.P5043537879178187499

`A222842(n+1)-A185043(A202906(n+1))`
-/

namespace A222828.P5043537879178187499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222842 (n + 1) - A185043 (A202906 (n + 1)).toNat

end

end A222828.P5043537879178187499

/-! ## A222828.P3442263364654199175

`xor(A188037(A115277(n)), A233129(n+1))`
-/

namespace A222828.P3442263364654199175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A188037 (A115277 n).toNat) (A233129 (n + 1))

end

end A222828.P3442263364654199175

/-! ## A222828.P12912775523952994641

`xor(A233129(n+1), A308187(A007581(n)))`
-/

namespace A222828.P12912775523952994641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A233129 (n + 1)) (A308187 (A007581 n).toNat)

end

end A222828.P12912775523952994641

/-! ## A222828.P16004993219172086215

`xor(A121262(A266765(n)), A233129(n+1))`
-/

namespace A222828.P16004993219172086215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A121262 (A266765 n).toNat) (A233129 (n + 1))

end

end A222828.P16004993219172086215

/-!
# A222829: Number of nX2 0..3 arrays with exactly floor(nX2/2) elements equal to at least one horizontal or vertical neighbor, with new values introduced in row major 0..3 order.

The programs for A222829, there is no canonical definition to state claims against.
-/

/-! ## A222829.P12622704333415703185

`A222832(∑[n+1]+2)`
-/

namespace A222829.P12622704333415703185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222832 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A222829.P12622704333415703185

/-! ## A222829.P5553539749868598976

`record[A222832(A114091(n+1)+1)]`
-/

namespace A222829.P5553539749868598976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222832 (A114091 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222829.P5553539749868598976

/-! ## A222829.P1896599055136965799

`record[A222832(n+3)/A228335(n)]`
-/

namespace A222829.P1896599055136965799
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A222832 (n + 3) : ℚ) / (A228335 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222829.P1896599055136965799

/-! ## A222829.P1298900753754738014

`record[char[A000124(n)]*A222832(n+1)]`
-/

namespace A222829.P1298900753754738014
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A222832 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222829.P1298900753754738014

/-! ## A222829.P409333907246340495

`record[A222832(n+2)/A222864(n+1)]`
-/

namespace A222829.P409333907246340495
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A222832 (n + 2) : ℚ) / (A222864 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222829.P409333907246340495

/-!
# A222830: Number of nX3 0..3 arrays with exactly floor(nX3/2) elements equal to at least one horizontal or vertical neighbor, with new values introduced in row major 0..3 order.

The programs for A222830, there is no canonical definition to state claims against.
-/

/-! ## A222830.P18080170294064174355

`A222832(∑[n+2]+4)`
-/

namespace A222830.P18080170294064174355
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222832 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A222830.P18080170294064174355

/-! ## A222830.P1467874563608286218

`record[A010054(n)*A222832(n+3)]`
-/

namespace A222830.P1467874563608286218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A222832 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222830.P1467874563608286218

/-! ## A222830.P10731154089438447581

`record[A222832(n+4)/A111559(n)]`
-/

namespace A222830.P10731154089438447581
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A222832 (n + 4) : ℚ) / (A111559 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222830.P10731154089438447581

/-! ## A222830.P7001456647608128007

`record[lcm(A089812(n), A222832(n+3))]`
-/

namespace A222830.P7001456647608128007
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A089812 n) (A222832 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222830.P7001456647608128007

/-! ## A222830.P5148285968845834404

`record[char[A000124(n+1)]*A222832(n+2)]`
-/

namespace A222830.P5148285968845834404
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A222832 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222830.P5148285968845834404

/-!
# A222831: Number of nX4 0..3 arrays with exactly floor(nX4/2) elements equal to at least one horizontal or vertical neighbor, with new values introduced in row major 0..3 order.

The programs for A222831, there is no canonical definition to state claims against.
-/

/-! ## A222831.P17482064701249942746

`A222832(∑[n+3]+7)`
-/

namespace A222831.P17482064701249942746
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222832 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A222831.P17482064701249942746

/-! ## A222831.P16743994091434168977

`lcm(A113370(n), A222832(A055998(n+2)))`
-/

namespace A222831.P16743994091434168977
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A113370 n) (A222832 (A055998 (n + 2)).toNat)

end

end A222831.P16743994091434168977

/-! ## A222831.P12075360687325292952

`A222832(A055998(n+2))+A147612(3*n+4)`
-/

namespace A222831.P12075360687325292952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222832 (A055998 (n + 2)).toNat + A147612 (3 * n + 4)

end

end A222831.P12075360687325292952

/-!
# A222832: T(n,k)=Number of nXk 0..3 arrays with exactly floor(nXk/2) elements equal to at least one horizontal or vertical neighbor, with new values introduced in row major 0..3 order.

The programs for A222832, there is no canonical definition to state claims against.
-/

/-! ## A222832.P9007947031431351600

`and(A005344(∏{p}[n+1, #]), A223052(n+1))`
-/

namespace A222832.P9007947031431351600
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A005344 (∏ p ∈ Nat.primeFactors (f1 n), p)) (A223052 (n + 1))

end

end A222832.P9007947031431351600

/-! ## A222832.P5412651453997033257

`and(A000005(A166200(n)), A033180(n+1))`
-/

namespace A222832.P5412651453997033257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000005 (A166200 n).toNat) (A033180 (n + 1))

end

end A222832.P5412651453997033257

/-! ## A222832.P1417245177086658775

`and(A002476(A034472(n)), A222608(n+1))`
-/

namespace A222832.P1417245177086658775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A002476 (A034472 n).toNat) (A222608 (n + 1))

end

end A222832.P1417245177086658775

/-! ## A222832.P1352451892388699092

`and(A002476(A034472(n)), A223052(n+1))`
-/

namespace A222832.P1352451892388699092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A002476 (A034472 n).toNat) (A223052 (n + 1))

end

end A222832.P1352451892388699092

/-! ## A222832.P5015054259984953069

`and(A000005(A166200(n)), A222608(n+1))`
-/

namespace A222832.P5015054259984953069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000005 (A166200 n).toNat) (A222608 (n + 1))

end

end A222832.P5015054259984953069

/-!
# A222833: Number of n X n 0..3 arrays with no element equal to another at a city block distance of exactly two, and new values 0..3 introduced in row major order.

The programs for A222833, there is no canonical definition to state claims against.
-/

/-! ## A222833.P9497042878521607708

`A222838(∑[4*n]+1)`
-/

namespace A222833.P9497042878521607708
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222838 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A222833.P9497042878521607708

/-! ## A222833.P10276948557773162418

`A222838(A001844(n))+char[13]`
-/

namespace A222833.P10276948557773162418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222838 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A222833.P10276948557773162418

/-! ## A222833.P16575164379571238072

`lcm(A007318(n), A222838(A001844(n)))`
-/

namespace A222833.P16575164379571238072
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A007318 n) (A222838 (A001844 n).toNat)

end

end A222833.P16575164379571238072

/-! ## A222833.P2666682583816714443

`or(A000007(n), A222838(A001844(n)))`
-/

namespace A222833.P2666682583816714443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A222838 (A001844 n).toNat)

end

end A222833.P2666682583816714443

/-! ## A222833.P2336979412888382217

`or(A036427(n), A222838(A001844(n)))`
-/

namespace A222833.P2336979412888382217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A036427 n) (A222838 (A001844 n).toNat)

end

end A222833.P2336979412888382217

/-!
# A222834: Number of n X 4 0..3 arrays with no element equal to another at a city block distance of exactly two, and new values 0..3 introduced in row major order.

The programs for A222834, the canonical program `A222834.P3887171148257155712` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A222834 has offset 1).

The definition of A222834 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 236 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A222834.P3887171148257155712

`2*a(n-1)+2*a(n-2)-a(n-3)` with `a(0)=7, a(1)=96, a(2)=216, a(3)=600`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A222834

/-- `2*a(n-1)+2*a(n-2)-a(n-3)` -/
def P3887171148257155712.Spec : Prop :=
  ∀ n, P3887171148257155712.a n = A222834 (n + 1)

theorem P3887171148257155712.correct : P3887171148257155712.Spec := by
  intro n
  simp only [A222834, Nat.add_sub_cancel]

end A222834

/-! ## A222834.P17371299062640540248

`6%a(n-1)*A206981(n+1)` with `a(0)=7`
-/

namespace A222834.P17371299062640540248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7] fun n a =>
  Int.tmod 6 (a (n - 1)) * A206981 (n + 1)

end

end A222834.P17371299062640540248

namespace A222834

/-- `6%a(n-1)*A206981(n+1)` -/
def P17371299062640540248.Spec : Prop :=
  ∀ n, P17371299062640540248.a n = A222834 (n + 1)

end A222834

/-! ## A222834.P11655735970014429468

`A222838(∑[n+3]+7)`
-/

namespace A222834.P11655735970014429468
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222838 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A222834.P11655735970014429468

namespace A222834

/-- `A222838(∑[n+3]+7)` -/
def P11655735970014429468.Spec : Prop :=
  ∀ n, P11655735970014429468.a n = A222834 (n + 1)

end A222834

/-! ## A222834.P8816680853709446890

`A222838(A000096(n+2)+5)+char[23]`
-/

namespace A222834.P8816680853709446890
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  23

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222838 (A000096 (n + 2) + 5).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A222834.P8816680853709446890

namespace A222834

/-- `A222838(A000096(n+2)+5)+char[23]` -/
def P8816680853709446890.Spec : Prop :=
  ∀ n, P8816680853709446890.a n = A222834 (n + 1)

end A222834

/-! ## A222834.P8772997861726971433

`A007318(C(3, n))*A222838(A000096(n+2)+5)`
-/

namespace A222834.P8772997861726971433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 3 n) * A222838 (A000096 (n + 2) + 5).toNat

end

end A222834.P8772997861726971433

namespace A222834

/-- `A007318(C(3, n))*A222838(A000096(n+2)+5)` -/
def P8772997861726971433.Spec : Prop :=
  ∀ n, P8772997861726971433.a n = A222834 (n + 1)

end A222834

/-!
# A222835: Number of n X 5 0..3 arrays with no element equal to another at a city block distance of exactly two, and new values 0..3 introduced in row major order.

The programs for A222835, there is no canonical definition to state claims against.
-/

/-! ## A222835.P7734858808852603451

`C(2, n+2)+A183357(n+1)/6`
-/

namespace A222835.P7734858808852603451
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose 2 (n + 2) : ℚ) + (A183357 (n + 1) : ℚ) / 6

end

end A222835.P7734858808852603451

/-! ## A222835.P8819881362255103647

`A000007(n)+A183357(n+1)/6`
-/

namespace A222835.P8819881362255103647
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000007 n : ℚ) + (A183357 (n + 1) : ℚ) / 6

end

end A222835.P8819881362255103647

/-! ## A222835.P14927763272248369867

`A302826(2*(n+1))+A183357(n+1)/6`
-/

namespace A222835.P14927763272248369867
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A302826 (2 * (n + 1)) : ℚ) + (A183357 (n + 1) : ℚ) / 6

end

end A222835.P14927763272248369867

/-! ## A222835.P17487735083153114260

`A001221(A014963(4*n+2))+A183357(n+1)/6`
-/

namespace A222835.P17487735083153114260
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001221 (A014963 (4 * n + 2)).toNat : ℚ) + (A183357 (n + 1) : ℚ) / 6

end

end A222835.P17487735083153114260

/-! ## A222835.P18070391438175938312

`floor(A003958(n+1)/A003959(n+1)+A183357(n+1)/6)`
-/

namespace A222835.P18070391438175938312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A003958 (n + 1) : ℚ) / (A003959 (n + 1) : ℚ) + (A183357 (n + 1) : ℚ) / 6⌋

end

end A222835.P18070391438175938312

/-!
# A222836: Number of nX6 0..3 arrays with no element equal to another at a city block distance of exactly two, and new values 0..3 introduced in row major order.

The programs for A222836, there is no canonical definition to state claims against.
-/

/-! ## A222836.P11502642797332967967

`A222838(A374007(n+1))`
-/

namespace A222836.P11502642797332967967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222838 (A374007 (n + 1)).toNat

end

end A222836.P11502642797332967967

/-! ## A222836.P10102255089409452515

`A222838(A166136(n+4))`
-/

namespace A222836.P10102255089409452515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222838 (A166136 (n + 4)).toNat

end

end A222836.P10102255089409452515

/-! ## A222836.P14151585533648877522

`A222838(A167487(n+4)-1)`
-/

namespace A222836.P14151585533648877522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222838 (A167487 (n + 4) - 1).toNat

end

end A222836.P14151585533648877522

/-! ## A222836.P923460869373855755

`A222838(A133263(n+5)+4)`
-/

namespace A222836.P923460869373855755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222838 (A133263 (n + 5) + 4).toNat

end

end A222836.P923460869373855755

/-! ## A222836.P2006488149406899792

`A222838(A000124(n+5)+5)`
-/

namespace A222836.P2006488149406899792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222838 (A000124 (n + 5) + 5).toNat

end

end A222836.P2006488149406899792

/-!
# A222837: Number of nX7 0..3 arrays with no element equal to another at a city block distance of exactly two, and new values 0..3 introduced in row major order.

The programs for A222837, there is no canonical definition to state claims against.
-/

/-! ## A222837.P9735422871739665578

`A222838(A374008(n+1))`
-/

namespace A222837.P9735422871739665578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222838 (A374008 (n + 1)).toNat

end

end A222837.P9735422871739665578

/-! ## A222837.P17498700752357798429

`A222838(A167487(n+5))`
-/

namespace A222837.P17498700752357798429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222838 (A167487 (n + 5)).toNat

end

end A222837.P17498700752357798429

/-! ## A222837.P3578998406488468100

`A222838(A166136(n+5)+1)`
-/

namespace A222837.P3578998406488468100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222838 (A166136 (n + 5) + 1).toNat

end

end A222837.P3578998406488468100

/-! ## A222837.P6265874221584609732

`A222838(A000124(n+6)+6)`
-/

namespace A222837.P6265874221584609732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222838 (A000124 (n + 6) + 6).toNat

end

end A222837.P6265874221584609732

/-! ## A222837.P6430575671291830951

`A222838(A000096(n+5)+8)`
-/

namespace A222837.P6430575671291830951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222838 (A000096 (n + 5) + 8).toNat

end

end A222837.P6430575671291830951

/-!
# A222839: Number of n X 2 0..3 arrays with no more than n elements equal to at least one horizontal or vertical neighbor, with new values introduced in row major 0..3 order.

The programs for A222839, there is no canonical definition to state claims against.
-/

/-! ## A222839.P10345605570993249764

`A222842(∑[n+1]+2)`
-/

namespace A222839.P10345605570993249764
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222842 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A222839.P10345605570993249764

/-! ## A222839.P5045862533150301488

`record[A222842(n+2)/A222864(n+1)]`
-/

namespace A222839.P5045862533150301488
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A222842 (n + 2) : ℚ) / (A222864 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222839.P5045862533150301488

/-! ## A222839.P12246706801252059424

`record[A222842(∑[A152271(n)])]`
-/

namespace A222839.P12246706801252059424
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222842 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222839.P12246706801252059424

/-! ## A222839.P10238575396220148313

`record[A222842(record[A185180(n+1)])]`
-/

namespace A222839.P10238575396220148313
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185180 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222842 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222839.P10238575396220148313

/-! ## A222839.P7959739811606192240

`record[gcd(A162986(n), A222842(n+1))]`
-/

namespace A222839.P7959739811606192240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A162986 n) (A222842 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222839.P7959739811606192240

/-!
# A222840: Number of nX3 0..3 arrays with no more than floor(nX3/2) elements equal to at least one horizontal or vertical neighbor, with new values introduced in row major 0..3 order.

The programs for A222840, there is no canonical definition to state claims against.
-/

/-! ## A222840.P11949306063118077435

`A222842(∑[n+2]+4)`
-/

namespace A222840.P11949306063118077435
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222842 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A222840.P11949306063118077435

/-! ## A222840.P3529816504677505340

`A222842(A167614(n+1))+A054899(n)`
-/

namespace A222840.P3529816504677505340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222842 (A167614 (n + 1)).toNat + A054899 n

end

end A222840.P3529816504677505340

/-! ## A222840.P7919379251218519341

`or(A000038(n), A222842(A167614(n+1)))`
-/

namespace A222840.P7919379251218519341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A222842 (A167614 (n + 1)).toNat)

end

end A222840.P7919379251218519341

/-! ## A222840.P11640442106890838552

`A147024(n+1)*A222842(A167614(n+1))`
-/

namespace A222840.P11640442106890838552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147024 (n + 1) * A222842 (A167614 (n + 1)).toNat

end

end A222840.P11640442106890838552

/-! ## A222840.P10300787944584290591

`A222842(A167614(n+1))%A204968(n+1)`
-/

namespace A222840.P10300787944584290591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A222842 (A167614 (n + 1)).toNat) (A204968 (n + 1))

end

end A222840.P10300787944584290591

/-!
# A222841: Number of n X 4 0..3 arrays with no more than floor(n X 4/2) elements equal to at least one horizontal or vertical neighbor, with new values introduced in row major 0..3 order.

The programs for A222841, there is no canonical definition to state claims against.
-/

/-! ## A222841.P5247801690820154731

`A222842(∑[n+3]+7)`
-/

namespace A222841.P5247801690820154731
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222842 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A222841.P5247801690820154731

/-! ## A222841.P7531359025055232910

`A020985(A013609(n))*A222842(A027379(n+2))`
-/

namespace A222841.P7531359025055232910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 (A013609 n).toNat * A222842 (A027379 (n + 2)).toNat

end

end A222841.P7531359025055232910

/-! ## A222841.P17478200931515506962

`A020985(A127824(n))*A222842(A027379(n+2))`
-/

namespace A222841.P17478200931515506962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 (A127824 n).toNat * A222842 (A027379 (n + 2)).toNat

end

end A222841.P17478200931515506962

/-!
# A222842: T(n,k) is the number of n X k 0..3 arrays with no more than floor(n*k/2) elements equal to at least one horizontal or vertical neighbor, with new values introduced in row major 0..3 order.

The programs for A222842, there is no canonical definition to state claims against.
-/

/-! ## A222842.P14435806253510750625

`A222828(n+1)+A185043(A202906(n+1))`
-/

namespace A222842.P14435806253510750625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222828 (n + 1) + A185043 (A202906 (n + 1)).toNat

end

end A222842.P14435806253510750625

/-! ## A222842.P8196255231656051418

`A321346(lcm(A004111(n), A207514(n+1)))`
-/

namespace A222842.P8196255231656051418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321346 (Int.lcm (A004111 n) (A207514 (n + 1)))

end

end A222842.P8196255231656051418

/-!
# A222843: Number of (n+1) X 2 0..2 arrays with every row and column least squares fitting to a positive slope straight line.

The programs for A222843, there is no canonical definition to state claims against.
-/

/-! ## A222843.P3664286682075211965

`A222971(n+1)/A222970(n+1)`
-/

namespace A222843.P3664286682075211965
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A222971 (n + 1) : ℚ) / (A222970 (n + 1) : ℚ)

end

end A222843.P3664286682075211965

/-! ## A222843.P17629077423298395003

`A222971(n+1)/(2^(n+1)-A133406(n+2))`
-/

namespace A222843.P17629077423298395003
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A222971 (n + 1) : ℚ) / ((2 ^ (n + 1) : ℤ) - A133406 (n + 2) : ℚ)

end

end A222843.P17629077423298395003

/-! ## A222843.P10009043561773266128

`A222971(n+1)/(2^(n+2)-A222855(n+2))`
-/

namespace A222843.P10009043561773266128
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A222971 (n + 1) : ℚ) / ((2 ^ (n + 2) : ℤ) - A222855 (n + 2) : ℚ)

end

end A222843.P10009043561773266128

/-! ## A222843.P9909691398333219744

`A222971(n+1)/(A222855(n+2)-A222955(n+2))`
-/

namespace A222843.P9909691398333219744
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A222971 (n + 1) : ℚ) / (A222855 (n + 2) - A222955 (n + 2) : ℚ)

end

end A222843.P9909691398333219744

/-! ## A222843.P10334034274157919583

`A222844(n+1)/A223310(n+1)`
-/

namespace A222843.P10334034274157919583
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A222844 (n + 1) : ℚ) / (A223310 (n + 1) : ℚ)

end

end A222843.P10334034274157919583

/-!
# A222844: Number of (n+1)X3 0..2 arrays with every row and column least squares fitting to a positive slope straight line.

The programs for A222844, there is no canonical definition to state claims against.
-/

/-! ## A222844.P17408952620448904386

`A222843(n+1)*A223310(n+1)`
-/

namespace A222844.P17408952620448904386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222843 (n + 1) * A223310 (n + 1)

end

end A222844.P17408952620448904386

/-! ## A222844.P926851262045884909

`(3^(n+2)-A223044(n+2))*A222843(n+1)`
-/

namespace A222844.P926851262045884909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((3 ^ (n + 2) : ℤ) - A223044 (n + 2)) * A222843 (n + 1)

end

end A222844.P926851262045884909

/-! ## A222844.P12108474160515621221

`A222971(n+1)/A222970(n+1)*A223310(n+1)`
-/

namespace A222844.P12108474160515621221
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A222971 (n + 1) : ℚ) / (A222970 (n + 1) : ℚ) * (A223310 (n + 1) : ℚ)

end

end A222844.P12108474160515621221

/-! ## A222844.P12069331241107348481

`A222971(n+1)/(2^(n+1)-A133406(n+2))*A223310(n+1)`
-/

namespace A222844.P12069331241107348481
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A222971 (n + 1) : ℚ) / ((2 ^ (n + 1) : ℤ) - A133406 (n + 2) : ℚ) * (A223310 (n + 1) : ℚ)

end

end A222844.P12069331241107348481

/-! ## A222844.P4232111512873103924

`A222971(n+1)/(2^(n+2)-A222855(n+2))*A223310(n+1)`
-/

namespace A222844.P4232111512873103924
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A222971 (n + 1) : ℚ) / ((2 ^ (n + 2) : ℤ) - A222855 (n + 2) : ℚ) * (A223310 (n + 1) : ℚ)

end

end A222844.P4232111512873103924

/-!
# A222845: Number of (n+1)X4 0..2 arrays with every row and column least squares fitting to a positive slope straight line.

The programs for A222845, there is no canonical definition to state claims against.
-/

/-! ## A222845.P10679846443457079542

`A222847(∑[n+2]+4)`
-/

namespace A222845.P10679846443457079542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222847 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A222845.P10679846443457079542

/-! ## A222845.P16106256905019816447

`lcm(2, A222847(A167614(n+1)))`
-/

namespace A222845.P16106256905019816447
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A222847 (A167614 (n + 1)).toNat)

end

end A222845.P16106256905019816447

/-! ## A222845.P3489239733181868636

`A222847(A167614(n+1))+A185246(n)`
-/

namespace A222845.P3489239733181868636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222847 (A167614 (n + 1)).toNat + A185246 n

end

end A222845.P3489239733181868636

/-!
# A222846: Number of (n+1) X 5 0..2 arrays with every row and column least squares fitting to a positive slope straight line.

The programs for A222846, there is no canonical definition to state claims against.
-/

/-! ## A222846.P10923805982575054230

`A222847(∑[n+3]+7)`
-/

namespace A222846.P10923805982575054230
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222847 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A222846.P10923805982575054230

/-! ## A222846.P13392491745326556757

`A222847(A374004(n+1))+A199041(n+1)`
-/

namespace A222846.P13392491745326556757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222847 (A374004 (n + 1)).toNat + A199041 (n + 1)

end

end A222846.P13392491745326556757

/-!
# A222848: Number of nX1 0..2 arrays with no more than floor(nX1/2) elements equal to at least one horizontal or vertical neighbor, with new values introduced in row major 0..2 order.

The programs for A222848, there is no canonical definition to state claims against.
-/

/-! ## A222848.P10232137836170802498

`A223126(∑[n]+1)`
-/

namespace A222848.P10232137836170802498
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223126 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A222848.P10232137836170802498

/-! ## A222848.P17190948447886079

`A223126(A000124(n))+A178798(n)`
-/

namespace A222848.P17190948447886079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223126 (A000124 n).toNat + A178798 n

end

end A222848.P17190948447886079

/-! ## A222848.P17781960563563758536

`A223126(A000124(n))%A076726(n)`
-/

namespace A222848.P17781960563563758536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A223126 (A000124 n).toNat) (A076726 n)

end

end A222848.P17781960563563758536

/-! ## A222848.P12655196700040553594

`lcm(A033999(n), A223126(A000124(n)))`
-/

namespace A222848.P12655196700040553594
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A223126 (A000124 n).toNat)

end

end A222848.P12655196700040553594

/-! ## A222848.P3042804951888423166

`A223149(∑[n]+1)`
-/

namespace A222848.P3042804951888423166
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223149 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A222848.P3042804951888423166

/-!
# A222849: Number of nX2 0..2 arrays with no more than floor(nX2/2) elements equal to at least one horizontal or vertical neighbor, with new values introduced in row major 0..2 order.

The programs for A222849, there is no canonical definition to state claims against.
-/

/-! ## A222849.P4689932560626837903

`A222853(∑[n+1]+2)`
-/

namespace A222849.P4689932560626837903
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222853 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A222849.P4689932560626837903

/-! ## A222849.P3687015541994923388

`record[A222853(A158823(n+1)+2)]`
-/

namespace A222849.P3687015541994923388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222853 (A158823 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222849.P3687015541994923388

/-! ## A222849.P4581913716049793305

`record[A010054(n)*A222853(n+2)]`
-/

namespace A222849.P4581913716049793305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A222853 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222849.P4581913716049793305

/-! ## A222849.P9575305030011206300

`record[A222853(n+1)/A179455(n)]`
-/

namespace A222849.P9575305030011206300
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A222853 (n + 1) : ℚ) / (A179455 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222849.P9575305030011206300

/-! ## A222849.P15370204124471039402

`record[A222853(n+3)/A051339(n)]`
-/

namespace A222849.P15370204124471039402
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A222853 (n + 3) : ℚ) / (A051339 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222849.P15370204124471039402

/-!
# A222850: Number of nX3 0..2 arrays with no more than floor(nX3/2) elements equal to at least one horizontal or vertical neighbor, with new values introduced in row major 0..2 order.

The programs for A222850, there is no canonical definition to state claims against.
-/

/-! ## A222850.P9168813194968906658

`A222853(∑[n+2]+4)`
-/

namespace A222850.P9168813194968906658
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222853 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A222850.P9168813194968906658

/-! ## A222850.P9058705853778750852

`record[A222853(A158823(n+1)+3)]`
-/

namespace A222850.P9058705853778750852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222853 (A158823 (n + 1) + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222850.P9058705853778750852

/-! ## A222850.P14918253170161094793

`A222853(A167614(n+1))+n-∏{digits}[n, #]`
-/

namespace A222850.P14918253170161094793
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222853 (A167614 (n + 1)).toNat + ((n : ℤ) - ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).prod : ℕ) : ℤ))

end

end A222850.P14918253170161094793

/-! ## A222850.P4146705960938045981

`A222853(A167614(n+1))+A025442(n)`
-/

namespace A222850.P4146705960938045981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222853 (A167614 (n + 1)).toNat + A025442 n

end

end A222850.P4146705960938045981

/-! ## A222850.P11110205766229266882

`A222853(A167614(n+1))+A025444(n)`
-/

namespace A222850.P11110205766229266882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222853 (A167614 (n + 1)).toNat + A025444 n

end

end A222850.P11110205766229266882

/-!
# A222851: Number of nX4 0..2 arrays with no more than floor(nX4/2) elements equal to at least one horizontal or vertical neighbor, with new values introduced in row major 0..2 order.

The programs for A222851, there is no canonical definition to state claims against.
-/

/-! ## A222851.P14455785526185453348

`A222853(A141214(n)+7)`
-/

namespace A222851.P14455785526185453348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222853 (A141214 n + 7).toNat

end

end A222851.P14455785526185453348

/-! ## A222851.P1240606901547749025

`A222853(A052905(n)+9)`
-/

namespace A222851.P1240606901547749025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222853 (A052905 n + 9).toNat

end

end A222851.P1240606901547749025

/-! ## A222851.P3419925230066796114

`A222853(A055999(n)+10)`
-/

namespace A222851.P3419925230066796114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222853 (A055999 n + 10).toNat

end

end A222851.P3419925230066796114

/-! ## A222851.P6982899915758458364

`A222853(eq[5, A066657(n)])`
-/

namespace A222851.P6982899915758458364
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222853 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222851.P6982899915758458364

/-! ## A222851.P14205651791985962640

`A222853(A167614(n+2)+1)`
-/

namespace A222851.P14205651791985962640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222853 (A167614 (n + 2) + 1).toNat

end

end A222851.P14205651791985962640

/-!
# A222852: Number of nX5 0..2 arrays with no more than floor(nX5/2) elements equal to at least one horizontal or vertical neighbor, with new values introduced in row major 0..2 order.

The programs for A222852, there is no canonical definition to state claims against.
-/

/-! ## A222852.P372500540428574581

`A222853(A167499(n+3))`
-/

namespace A222852.P372500540428574581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222853 (A167499 (n + 3)).toNat

end

end A222852.P372500540428574581

/-! ## A222852.P5210592100865364722

`A222853(A155212(n)+13)`
-/

namespace A222852.P5210592100865364722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222853 (A155212 n + 13).toNat

end

end A222852.P5210592100865364722

/-! ## A222852.P3725322533115822029

`A222853(A056000(n)+15)`
-/

namespace A222852.P3725322533115822029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222853 (A056000 n + 15).toNat

end

end A222852.P3725322533115822029

/-! ## A222852.P10213842514347670215

`A222853(eq[7, A066657(n)])`
-/

namespace A222852.P10213842514347670215
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222853 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222852.P10213842514347670215

/-!
# A222853: T(n,k)=Number of nXk 0..2 arrays with no more than floor(nXk/2) elements equal to at least one horizontal or vertical neighbor, with new values introduced in row major 0..2 order.

The programs for A222853, there is no canonical definition to state claims against.
-/

/-! ## A222853.P5613137235548531669

`A234041(A197805(n+1)^A071203(n+1))`
-/

namespace A222853.P5613137235548531669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234041 (SequenceMachineLib.roundAway ((A197805 (n + 1) : ℚ) ^ (A071203 (n + 1) : ℤ))).toNat

end

end A222853.P5613137235548531669

/-! ## A222853.P1350572301147855160

`A234041(A071203(n+1)²²*A197805(n+1))`
-/

namespace A222853.P1350572301147855160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234041 ((A071203 (n + 1) ^ 2) ^ 2 * A197805 (n + 1)).toNat

end

end A222853.P1350572301147855160

/-! ## A222853.P15881062604406852157

`A234041(A197805(n+1))%A141214(A234041(n))`
-/

namespace A222853.P15881062604406852157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A234041 (A197805 (n + 1)).toNat) (A141214 (A234041 n).toNat)

end

end A222853.P15881062604406852157

/-!
# A222854: Number of n X n 0..1 arrays with every row and column least squares fitting to a nonnegative slope straight line, with a single point array taken as having zero slope.

The programs for A222854, there is no canonical definition to state claims against.
-/

/-! ## A222854.P1598546864727791214

`A222862(∑[4*n]+1)`
-/

namespace A222854.P1598546864727791214
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222862 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A222854.P1598546864727791214

/-! ## A222854.P14112272374114535908

`lcm(2, A222862(A001844(n)))`
-/

namespace A222854.P14112272374114535908
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A222862 (A001844 n).toNat)

end

end A222854.P14112272374114535908

/-! ## A222854.P6014290020268615955

`record[A222862(Δ[A235355(n)])]`
-/

namespace A222854.P6014290020268615955
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222862 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222854.P6014290020268615955

/-! ## A222854.P11891887882824155839

`record[A222862(A330613(n+1))]`
-/

namespace A222854.P11891887882824155839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222862 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222854.P11891887882824155839

/-!
# A222855: Number of n X 1 0..1 arrays with every row and column least squares fitting to a nonnegative slope straight line, with a single point array taken as having zero slope.

The programs for A222855, there is no canonical definition to state claims against.
-/

/-! ## A222855.P9765265837172805103

`A133406(n+1)+2^n`
-/

namespace A222855.P9765265837172805103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133406 (n + 1) + (2 ^ n : ℤ)

end

end A222855.P9765265837172805103

/-! ## A222855.P11675134309356358704

`2^n+A222955(n+1)/2`
-/

namespace A222855.P11675134309356358704
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℚ) + (A222955 (n + 1) : ℚ) / 2

end

end A222855.P11675134309356358704

/-! ## A222855.P9626459293070651647

`xor(A133406(n+1), A171559(n))`
-/

namespace A222855.P9626459293070651647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A133406 (n + 1)) (A171559 n)

end

end A222855.P9626459293070651647

/-! ## A222855.P15366900427874048353

`xor(A222955(n+1)/2, A171559(n))`
-/

namespace A222855.P15366900427874048353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (SequenceMachineLib.roundAway ((A222955 (n + 1) : ℚ) / 2)) (A171559 n)

end

end A222855.P15366900427874048353

/-! ## A222855.P17125881109572697742

`ceil(A000079(n)+A222955(n+1)/2)`
-/

namespace A222855.P17125881109572697742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000079 n : ℚ) + (A222955 (n + 1) : ℚ) / 2⌉

end

end A222855.P17125881109572697742

/-! ## A222855.P1183865392411921637

`(A222955(n+1)+A000079(n+1))/2`
-/

namespace A222855.P1183865392411921637
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A222955 (n + 1) + A000079 (n + 1) : ℚ) / 2

end

end A222855.P1183865392411921637

/-! ## A222855.P16501438101031923689

`ceil(A011782(n+1)+A222955(n+1)/2)`
-/

namespace A222855.P16501438101031923689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A011782 (n + 1) : ℚ) + (A222955 (n + 1) : ℚ) / 2⌉

end

end A222855.P16501438101031923689

/-!
# A222856: Number of nX2 0..1 arrays with every row and column least squares fitting to a nonnegative slope straight line, with a single point array taken as having zero slope.

The programs for A222856, there is no canonical definition to state claims against.
-/

/-! ## A222856.P9719450745966342083

`A222857(n+1)/A222855(n+1)`
-/

namespace A222856.P9719450745966342083
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A222857 (n + 1) : ℚ) / (A222855 (n + 1) : ℚ)

end

end A222856.P9719450745966342083

/-! ## A222856.P4189968850979179459

`A222857(n+1)/(2^n+A222955(n+1)/2)`
-/

namespace A222856.P4189968850979179459
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A222857 (n + 1) : ℚ) / ((2 ^ n : ℚ) + (A222955 (n + 1) : ℚ) / 2)

end

end A222856.P4189968850979179459

/-! ## A222856.P963841153052133994

`A222857(n+1)/(A133406(n+1)+A000079(n))`
-/

namespace A222856.P963841153052133994
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A222857 (n + 1) : ℚ) / (A133406 (n + 1) + A000079 n : ℚ)

end

end A222856.P963841153052133994

/-! ## A222856.P2438379768569550277

`A222857(n+1)/xor(A133406(n+1), A171559(n))`
-/

namespace A222856.P2438379768569550277
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A222857 (n + 1) : ℚ) / (Int.xor (A133406 (n + 1)) (A171559 n) : ℚ)

end

end A222856.P2438379768569550277

/-! ## A222856.P855771927276586525

`A222857(n+1)/(A133406(n+1)+∑[A011782(n)])`
-/

namespace A222856.P855771927276586525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A222857 (n + 1) : ℚ) / ((A133406 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A222856.P855771927276586525

/-!
# A222857: Number of nX3 0..1 arrays with every row and column least squares fitting to a nonnegative slope straight line, with a single point array taken as having zero slope.

The programs for A222857, there is no canonical definition to state claims against.
-/

/-! ## A222857.P16212611130711619307

`A222855(n+1)*A222856(n+1)`
-/

namespace A222857.P16212611130711619307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222855 (n + 1) * A222856 (n + 1)

end

end A222857.P16212611130711619307

/-! ## A222857.P475820110605754640

`(2^n+A222955(n+1)/2)*A222856(n+1)`
-/

namespace A222857.P475820110605754640
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 ^ n : ℚ) + (A222955 (n + 1) : ℚ) / 2) * (A222856 (n + 1) : ℚ)

end

end A222857.P475820110605754640

/-! ## A222857.P8074304123278049678

`(A133406(n+1)+A000079(n))*A222856(n+1)`
-/

namespace A222857.P8074304123278049678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A133406 (n + 1) + A000079 n) * A222856 (n + 1)

end

end A222857.P8074304123278049678

/-! ## A222857.P14733300062078493257

`xor(A133406(n+1), A171559(n))*A222856(n+1)`
-/

namespace A222857.P14733300062078493257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A133406 (n + 1)) (A171559 n) * A222856 (n + 1)

end

end A222857.P14733300062078493257

/-! ## A222857.P4007170887418224497

`(A133406(n+1)+∑[A011782(n)])*A222856(n+1)`
-/

namespace A222857.P4007170887418224497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A133406 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j) * A222856 (n + 1)

end

end A222857.P4007170887418224497

/-!
# A222858: Number of nX4 0..1 arrays with every row and column least squares fitting to a nonnegative slope straight line, with a single point array taken as having zero slope.

The programs for A222858, there is no canonical definition to state claims against.
-/

/-! ## A222858.P7209364947593011767

`A222859(n+1)/A222855(n+1)`
-/

namespace A222858.P7209364947593011767
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A222859 (n + 1) : ℚ) / (A222855 (n + 1) : ℚ)

end

end A222858.P7209364947593011767

/-! ## A222858.P8493109824514029312

`A222859(n+1)/(A133406(n+1)+A000079(n))`
-/

namespace A222858.P8493109824514029312
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A222859 (n + 1) : ℚ) / (A133406 (n + 1) + A000079 n : ℚ)

end

end A222858.P8493109824514029312

/-! ## A222858.P18011113575453246141

`A222856(n+1)/A222857(n+1)*A222859(n+1)`
-/

namespace A222858.P18011113575453246141
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A222856 (n + 1) : ℚ) / (A222857 (n + 1) : ℚ) * (A222859 (n + 1) : ℚ)

end

end A222858.P18011113575453246141

/-! ## A222858.P10672027776812084518

`A222859(n+1)/A222862(A000124(n))`
-/

namespace A222858.P10672027776812084518
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A222859 (n + 1) : ℚ) / (A222862 (A000124 n).toNat : ℚ)

end

end A222858.P10672027776812084518

/-! ## A222858.P11314328806292436305

`A222862(∑[n+3]+7)`
-/

namespace A222858.P11314328806292436305
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222862 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A222858.P11314328806292436305

/-!
# A222859: Number of nX5 0..1 arrays with every row and column least squares fitting to a nonnegative slope straight line, with a single point array taken as having zero slope.

The programs for A222859, there is no canonical definition to state claims against.
-/

/-! ## A222859.P333764329681834676

`A222855(n+1)*A222858(n+1)`
-/

namespace A222859.P333764329681834676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222855 (n + 1) * A222858 (n + 1)

end

end A222859.P333764329681834676

/-! ## A222859.P15570888020935167283

`(A133406(n+1)+A000079(n))*A222858(n+1)`
-/

namespace A222859.P15570888020935167283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A133406 (n + 1) + A000079 n) * A222858 (n + 1)

end

end A222859.P15570888020935167283

/-! ## A222859.P16668941614454898630

`xor(A133406(n+1), A171559(n))*A222858(n+1)`
-/

namespace A222859.P16668941614454898630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A133406 (n + 1)) (A171559 n) * A222858 (n + 1)

end

end A222859.P16668941614454898630

/-! ## A222859.P15535874356924322307

`A222857(n+1)/A222856(n+1)*A222858(n+1)`
-/

namespace A222859.P15535874356924322307
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A222857 (n + 1) : ℚ) / (A222856 (n + 1) : ℚ) * (A222858 (n + 1) : ℚ)

end

end A222859.P15535874356924322307

/-! ## A222859.P5036146443084439344

`A222858(n+1)*A222862(A000124(n))`
-/

namespace A222859.P5036146443084439344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222858 (n + 1) * A222862 (A000124 n).toNat

end

end A222859.P5036146443084439344

/-!
# A222860: Number of nX6 0..1 arrays with every row and column least squares fitting to a nonnegative slope straight line, with a single point array taken as having zero slope.

The programs for A222860, there is no canonical definition to state claims against.
-/

/-! ## A222860.P17572456574495864388

`A222862(∑[n+5]+16)`
-/

namespace A222860.P17572456574495864388
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222862 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A222860.P17572456574495864388

/-! ## A222860.P17523516500406782511

`lcm(2, A222862(A166136(n+4)))`
-/

namespace A222860.P17523516500406782511
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A222862 (A166136 (n + 4)).toNat)

end

end A222860.P17523516500406782511

/-! ## A222860.P10908112678106093708

`record[A222862(A000124(∑{e}[n+1, #]+5)+5)]`
-/

namespace A222860.P10908112678106093708
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222862 (A000124 (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p + 5) + 5).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222860.P10908112678106093708

/-! ## A222860.P6734804188857108849

`C(A222862(A167487(n+4)-1), A091717(n+1))`
-/

namespace A222860.P6734804188857108849
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A222862 (A167487 (n + 4) - 1).toNat).toNat (A091717 (n + 1)).toNat

end

end A222860.P6734804188857108849

/-!
# A222861: Number of nX7 0..1 arrays with every row and column least squares fitting to a nonnegative slope straight line, with a single point array taken as having zero slope.

The programs for A222861, there is no canonical definition to state claims against.
-/

/-! ## A222861.P9956811749912240106

`A222862(A167487(n+5))`
-/

namespace A222861.P9956811749912240106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222862 (A167487 (n + 5)).toNat

end

end A222861.P9956811749912240106

/-! ## A222861.P777874191298944655

`A222862(A056119(n)+28)`
-/

namespace A222861.P777874191298944655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222862 (A056119 n + 28).toNat

end

end A222861.P777874191298944655

/-! ## A222861.P10631199228277236954

`A222862(eq[11, A066657(n)])`
-/

namespace A222861.P10631199228277236954
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222862 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222861.P10631199228277236954

/-! ## A222861.P4445854705509279230

`A222862(eq[8, A131818(n+1)])`
-/

namespace A222861.P4445854705509279230
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222862 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222861.P4445854705509279230

/-! ## A222861.P1576138442810930765

`A222862(A000124(n+7)-(n+1))`
-/

namespace A222861.P1576138442810930765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222862 (A000124 (n + 7) - (n + 1 : ℤ)).toNat

end

end A222861.P1576138442810930765

/-!
# A222864: Triangle T(n,k) of strongly graded (3+1)-free partially ordered sets (posets) on n labeled vertices with height k.

The programs for A222864, there is no canonical definition to state claims against.
-/

/-! ## A222864.P8146179711427095677

`filter[A361956(n+1), A022932(#)]`
-/

namespace A222864.P8146179711427095677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361956 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A022932 (f1 j).toNat = 1) n)

end

end A222864.P8146179711427095677

/-! ## A222864.P2978146406057035606

`filter[A361956(n+1), A109720(#)]`
-/

namespace A222864.P2978146406057035606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361956 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A109720 (f1 j).toNat = 1) n)

end

end A222864.P2978146406057035606

/-! ## A222864.P15633488442442689122

`filter[A361956(n+1), A144610(#)]`
-/

namespace A222864.P15633488442442689122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361956 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A144610 (f1 j).toNat = 1) n)

end

end A222864.P15633488442442689122

/-! ## A222864.P5127256598205684960

`filter[A361956(n+1), A145568(#)]`
-/

namespace A222864.P5127256598205684960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361956 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145568 (f1 j).toNat = 1) n)

end

end A222864.P5127256598205684960

/-! ## A222864.P2007559462932754073

`filter[A361956(n+1), A276398(#)]`
-/

namespace A222864.P2007559462932754073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361956 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A276398 (f1 j).toNat = 1) n)

end

end A222864.P2007559462932754073

/-!
# A222865: Weakly graded (3+1)-free partially ordered sets (posets) on n labeled vertices.

The programs for A222865, there is no canonical definition to state claims against.
-/

/-! ## A222865.P4337835584450254149

`A004442(A262718(n))`
-/

namespace A222865.P4337835584450254149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A262718 n).toNat

end

end A222865.P4337835584450254149

/-! ## A222865.P8696744001245372882

`A262718(A001096(n))+1`
-/

namespace A222865.P8696744001245372882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262718 (A001096 n).toNat + 1

end

end A222865.P8696744001245372882

/-!
# A222866: Triangle T(n,k) of weakly graded (3+1)-free partially ordered sets (posets) on n labeled vertices with height k.

The programs for A222866, there is no canonical definition to state claims against.
-/

/-! ## A222866.P18406696831944637911

`A342587(n+1)+A255008(A309271(n+1))`
-/

namespace A222866.P18406696831944637911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342587 (n + 1) + A255008 (A309271 (n + 1)).toNat

end

end A222866.P18406696831944637911

/-!
# A222867: Number of n X 1 0..5 arrays with no element equal to another at a city block distance of exactly two, and new values 0..5 introduced in row major order.

The programs for A222867, the canonical program `A222867.P14462431900445029518` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A222867 has offset 1).

The definition of A222867 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 146 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A222867.P14462431900445029518

`11*a(n-1)-41*a(n-2)+61*a(n-3)-30*a(n-4)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=7, a(4)=20, a(5)=67`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A222867

/-- `11*a(n-1)-41*a(n-2)+61*a(n-3)-30*a(n-4)` -/
def P14462431900445029518.Spec : Prop :=
  ∀ n, P14462431900445029518.a n = A222867 (n + 1)

theorem P14462431900445029518.correct : P14462431900445029518.Spec := by
  intro n
  simp only [A222867, Nat.add_sub_cancel]

end A222867

/-! ## A222867.P6749824138734963955

`A222871(∑[n]+1)`
-/

namespace A222867.P6749824138734963955
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222871 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A222867.P6749824138734963955

namespace A222867

/-- `A222871(∑[n]+1)` -/
def P6749824138734963955.Spec : Prop :=
  ∀ n, P6749824138734963955.a n = A222867 (n + 1)

end A222867

/-! ## A222867.P14250108755757721740

`record[A222871(A056534(n+1))]`
-/

namespace A222867.P14250108755757721740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222871 (A056534 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222867.P14250108755757721740

namespace A222867

/-- `record[A222871(A056534(n+1))]` -/
def P14250108755757721740.Spec : Prop :=
  ∀ n, P14250108755757721740.a n = A222867 (n + 1)

end A222867

/-! ## A222867.P1702299057890893650

`record[A222871(A246276(n+1))]`
-/

namespace A222867.P1702299057890893650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222871 (A246276 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222867.P1702299057890893650

namespace A222867

/-- `record[A222871(A246276(n+1))]` -/
def P1702299057890893650.Spec : Prop :=
  ∀ n, P1702299057890893650.a n = A222867 (n + 1)

end A222867

/-! ## A222867.P13419816037945942438

`record[A222871(A286235(n+1))]`
-/

namespace A222867.P13419816037945942438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222871 (A286235 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222867.P13419816037945942438

namespace A222867

/-- `record[A222871(A286235(n+1))]` -/
def P13419816037945942438.Spec : Prop :=
  ∀ n, P13419816037945942438.a n = A222867 (n + 1)

end A222867

/-!
# A222868: Number of n X 2 0..5 arrays with no element equal to another at a city block distance of exactly two, and new values 0..5 introduced in row major order.

The programs for A222868, there is no canonical definition to state claims against.
-/

/-! ## A222868.P5246647283839601247

`A222871(∑[n+1]+2)`
-/

namespace A222868.P5246647283839601247
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222871 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A222868.P5246647283839601247

/-! ## A222868.P14344170060301656201

`or(2, A222871(A133263(n+1)))`
-/

namespace A222868.P14344170060301656201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A222871 (A133263 (n + 1)).toNat)

end

end A222868.P14344170060301656201

/-! ## A222868.P7769953389594654618

`or(2, A222871(A000096(n)+3))`
-/

namespace A222868.P7769953389594654618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A222871 (A000096 n + 3).toNat)

end

end A222868.P7769953389594654618

/-! ## A222868.P10484185798811482291

`record[A222871(A286235(n+1)+1)]`
-/

namespace A222868.P10484185798811482291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222871 (A286235 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222868.P10484185798811482291

/-! ## A222868.P4797327831150014260

`record[A222871(n+2)/A163626(n)]`
-/

namespace A222868.P4797327831150014260
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A222871 (n + 2) : ℚ) / (A163626 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222868.P4797327831150014260

/-!
# A222869: Number of n X 3 0..5 arrays with no element equal to another at a city block distance of exactly two, and new values 0..5 introduced in row major order.

The programs for A222869, there is no canonical definition to state claims against.
-/

/-! ## A222869.P1482166150992795898

`A222871(∑[n+2]+4)`
-/

namespace A222869.P1482166150992795898
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222871 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A222869.P1482166150992795898

/-! ## A222869.P9631500960155751228

`record[A222871(A357504(3*(n+1)))]`
-/

namespace A222869.P9631500960155751228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222871 (A357504 (3 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222869.P9631500960155751228

/-! ## A222869.P382883137042996109

`record[A222871(n+4)/A135494(n+1)]`
-/

namespace A222869.P382883137042996109
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A222871 (n + 4) : ℚ) / (A135494 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222869.P382883137042996109

/-! ## A222869.P952698990546264706

`lcm(2^(n%3), A222871(A167614(n+1)))`
-/

namespace A222869.P952698990546264706
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (2 ^ (n % 3) : ℤ) (A222871 (A167614 (n + 1)).toNat)

end

end A222869.P952698990546264706

/-! ## A222869.P3496073716317761801

`A222871(A167614(n+1))+A025463(n)`
-/

namespace A222869.P3496073716317761801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222871 (A167614 (n + 1)).toNat + A025463 n

end

end A222869.P3496073716317761801

/-!
# A222870: Number of nX4 0..5 arrays with no element equal to another at a city block distance of exactly two, and new values 0..5 introduced in row major order.

The programs for A222870, there is no canonical definition to state claims against.
-/

/-! ## A222870.P7770463260312559409

`A222871(∑[n+3]+7)`
-/

namespace A222870.P7770463260312559409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222871 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A222870.P7770463260312559409

/-! ## A222870.P10492607545486719398

`record[A222871(n+5)/A049459(n)]`
-/

namespace A222870.P10492607545486719398
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A222871 (n + 5) : ℚ) / (A049459 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222870.P10492607545486719398

/-! ## A222870.P525086712472770522

`record[root(A222871(n+5), A222969(n+1))]`
-/

namespace A222870.P525086712472770522
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A222871 (n + 5) : ℝ) ^ (1 / (A222969 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222870.P525086712472770522

/-! ## A222870.P1103798108435060150

`A222871(A374004(n+1))+A076142(n+1)`
-/

namespace A222870.P1103798108435060150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222871 (A374004 (n + 1)).toNat + A076142 (n + 1)

end

end A222870.P1103798108435060150

/-!
# A222871: T(n,k)=Number of nXk 0..5 arrays with no element equal to another at a city block distance of exactly two, and new values 0..5 introduced in row major order.

The programs for A222871, there is no canonical definition to state claims against.
-/

/-! ## A222871.P616794724800217538

`A222894(n+1)-A058348(A154372(n))`
-/

namespace A222871.P616794724800217538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222894 (n + 1) - A058348 (A154372 n).toNat

end

end A222871.P616794724800217538

/-! ## A222871.P15767462963128668183

`A222779(A082743(n))`
-/

namespace A222871.P15767462963128668183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222779 (A082743 n).toNat

end

end A222871.P15767462963128668183

/-! ## A222871.P7568456617476713380

`A222779(A381225(n))`
-/

namespace A222871.P7568456617476713380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222779 (A381225 n).toNat

end

end A222871.P7568456617476713380

/-! ## A222871.P5220619971615926015

`A222779(A001104(n+1))`
-/

namespace A222871.P5220619971615926015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222779 (A001104 (n + 1)).toNat

end

end A222871.P5220619971615926015

/-! ## A222871.P11650215675753908055

`A222779(A002998(n+1))`
-/

namespace A222871.P11650215675753908055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222779 (A002998 (n + 1)).toNat

end

end A222871.P11650215675753908055

/-!
# A222872: Number of nX2 0..3 arrays with no more than floor(nX2/2) elements equal to at least one horizontal or antidiagonal neighbor, with new values introduced in row major 0..3 order.

The programs for A222872, there is no canonical definition to state claims against.
-/

/-! ## A222872.P9851627811513679471

`A222650(2*(n+1))`
-/

namespace A222872.P9851627811513679471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222650 (2 * (n + 1))

end

end A222872.P9851627811513679471

/-! ## A222872.P17057150857400535027

`record[A222650(n+1)/A027642(n)]`
-/

namespace A222872.P17057150857400535027
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A222650 (n + 1) : ℚ) / (A027642 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222872.P17057150857400535027

/-! ## A222872.P12780258559983065444

`record[A222650(n+2)/A033999(n)]`
-/

namespace A222872.P12780258559983065444
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A222650 (n + 2) : ℚ) / (A033999 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222872.P12780258559983065444

/-! ## A222872.P7912248249438856762

`record[A222650(n+1)^A062157(n)]`
-/

namespace A222872.P7912248249438856762
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A222650 (n + 1) : ℚ) ^ (A062157 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222872.P7912248249438856762

/-! ## A222872.P640829895689602132

`record[gcd(A035363(n), A222650(n+1))]`
-/

namespace A222872.P640829895689602132
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A035363 n) (A222650 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222872.P640829895689602132

/-! ## A222872.P1555218861681623676

`record[and(A033999(n), A222650(n+1))]`
-/

namespace A222872.P1555218861681623676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A033999 n) (A222650 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222872.P1555218861681623676

/-! ## A222872.P3792882344267970251

`record[A222650(n+2)/A062157(n+1)]`
-/

namespace A222872.P3792882344267970251
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A222650 (n + 2) : ℚ) / (A062157 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222872.P3792882344267970251

/-!
# A222873: Number of nX3 0..3 arrays with no more than floor(nX3/2) elements equal to at least one horizontal or antidiagonal neighbor, with new values introduced in row major 0..3 order.

The programs for A222873, there is no canonical definition to state claims against.
-/

/-! ## A222873.P16184753649377078711

`A222878(∑[n+3]+1)`
-/

namespace A222873.P16184753649377078711
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222878 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A222873.P16184753649377078711

/-!
# A222874: Number of nX4 0..3 arrays with no more than floor(nX4/2) elements equal to at least one horizontal or antidiagonal neighbor, with new values introduced in row major 0..3 order.

The programs for A222874, there is no canonical definition to state claims against.
-/

/-! ## A222874.P1777001466540463452

`A222878(A141214(n+1))`
-/

namespace A222874.P1777001466540463452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222878 (A141214 (n + 1)).toNat

end

end A222874.P1777001466540463452

/-! ## A222874.P11820383254343712091

`A222878(A056000(n)+7)`
-/

namespace A222874.P11820383254343712091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222878 (A056000 n + 7).toNat

end

end A222874.P11820383254343712091

/-! ## A222874.P5041760762563566296

`A222878(eq[3, A193592(n)])`
-/

namespace A222874.P5041760762563566296
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222878 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222874.P5041760762563566296

/-! ## A222874.P7070349218999020827

`A222878(A052905(n+1)+2)`
-/

namespace A222874.P7070349218999020827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222878 (A052905 (n + 1) + 2).toNat

end

end A222874.P7070349218999020827

/-! ## A222874.P4537551778862459277

`A222878(A167499(n)+A016777(n))`
-/

namespace A222874.P4537551778862459277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222878 (A167499 n + A016777 n).toNat

end

end A222874.P4537551778862459277

/-!
# A222875: Number of nX5 0..3 arrays with no more than floor(nX5/2) elements equal to at least one horizontal or antidiagonal neighbor, with new values introduced in row major 0..3 order.

The programs for A222875, there is no canonical definition to state claims against.
-/

/-! ## A222875.P16954081314255081231

`A222878(A046691(n+3))`
-/

namespace A222875.P16954081314255081231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222878 (A046691 (n + 3)).toNat

end

end A222875.P16954081314255081231

/-! ## A222875.P2552821685144784819

`A222878(Δ[A023545(n+1)])`
-/

namespace A222875.P2552821685144784819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222878 (f1 (n + 1) - f1 n).toNat

end

end A222875.P2552821685144784819

/-! ## A222875.P1218361323688859373

`A222878(eq[2, A193592(n)-2])`
-/

namespace A222875.P1218361323688859373
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222878 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222875.P1218361323688859373

/-!
# A222876: 

The programs for A222876, there is no canonical definition to state claims against.
-/

/-! ## A222876.P2200969054278638211

`A222878(eq[3, A219347(n)])`
-/

namespace A222876.P2200969054278638211
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222878 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222876.P2200969054278638211

/-! ## A222876.P14663065796855430618

`A222878(eq[5, A193592(n)])`
-/

namespace A222876.P14663065796855430618
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222878 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222876.P14663065796855430618

/-! ## A222876.P18006930713080509923

`A222878(A034856(n+5)-3)`
-/

namespace A222876.P18006930713080509923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222878 (A034856 (n + 5) - 3).toNat

end

end A222876.P18006930713080509923

/-!
# A222879: Number of 2Xn 0..3 arrays with no more than floor(2Xn/2) elements equal to at least one horizontal or antidiagonal neighbor, with new values introduced in row major 0..3 order.

The programs for A222879, there is no canonical definition to state claims against.
-/

/-! ## A222879.P3488058339409283306

`A222878(∑[n+1]+2)`
-/

namespace A222879.P3488058339409283306
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222878 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A222879.P3488058339409283306

/-! ## A222879.P2335790774623038284

`record[A222878(A255556(n+1)+2)]`
-/

namespace A222879.P2335790774623038284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222878 (A255556 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222879.P2335790774623038284

/-! ## A222879.P10233843579218166638

`record[root(A222878(n+3), A094441(n))]`
-/

namespace A222879.P10233843579218166638
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A222878 (n + 3) : ℝ) ^ (1 / (A094441 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222879.P10233843579218166638

/-!
# A222880: Number of 3Xn 0..3 arrays with no more than floor(3Xn/2) elements equal to at least one horizontal or antidiagonal neighbor, with new values introduced in row major 0..3 order.

The programs for A222880, there is no canonical definition to state claims against.
-/

/-! ## A222880.P4940720016566919821

`A222878(∑[n+2]+4)`
-/

namespace A222880.P4940720016566919821
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222878 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A222880.P4940720016566919821

/-! ## A222880.P5249551168339157180

`A222878(A167614(n+1))+A055965(n)`
-/

namespace A222880.P5249551168339157180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222878 (A167614 (n + 1)).toNat + A055965 n

end

end A222880.P5249551168339157180

/-! ## A222880.P1585505708069983610

`or(A076710(n), A222878(A167614(n+1)))`
-/

namespace A222880.P1585505708069983610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A076710 n) (A222878 (A167614 (n + 1)).toNat)

end

end A222880.P1585505708069983610

/-! ## A222880.P3464302274394648855

`or(A151935(n), A222878(A167614(n+1)))`
-/

namespace A222880.P3464302274394648855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A151935 n) (A222878 (A167614 (n + 1)).toNat)

end

end A222880.P3464302274394648855

/-! ## A222880.P3118654283027749149

`or(A222878(A167614(n+1)), A316865(n))`
-/

namespace A222880.P3118654283027749149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A222878 (A167614 (n + 1)).toNat) (A316865 n)

end

end A222880.P3118654283027749149

/-!
# A222881: Number of 4Xn 0..3 arrays with no more than floor(4Xn/2) elements equal to at least one horizontal or antidiagonal neighbor, with new values introduced in row major 0..3 order.

The programs for A222881, there is no canonical definition to state claims against.
-/

/-! ## A222881.P7473021723008218156

`A222878(A141214(n)+7)`
-/

namespace A222881.P7473021723008218156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222878 (A141214 n + 7).toNat

end

end A222881.P7473021723008218156

/-! ## A222881.P7612477095665648311

`A222878(A052905(n)+9)`
-/

namespace A222881.P7612477095665648311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222878 (A052905 n + 9).toNat

end

end A222881.P7612477095665648311

/-! ## A222881.P2365414667507353604

`A222878(A055999(n)+10)`
-/

namespace A222881.P2365414667507353604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222878 (A055999 n + 10).toNat

end

end A222881.P2365414667507353604

/-! ## A222881.P1305676329406785599

`A222878(A167614(n+2)+1)`
-/

namespace A222881.P1305676329406785599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222878 (A167614 (n + 2) + 1).toNat

end

end A222881.P1305676329406785599

/-! ## A222881.P7665639579853216067

`A222878(eq[3, A002262(n)]+1)`
-/

namespace A222881.P7665639579853216067
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222878 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A222881.P7665639579853216067

/-!
# A222884: Number of nX1 0..2 arrays with exactly floor(nX1/2) elements equal to at least one horizontal or vertical neighbor, with new values introduced in row major 0..2 order.

The programs for A222884, there is no canonical definition to state claims against.
-/

/-! ## A222884.P10238158626709175902

`A223104(∑[n]+1)`
-/

namespace A222884.P10238158626709175902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223104 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A222884.P10238158626709175902

/-! ## A222884.P714536732174760239

`A223104(A000124(n))-A000007(n+4)`
-/

namespace A222884.P714536732174760239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223104 (A000124 n).toNat - A000007 (n + 4)

end

end A222884.P714536732174760239

/-! ## A222884.P10323665147908724598

`A222918(∑[n]+1)`
-/

namespace A222884.P10323665147908724598
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222918 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A222884.P10323665147908724598

/-! ## A222884.P8651070738078658847

`A223033(∑[n]+1)`
-/

namespace A222884.P8651070738078658847
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223033 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A222884.P8651070738078658847

/-! ## A222884.P10119968204536612877

`and(-1, A222918(A000124(n)))`
-/

namespace A222884.P10119968204536612877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A222918 (A000124 n).toNat)

end

end A222884.P10119968204536612877

/-!
# A222885: Number of nX2 0..2 arrays with exactly floor(nX2/2) elements equal to at least one horizontal or vertical neighbor, with new values introduced in row major 0..2 order.

The programs for A222885, there is no canonical definition to state claims against.
-/

/-! ## A222885.P99175575680945136

`A222889(∑[n+1]+2)`
-/

namespace A222885.P99175575680945136
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222889 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A222885.P99175575680945136

/-! ## A222885.P2176446139099716764

`record[A222889(n+3)/A126331(n)]`
-/

namespace A222885.P2176446139099716764
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A222889 (n + 3) : ℚ) / (A126331 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222885.P2176446139099716764

/-! ## A222885.P13406174281274142332

`record[A222889(n+2)/A222864(n+1)]`
-/

namespace A222885.P13406174281274142332
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A222889 (n + 2) : ℚ) / (A222864 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222885.P13406174281274142332

/-! ## A222885.P16150475522455326115

`record[A222889(n+2)/A222866(n+1)]`
-/

namespace A222885.P16150475522455326115
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A222889 (n + 2) : ℚ) / (A222866 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222885.P16150475522455326115

/-! ## A222885.P10757092559700658018

`A158388(n)*A222889(A167499(n)-3)`
-/

namespace A222885.P10757092559700658018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 n * A222889 (A167499 n - 3).toNat

end

end A222885.P10757092559700658018

/-!
# A222886: Number of nX3 0..2 arrays with exactly floor(nX3/2) elements equal to at least one horizontal or vertical neighbor, with new values introduced in row major 0..2 order.

The programs for A222886, there is no canonical definition to state claims against.
-/

/-! ## A222886.P5500174178379514602

`A222889(∑[n+2]+4)`
-/

namespace A222886.P5500174178379514602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222889 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A222886.P5500174178379514602

/-! ## A222886.P16786619560712311822

`lcm(2, A222889(A167614(n+1)))`
-/

namespace A222886.P16786619560712311822
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A222889 (A167614 (n + 1)).toNat)

end

end A222886.P16786619560712311822

/-! ## A222886.P3019275571790404164

`record[A010054(n)*A222889(n+3)]`
-/

namespace A222886.P3019275571790404164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A222889 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222886.P3019275571790404164

/-! ## A222886.P17720786451805649085

`A222889(A167614(n+1))+A011731(n)`
-/

namespace A222886.P17720786451805649085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222889 (A167614 (n + 1)).toNat + A011731 n

end

end A222886.P17720786451805649085

/-! ## A222886.P200249068642778140

`A222889(A167614(n+1))+A011736(n)`
-/

namespace A222886.P200249068642778140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222889 (A167614 (n + 1)).toNat + A011736 n

end

end A222886.P200249068642778140

/-!
# A222887: Number of nX4 0..2 arrays with exactly floor(nX4/2) elements equal to at least one horizontal or vertical neighbor, with new values introduced in row major 0..2 order.

The programs for A222887, there is no canonical definition to state claims against.
-/

/-! ## A222887.P9552451292305862033

`A222889(∑[n+3]+7)`
-/

namespace A222887.P9552451292305862033
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222889 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A222887.P9552451292305862033

/-!
# A222888: Number of nX5 0..2 arrays with exactly floor(nX5/2) elements equal to at least one horizontal or vertical neighbor, with new values introduced in row major 0..2 order.

The programs for A222888, there is no canonical definition to state claims against.
-/

/-! ## A222888.P10654432035476053498

`A222889(A167499(n+3))`
-/

namespace A222888.P10654432035476053498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222889 (A167499 (n + 3)).toNat

end

end A222888.P10654432035476053498

/-! ## A222888.P1276796996074009561

`A222889(A155212(n)+13)`
-/

namespace A222888.P1276796996074009561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222889 (A155212 n + 13).toNat

end

end A222888.P1276796996074009561

/-! ## A222888.P5422708179822530596

`A222889(A056000(n)+15)`
-/

namespace A222888.P5422708179822530596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222889 (A056000 n + 15).toNat

end

end A222888.P5422708179822530596

/-! ## A222888.P2204709161258425892

`A222889(eq[7, A066657(n)])`
-/

namespace A222888.P2204709161258425892
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222889 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222888.P2204709161258425892

/-!
# A222890: Number of n X 1 0..7 arrays with no element equal to another at a city block distance of exactly two, and new values 0..7 introduced in row major order.

The programs for A222890, there is no canonical definition to state claims against.
-/

/-! ## A222890.P6571174404451136944

`A222894(∑[n]+1)`
-/

namespace A222890.P6571174404451136944
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222894 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A222890.P6571174404451136944

/-! ## A222890.P2796632486067723505

`record[A222894(A056534(n+1))]`
-/

namespace A222890.P2796632486067723505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222894 (A056534 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222890.P2796632486067723505

/-! ## A222890.P16658299834625229792

`record[A222894(A246276(n+1))]`
-/

namespace A222890.P16658299834625229792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222894 (A246276 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222890.P16658299834625229792

/-! ## A222890.P789647305625042612

`record[A222894(A286235(n+1))]`
-/

namespace A222890.P789647305625042612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222894 (A286235 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222890.P789647305625042612

/-! ## A222890.P6427092220399032936

`A222894(A000124(n))+char[11]`
-/

namespace A222890.P6427092220399032936
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222894 (A000124 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A222890.P6427092220399032936

/-!
# A222891: Number of n X 2 0..7 arrays with no element equal to another at a city block distance of exactly two, and new values 0..7 introduced in row major order.

The programs for A222891, there is no canonical definition to state claims against.
-/

/-! ## A222891.P10177529317330029163

`A222894(∑[n+1]+2)`
-/

namespace A222891.P10177529317330029163
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222894 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A222891.P10177529317330029163

/-! ## A222891.P6217011036044765427

`record[A222894(A286235(n+1)+1)]`
-/

namespace A222891.P6217011036044765427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222894 (A286235 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222891.P6217011036044765427

/-! ## A222891.P7430420995583214506

`record[gcd(A025581(n), A222894(n+3))]`
-/

namespace A222891.P7430420995583214506
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A025581 n) (A222894 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222891.P7430420995583214506

/-! ## A222891.P4291268872855118579

`record[A222894(n+2)/A060538(n+1)]`
-/

namespace A222891.P4291268872855118579
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A222894 (n + 2) : ℚ) / (A060538 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222891.P4291268872855118579

/-! ## A222891.P16981240239980574047

`record[A222894(n+2)/A222864(n+1)]`
-/

namespace A222891.P16981240239980574047
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A222894 (n + 2) : ℚ) / (A222864 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222891.P16981240239980574047

/-!
# A222892: Number of n X 3 0..7 arrays with no element equal to another at a city block distance of exactly two, and new values 0..7 introduced in row major order.

The programs for A222892, there is no canonical definition to state claims against.
-/

/-! ## A222892.P11510894137226673806

`A222894(∑[n+2]+4)`
-/

namespace A222892.P11510894137226673806
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222894 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A222892.P11510894137226673806

/-! ## A222892.P13857803913539307188

`abs(1-A222894(A167614(n+1)))+1`
-/

namespace A222892.P13857803913539307188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A222894 (A167614 (n + 1)).toNat| + 1

end

end A222892.P13857803913539307188

/-! ## A222892.P9894376071055290843

`A222894(A167614(n+1))+A025463(n)`
-/

namespace A222892.P9894376071055290843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222894 (A167614 (n + 1)).toNat + A025463 n

end

end A222892.P9894376071055290843

/-! ## A222892.P9493903063440225004

`A222894(A167614(n+1))+A025466(n)`
-/

namespace A222892.P9493903063440225004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222894 (A167614 (n + 1)).toNat + A025466 n

end

end A222892.P9493903063440225004

/-!
# A222893: Number of nX4 0..7 arrays with no element equal to another at a city block distance of exactly two, and new values 0..7 introduced in row major order.

The programs for A222893, there is no canonical definition to state claims against.
-/

/-! ## A222893.P15794785406293315825

`A222894(A167614(n+2)+1)`
-/

namespace A222893.P15794785406293315825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222894 (A167614 (n + 2) + 1).toNat

end

end A222893.P15794785406293315825

/-! ## A222893.P2500636463904296325

`A222894(A020752(n+1))`
-/

namespace A222893.P2500636463904296325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222894 (A020752 (n + 1)).toNat

end

end A222893.P2500636463904296325

/-!
# A222894: T(n,k)=Number of nXk 0..7 arrays with no element equal to another at a city block distance of exactly two, and new values 0..7 introduced in row major order.

The programs for A222894, there is no canonical definition to state claims against.
-/

/-! ## A222894.P4676637839245389830

`A222779(n+1)+A011708(A110182(n))`
-/

namespace A222894.P4676637839245389830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222779 (n + 1) + A011708 (A110182 n).toNat

end

end A222894.P4676637839245389830

/-! ## A222894.P4204408908483916167

`A222779(n+1)+A025441(A107243(n))`
-/

namespace A222894.P4204408908483916167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222779 (n + 1) + A025441 (A107243 n).toNat

end

end A222894.P4204408908483916167

/-! ## A222894.P15445226723586807742

`A222779(n+1)+A124761(A036633(n))`
-/

namespace A222894.P15445226723586807742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222779 (n + 1) + A124761 (A036633 n).toNat

end

end A222894.P15445226723586807742

/-! ## A222894.P5227483633387608987

`A222779(n+1)+A185044(A008459(n))`
-/

namespace A222894.P5227483633387608987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222779 (n + 1) + A185044 (A008459 n).toNat

end

end A222894.P5227483633387608987

/-! ## A222894.P15320997233184751826

`A222871(n+1)+A058348(A154372(n))`
-/

namespace A222894.P15320997233184751826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222871 (n + 1) + A058348 (A154372 n).toNat

end

end A222894.P15320997233184751826

/-!
# A222895: Number of n X n 0..2 arrays with successive rows and columns fitting to straight lines with strictly increasing slope, with a single point array taken as having zero slope.

The programs for A222895, there is no canonical definition to state claims against.
-/

/-! ## A222895.P9159162774081049969

`A222896((n+1)²+n²)`
-/

namespace A222895.P9159162774081049969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222896 ((n + 1) ^ 2 + n ^ 2)

end

end A222895.P9159162774081049969

/-!
# A222896: T(n,k)=Number of nXk 0..2 arrays with successive rows and columns fitting to straight lines with strictly increasing slope, with a single point array taken as having zero slope.

The programs for A222896, there is no canonical definition to state claims against.
-/

/-! ## A222896.P5463871637515968205

`A223074(n+1)/A130675(A034472(n))`
-/

namespace A222896.P5463871637515968205
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A223074 (n + 1) : ℚ) / (A130675 (A034472 n).toNat : ℚ)

end

end A222896.P5463871637515968205

/-! ## A222896.P17191926054157554086

`A223074(A032559(n+1))/A136494(n)`
-/

namespace A222896.P17191926054157554086
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A223074 (A032559 (n + 1)).toNat : ℚ) / (A136494 n : ℚ)

end

end A222896.P17191926054157554086

/-! ## A222896.P9852398055540979858

`A223074(n+1)/A050379(A056276(n+1))`
-/

namespace A222896.P9852398055540979858
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A223074 (n + 1) : ℚ) / (A050379 (A056276 (n + 1)).toNat : ℚ)

end

end A222896.P9852398055540979858

/-! ## A222896.P6814870736133154168

`A246591(A223074(n+1)%A223047(n+1))`
-/

namespace A222896.P6814870736133154168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246591 (Int.tmod (A223074 (n + 1)) (A223047 (n + 1))).toNat

end

end A222896.P6814870736133154168

/-! ## A222896.P12401057185048532773

`A246591(A223074(n+1))%A223065(n+1)`
-/

namespace A222896.P12401057185048532773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A246591 (A223074 (n + 1)).toNat) (A223065 (n + 1))

end

end A222896.P12401057185048532773

/-!
# A222897: Number of n X n 0..1 arrays with successive rows and columns fitting to straight lines with strictly increasing slope, with a single point array taken as having zero slope.

The programs for A222897, there is no canonical definition to state claims against.
-/

/-! ## A222897.P12650723741005582130

`A222898(∑[4*n]+1)`
-/

namespace A222897.P12650723741005582130
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222898 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A222897.P12650723741005582130

/-! ## A222897.P8215396742797068715

`record[A222898(A325689(n)+1)]`
-/

namespace A222897.P8215396742797068715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222898 (A325689 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222897.P8215396742797068715

/-! ## A222897.P16768191758785177715

`record[A222898(A330613(n+1))]`
-/

namespace A222897.P16768191758785177715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222898 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222897.P16768191758785177715

/-!
# A222899: Number of n X n 0..3 arrays with no more than floor(n X n/2) elements unequal to at least one horizontal or antidiagonal neighbor, with new values introduced in row major 0..3 order.

The programs for A222899, there is no canonical definition to state claims against.
-/

/-! ## A222899.P12612073819171167518

`A222906(∑[4*n]+1)`
-/

namespace A222899.P12612073819171167518
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222906 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A222899.P12612073819171167518

/-! ## A222899.P7684851901329452250

`record[A222906(Δ[A235355(n)])]`
-/

namespace A222899.P7684851901329452250
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222906 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222899.P7684851901329452250

/-! ## A222899.P7869182129769917386

`record[A222906(A330613(n+1))]`
-/

namespace A222899.P7869182129769917386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222906 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222899.P7869182129769917386

/-! ## A222899.P11224629562923320303

`A222906(A001844(n))+char[10]`
-/

namespace A222899.P11224629562923320303
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222906 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A222899.P11224629562923320303

