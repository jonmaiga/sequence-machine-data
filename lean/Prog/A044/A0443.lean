import SequenceMachineLib.Basic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C015
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C041
import Seq.B000.C043
import Seq.B000.C046
import Seq.B000.C050
import Seq.B000.C052
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C012
import Seq.B001.C013
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C002
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C003
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B007.C000
import Seq.B008.C000
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
import Seq.Opaque.C024

/-!
# A044300: Numbers k such that string 5,4 occurs in the base 9 representation of k but not of k-1.

The programs for A044300, there is no canonical definition to state claims against.
-/

/-! ## A044300.P9831947862137974695

`A257646(A044680(n+1))`
-/

namespace A044300.P9831947862137974695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257646 (A044680 (n + 1)).toNat

end

end A044300.P9831947862137974695

/-!
# A044301: Numbers n such that string 5,5 occurs in the base 9 representation of n but not of n-1.

The programs for A044301, there is no canonical definition to state claims against.
-/

/-! ## A044301.P14562939722358880833

`A043210(2*(n+1))-9%A042983(n+1)`
-/

namespace A044301.P14562939722358880833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043210 (2 * (n + 1)) - Int.tmod 9 (A042983 (n + 1))

end

end A044301.P14562939722358880833

/-! ## A044301.P9999529952274820023

`A037475(A044178(n+1)^A043537(n+3))`
-/

namespace A044301.P9999529952274820023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037475 (SequenceMachineLib.roundAway ((A044178 (n + 1) : ℚ) ^ (A043537 (n + 3) : ℤ))).toNat

end

end A044301.P9999529952274820023

/-!
# A044302: Numbers k such that the string 5,6 occurs in the base 9 representation of k but not of k-1.

The programs for A044302, there is no canonical definition to state claims against.
-/

/-! ## A044302.P3052292143992224825

`A112053(A300974(n))+A044683(n+1)`
-/

namespace A044302.P3052292143992224825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112053 (A300974 n).toNat + A044683 (n + 1)

end

end A044302.P3052292143992224825

/-! ## A044302.P11194326723680570371

`xor(A005872(A068556(n)), A044683(n+1))`
-/

namespace A044302.P11194326723680570371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A005872 (A068556 n).toNat) (A044683 (n + 1))

end

end A044302.P11194326723680570371

/-!
# A044303: Numbers n such that string 5,7 occurs in the base 9 representation of n but not of n-1.

The programs for A044303, there is no canonical definition to state claims against.
-/

/-! ## A044303.P7937330770352330052

`A257646(A044683(n+1))`
-/

namespace A044303.P7937330770352330052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257646 (A044683 (n + 1)).toNat

end

end A044303.P7937330770352330052

/-!
# A044305: Numbers n such that string 6,0 occurs in the base 9 representation of n but not of n-1.

The programs for A044305, there is no canonical definition to state claims against.
-/

/-! ## A044305.P1208285454364262501

`∩[A043185(n+1), A366290(n+1)]`
-/

namespace A044305.P1208285454364262501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043185 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366290 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044305.P1208285454364262501

/-! ## A044305.P15898047848110655098

`A113484(A044685(n+1))`
-/

namespace A044305.P15898047848110655098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113484 (A044685 (n + 1)).toNat

end

end A044305.P15898047848110655098

/-! ## A044305.P709083927996177289

`∩[A043185(n+1), A198147(n+1)]`
-/

namespace A044305.P709083927996177289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043185 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198147 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044305.P709083927996177289

/-!
# A044306: Numbers n such that string 6,1 occurs in the base 9 representation of n but not of n-1.

The programs for A044306, there is no canonical definition to state claims against.
-/

/-! ## A044306.P5682220341437642501

`A002517(1+A044687(n+1))/3`
-/

namespace A044306.P5682220341437642501
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002517 (1 + A044687 (n + 1)).toNat : ℚ) / 3

end

end A044306.P5682220341437642501

/-!
# A044308: Numbers k such that the string 6,3 occurs in the base 9 representation of k but not of k-1.

The programs for A044308, there is no canonical definition to state claims against.
-/

/-! ## A044308.P12511909815662852576

`A113484(A044688(n+1))`
-/

namespace A044308.P12511909815662852576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113484 (A044688 (n + 1)).toNat

end

end A044308.P12511909815662852576

/-!
# A044309: Numbers k such that string 6,4 occurs in the base 9 representation of n but not of k-1.

The programs for A044309, there is no canonical definition to state claims against.
-/

/-! ## A044309.P5767696515037146991

`A257646(A044689(n+1))`
-/

namespace A044309.P5767696515037146991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257646 (A044689 (n + 1)).toNat

end

end A044309.P5767696515037146991

/-!
# A044310: Numbers k such that the string 6,5 occurs in the base 9 representation of k but not of k-1.

The programs for A044310, there is no canonical definition to state claims against.
-/

/-! ## A044310.P13258393720354401271

`A257646(A044690(n+1))`
-/

namespace A044310.P13258393720354401271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257646 (A044690 (n + 1)).toNat

end

end A044310.P13258393720354401271

/-!
# A044311: Numbers k such that the string 6,6 occurs in the base 9 representation of k but not of k-1.

The programs for A044311, there is no canonical definition to state claims against.
-/

/-! ## A044311.P6531870975513491774

`A044692(n+1)-A184974(A182700(n))`
-/

namespace A044311.P6531870975513491774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044692 (n + 1) - A184974 (A182700 n).toNat

end

end A044311.P6531870975513491774

/-! ## A044311.P2889506160113018230

`A046951(A000255(n))+A044691(n+1)`
-/

namespace A044311.P2889506160113018230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (A000255 n).toNat + A044691 (n + 1)

end

end A044311.P2889506160113018230

/-! ## A044311.P1132751121276684232

`A124766(A000079(n))+A044691(n+1)`
-/

namespace A044311.P1132751121276684232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124766 (A000079 n).toNat + A044691 (n + 1)

end

end A044311.P1132751121276684232

/-!
# A044312: Numbers n such that string 6,7 occurs in the base 9 representation of n but not of n-1.

The programs for A044312, there is no canonical definition to state claims against.
-/

/-! ## A044312.P12168897403335732356

`A044693(n+1)-A218882(A000041(n))`
-/

namespace A044312.P12168897403335732356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044693 (n + 1) - A218882 (A000041 n).toNat

end

end A044312.P12168897403335732356

/-! ## A044312.P11962612751170195095

`A043213(xor(A005408(n), A172536(n+1)))`
-/

namespace A044312.P11962612751170195095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043213 (Int.xor (A005408 n) (A172536 (n + 1))).toNat

end

end A044312.P11962612751170195095

/-! ## A044312.P9571327048063572322

`A044313(n+1)-(A218882(A000041(n))+1)`
-/

namespace A044312.P9571327048063572322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044313 (n + 1) - (A218882 (A000041 n).toNat + 1)

end

end A044312.P9571327048063572322

/-!
# A044313: Numbers k such that the string 6,8 occurs in the base 9 representation of k but not of k-1.

The programs for A044313, there is no canonical definition to state claims against.
-/

/-! ## A044313.P7280600928881004842

`record[A003602(A044674(2+n))]`
-/

namespace A044313.P7280600928881004842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A044674 (2 + n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044313.P7280600928881004842

/-! ## A044313.P2222046355288530869

`A257646(A044693(n+1))`
-/

namespace A044313.P2222046355288530869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257646 (A044693 (n + 1)).toNat

end

end A044313.P2222046355288530869

/-!
# A044314: Numbers n such that string 7,0 occurs in the base 9 representation of n but not of n-1.

The programs for A044314, there is no canonical definition to state claims against.
-/

/-! ## A044314.P9881453388846404507

`∩[A043186(n+1), A376279(n+1)]`
-/

namespace A044314.P9881453388846404507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043186 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376279 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044314.P9881453388846404507

/-! ## A044314.P7341177311107462243

`∩[A043186(n+1), A366290(n+1)]`
-/

namespace A044314.P7341177311107462243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043186 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366290 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044314.P7341177311107462243

/-! ## A044314.P8236412400367296100

`A113484(A044694(n+1))`
-/

namespace A044314.P8236412400367296100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113484 (A044694 (n + 1)).toNat

end

end A044314.P8236412400367296100

/-! ## A044314.P10439150225813917238

`∩[A043186(n+1), A267415(n+1)]`
-/

namespace A044314.P10439150225813917238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043186 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267415 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044314.P10439150225813917238

/-!
# A044315: Numbers n such that string 7,1 occurs in the base 9 representation of n but not of n-1.

The programs for A044315, there is no canonical definition to state claims against.
-/

/-! ## A044315.P16331582628999423090

`A110699(A044695(n+1))`
-/

namespace A044315.P16331582628999423090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110699 (A044695 (n + 1)).toNat

end

end A044315.P16331582628999423090

/-!
# A044317: Numbers n such that string 7,3 occurs in the base 9 representation of n but not of n-1.

The programs for A044317, there is no canonical definition to state claims against.
-/

/-! ## A044317.P15384739356075543282

`A110699(A044697(n+1))`
-/

namespace A044317.P15384739356075543282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110699 (A044697 (n + 1)).toNat

end

end A044317.P15384739356075543282

/-!
# A044318: Numbers k such that the string 7,4 occurs in the base 9 representation of k but not of k-1.

The programs for A044318, there is no canonical definition to state claims against.
-/

/-! ## A044318.P16742004619987628056

`A257646(A044698(n+1))`
-/

namespace A044318.P16742004619987628056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257646 (A044698 (n + 1)).toNat

end

end A044318.P16742004619987628056

/-!
# A044319: Numbers n such that string 7,5 occurs in the base 9 representation of n but not of n-1.

The programs for A044319, there is no canonical definition to state claims against.
-/

/-! ## A044319.P10535375332975582661

`A257646(A044699(n+1))`
-/

namespace A044319.P10535375332975582661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257646 (A044699 (n + 1)).toNat

end

end A044319.P10535375332975582661

/-!
# A044320: Numbers k such that the string 7,6 occurs in the base 9 representation of k but not of k-1.

The programs for A044320, there is no canonical definition to state claims against.
-/

/-! ## A044320.P17327208151245878577

`A110699(A044700(n+1))`
-/

namespace A044320.P17327208151245878577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110699 (A044700 (n + 1)).toNat

end

end A044320.P17327208151245878577

/-!
# A044321: Numbers k such that the string 7,7 occurs in the base 9 representation of k but not of k-1.

The programs for A044321, there is no canonical definition to state claims against.
-/

/-! ## A044321.P5744496972696269575

`A044703(n+1)-A145945(A049019(n+1))`
-/

namespace A044321.P5744496972696269575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044703 (n + 1) - A145945 (A049019 (n + 1)).toNat

end

end A044321.P5744496972696269575

/-! ## A044321.P4955514855763066866

`A044701(n+1)+A001511(A008384(n))`
-/

namespace A044321.P4955514855763066866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044701 (n + 1) + A001511 (A008384 n).toNat

end

end A044321.P4955514855763066866

/-! ## A044321.P1577646430253758804

`A189222(A071075(n))+A044701(n+1)`
-/

namespace A044321.P1577646430253758804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189222 (A071075 n).toNat + A044701 (n + 1)

end

end A044321.P1577646430253758804

/-! ## A044321.P7935440166827703879

`A353627(A194723(n))+A044701(n+1)`
-/

namespace A044321.P7935440166827703879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353627 (A194723 n).toNat + A044701 (n + 1)

end

end A044321.P7935440166827703879

/-!
# A044323: Numbers k such that the string 8,0 occurs in the base 9 representation of k but not of k-1.

The programs for A044323, there is no canonical definition to state claims against.
-/

/-! ## A044323.P17956320357151888387

`∩[A043187(n+1), A130843(n+1)]`
-/

namespace A044323.P17956320357151888387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043187 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130843 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044323.P17956320357151888387

/-! ## A044323.P2419550824198652312

`∩[A043187(n+1), A376279(n+1)]`
-/

namespace A044323.P2419550824198652312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043187 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376279 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044323.P2419550824198652312

/-! ## A044323.P1515251628082077638

`∩[A353732(A352808(3*(n+1))), A043187(n+1)]`
-/

namespace A044323.P1515251628082077638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353732 (A352808 (3 * (n + 1))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043187 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044323.P1515251628082077638

/-! ## A044323.P18229079073610557913

`∩[A043187(n+1), A366290(n+1)]`
-/

namespace A044323.P18229079073610557913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043187 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366290 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044323.P18229079073610557913

/-! ## A044323.P548294864776120521

`A044324(n+1)-A322361(A227716(n))`
-/

namespace A044323.P548294864776120521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044324 (n + 1) - A322361 (A227716 n).toNat

end

end A044323.P548294864776120521

/-!
# A044324: Numbers n such that string 8,1 occurs in the base 9 representation of n but not of n-1.

The programs for A044324, there is no canonical definition to state claims against.
-/

/-! ## A044324.P8959767560768654549

`A002517(A044705(n+1)+1)/3`
-/

namespace A044324.P8959767560768654549
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002517 (A044705 (n + 1) + 1).toNat : ℚ) / 3

end

end A044324.P8959767560768654549

/-!
# A044326: Numbers n such that string 8,3 occurs in the base 9 representation of n but not of n-1.

The programs for A044326, there is no canonical definition to state claims against.
-/

/-! ## A044326.P8821083053994375655

`A110699(A044706(n+1))`
-/

namespace A044326.P8821083053994375655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110699 (A044706 (n + 1)).toNat

end

end A044326.P8821083053994375655

/-!
# A044327: Numbers n such that string 8,4 occurs in the base 9 representation of n but not of n-1.

The programs for A044327, there is no canonical definition to state claims against.
-/

/-! ## A044327.P14527205527727987478

`A257646(A044707(n+1))`
-/

namespace A044327.P14527205527727987478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257646 (A044707 (n + 1)).toNat

end

end A044327.P14527205527727987478

/-!
# A044329: Numbers n such that string 8,6 occurs in the base 9 representation of n but not of n-1.

The programs for A044329, there is no canonical definition to state claims against.
-/

/-! ## A044329.P1848403399814009179

`A113484(A044709(n+1))`
-/

namespace A044329.P1848403399814009179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113484 (A044709 (n + 1)).toNat

end

end A044329.P1848403399814009179

/-!
# A044330: Numbers n such that string 8,7 occurs in the base 9 representation of n but not of n-1.

The programs for A044330, there is no canonical definition to state claims against.
-/

/-! ## A044330.P18239368380374153063

`A257646(A044710(n+1))`
-/

namespace A044330.P18239368380374153063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257646 (A044710 (n + 1)).toNat

end

end A044330.P18239368380374153063

/-!
# A044331: Numbers k such that the string 8,8 occurs in the base 9 representation of k but not of k-1.

The programs for A044331, there is no canonical definition to state claims against.
-/

/-! ## A044331.P16988437112309771434

`A044251(n+1)-A348037(A002426(n))`
-/

namespace A044331.P16988437112309771434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044251 (n + 1) - A348037 (A002426 n).toNat

end

end A044331.P16988437112309771434

/-! ## A044331.P9455639326130755954

`A044712(n+1)+1-A348037(A002426(n))`
-/

namespace A044331.P9455639326130755954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044712 (n + 1) + (1 - A348037 (A002426 n).toNat)

end

end A044331.P9455639326130755954

/-! ## A044331.P9662444902101343054

`A044712(n+1)+1-A322020(A148432(n))`
-/

namespace A044331.P9662444902101343054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044712 (n + 1) + (1 - A322020 (A148432 n).toNat)

end

end A044331.P9662444902101343054

/-! ## A044331.P1843976654017137998

`A044711(A032555(n+1))+1`
-/

namespace A044331.P1843976654017137998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044711 (A032555 (n + 1)).toNat + 1

end

end A044331.P1843976654017137998

/-! ## A044331.P8457612737924844189

`A044711(n+1)+A000034(A034472(n))`
-/

namespace A044331.P8457612737924844189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044711 (n + 1) + A000034 (A034472 n).toNat

end

end A044331.P8457612737924844189

/-!
# A044332: Numbers k such that the string 0,0 occurs in the base 10 representation of k but not of k-1.

The programs for A044332, the canonical program `A044332.P15477071558649246088` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A044332 has offset 1).

The definition of A044332 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A044332.P15477071558649246088

`filter[A008607(n+1), A011765(#)]`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A044332

/-- `filter[A008607(n+1), A011765(#)]` -/
def P15477071558649246088.Spec : Prop :=
  ∀ n, P15477071558649246088.a n = A044332 (n + 1)

theorem P15477071558649246088.correct : P15477071558649246088.Spec := by
  intro n
  simp only [A044332, Nat.add_sub_cancel]

end A044332

/-! ## A044332.P4860089586804049967

`filter[A312890(2*n), A011765(#)]`
-/

namespace A044332.P4860089586804049967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312890 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011765 (f1 j).toNat = 1) n)

end

end A044332.P4860089586804049967

namespace A044332

/-- `filter[A312890(2*n), A011765(#)]` -/
def P4860089586804049967.Spec : Prop :=
  ∀ n, P4860089586804049967.a n = A044332 (n + 1)

end A044332

/-! ## A044332.P13197070361246602788

`filter[A312944(2*n), A011765(#)]`
-/

namespace A044332.P13197070361246602788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312944 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011765 (f1 j).toNat = 1) n)

end

end A044332.P13197070361246602788

namespace A044332

/-- `filter[A312944(2*n), A011765(#)]` -/
def P13197070361246602788.Spec : Prop :=
  ∀ n, P13197070361246602788.a n = A044332 (n + 1)

end A044332

/-! ## A044332.P5250853645771190558

`filter[A313127(2*n), A011765(#)]`
-/

namespace A044332.P5250853645771190558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313127 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011765 (f1 j).toNat = 1) n)

end

end A044332.P5250853645771190558

namespace A044332

/-- `filter[A313127(2*n), A011765(#)]` -/
def P5250853645771190558.Spec : Prop :=
  ∀ n, P5250853645771190558.a n = A044332 (n + 1)

end A044332

/-!
# A044333: Numbers n such that string 0,1 occurs in the base 10 representation of n but not of n-1.

The programs for A044333, there is no canonical definition to state claims against.
-/

/-! ## A044333.P842388443305389468

`A003485(A044337(n+1))-A044341(n+1)`
-/

namespace A044333.P842388443305389468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003485 (A044337 (n + 1)).toNat - A044341 (n + 1)

end

end A044333.P842388443305389468

/-! ## A044333.P2089137583565983132

`A003485(A044716(1+n))-A044339(n+1)`
-/

namespace A044333.P2089137583565983132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003485 (A044716 (1 + n)).toNat - A044339 (n + 1)

end

end A044333.P2089137583565983132

/-! ## A044333.P7373207331898732198

`A004273(A044334(n+1))-A044715(n+1)`
-/

namespace A044333.P7373207331898732198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A044334 (n + 1)).toNat - A044715 (n + 1)

end

end A044333.P7373207331898732198

/-! ## A044333.P15696532022907840349

`A004273(A044336(n+1))-A044719(n+1)`
-/

namespace A044333.P15696532022907840349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A044336 (n + 1)).toNat - A044719 (n + 1)

end

end A044333.P15696532022907840349

/-! ## A044333.P13596599711777333901

`A005843(A044334(n+1))-A044335(n+1)`
-/

namespace A044333.P13596599711777333901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A044334 (n + 1)).toNat - A044335 (n + 1)

end

end A044333.P13596599711777333901

/-! ## A044333.P4766478673694753977

`A005843(A044335(n+1))-A044337(n+1)`
-/

namespace A044333.P4766478673694753977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A044335 (n + 1)).toNat - A044337 (n + 1)

end

end A044333.P4766478673694753977

/-! ## A044333.P10095150610142747242

`A005843(A044336(n+1))-A044339(n+1)`
-/

namespace A044333.P10095150610142747242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A044336 (n + 1)).toNat - A044339 (n + 1)

end

end A044333.P10095150610142747242

/-! ## A044333.P2200111112456304674

`A005408(A044716(n+1))-A044719(n+1)`
-/

namespace A044333.P2200111112456304674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A044716 (n + 1)).toNat - A044719 (n + 1)

end

end A044333.P2200111112456304674

/-!
# A044334: Numbers n such that string 0,2 occurs in the base 10 representation of n but not of n-1.

The programs for A044334, there is no canonical definition to state claims against.
-/

/-! ## A044334.P13768873322007425732

`A011760(A044714(n+1))`
-/

namespace A044334.P13768873322007425732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011760 (A044714 (n + 1)).toNat

end

end A044334.P13768873322007425732

/-!
# A044335: Numbers k such that the string 0,3 occurs in the base 10 representation of k but not of k-1.

The programs for A044335, there is no canonical definition to state claims against.
-/

/-! ## A044335.P3837701886659758764

`A011760(A044715(n+1))`
-/

namespace A044335.P3837701886659758764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011760 (A044715 (n + 1)).toNat

end

end A044335.P3837701886659758764

/-!
# A044336: Numbers n such that string 0,4 occurs in the base 10 representation of n but not of n-1.

The programs for A044336, there is no canonical definition to state claims against.
-/

/-! ## A044336.P389349116992168461

`A003816(A044716(n+1))`
-/

namespace A044336.P389349116992168461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003816 (A044716 (n + 1)).toNat

end

end A044336.P389349116992168461

/-! ## A044336.P16820683846273464371

`A005843(A044335(n+1))-A044334(n+1)`
-/

namespace A044336.P16820683846273464371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A044335 (n + 1)).toNat - A044334 (n + 1)

end

end A044336.P16820683846273464371

/-!
# A044337: Numbers n such that string 0,5 occurs in the base 10 representation of n but not of n-1.

The programs for A044337, there is no canonical definition to state claims against.
-/

/-! ## A044337.P2630326553584343503

`A011760(A044717(n+1))`
-/

namespace A044337.P2630326553584343503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011760 (A044717 (n + 1)).toNat

end

end A044337.P2630326553584343503

/-!
# A044338: Numbers n such that string 0,6 occurs in the base 10 representation of n but not of n-1.

The programs for A044338, there is no canonical definition to state claims against.
-/

/-! ## A044338.P11123809677658561038

`A011760(A044718(n+1))`
-/

namespace A044338.P11123809677658561038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011760 (A044718 (n + 1)).toNat

end

end A044338.P11123809677658561038

/-!
# A044339: Numbers k such that the string 0,7 occurs in the base 10 representation of k but not of k-1.

The programs for A044339, there is no canonical definition to state claims against.
-/

/-! ## A044339.P13396080693926201524

`A011760(A044719(n+1))`
-/

namespace A044339.P13396080693926201524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011760 (A044719 (n + 1)).toNat

end

end A044339.P13396080693926201524

/-! ## A044339.P5665188148777878539

`A005843(A044337(n+1))-A044335(n+1)`
-/

namespace A044339.P5665188148777878539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A044337 (n + 1)).toNat - A044335 (n + 1)

end

end A044339.P5665188148777878539

/-!
# A044340: Numbers n such that string 0,8 occurs in the base 10 representation of n but not of n-1.

The programs for A044340, there is no canonical definition to state claims against.
-/

/-! ## A044340.P3866365746091047738

`A003816(A044720(n+1))`
-/

namespace A044340.P3866365746091047738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003816 (A044720 (n + 1)).toNat

end

end A044340.P3866365746091047738

/-!
# A044341: Numbers k such that the string 0,9 occurs in the base 10 representation of k but not of k-1.

The programs for A044341, there is no canonical definition to state claims against.
-/

/-! ## A044341.P12007943763689201819

`A011760(A044721(n+1))`
-/

namespace A044341.P12007943763689201819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011760 (A044721 (n + 1)).toNat

end

end A044341.P12007943763689201819

/-!
# A044342: Numbers k such that the string 1,0 occurs in the base 10 representation of k but not of k-1.

The programs for A044342, there is no canonical definition to state claims against.
-/

/-! ## A044342.P17758941065071072856

`∩[A043216(n+1), A293870(n+1)]`
-/

namespace A044342.P17758941065071072856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043216 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293870 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044342.P17758941065071072856

/-! ## A044342.P17686753260528695074

`∩[A043216(n+1), A396948(n+1)]`
-/

namespace A044342.P17686753260528695074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043216 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396948 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044342.P17686753260528695074

/-! ## A044342.P18183358918844040918

`∩[A043216(n+1), A008592(n)]`
-/

namespace A044342.P18183358918844040918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043216 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044342.P18183358918844040918

/-! ## A044342.P13156084339643089374

`∩[A043216(n+1), A370532(n+1)]`
-/

namespace A044342.P13156084339643089374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043216 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370532 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044342.P13156084339643089374

/-! ## A044342.P10670429825688483469

`∩[A043216(n+1), A359841(n+1)]`
-/

namespace A044342.P10670429825688483469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043216 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359841 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044342.P10670429825688483469

/-! ## A044342.P13505733036715422024

`∩[A043216(n+1), A352464(n+1)]`
-/

namespace A044342.P13505733036715422024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043216 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352464 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044342.P13505733036715422024

/-! ## A044342.P668716211092981343

`∩[A043216(n+1), A179819(n+1)]`
-/

namespace A044342.P668716211092981343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043216 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179819 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044342.P668716211092981343

/-! ## A044342.P6754121677560127577

`∩[A043216(n+1), A186438(n+1)]`
-/

namespace A044342.P6754121677560127577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043216 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186438 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044342.P6754121677560127577

/-! ## A044342.P9582839900723587484

`∩[A043216(n+1), A083118(n+1)]`
-/

namespace A044342.P9582839900723587484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043216 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083118 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044342.P9582839900723587484

/-! ## A044342.P4559636303611701195

`∩[A043216(n+1), A401332(n+1)]`
-/

namespace A044342.P4559636303611701195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043216 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401332 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044342.P4559636303611701195

/-! ## A044342.P188043161121523027

`∩[A043216(n+1), A008587(n)]`
-/

namespace A044342.P188043161121523027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043216 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008587 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044342.P188043161121523027

/-! ## A044342.P566077146661271569

`∩[A043216(n+1), A008706(n)]`
-/

namespace A044342.P566077146661271569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043216 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044342.P566077146661271569

/-! ## A044342.P16068780269002955680

`∩[A043216(n+1), A135042(n)]`
-/

namespace A044342.P16068780269002955680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043216 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135042 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044342.P16068780269002955680

/-! ## A044342.P12744188432736936257

`∩[A043216(n+1), A146763(n)]`
-/

namespace A044342.P12744188432736936257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043216 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146763 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044342.P12744188432736936257

/-! ## A044342.P3623430425472974630

`∩[A043216(n+1), A146951(n)]`
-/

namespace A044342.P3623430425472974630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043216 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146951 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044342.P3623430425472974630

/-! ## A044342.P11753936691825535419

`∩[A043216(n+1), A168101(n)]`
-/

namespace A044342.P11753936691825535419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043216 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168101 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044342.P11753936691825535419

/-! ## A044342.P10898790224651717968

`∩[A043216(n+1), A235089(n+1)]`
-/

namespace A044342.P10898790224651717968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043216 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235089 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044342.P10898790224651717968

/-! ## A044342.P899794705764361888

`∩[A043216(n+1), A399563(n+1)]`
-/

namespace A044342.P899794705764361888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043216 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399563 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044342.P899794705764361888

/-! ## A044342.P15225752788043350613

`filter[A043216(n+1), A079998(#)]`
-/

namespace A044342.P15225752788043350613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043216 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A079998 (f1 j).toNat = 1) n)

end

end A044342.P15225752788043350613

/-! ## A044342.P10175608876224781440

`∩[A043216(n+1), A315343(n)]`
-/

namespace A044342.P10175608876224781440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043216 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315343 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044342.P10175608876224781440

/-!
# A044343: Numbers n such that string 1,1 occurs in the base 10 representation of n but not of n-1.

The programs for A044343, there is no canonical definition to state claims against.
-/

/-! ## A044343.P14265262008226229533

`record[A135997(A044365(n+1))]`
-/

namespace A044343.P14265262008226229533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135997 (A044365 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044343.P14265262008226229533

/-! ## A044343.P3558436396857007110

`A135997(A044365(3*n+1))`
-/

namespace A044343.P3558436396857007110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135997 (A044365 (3 * n + 1)).toNat

end

end A044343.P3558436396857007110

/-! ## A044343.P2556799993855864418

`A175676(A044365(3*n+1)%A052377(n+1))`
-/

namespace A044343.P2556799993855864418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175676 (Int.tmod (A044365 (3 * n + 1)) (A052377 (n + 1))).toNat

end

end A044343.P2556799993855864418

/-!
# A044344: Numbers n such that string 1,2 occurs in the base 10 representation of n but not of n-1.

The programs for A044344, there is no canonical definition to state claims against.
-/

/-! ## A044344.P8097801943300195878

`A044349(n+1)+A044725(A077168(n))+1-A044350(n+1)`
-/

namespace A044344.P8097801943300195878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044349 (n + 1) + (A044725 (A077168 n).toNat + 1) - A044350 (n + 1)

end

end A044344.P8097801943300195878

/-! ## A044344.P11611310558455371876

`A044352(n+1)+A044725(A077168(n))+1-A044353(n+1)`
-/

namespace A044344.P11611310558455371876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044352 (n + 1) + (A044725 (A077168 n).toNat + 1) - A044353 (n + 1)

end

end A044344.P11611310558455371876

/-!
# A044345: Numbers n such that string 1,3 occurs in the base 10 representation of n but not of n-1.

The programs for A044345, there is no canonical definition to state claims against.
-/

/-! ## A044345.P9992905548598469409

`record[A135997(A044371(n+1))]`
-/

namespace A044345.P9992905548598469409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135997 (A044371 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044345.P9992905548598469409

/-! ## A044345.P10001965396979824200

`A044725(A077168(n))+1`
-/

namespace A044345.P10001965396979824200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044725 (A077168 n).toNat + 1

end

end A044345.P10001965396979824200

/-! ## A044345.P10050226235654001504

`A044725(n+1)+A011655(A000079(n))`
-/

namespace A044345.P10050226235654001504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044725 (n + 1) + A011655 (A000079 n).toNat

end

end A044345.P10050226235654001504

/-! ## A044345.P345052551819645219

`A044725(n+1)+A001222(A033844(n))`
-/

namespace A044345.P345052551819645219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044725 (n + 1) + A001222 (A033844 n).toNat

end

end A044345.P345052551819645219

/-! ## A044345.P11768674240562189264

`A057427(A000051(n))+A044725(n+1)`
-/

namespace A044345.P11768674240562189264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A000051 n).toNat + A044725 (n + 1)

end

end A044345.P11768674240562189264

/-!
# A044346: Numbers n such that string 1,4 occurs in the base 10 representation of n but not of n-1.

The programs for A044346, there is no canonical definition to state claims against.
-/

/-! ## A044346.P985999724652025409

`A164020(A044726(n+1))`
-/

namespace A044346.P985999724652025409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164020 (A044726 (n + 1)).toNat

end

end A044346.P985999724652025409

/-! ## A044346.P9261391484614767198

`A044726(A187829(n+1))+1`
-/

namespace A044346.P9261391484614767198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044726 (A187829 (n + 1)).toNat + 1

end

end A044346.P9261391484614767198

/-! ## A044346.P8992864294495425678

`A044726(n+1)+A028240(n)!`
-/

namespace A044346.P8992864294495425678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044726 (n + 1) + (Nat.factorial (A028240 n).toNat : ℤ)

end

end A044346.P8992864294495425678

/-! ## A044346.P16418424303175012517

`A057427(A011782(n))+A044726(n+1)`
-/

namespace A044346.P16418424303175012517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A011782 n).toNat + A044726 (n + 1)

end

end A044346.P16418424303175012517

/-! ## A044346.P13612242093454346509

`A057427(A049870(n))+A044726(n+1)`
-/

namespace A044346.P13612242093454346509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A049870 n).toNat + A044726 (n + 1)

end

end A044346.P13612242093454346509

/-!
# A044347: Numbers n such that string 1,5 occurs in the base 10 representation of n but not of n-1.

The programs for A044347, there is no canonical definition to state claims against.
-/

/-! ## A044347.P12309877486378336571

`A353627(A003945(n))+A044727(n+1)`
-/

namespace A044347.P12309877486378336571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353627 (A003945 n).toNat + A044727 (n + 1)

end

end A044347.P12309877486378336571

/-! ## A044347.P15510529971228547287

`A044727(n+1)-A057428(A000219(n))`
-/

namespace A044347.P15510529971228547287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044727 (n + 1) - A057428 (A000219 n).toNat

end

end A044347.P15510529971228547287

/-! ## A044347.P11343787088696661604

`A044727(n+1)-A057428(A173723(n))`
-/

namespace A044347.P11343787088696661604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044727 (n + 1) - A057428 (A173723 (n + 10)).toNat

end

end A044347.P11343787088696661604

/-! ## A044347.P18181858354597666307

`A044727(n+1)+A001055(A080177(n+1))`
-/

namespace A044347.P18181858354597666307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044727 (n + 1) + A001055 (A080177 (n + 1)).toNat

end

end A044347.P18181858354597666307

/-! ## A044347.P10667243233159347594

`A044727(n+1)+A001055(A112927(n+1))`
-/

namespace A044347.P10667243233159347594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044727 (n + 1) + A001055 (A112927 (n + 1)).toNat

end

end A044347.P10667243233159347594

/-!
# A044348: Numbers k such that the string 1,6 occurs in the base 10 representation of k but not of k-1.

The programs for A044348, there is no canonical definition to state claims against.
-/

/-! ## A044348.P15012834293461485282

`record[A137241(A044380(n+1))]`
-/

namespace A044348.P15012834293461485282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137241 (A044380 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044348.P15012834293461485282

/-! ## A044348.P10733084492458041593

`A164020(A044728(n+1))`
-/

namespace A044348.P10733084492458041593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164020 (A044728 (n + 1)).toNat

end

end A044348.P10733084492458041593

/-! ## A044348.P1382328058916976028

`A113484(A044728(n+1))`
-/

namespace A044348.P1382328058916976028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113484 (A044728 (n + 1)).toNat

end

end A044348.P1382328058916976028

/-!
# A044349: Numbers n such that string 1,7 occurs in the base 10 representation of n but not of n-1.

The programs for A044349, there is no canonical definition to state claims against.
-/

/-! ## A044349.P13167113491887649498

`record[A135997(A044383(n+1))]`
-/

namespace A044349.P13167113491887649498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135997 (A044383 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044349.P13167113491887649498

/-! ## A044349.P5432189353581471470

`A044352(n+1)+A008612(6*A044730(n+1))-A044353(n+1)`
-/

namespace A044349.P5432189353581471470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044352 (n + 1) + A008612 (6 * A044730 (n + 1)).toNat - A044353 (n + 1)

end

end A044349.P5432189353581471470

/-! ## A044349.P15889265027188727598

`A044352(n+1)+A026806(6*A044730(n+1))-A044353(n+1)`
-/

namespace A044349.P15889265027188727598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044352 (n + 1) + A026806 (6 * A044730 (n + 1)).toNat - A044353 (n + 1)

end

end A044349.P15889265027188727598

/-! ## A044349.P15874301332342452449

`A008612(6*A044729(n+1))`
-/

namespace A044349.P15874301332342452449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (6 * A044729 (n + 1)).toNat

end

end A044349.P15874301332342452449

/-! ## A044349.P4923190543645607425

`A044729(n+1)+A001221(A228811(n+1))`
-/

namespace A044349.P4923190543645607425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044729 (n + 1) + A001221 (A228811 (n + 1)).toNat

end

end A044349.P4923190543645607425

/-!
# A044350: Numbers n such that string 1,8 occurs in the base 10 representation of n but not of n-1.

The programs for A044350, there is no canonical definition to state claims against.
-/

/-! ## A044350.P18193018896868600608

`record[A137241(A044386(n+1))]`
-/

namespace A044350.P18193018896868600608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137241 (A044386 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044350.P18193018896868600608

/-! ## A044350.P9373962674415192165

`A008612(6*A044730(n+1))`
-/

namespace A044350.P9373962674415192165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (6 * A044730 (n + 1)).toNat

end

end A044350.P9373962674415192165

/-! ## A044350.P16107577476607387715

`A026806(6*A044730(n+1))`
-/

namespace A044350.P16107577476607387715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026806 (6 * A044730 (n + 1)).toNat

end

end A044350.P16107577476607387715

/-! ## A044350.P14696164392449597521

`A103221(6*A044730(n+1))`
-/

namespace A044350.P14696164392449597521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (6 * A044730 (n + 1)).toNat

end

end A044350.P14696164392449597521

/-! ## A044350.P6176409895553069804

`A044730(n+1)+A072189(n)!`
-/

namespace A044350.P6176409895553069804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044730 (n + 1) + (Nat.factorial (A072189 n).toNat : ℤ)

end

end A044350.P6176409895553069804

/-!
# A044351: Numbers k such that string 1,9 occurs in the base 10 representation of k but not of k-1.

The programs for A044351, there is no canonical definition to state claims against.
-/

/-! ## A044351.P11646700870361590423

`record[A137241(A044389(n+1))]`
-/

namespace A044351.P11646700870361590423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137241 (A044389 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044351.P11646700870361590423

/-!
# A044352: Numbers n such that string 2,0 occurs in the base 10 representation of n but not of n-1.

The programs for A044352, there is no canonical definition to state claims against.
-/

/-! ## A044352.P5917619729359980389

`filter[A043217(1+n), A011765(#)]`
-/

namespace A044352.P5917619729359980389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043217 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011765 (f1 j).toNat = 1) n)

end

end A044352.P5917619729359980389

/-! ## A044352.P5082256849090830571

`filter[A043217(1+n), A014577(#)]`
-/

namespace A044352.P5082256849090830571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043217 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A014577 (f1 j).toNat = 1) n)

end

end A044352.P5082256849090830571

/-! ## A044352.P18242946781353832699

`filter[A043217(1+n), A106665(#)]`
-/

namespace A044352.P18242946781353832699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043217 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A106665 (f1 j).toNat = 1) n)

end

end A044352.P18242946781353832699

/-! ## A044352.P9970033167850787951

`filter[A043217(n+1), A121262(#)]`
-/

namespace A044352.P9970033167850787951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043217 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A121262 (f1 j).toNat = 1) n)

end

end A044352.P9970033167850787951

/-! ## A044352.P12774663305545000560

`filter[A043217(n+1), A133872(#)]`
-/

namespace A044352.P12774663305545000560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043217 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A133872 (f1 j).toNat = 1) n)

end

end A044352.P12774663305545000560

/-! ## A044352.P3082764686904702940

`filter[A043217(n+1), A179850(#)]`
-/

namespace A044352.P3082764686904702940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043217 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A179850 (f1 j).toNat = 1) n)

end

end A044352.P3082764686904702940

/-! ## A044352.P15531945536676109912

`filter[A043217(n+1), A232990(#)]`
-/

namespace A044352.P15531945536676109912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043217 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A232990 (f1 j).toNat = 1) n)

end

end A044352.P15531945536676109912

/-! ## A044352.P858968038931240602

`filter[A043217(n+1), A262808(#)]`
-/

namespace A044352.P858968038931240602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043217 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A262808 (f1 j).toNat = 1) n)

end

end A044352.P858968038931240602

/-! ## A044352.P7981351897627561223

`filter[A043217(n+1), A305994(#)]`
-/

namespace A044352.P7981351897627561223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043217 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A305994 (f1 j).toNat = 1) n)

end

end A044352.P7981351897627561223

/-! ## A044352.P11435604383615090577

`filter[A043217(n+1), A359379(#)]`
-/

namespace A044352.P11435604383615090577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043217 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359379 (f1 j).toNat = 1) n)

end

end A044352.P11435604383615090577

/-!
# A044353: Numbers n such that string 2,1 occurs in the base 10 representation of n but not of n-1.

The programs for A044353, there is no canonical definition to state claims against.
-/

/-! ## A044353.P11505802187219441369

`record[A108738(A044395(n+1))]`
-/

namespace A044353.P11505802187219441369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108738 (A044395 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044353.P11505802187219441369

/-! ## A044353.P7943612750132314970

`record[A175676(A044395(n+1))%A043222(n+1)]`
-/

namespace A044353.P7943612750132314970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A175676 (A044395 (n + 1)).toNat) (A043222 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044353.P7943612750132314970

/-! ## A044353.P17223793569186287867

`record[A175676(A044395(n+1)%A044397(n+1))]`
-/

namespace A044353.P17223793569186287867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175676 (Int.tmod (A044395 (n + 1)) (A044397 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044353.P17223793569186287867

/-! ## A044353.P16810828685010902869

`A110699(A044733(n+1))`
-/

namespace A044353.P16810828685010902869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110699 (A044733 (n + 1)).toNat

end

end A044353.P16810828685010902869

/-!
# A044354: Numbers n such that string 2,2 occurs in the base 10 representation of n but not of n-1.

The programs for A044354, there is no canonical definition to state claims against.
-/

/-! ## A044354.P3380719380178526531

`record[A135997(A044398(n+1))]`
-/

namespace A044354.P3380719380178526531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135997 (A044398 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044354.P3380719380178526531

/-! ## A044354.P11859530922860128332

`record[A175676(A044398(n+1))+A175676(n+1)]`
-/

namespace A044354.P11859530922860128332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175676 (A044398 (n + 1)).toNat + A175676 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044354.P11859530922860128332

/-! ## A044354.P11871348322036518881

`or(A000005(A318960(n+3)), A053741(2*n))`
-/

namespace A044354.P11871348322036518881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000005 (A318960 (n + 3)).toNat) (A053741 (2 * n))

end

end A044354.P11871348322036518881

/-! ## A044354.P17925659047210835792

`10*10*n+23-A014963(A007318(2*n²))`
-/

namespace A044354.P17925659047210835792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 * (10 * n) + 23 : ℤ) - A014963 (A007318 (2 * n ^ 2)).toNat

end

end A044354.P17925659047210835792

/-!
# A044355: Numbers n such that string 2,3 occurs in the base 10 representation of n but not of n-1.

The programs for A044355, there is no canonical definition to state claims against.
-/

/-! ## A044355.P7150069102173189511

`record[A135997(A044401(n+1))]`
-/

namespace A044355.P7150069102173189511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135997 (A044401 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044355.P7150069102173189511

/-!
# A044356: Numbers k such that the string 2,4 occurs in the base 10 representation of k but not of k-1.

The programs for A044356, there is no canonical definition to state claims against.
-/

/-! ## A044356.P14874031028290509230

`record[A137241(A044404(n+1))]`
-/

namespace A044356.P14874031028290509230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137241 (A044404 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044356.P14874031028290509230

/-! ## A044356.P14066790903403900682

`A164020(A044736(n+1))`
-/

namespace A044356.P14066790903403900682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164020 (A044736 (n + 1)).toNat

end

end A044356.P14066790903403900682

/-! ## A044356.P11113103799413281934

`A110699(A044736(n+1))`
-/

namespace A044356.P11113103799413281934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110699 (A044736 (n + 1)).toNat

end

end A044356.P11113103799413281934

/-!
# A044357: Numbers n such that string 2,5 occurs in the base 10 representation of n but not of n-1.

The programs for A044357, there is no canonical definition to state claims against.
-/

/-! ## A044357.P16618315702187366740

`record[A137241(A044407(n+1))]`
-/

namespace A044357.P16618315702187366740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137241 (A044407 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044357.P16618315702187366740

/-! ## A044357.P13883993089169319601

`record[A175676(A044407(n+1))%A044406(n+1)]`
-/

namespace A044357.P13883993089169319601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A175676 (A044407 (n + 1)).toNat) (A044406 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044357.P13883993089169319601

/-! ## A044357.P17177861396930864779

`record[A175676(A044407(n+1)%A044408(n+1))]`
-/

namespace A044357.P17177861396930864779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175676 (Int.tmod (A044407 (n + 1)) (A044408 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044357.P17177861396930864779

/-! ## A044357.P2378868818757971228

`A110699(A044737(n+1))`
-/

namespace A044357.P2378868818757971228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110699 (A044737 (n + 1)).toNat

end

end A044357.P2378868818757971228

/-!
# A044358: Numbers n such that string 2,6 occurs in the base 10 representation of n but not of n-1.

The programs for A044358, there is no canonical definition to state claims against.
-/

/-! ## A044358.P12807520539983986807

`record[A175676(A044410(n+1))]`
-/

namespace A044358.P12807520539983986807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175676 (A044410 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044358.P12807520539983986807

/-! ## A044358.P12500768241052838081

`A008621(4*A044738(n+1))`
-/

namespace A044358.P12500768241052838081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (4 * A044738 (n + 1)).toNat

end

end A044358.P12500768241052838081

/-! ## A044358.P6191765071983646746

`A008624(4*A044738(n+1))`
-/

namespace A044358.P6191765071983646746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (4 * A044738 (n + 1)).toNat

end

end A044358.P6191765071983646746

/-! ## A044358.P14500690348616065183

`A110659(4*A044738(n+1))`
-/

namespace A044358.P14500690348616065183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110659 (4 * A044738 (n + 1)).toNat

end

end A044358.P14500690348616065183

/-! ## A044358.P15766194150955263072

`A246416(4*A044738(n+1))`
-/

namespace A044358.P15766194150955263072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246416 (4 * A044738 (n + 1)).toNat

end

end A044358.P15766194150955263072

/-!
# A044359: Numbers n such that string 2,7 occurs in the base 10 representation of n but not of n-1.

The programs for A044359, there is no canonical definition to state claims against.
-/

/-! ## A044359.P7704613707761277352

`record[A175676(A044413(n+1))]`
-/

namespace A044359.P7704613707761277352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175676 (A044413 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044359.P7704613707761277352

/-! ## A044359.P4246053341124149199

`A257646(A044739(n+1))`
-/

namespace A044359.P4246053341124149199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257646 (A044739 (n + 1)).toNat

end

end A044359.P4246053341124149199

/-!
# A044360: Numbers n such that string 2,8 occurs in the base 10 representation of n but not of n-1.

The programs for A044360, there is no canonical definition to state claims against.
-/

/-! ## A044360.P13421602140981592599

`record[A175676(A044416(n+1))]`
-/

namespace A044360.P13421602140981592599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175676 (A044416 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044360.P13421602140981592599

/-! ## A044360.P13434006060638839740

`record[A093803(A044416(n+1)-3)]+1`
-/

namespace A044360.P13434006060638839740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093803 (A044416 (n + 1) - 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1

end

end A044360.P13434006060638839740

/-! ## A044360.P18285343873758785253

`A164020(A044740(n+1))`
-/

namespace A044360.P18285343873758785253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164020 (A044740 (n + 1)).toNat

end

end A044360.P18285343873758785253

/-! ## A044360.P15435041417184879830

`A113484(A044740(n+1))`
-/

namespace A044360.P15435041417184879830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113484 (A044740 (n + 1)).toNat

end

end A044360.P15435041417184879830

/-!
# A044361: Numbers n such that string 2,9 occurs in the base 10 representation of n but not of n-1.

The programs for A044361, there is no canonical definition to state claims against.
-/

/-! ## A044361.P7209591048101381894

`record[A175676(A044419(n+1))]`
-/

namespace A044361.P7209591048101381894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175676 (A044419 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044361.P7209591048101381894

/-! ## A044361.P15845538177388555840

`A110699(A044741(n+1))`
-/

namespace A044361.P15845538177388555840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110699 (A044741 (n + 1)).toNat

end

end A044361.P15845538177388555840

/-!
# A044362: Numbers n such that string 3,0 occurs in the base 10 representation of n but not of n-1.

The programs for A044362, there is no canonical definition to state claims against.
-/

/-! ## A044362.P3421031117165455840

`record[2*A260739(A043218(1+n))]`
-/

namespace A044362.P3421031117165455840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A260739 (A043218 (1 + n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044362.P3421031117165455840

/-! ## A044362.P15114243710018432866

`record[A038608(A043218(n+1))]`
-/

namespace A044362.P15114243710018432866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038608 (A043218 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044362.P15114243710018432866

/-! ## A044362.P16162584249684960536

`filter[A043218(1+n), A059841(#)]`
-/

namespace A044362.P16162584249684960536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043218 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A059841 (f1 j).toNat = 1) n)

end

end A044362.P16162584249684960536

/-! ## A044362.P17416542408869372436

`filter[A043218(n+1), A135528(#)]`
-/

namespace A044362.P17416542408869372436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043218 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A135528 (f1 j).toNat = 1) n)

end

end A044362.P17416542408869372436

/-! ## A044362.P7695845379850549144

`filter[A043218(n+1), A198517(#)]`
-/

namespace A044362.P7695845379850549144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043218 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A198517 (f1 j).toNat = 1) n)

end

end A044362.P7695845379850549144

/-! ## A044362.P15730946481735628728

`filter[A043218(n+1), A266591(#)]`
-/

namespace A044362.P15730946481735628728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043218 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266591 (f1 j).toNat = 1) n)

end

end A044362.P15730946481735628728

/-! ## A044362.P16974947499250142106

`filter[A043218(n+1), A267043(#)]`
-/

namespace A044362.P16974947499250142106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043218 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267043 (f1 j).toNat = 1) n)

end

end A044362.P16974947499250142106

/-! ## A044362.P13847261032057116480

`filter[A043218(n+1), A285383(#)]`
-/

namespace A044362.P13847261032057116480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043218 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A285383 (f1 j).toNat = 1) n)

end

end A044362.P13847261032057116480

/-! ## A044362.P16062934157326988520

`filter[A043218(n+1), A285384(#)]`
-/

namespace A044362.P16062934157326988520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043218 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A285384 (f1 j).toNat = 1) n)

end

end A044362.P16062934157326988520

/-!
# A044363: Numbers n such that string 3,1 occurs in the base 10 representation of n but not of n-1.

The programs for A044363, there is no canonical definition to state claims against.
-/

/-! ## A044363.P8953380871250748304

`record[A175676(A044425(n+1))]`
-/

namespace A044363.P8953380871250748304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175676 (A044425 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044363.P8953380871250748304

/-!
# A044364: Numbers n such that string 3,2 occurs in the base 10 representation of n but not of n-1.

The programs for A044364, there is no canonical definition to state claims against.
-/

/-! ## A044364.P2785454043272477746

`A164020(A044744(n+1))`
-/

namespace A044364.P2785454043272477746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164020 (A044744 (n + 1)).toNat

end

end A044364.P2785454043272477746

/-! ## A044364.P13862013089384121701

`A113484(A044744(n+1))`
-/

namespace A044364.P13862013089384121701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113484 (A044744 (n + 1)).toNat

end

end A044364.P13862013089384121701

/-!
# A044365: Numbers n such that string 3,3 occurs in the base 10 representation of n but not of n-1.

The programs for A044365, there is no canonical definition to state claims against.
-/

/-! ## A044365.P15581794876028255267

`record[A135997(A044431(n+1))]`
-/

namespace A044365.P15581794876028255267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135997 (A044431 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044365.P15581794876028255267

/-! ## A044365.P3259328019724448266

`A028310(A044431(3*n+1))/3`
-/

namespace A044365.P3259328019724448266
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028310 (A044431 (3 * n + 1)).toNat : ℚ) / 3

end

end A044365.P3259328019724448266

/-! ## A044365.P15712317554145877431

`A043243(2*(n+1))-A043219(A053501(n))`
-/

namespace A044365.P15712317554145877431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043243 (2 * (n + 1)) - A043219 (A053501 n).toNat

end

end A044365.P15712317554145877431

/-! ## A044365.P11988429685612899468

`A007094(A044214(n+1)^A390766(n))`
-/

namespace A044365.P11988429685612899468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (SequenceMachineLib.roundAway ((A044214 (n + 1) : ℚ) ^ (A390766 n : ℤ))).toNat

end

end A044365.P11988429685612899468

/-!
# A044366: Numbers n such that string 3,4 occurs in the base 10 representation of n but not of n-1.

The programs for A044366, there is no canonical definition to state claims against.
-/

/-! ## A044366.P6548345473582342008

`record[A175676(A044714(n+1)+1)]`
-/

namespace A044366.P6548345473582342008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175676 (A044714 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044366.P6548345473582342008

/-!
# A044367: Numbers n such that string 3,5 occurs in the base 10 representation of n but not of n-1.

The programs for A044367, there is no canonical definition to state claims against.
-/

/-! ## A044367.P15081819244309659518

`A113484(A044747(n+1))`
-/

namespace A044367.P15081819244309659518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113484 (A044747 (n + 1)).toNat

end

end A044367.P15081819244309659518

/-!
# A044368: Numbers n such that string 3,6 occurs in the base 10 representation of n but not of n-1.

The programs for A044368, there is no canonical definition to state claims against.
-/

/-! ## A044368.P1003759797975608183

`A164020(A044748(n+1))`
-/

namespace A044368.P1003759797975608183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164020 (A044748 (n + 1)).toNat

end

end A044368.P1003759797975608183

/-! ## A044368.P3159874868560496475

`A110699(A044748(n+1))`
-/

namespace A044368.P3159874868560496475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110699 (A044748 (n + 1)).toNat

end

end A044368.P3159874868560496475

/-!
# A044369: Numbers n such that string 3,7 occurs in the base 10 representation of n but not of n-1.

The programs for A044369, there is no canonical definition to state claims against.
-/

/-! ## A044369.P10398195196923559524

`A231892(A044749(n+1))`
-/

namespace A044369.P10398195196923559524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231892 (A044749 (n + 1)).toNat

end

end A044369.P10398195196923559524

/-!
# A044370: Numbers n such that string 3,8 occurs in the base 10 representation of n but not of n-1.

The programs for A044370, there is no canonical definition to state claims against.
-/

/-! ## A044370.P11364900606626572293

`A110699(A044750(n+1))`
-/

namespace A044370.P11364900606626572293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110699 (A044750 (n + 1)).toNat

end

end A044370.P11364900606626572293

/-!
# A044372: Numbers n such that string 4,0 occurs in the base 10 representation of n but not of n-1.

The programs for A044372, there is no canonical definition to state claims against.
-/

/-! ## A044372.P10830154798731875671

`filter[A043219(n+1), A198517(#)]`
-/

namespace A044372.P10830154798731875671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043219 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A198517 (f1 j).toNat = 1) n)

end

end A044372.P10830154798731875671

/-! ## A044372.P17859267224284631945

`filter[A043219(1+n), A232990(#)]`
-/

namespace A044372.P17859267224284631945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043219 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A232990 (f1 j).toNat = 1) n)

end

end A044372.P17859267224284631945

/-! ## A044372.P15996049623449302292

`∩[2*A297466(n), A043219(n+1)]`
-/

namespace A044372.P15996049623449302292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A297466 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043219 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044372.P15996049623449302292

/-! ## A044372.P6263295907569289424

`(A044375(n+1)+(A044373(n+1)-1)%A253054(n+1))%A044756(n+1)`
-/

namespace A044372.P6263295907569289424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A044375 (n + 1) + Int.tmod (A044373 (n + 1) - 1) (A253054 (n + 1))) (A044756 (n + 1))

end

end A044372.P6263295907569289424

/-!
# A044373: Numbers n such that string 4,1 occurs in the base 10 representation of n but not of n-1.

The programs for A044373, there is no canonical definition to state claims against.
-/

/-! ## A044373.P9262339373656440038

`A110699(A044753(n+1))`
-/

namespace A044373.P9262339373656440038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110699 (A044753 (n + 1)).toNat

end

end A044373.P9262339373656440038

/-!
# A044374: Numbers n such that string 4,2 occurs in the base 10 representation of n but not of n-1.

The programs for A044374, there is no canonical definition to state claims against.
-/

/-! ## A044374.P2060213561341681859

`A280498(A044375(n+1)+A044373(n+1))`
-/

namespace A044374.P2060213561341681859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280498 (A044375 (n + 1) + A044373 (n + 1)).toNat

end

end A044374.P2060213561341681859

/-! ## A044374.P6650608383326125227

`A113484(A044754(n+1))`
-/

namespace A044374.P6650608383326125227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113484 (A044754 (n + 1)).toNat

end

end A044374.P6650608383326125227

/-!
# A044375: Numbers n such that string 4,3 occurs in the base 10 representation of n but not of n-1.

The programs for A044375, there is no canonical definition to state claims against.
-/

/-! ## A044375.P17598943204153389780

`A257646(A044755(n+1))`
-/

namespace A044375.P17598943204153389780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257646 (A044755 (n + 1)).toNat

end

end A044375.P17598943204153389780

/-!
# A044376: Numbers n such that string 4,4 occurs in the base 10 representation of n but not of n-1.

The programs for A044376, there is no canonical definition to state claims against.
-/

/-! ## A044376.P7776389627873567596

`A053743(n)-A000189(A282913(n))`
-/

namespace A044376.P7776389627873567596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053743 n - A000189 (A282913 n).toNat

end

end A044376.P7776389627873567596

/-! ## A044376.P15190539972030646241

`A053743(n)-A332294(A037225(3*n)+1)`
-/

namespace A044376.P15190539972030646241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053743 n - A332294 (A037225 (3 * n) + 1).toNat

end

end A044376.P15190539972030646241

/-! ## A044376.P17617265192118520072

`A102438(n)-A096501(A236789(n+1))`
-/

namespace A044376.P17617265192118520072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102438 n - A096501 (A236789 (n + 1)).toNat

end

end A044376.P17617265192118520072

/-! ## A044376.P9413026201683378072

`A053743(n)-A109009(A251335(n+1))`
-/

namespace A044376.P9413026201683378072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053743 n - A109009 (A251335 (n + 1)).toNat

end

end A044376.P9413026201683378072

/-! ## A044376.P11976712642828762056

`Δ[C(10*n, 2)]-A306309(A306282(n+5))`
-/

namespace A044376.P11976712642828762056
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (10 * n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A306309 (A306282 (n + 5)).toNat

end

end A044376.P11976712642828762056

/-!
# A044377: Numbers n such that string 4,5 occurs in the base 10 representation of n but not of n-1.

The programs for A044377, there is no canonical definition to state claims against.
-/

/-! ## A044377.P13632955525213351722

`A007094(A044224(n+1)^A043282(n+1))`
-/

namespace A044377.P13632955525213351722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (SequenceMachineLib.roundAway ((A044224 (n + 1) : ℚ) ^ (A043282 (n + 1) : ℤ))).toNat

end

end A044377.P13632955525213351722

/-! ## A044377.P4855396985389342804

`A007095(A044292(A037441(A007094(n+1))))`
-/

namespace A044377.P4855396985389342804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (A044292 (A037441 (A007094 (n + 1)).toNat).toNat).toNat

end

end A044377.P4855396985389342804

/-!
# A044378: Numbers n such that string 4,6 occurs in the base 10 representation of n but not of n-1.

The programs for A044378, there is no canonical definition to state claims against.
-/

/-! ## A044378.P5766652653066113192

`A110699(A044758(n+1))`
-/

namespace A044378.P5766652653066113192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110699 (A044758 (n + 1)).toNat

end

end A044378.P5766652653066113192

/-!
# A044379: Numbers n such that string 4,7 occurs in the base 10 representation of n but not of n-1.

The programs for A044379, there is no canonical definition to state claims against.
-/

/-! ## A044379.P7733060274987848127

`A257646(A044759(n+1))`
-/

namespace A044379.P7733060274987848127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257646 (A044759 (n + 1)).toNat

end

end A044379.P7733060274987848127

/-!
# A044380: Numbers n such that string 4,8 occurs in the base 10 representation of n but not of n-1.

The programs for A044380, there is no canonical definition to state claims against.
-/

/-! ## A044380.P13645670320825304697

`A113484(A044760(n+1))`
-/

namespace A044380.P13645670320825304697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113484 (A044760 (n + 1)).toNat

end

end A044380.P13645670320825304697

/-!
# A044381: Numbers n such that string 4,9 occurs in the base 10 representation of n but not of n-1.

The programs for A044381, there is no canonical definition to state claims against.
-/

/-! ## A044381.P3415223890095920363

`A110699(A044761(n+1))`
-/

namespace A044381.P3415223890095920363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110699 (A044761 (n + 1)).toNat

end

end A044381.P3415223890095920363

/-!
# A044382: Numbers n such that string 5,0 occurs in the base 10 representation of n but not of n-1.

The programs for A044382, there is no canonical definition to state claims against.
-/

/-! ## A044382.P18162222062891787972

`filter[A043220(1+n), A059841(#)]`
-/

namespace A044382.P18162222062891787972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043220 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A059841 (f1 j).toNat = 1) n)

end

end A044382.P18162222062891787972

/-! ## A044382.P16558354178525752850

`filter[A043220(1+n), A135528(#)]`
-/

namespace A044382.P16558354178525752850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043220 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A135528 (f1 j).toNat = 1) n)

end

end A044382.P16558354178525752850

/-! ## A044382.P8335727770453381774

`filter[A043220(1+n), A266591(#)]`
-/

namespace A044382.P8335727770453381774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043220 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266591 (f1 j).toNat = 1) n)

end

end A044382.P8335727770453381774

/-! ## A044382.P13352805068731743998

`filter[A043220(n+1), A267043(#)]`
-/

namespace A044382.P13352805068731743998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043220 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267043 (f1 j).toNat = 1) n)

end

end A044382.P13352805068731743998

/-! ## A044382.P12141176115706136381

`∩[A043220(n+1), A313089(n)]`
-/

namespace A044382.P12141176115706136381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043220 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313089 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044382.P12141176115706136381

/-! ## A044382.P8765996882726222183

`A026741(20*A121025(n+1))`
-/

namespace A044382.P8765996882726222183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (20 * A121025 (n + 1)).toNat

end

end A044382.P8765996882726222183

/-! ## A044382.P12276336437442138897

`A029578(20*A121025(n+1))`
-/

namespace A044382.P12276336437442138897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (20 * A121025 (n + 1)).toNat

end

end A044382.P12276336437442138897

/-! ## A044382.P7825328925454554892

`A059816(20*A121025(n+1))`
-/

namespace A044382.P7825328925454554892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059816 (20 * A121025 (n + 1)).toNat

end

end A044382.P7825328925454554892

/-!
# A044383: Numbers n such that string 5,1 occurs in the base 10 representation of n but not of n-1.

The programs for A044383, there is no canonical definition to state claims against.
-/

/-! ## A044383.P17927319551040565946

`A008619(2*A044763(1+n))`
-/

namespace A044383.P17927319551040565946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * A044763 (1 + n)).toNat

end

end A044383.P17927319551040565946

/-! ## A044383.P9659307326156164368

`A027656(2*A044763(n+1))`
-/

namespace A044383.P9659307326156164368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 (2 * A044763 (n + 1)).toNat

end

end A044383.P9659307326156164368

/-! ## A044383.P2133430920434011106

`A028242(2*A044763(n+1))`
-/

namespace A044383.P2133430920434011106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (2 * A044763 (n + 1)).toNat

end

end A044383.P2133430920434011106

/-! ## A044383.P468326693292973613

`A029579(2*A044763(n+1))`
-/

namespace A044383.P468326693292973613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 (2 * A044763 (n + 1)).toNat

end

end A044383.P468326693292973613

/-! ## A044383.P8912055823045820354

`A052938(2*A044763(n+1))`
-/

namespace A044383.P8912055823045820354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 (2 * A044763 (n + 1)).toNat

end

end A044383.P8912055823045820354

/-! ## A044383.P8033823857906236770

`A131732(2*A044763(n+1))`
-/

namespace A044383.P8033823857906236770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131732 (2 * A044763 (n + 1)).toNat

end

end A044383.P8033823857906236770

/-! ## A044383.P17427750514473025022

`A133622(2*A044763(n+1))`
-/

namespace A044383.P17427750514473025022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133622 (2 * A044763 (n + 1)).toNat

end

end A044383.P17427750514473025022

/-! ## A044383.P16292947650917796756

`A158416(2*A044763(n+1))`
-/

namespace A044383.P16292947650917796756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158416 (2 * A044763 (n + 1)).toNat

end

end A044383.P16292947650917796756

/-! ## A044383.P5206581936731543407

`A266285(2*A044763(n+1))`
-/

namespace A044383.P5206581936731543407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266285 (2 * A044763 (n + 1)).toNat

end

end A044383.P5206581936731543407

/-!
# A044384: Numbers n such that string 5,2 occurs in the base 10 representation of n but not of n-1.

The programs for A044384, there is no canonical definition to state claims against.
-/

/-! ## A044384.P9539763183131868452

`A110699(A044764(n+1))`
-/

namespace A044384.P9539763183131868452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110699 (A044764 (n + 1)).toNat

end

end A044384.P9539763183131868452

/-!
# A044385: Numbers n such that string 5,3 occurs in the base 10 representation of n but not of n-1.

The programs for A044385, there is no canonical definition to state claims against.
-/

/-! ## A044385.P2956227836148932074

`A110699(A044765(n+1))`
-/

namespace A044385.P2956227836148932074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110699 (A044765 (n + 1)).toNat

end

end A044385.P2956227836148932074

/-!
# A044386: Numbers n such that string 5,4 occurs in the base 10 representation of n but not of n-1.

The programs for A044386, there is no canonical definition to state claims against.
-/

/-! ## A044386.P37293352726423193

`A110699(A044766(n+1))`
-/

namespace A044386.P37293352726423193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110699 (A044766 (n + 1)).toNat

end

end A044386.P37293352726423193

/-!
# A044387: Numbers n such that string 5,5 occurs in the base 10 representation of n but not of n-1.

The programs for A044387, there is no canonical definition to state claims against.
-/

/-! ## A044387.P15091774119338292083

`A044768(n+1)-A333947(A011782(n))`
-/

namespace A044387.P15091774119338292083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044768 (n + 1) - A333947 (A011782 n).toNat

end

end A044387.P15091774119338292083

/-! ## A044387.P14210775680807535481

`A037479(A044301(n+1)^A008406(n+1))`
-/

namespace A044387.P14210775680807535481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037479 (SequenceMachineLib.roundAway ((A044301 (n + 1) : ℚ) ^ (A008406 (n + 1) : ℤ))).toNat

end

end A044387.P14210775680807535481

/-! ## A044387.P13246183959088883984

`A007094(A044232(A037442(n+1)))`
-/

namespace A044387.P13246183959088883984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (A044232 (A037442 (n + 1)).toNat).toNat

end

end A044387.P13246183959088883984

/-!
# A044388: Numbers n such that string 5,6 occurs in the base 10 representation of n but not of n-1.

The programs for A044388, there is no canonical definition to state claims against.
-/

/-! ## A044388.P15056775272386584642

`record[A044720(n+1)-A044764(A007439(n+1))]`
-/

namespace A044388.P15056775272386584642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044720 (n + 1) - A044764 (A007439 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044388.P15056775272386584642

/-! ## A044388.P3673636695857351338

`A044389(n+1)-A146927(A146935(n+2))`
-/

namespace A044388.P3673636695857351338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044389 (n + 1) - A146927 (A146935 (n + 2)).toNat

end

end A044388.P3673636695857351338

/-! ## A044388.P2801624963293905786

`A044389(n+1)-A103887(A181936(n))`
-/

namespace A044388.P2801624963293905786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044389 (n + 1) - A103887 (A181936 n).toNat

end

end A044388.P2801624963293905786

/-!
# A044389: Numbers n such that string 5,7 occurs in the base 10 representation of n but not of n-1.

The programs for A044389, there is no canonical definition to state claims against.
-/

/-! ## A044389.P8627252734154373440

`A110699(A044769(n+1))`
-/

namespace A044389.P8627252734154373440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110699 (A044769 (n + 1)).toNat

end

end A044389.P8627252734154373440

/-!
# A044390: Numbers n such that string 5,8 occurs in the base 10 representation of n but not of n-1.

The programs for A044390, there is no canonical definition to state claims against.
-/

/-! ## A044390.P4588936489221937482

`A113484(A044770(n+1))`
-/

namespace A044390.P4588936489221937482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113484 (A044770 (n + 1)).toNat

end

end A044390.P4588936489221937482

/-!
# A044391: Numbers n such that string 5,9 occurs in the base 10 representation of n but not of n-1.

The programs for A044391, there is no canonical definition to state claims against.
-/

/-! ## A044391.P7672388005113407475

`A257646(A044771(n+1))`
-/

namespace A044391.P7672388005113407475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257646 (A044771 (n + 1)).toNat

end

end A044391.P7672388005113407475

/-!
# A044392: Numbers n such that string 6,0 occurs in the base 10 representation of n but not of n-1.

The programs for A044392, there is no canonical definition to state claims against.
-/

/-! ## A044392.P3488255852729869427

`∩[A043221(n+1), A310238(n)]`
-/

namespace A044392.P3488255852729869427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043221 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310238 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044392.P3488255852729869427

/-! ## A044392.P13078151652830190644

`filter[A043221(1+n), A011765(#)]`
-/

namespace A044392.P13078151652830190644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043221 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011765 (f1 j).toNat = 1) n)

end

end A044392.P13078151652830190644

/-! ## A044392.P13518138809656306931

`filter[A043221(1+n), A014577(#)]`
-/

namespace A044392.P13518138809656306931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043221 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A014577 (f1 j).toNat = 1) n)

end

end A044392.P13518138809656306931

/-! ## A044392.P5756276758277536631

`filter[A043221(n+1), A106665(#)]`
-/

namespace A044392.P5756276758277536631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043221 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A106665 (f1 j).toNat = 1) n)

end

end A044392.P5756276758277536631

/-! ## A044392.P5744199483638619774

`filter[A043221(n+1), A121262(#)]`
-/

namespace A044392.P5744199483638619774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043221 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A121262 (f1 j).toNat = 1) n)

end

end A044392.P5744199483638619774

/-! ## A044392.P16493533974665617177

`filter[A043221(n+1), A133872(#)]`
-/

namespace A044392.P16493533974665617177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043221 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A133872 (f1 j).toNat = 1) n)

end

end A044392.P16493533974665617177

/-! ## A044392.P14885609678697727546

`filter[A043221(n+1), A198517(#)]`
-/

namespace A044392.P14885609678697727546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043221 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A198517 (f1 j).toNat = 1) n)

end

end A044392.P14885609678697727546

/-! ## A044392.P3325668200199489826

`filter[A043221(n+1), A232990(#)]`
-/

namespace A044392.P3325668200199489826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043221 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A232990 (f1 j).toNat = 1) n)

end

end A044392.P3325668200199489826

/-! ## A044392.P13182381766996675941

`filter[A043221(n+1), A262808(#)]`
-/

namespace A044392.P13182381766996675941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043221 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A262808 (f1 j).toNat = 1) n)

end

end A044392.P13182381766996675941

/-! ## A044392.P8651803324640040764

`filter[A043221(n+1), A305994(#)]`
-/

namespace A044392.P8651803324640040764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043221 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A305994 (f1 j).toNat = 1) n)

end

end A044392.P8651803324640040764

/-! ## A044392.P16448088630234020877

`filter[A043221(n+1), A359379(#)]`
-/

namespace A044392.P16448088630234020877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043221 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359379 (f1 j).toNat = 1) n)

end

end A044392.P16448088630234020877

/-!
# A044394: Numbers n such that string 6,2 occurs in the base 10 representation of n but not of n-1.

The programs for A044394, there is no canonical definition to state claims against.
-/

/-! ## A044394.P9217758972183831427

`A113484(A044774(n+1))`
-/

namespace A044394.P9217758972183831427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113484 (A044774 (n + 1)).toNat

end

end A044394.P9217758972183831427

/-!
# A044396: Numbers n such that string 6,4 occurs in the base 10 representation of n but not of n-1.

The programs for A044396, there is no canonical definition to state claims against.
-/

/-! ## A044396.P14878403791194375536

`A110699(A044776(n+1))`
-/

namespace A044396.P14878403791194375536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110699 (A044776 (n + 1)).toNat

end

end A044396.P14878403791194375536

/-!
# A044397: Numbers n such that string 6,5 occurs in the base 10 representation of n but not of n-1.

The programs for A044397, there is no canonical definition to state claims against.
-/

/-! ## A044397.P4032433251171885140

`A110699(A044777(n+1))`
-/

namespace A044397.P4032433251171885140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110699 (A044777 (n + 1)).toNat

end

end A044397.P4032433251171885140

/-!
# A044398: Numbers n such that string 6,6 occurs in the base 10 representation of n but not of n-1.

The programs for A044398, there is no canonical definition to state claims against.
-/

/-! ## A044398.P603207586020992446

`record[Δ[A175676(A044810(n+1)+1)]]`
-/

namespace A044398.P603207586020992446
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175676 (A044810 (n + 1) + 1).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044398.P603207586020992446

/-! ## A044398.P7690634111775708290

`A044778(n+1)+A000120(A004171(n))`
-/

namespace A044398.P7690634111775708290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044778 (n + 1) + A000120 (A004171 n).toNat

end

end A044398.P7690634111775708290

/-! ## A044398.P11959431813206096260

`A044778(n+1)+A026492(A052845(n))`
-/

namespace A044398.P11959431813206096260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044778 (n + 1) + A026492 (A052845 n).toNat

end

end A044398.P11959431813206096260

/-!
# A044399: Numbers n such that string 6,7 occurs in the base 10 representation of n but not of n-1.

The programs for A044399, there is no canonical definition to state claims against.
-/

/-! ## A044399.P6082556267702314149

`A233583(A044401(n+1))-A337335(A000082(n+1))`
-/

namespace A044399.P6082556267702314149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A044401 (n + 1)).toNat - A337335 (A000082 (n + 1)).toNat

end

end A044399.P6082556267702314149

/-! ## A044399.P13544796413979240465

`A043255(xor(A005408(n), A172536(n+1)))`
-/

namespace A044399.P13544796413979240465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043255 (Int.xor (A005408 n) (A172536 (n + 1))).toNat

end

end A044399.P13544796413979240465

