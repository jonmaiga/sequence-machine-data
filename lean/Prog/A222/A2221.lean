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
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
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
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C001
import Seq.B004.C003
import Seq.B005.C001
import Seq.B006.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A222100: Number of nX4 0..5 arrays with entries increasing mod 6 by 0, 1, 2 or 3 rightwards and downwards, starting with upper left zero.

The programs for A222100, there is no canonical definition to state claims against.
-/

/-! ## A222100.P14023514577937987940

`A222104(A374004(n+1))`
-/

namespace A222100.P14023514577937987940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222104 (A374004 (n + 1)).toNat

end

end A222100.P14023514577937987940

/-! ## A222100.P7777105971001735548

`A222104(A167614(n+2)+1)`
-/

namespace A222100.P7777105971001735548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222104 (A167614 (n + 2) + 1).toNat

end

end A222100.P7777105971001735548

/-! ## A222100.P10967540918972777731

`A222104(n+4+A167499(n)+n)`
-/

namespace A222100.P10967540918972777731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222104 ((n + 4 : ℤ) + (A167499 n + (n : ℤ))).toNat

end

end A222100.P10967540918972777731

/-! ## A222100.P16627262115747606363

`A222104(A141214(n+1))`
-/

namespace A222100.P16627262115747606363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222104 (A141214 (n + 1)).toNat

end

end A222100.P16627262115747606363

/-! ## A222100.P3983600216522832812

`A222104(A027379(n+2))`
-/

namespace A222100.P3983600216522832812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222104 (A027379 (n + 2)).toNat

end

end A222100.P3983600216522832812

/-!
# A222101: Number of nX5 0..5 arrays with entries increasing mod 6 by 0, 1, 2 or 3 rightwards and downwards, starting with upper left zero.

The programs for A222101, there is no canonical definition to state claims against.
-/

/-! ## A222101.P4546056084116887854

`A222104(A374005(n+1))`
-/

namespace A222101.P4546056084116887854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222104 (A374005 (n + 1)).toNat

end

end A222101.P4546056084116887854

/-! ## A222101.P4098769081072012507

`A222104(A077169(n+5))`
-/

namespace A222101.P4098769081072012507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222104 (A077169 (n + 5)).toNat

end

end A222101.P4098769081072012507

/-! ## A222101.P15802525434395654154

`A222104(A155212(n)+13)`
-/

namespace A222101.P15802525434395654154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222104 (A155212 n + 13).toNat

end

end A222101.P15802525434395654154

/-! ## A222101.P5374751901358954697

`A222104(A056000(n)+15)`
-/

namespace A222101.P5374751901358954697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222104 (A056000 n + 15).toNat

end

end A222101.P5374751901358954697

/-! ## A222101.P8591708119602318058

`A222104(eq[6, A131818(n+1)])`
-/

namespace A222101.P8591708119602318058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222104 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222101.P8591708119602318058

/-!
# A222102: Number of nX6 0..5 arrays with entries increasing mod 6 by 0, 1, 2 or 3 rightwards and downwards, starting with upper left zero.

The programs for A222102, there is no canonical definition to state claims against.
-/

/-! ## A222102.P1119034694195413878

`A222104(A374007(n+1))`
-/

namespace A222102.P1119034694195413878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222104 (A374007 (n + 1)).toNat

end

end A222102.P1119034694195413878

/-! ## A222102.P10038286946688653740

`A222104(eq[7, A131818(n+1)])`
-/

namespace A222102.P10038286946688653740
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222104 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222102.P10038286946688653740

/-! ## A222102.P12070007115732426484

`A222104(A052905(n+3))`
-/

namespace A222102.P12070007115732426484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222104 (A052905 (n + 3)).toNat

end

end A222102.P12070007115732426484

/-!
# A222103: 

The programs for A222103, there is no canonical definition to state claims against.
-/

/-! ## A222103.P14808690148105911427

`A222104(eq[6, A193592(n)])`
-/

namespace A222103.P14808690148105911427
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222104 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222103.P14808690148105911427

/-!
# A222105: Number of binary arrays indicating the locations of trailing edge maxima of a random length-n 0..2 array extended with zeros and convolved with 1,2,2,1.

The programs for A222105, there is no canonical definition to state claims against.
-/

/-! ## A222105.P10337063211394129060

`A222111(∑[n+2])`
-/

namespace A222105.P10337063211394129060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222111 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A222105.P10337063211394129060

/-! ## A222105.P5667581133930254115

`record[A222111(A347633(n+1)+1)]`
-/

namespace A222105.P5667581133930254115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222111 (A347633 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222105.P5667581133930254115

/-! ## A222105.P15195381421715115852

`record[A222111(sqrt(A303054(n+1))+1)]`
-/

namespace A222105.P15195381421715115852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222111 (SequenceMachineLib.roundAway (Real.sqrt (A303054 (n + 1) : ℝ) + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222105.P15195381421715115852

/-! ## A222105.P2806603960323436665

`lcm((-1)^n, A222111(A000096(n+1)))`
-/

namespace A222105.P2806603960323436665
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A222111 (A000096 (n + 1)).toNat)

end

end A222105.P2806603960323436665

/-! ## A222105.P7185589861092529419

`A222111(A000096(n+1))%A000032(n+2)`
-/

namespace A222105.P7185589861092529419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A222111 (A000096 (n + 1)).toNat) (A000032 (n + 2))

end

end A222105.P7185589861092529419

/-!
# A222106: Number of binary arrays indicating the locations of trailing edge maxima of a random length-n 0..3 array extended with zeros and convolved with 1,2,2,1.

The programs for A222106, there is no canonical definition to state claims against.
-/

/-! ## A222106.P15729311598344392337

`A222111(∑[n+3]+1)`
-/

namespace A222106.P15729311598344392337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222111 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A222106.P15729311598344392337

/-! ## A222106.P18312313687361720300

`record[A222111(A347633(n+1))]`
-/

namespace A222106.P18312313687361720300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222111 (A347633 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222106.P18312313687361720300

/-! ## A222106.P4920430628144928185

`record[A222111(sqrt(A303054(n+1)))]`
-/

namespace A222106.P4920430628144928185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222111 (SequenceMachineLib.roundAway (Real.sqrt (A303054 (n + 1) : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222106.P4920430628144928185

/-! ## A222106.P6037055795103734350

`lcm((-1)^n, A222111(A034856(n+2)))`
-/

namespace A222106.P6037055795103734350
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A222111 (A034856 (n + 2)).toNat)

end

end A222106.P6037055795103734350

/-! ## A222106.P7057321014990458378

`A007318(C(2, n))*A222111(A034856(n+2))`
-/

namespace A222106.P7057321014990458378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A222111 (A034856 (n + 2)).toNat

end

end A222106.P7057321014990458378

/-!
# A222107: Number of binary arrays indicating the locations of trailing edge maxima of a random length-n 0..4 array extended with zeros and convolved with 1,2,2,1.

The programs for A222107, there is no canonical definition to state claims against.
-/

/-! ## A222107.P6503486977640112968

`A222111(∑[n+4]+3)`
-/

namespace A222107.P6503486977640112968
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222111 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A222107.P6503486977640112968

/-! ## A222107.P556365139195819129

`record[A222111(A027379(n))]`
-/

namespace A222107.P556365139195819129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222111 (A027379 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222107.P556365139195819129

/-! ## A222107.P11662849901950209648

`A000267(A299167(n)+A030102(n))`
-/

namespace A222107.P11662849901950209648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 (A299167 n + A030102 n).toNat

end

end A222107.P11662849901950209648

/-! ## A222107.P5504673229294988441

`A293411(n)+A030308(A088305(n))`
-/

namespace A222107.P5504673229294988441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293411 n + A030308 (A088305 n).toNat

end

end A222107.P5504673229294988441

/-! ## A222107.P6980422081114576293

`A293411(n)+A127872(A002203(n))`
-/

namespace A222107.P6980422081114576293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293411 n + A127872 (A002203 n).toNat

end

end A222107.P6980422081114576293

/-!
# A222108: Number of binary arrays indicating the locations of trailing edge maxima of a random length-n 0..5 array extended with zeros and convolved with 1,2,2,1.

The programs for A222108, there is no canonical definition to state claims against.
-/

/-! ## A222108.P6474153774998715043

`A222111(Δ[A264443(n)])`
-/

namespace A222108.P6474153774998715043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222111 (f1 (n + 1) - f1 n).toNat

end

end A222108.P6474153774998715043

/-! ## A222108.P4026084971953737037

`A222111(A046691(n+3))`
-/

namespace A222108.P4026084971953737037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222111 (A046691 (n + 3)).toNat

end

end A222108.P4026084971953737037

/-! ## A222108.P16191775329706943572

`A222111(A056115(n)+11)`
-/

namespace A222108.P16191775329706943572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222111 (A056115 n + 11).toNat

end

end A222108.P16191775329706943572

/-! ## A222108.P9486755982259624068

`A222111(eq[4, A193592(n)])`
-/

namespace A222108.P9486755982259624068
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222111 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222108.P9486755982259624068

/-! ## A222108.P18323742308378593244

`A222111(Δ[A023545(n+1)])`
-/

namespace A222108.P18323742308378593244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222111 (f1 (n + 1) - f1 n).toNat

end

end A222108.P18323742308378593244

/-!
# A222109: Number of binary arrays indicating the locations of trailing edge maxima of a random length-n 0..6 array extended with zeros and convolved with 1,2,2,1.

The programs for A222109, there is no canonical definition to state claims against.
-/

/-! ## A222109.P6912495360625244817

`A222111(A052905(n+3))`
-/

namespace A222109.P6912495360625244817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222111 (A052905 (n + 3)).toNat

end

end A222109.P6912495360625244817

/-! ## A222109.P2368463345736024932

`A222111(A056119(n)+16)`
-/

namespace A222109.P2368463345736024932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222111 (A056119 n + 16).toNat

end

end A222109.P2368463345736024932

/-! ## A222109.P12758446765059142905

`A222111(eq[3, A219347(n)])`
-/

namespace A222109.P12758446765059142905
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222111 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222109.P12758446765059142905

/-! ## A222109.P10139275307280596343

`A222111(eq[5, A193592(n)])`
-/

namespace A222109.P10139275307280596343
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222111 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222109.P10139275307280596343

/-! ## A222109.P16059484317494558957

`A222111(A055999(n+3)+1)`
-/

namespace A222109.P16059484317494558957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222111 (A055999 (n + 3) + 1).toNat

end

end A222109.P16059484317494558957

/-!
# A222110: Number of binary arrays indicating the locations of trailing edge maxima of a random length-n 0..7 array extended with zeros and convolved with 1,2,2,1.

The programs for A222110, there is no canonical definition to state claims against.
-/

/-! ## A222110.P8386355170968622345

`A222111(A055999(n+4))`
-/

namespace A222110.P8386355170968622345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222111 (A055999 (n + 4)).toNat

end

end A222110.P8386355170968622345

/-! ## A222110.P17795207906585478267

`A222111(eq[4, A219347(n)])`
-/

namespace A222110.P17795207906585478267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222111 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222110.P17795207906585478267

/-! ## A222110.P1066193574668221537

`A222111(eq[6, A193592(n)])`
-/

namespace A222110.P1066193574668221537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222111 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222110.P1066193574668221537

/-! ## A222110.P1034058119549703579

`A222111(Δ[A023551(n+2)])`
-/

namespace A222110.P1034058119549703579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222111 (f1 (n + 1) - f1 n).toNat

end

end A222110.P1034058119549703579

/-! ## A222110.P12414951701840073429

`A222111(A052905(n+4)-1)`
-/

namespace A222110.P12414951701840073429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222111 (A052905 (n + 4) - 1).toNat

end

end A222110.P12414951701840073429

/-!
# A222111: T(n,k)=Number of binary arrays indicating the locations of trailing edge maxima of a random length-n 0..k array extended with zeros and convolved with 1,2,2,1.

The programs for A222111, there is no canonical definition to state claims against.
-/

/-! ## A222111.P3879707656610121059

`A082287(A034575(n+1)!*A222438(n+1))`
-/

namespace A222111.P3879707656610121059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082287 ((Nat.factorial (A034575 (n + 1)).toNat : ℤ) * A222438 (n + 1)).toNat

end

end A222111.P3879707656610121059

/-! ## A222111.P11002258296275508202

`A082287(A222438(n+1))%A008864(A205579(n))`
-/

namespace A222111.P11002258296275508202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A082287 (A222438 (n + 1)).toNat) (A008864 (A205579 n).toNat)

end

end A222111.P11002258296275508202

/-! ## A222111.P16465101150712846087

`A082287(A222438(n+1)%A078151(n+1))`
-/

namespace A222111.P16465101150712846087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082287 (Int.tmod (A222438 (n + 1)) (A078151 (n + 1))).toNat

end

end A222111.P16465101150712846087

/-! ## A222111.P4193695104841459829

`A082287(A222438(n+1)%A062241(n))`
-/

namespace A222111.P4193695104841459829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082287 (Int.tmod (A222438 (n + 1)) (A062241 n)).toNat

end

end A222111.P4193695104841459829

/-! ## A222111.P2777613750601783785

`A082287(A222438(n+1))*A322026(A119487(n+1))`
-/

namespace A222111.P2777613750601783785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082287 (A222438 (n + 1)).toNat * A322026 (A119487 (n + 1)).toNat

end

end A222111.P2777613750601783785

/-!
# A222112: Initial step in Goodstein sequences: write n-1 in hereditary binary representation, then bump to base 3.

The programs for A222112, there is no canonical definition to state claims against.
-/

/-! ## A222112.P17403949339345395759

`A057427(n)+A056004(A028310(n))`
-/

namespace A222112.P17403949339345395759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A056004 (A028310 n).toNat

end

end A222112.P17403949339345395759

/-! ## A222112.P11345985578884386088

`A056004(A109613(n))+A000035(n)`
-/

namespace A222112.P11345985578884386088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056004 (A109613 n).toNat + A000035 n

end

end A222112.P11345985578884386088

/-! ## A222112.P18230627638321378851

`A056004(A028310(n))-A057428(n)`
-/

namespace A222112.P18230627638321378851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056004 (A028310 n).toNat - A057428 n

end

end A222112.P18230627638321378851

/-! ## A222112.P17019803997849818981

`A056004(A109613(n))+log2(A000034(n))`
-/

namespace A222112.P17019803997849818981
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A056004 (A109613 n).toNat : ℝ) + Real.logb 2 (A000034 n : ℝ)

end

end A222112.P17019803997849818981

/-! ## A222112.P6168036593183354506

`∪[A056004(2*n+1)+1, A056004(2*n+1)]`
-/

namespace A222112.P6168036593183354506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056004 (2 * n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056004 (2 * n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A222112.P6168036593183354506

/-! ## A222112.P6404159767026858229

`A056004(A109613(n))+Δ[A004526(n)]`
-/

namespace A222112.P6404159767026858229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056004 (A109613 n).toNat + (f1 (n + 1) - f1 n)

end

end A222112.P6404159767026858229

/-! ## A222112.P8538455358789360007

`record[A056004(A065033(n))+A000035(n)]`
-/

namespace A222112.P8538455358789360007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056004 (A065033 n).toNat + A000035 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222112.P8538455358789360007

/-! ## A222112.P6692084447770013729

`record[A088705(n)+A056004(A065033(n))]`
-/

namespace A222112.P6692084447770013729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088705 n + A056004 (A065033 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222112.P6692084447770013729

/-!
# A222113: Goodstein sequence starting with a(1) = 16: to calculate a(n) for n>1, subtract 1 from a(n-1) and write the result in the hereditary representation base n, then bump the base to n+1.

The programs for A222113, there is no canonical definition to state claims against.
-/

/-! ## A222113.P15866896727901743353

`A222117(n)+1`
-/

namespace A222113.P15866896727901743353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222117 n + 1

end

end A222113.P15866896727901743353

/-! ## A222113.P2355683392933327792

`A271554(n)+(n+2)^(n+3)+1`
-/

namespace A222113.P2355683392933327792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271554 n + ((n + 2) ^ (n + 3) : ℤ) + 1

end

end A222113.P2355683392933327792

/-! ## A222113.P6567673375240175163

`A008620(3*n)-(n-A222117(n))`
-/

namespace A222113.P6567673375240175163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (3 * n) - ((n : ℤ) - A222117 n)

end

end A222113.P6567673375240175163

/-! ## A222113.P10397919499477867690

`5-(A040002(A025747(n))-A222117(n))`
-/

namespace A222113.P10397919499477867690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 - (A040002 (A025747 n).toNat - A222117 n)

end

end A222113.P10397919499477867690

/-! ## A222113.P6050643171103534168

`A052905(n)-(A055999(n)-A222117(n))`
-/

namespace A222113.P6050643171103534168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052905 n - (A055999 n - A222117 n)

end

end A222113.P6050643171103534168

/-!
# A222114: Least integer m>1 such that 6*p_k*(p_k-1) (k=1,...,n) are pairwise incongruent modulo m, where p_k denotes the k-th prime.

The programs for A222114, there is no canonical definition to state claims against.
-/

/-! ## A222114.P15017681422539421837

`p?[A090501(A003151(n+1))]`
-/

namespace A222114.P15017681422539421837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090501 (A003151 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A222114.P15017681422539421837

/-! ## A222114.P3118136679349276593

`p?[A233277(n)-A092030(n+5)]`
-/

namespace A222114.P3118136679349276593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233277 n - A092030 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A222114.P3118136679349276593

/-!
# A222115: a(n) = 1 + Sum_{k=1..n} binomial(n,k) * sigma(k).

The programs for A222115, there is no canonical definition to state claims against.
-/

/-! ## A222115.P18058384134139815386

`A185003(n+1)+1`
-/

namespace A222115.P18058384134139815386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185003 (n + 1) + 1

end

end A222115.P18058384134139815386

/-! ## A222115.P5045053461818123877

`∑[A131046(n+1)]+1`
-/

namespace A222115.P5045053461818123877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131046 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A222115.P5045053461818123877

/-! ## A222115.P1498879891450208955

`A020725(A185003(n+1))`
-/

namespace A222115.P1498879891450208955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A185003 (n + 1)).toNat

end

end A222115.P1498879891450208955

/-! ## A222115.P8867143116563669355

`A020725(∑[A131046(n+1)])`
-/

namespace A222115.P8867143116563669355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131046 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A222115.P8867143116563669355

/-!
# A222116: Palindromic primes whose sum of digits is also a palindromic prime.

The programs for A222116, there is no canonical definition to state claims against.
-/

/-! ## A222116.P13931429516934487403

`∩[A082208(n+1), A082806(n+1)]`
-/

namespace A222116.P13931429516934487403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082208 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082806 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A222116.P13931429516934487403

/-! ## A222116.P9089012841858085025

`∩[A082208(n+1), A157868(n+1)]`
-/

namespace A222116.P9089012841858085025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082208 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157868 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A222116.P9089012841858085025

/-! ## A222116.P12272723712124700961

`A002385(A131207(A083665(A083125(n+2))))`
-/

namespace A222116.P12272723712124700961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002385 (A131207 (A083665 (A083125 (n + 2)).toNat).toNat).toNat

end

end A222116.P12272723712124700961

/-!
# A222117: Goodstein sequence starting with 15.

The programs for A222117, there is no canonical definition to state claims against.
-/

/-! ## A222117.P13088337912516841613

`A222113(n+1)-1`
-/

namespace A222117.P13088337912516841613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222113 (n + 1) - 1

end

end A222117.P13088337912516841613

/-! ## A222117.P3329933175121827915

`A271554(n)+(n+2)^(n+3)`
-/

namespace A222117.P3329933175121827915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271554 n + ((n + 2) ^ (n + 3) : ℤ)

end

end A222117.P3329933175121827915

/-! ## A222117.P15439181111683297052

`A260196(n+2)+A222113(n+1)`
-/

namespace A222117.P15439181111683297052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (n + 2) + A222113 (n + 1)

end

end A222117.P15439181111683297052

/-! ## A222117.P17561279722494092733

`lcm(xor(-A222113(n+1), -1), A087960(n))`
-/

namespace A222117.P17561279722494092733
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (Int.xor (-A222113 (n + 1)) (-1)) (A087960 n)

end

end A222117.P17561279722494092733

/-! ## A222117.P3222070471048002693

`A271559(n)+A271554(n)-A056193(n)`
-/

namespace A222117.P3222070471048002693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271559 n + (A271554 n - A056193 n)

end

end A222117.P3222070471048002693

/-! ## A222117.P1628809512676715397

`A271560(n)+A271554(n)-A266204(n)`
-/

namespace A222117.P1628809512676715397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271560 n + (A271554 n - A266204 n)

end

end A222117.P1628809512676715397

/-! ## A222117.P12850871055186972492

`A339435(A067659(∏{e}[n+1, #]))+A222113(n+1)`
-/

namespace A222117.P12850871055186972492
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339435 (A067659 (∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)).toNat + A222113 (n + 1)

end

end A222117.P12850871055186972492

/-!
# A222118: Number of terms in Collatz (3x+1) trajectory of n that did not appear in previous trajectories.

The programs for A222118, there is no canonical definition to state claims against.
-/

/-! ## A222118.P16489566155258591295

`A006577(n+1)-A221956(n+1)+1`
-/

namespace A222118.P16489566155258591295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006577 (n + 1) - A221956 (n + 1) + 1

end

end A222118.P16489566155258591295

/-! ## A222118.P8974105367833237237

`A008908(n+1)-A221956(n+1)`
-/

namespace A222118.P8974105367833237237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008908 (n + 1) - A221956 (n + 1)

end

end A222118.P8974105367833237237

/-! ## A222118.P9558186453305710912

`A006666(n+1)+A078719(n+1)-A221956(n+1)`
-/

namespace A222118.P9558186453305710912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006666 (n + 1) + (A078719 (n + 1) - A221956 (n + 1))

end

end A222118.P9558186453305710912

/-! ## A222118.P4208305516455136211

`A076228(n+1)+A213204(n+1)-A221956(n+1)`
-/

namespace A222118.P4208305516455136211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076228 (n + 1) + (A213204 (n + 1) - A221956 (n + 1))

end

end A222118.P4208305516455136211

/-! ## A222118.P14451308206774826195

`A087225(n+1)+A222641(n+1)-A221956(n+1)`
-/

namespace A222118.P14451308206774826195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087225 (n + 1) + (A222641 (n + 1) - A221956 (n + 1))

end

end A222118.P14451308206774826195

/-! ## A222118.P16164605837171852786

`A078350(n+1)+A267830(n+1)-A221956(n+1)`
-/

namespace A222118.P16164605837171852786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078350 (n + 1) + (A267830 (n + 1) - A221956 (n + 1))

end

end A222118.P16164605837171852786

/-! ## A222118.P17480765473325144228

`A006577(A005843(n+1))-A221956(n+1)`
-/

namespace A222118.P17480765473325144228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006577 (A005843 (n + 1)).toNat - A221956 (n + 1)

end

end A222118.P17480765473325144228

/-!
# A222119: Number k yielding the smallest prime of the form (k+1)^p - k^p, where p = prime(n).

The programs for A222119, there is no canonical definition to state claims against.
-/

/-! ## A222119.P4866602647521063777

`A103794(n+1)-1`
-/

namespace A222119.P4866602647521063777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103794 (n + 1) - 1

end

end A222119.P4866602647521063777

/-! ## A222119.P302035010195873992

`A250201(p?[xor(1, n)])-1`
-/

namespace A222119.P302035010195873992
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250201 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) - 1

end

end A222119.P302035010195873992

/-! ## A222119.P15424691011616648212

`A250201(Δ[A007504(n)])-1`
-/

namespace A222119.P15424691011616648212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250201 (f1 (n + 1) - f1 n).toNat - 1

end

end A222119.P15424691011616648212

/-! ## A222119.P5637608014387605170

`A250201(A000040(n+1))-1`
-/

namespace A222119.P5637608014387605170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250201 (A000040 (n + 1)).toNat - 1

end

end A222119.P5637608014387605170

/-! ## A222119.P44173708319081511

`A250201(A008578(n+2))-1`
-/

namespace A222119.P44173708319081511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250201 (A008578 (n + 2)).toNat - 1

end

end A222119.P44173708319081511

/-! ## A222119.P3693835830631329166

`A250201(A116974(n+2))-1`
-/

namespace A222119.P3693835830631329166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250201 (A116974 (n + 2)).toNat - 1

end

end A222119.P3693835830631329166

/-! ## A222119.P9599349552145917475

`A250201(A161428(n+2))-1`
-/

namespace A222119.P9599349552145917475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250201 (A161428 (n + 2)).toNat - 1

end

end A222119.P9599349552145917475

/-! ## A222119.P10064946530414036471

`A250201(A162786(n+2))-1`
-/

namespace A222119.P10064946530414036471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250201 (A162786 (n + 2)).toNat - 1

end

end A222119.P10064946530414036471

/-! ## A222119.P10374352750190845664

`A250201(A175787(n+2))-1`
-/

namespace A222119.P10374352750190845664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250201 (A175787 (n + 2)).toNat - 1

end

end A222119.P10374352750190845664

/-!
# A222121: Number of binary arrays indicating the locations of trailing edge maxima of a random length-n 0..2 array extended with zeros and convolved with 1,2,1.

The programs for A222121, the canonical program `A222121.P4918319335430190294` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A222121 has offset 1).

The definition of A222121 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 516 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A222121.P4918319335430190294

`a(n-1)+a(n-3)+a(n-6)+a(n-8)` with `a(0)=2, a(1)=3, a(2)=4, a(3)=6, a(4)=10, a(5)=15, a(6)=24, a(7)=38`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A222121

/-- `a(n-1)+a(n-3)+a(n-6)+a(n-8)` -/
def P4918319335430190294.Spec : Prop :=
  ∀ n, (P4918319335430190294.a n : ℤ) = A222121 (n + 1)

theorem P4918319335430190294.correct : P4918319335430190294.Spec := by
  intro n
  simp only [A222121, Nat.add_sub_cancel]

end A222121

/-! ## A222121.P12857642968264584131

`A222127(∑[n+2])`
-/

namespace A222121.P12857642968264584131
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222127 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A222121.P12857642968264584131

namespace A222121

/-- `A222127(∑[n+2])` -/
def P12857642968264584131.Spec : Prop :=
  ∀ n, P12857642968264584131.a n = A222121 (n + 1)

end A222121

/-! ## A222121.P1885291886110926590

`record[A222127(A278504(2*n+1))]`
-/

namespace A222121.P1885291886110926590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222127 (A278504 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222121.P1885291886110926590

namespace A222121

/-- `record[A222127(A278504(2*n+1))]` -/
def P1885291886110926590.Spec : Prop :=
  ∀ n, P1885291886110926590.a n = A222121 (n + 1)

end A222121

/-! ## A222121.P4419946378804062186

`abs(A222127(A000096(n+1))-n)+n`
-/

namespace A222121.P4419946378804062186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A222127 (A000096 (n + 1)).toNat - (n : ℤ)| + (n : ℤ)

end

end A222121.P4419946378804062186

namespace A222121

/-- `abs(A222127(A000096(n+1))-n)+n` -/
def P4419946378804062186.Spec : Prop :=
  ∀ n, P4419946378804062186.a n = A222121 (n + 1)

end A222121

/-! ## A222121.P6489849789851865912

`record[A222127(A000096(A020986(n)))]`
-/

namespace A222121.P6489849789851865912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222127 (A000096 (A020986 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222121.P6489849789851865912

namespace A222121

/-- `record[A222127(A000096(A020986(n)))]` -/
def P6489849789851865912.Spec : Prop :=
  ∀ n, P6489849789851865912.a n = A222121 (n + 1)

end A222121

/-! ## A222121.P18260710161683607047

`record[A222127(A101881(A026741(n)))]`
-/

namespace A222121.P18260710161683607047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222127 (A101881 (A026741 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222121.P18260710161683607047

namespace A222121

/-- `record[A222127(A101881(A026741(n)))]` -/
def P18260710161683607047.Spec : Prop :=
  ∀ n, P18260710161683607047.a n = A222121 (n + 1)

end A222121

/-! ## A222121.P11376772471970051350

`record[A222127(A000096(A263111(n)))]`
-/

namespace A222121.P11376772471970051350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222127 (A000096 (A263111 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222121.P11376772471970051350

namespace A222121

/-- `record[A222127(A000096(A263111(n)))]` -/
def P11376772471970051350.Spec : Prop :=
  ∀ n, P11376772471970051350.a n = A222121 (n + 1)

end A222121

/-! ## A222121.P5691532421902966855

`record[A222127(A000096(A290094(n)))]`
-/

namespace A222121.P5691532421902966855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222127 (A000096 (A290094 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222121.P5691532421902966855

namespace A222121

/-- `record[A222127(A000096(A290094(n)))]` -/
def P5691532421902966855.Spec : Prop :=
  ∀ n, P5691532421902966855.a n = A222121 (n + 1)

end A222121

/-! ## A222121.P7807407686440183296

`record[A222127(A000096(A344180(n)))]`
-/

namespace A222121.P7807407686440183296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222127 (A000096 (A344180 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222121.P7807407686440183296

namespace A222121

/-- `record[A222127(A000096(A344180(n)))]` -/
def P7807407686440183296.Spec : Prop :=
  ∀ n, P7807407686440183296.a n = A222121 (n + 1)

end A222121

/-! ## A222121.P2073260630845616274

`record[A222127(A000096(A058933(n+1)))]`
-/

namespace A222121.P2073260630845616274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222127 (A000096 (A058933 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222121.P2073260630845616274

namespace A222121

/-- `record[A222127(A000096(A058933(n+1)))]` -/
def P2073260630845616274.Spec : Prop :=
  ∀ n, P2073260630845616274.a n = A222121 (n + 1)

end A222121

/-!
# A222122: Number of binary arrays indicating the locations of trailing edge maxima of a random length-n 0..3 array extended with zeros and convolved with 1,2,1.

The programs for A222122, the canonical program `A222122.P13446302275151819103` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A222122 has offset 1).

The definition of A222122 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 510 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A222122.P13446302275151819103

`a(n-1)+a(n-3)+a(n-5)` with `a(0)=2, a(1)=3, a(2)=4, a(3)=7, a(4)=11`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A222122

/-- `a(n-1)+a(n-3)+a(n-5)` -/
def P13446302275151819103.Spec : Prop :=
  ∀ n, (P13446302275151819103.a n : ℤ) = A222122 (n + 1)

theorem P13446302275151819103.correct : P13446302275151819103.Spec := by
  intro n
  simp only [A222122, Nat.add_sub_cancel]

end A222122

/-! ## A222122.P12459411408887182056

`A060961(n+2)+A060961(n)`
-/

namespace A222122.P12459411408887182056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060961 (n + 2) + A060961 n

end

end A222122.P12459411408887182056

namespace A222122

/-- `A060961(n+2)+A060961(n)` -/
def P12459411408887182056.Spec : Prop :=
  ∀ n, P12459411408887182056.a n = A222122 (n + 1)

end A222122

/-! ## A222122.P15023125425385684777

`Δ[A060961(n+4)]`
-/

namespace A222122.P15023125425385684777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060961 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A222122.P15023125425385684777

namespace A222122

/-- `Δ[A060961(n+4)]` -/
def P15023125425385684777.Spec : Prop :=
  ∀ n, P15023125425385684777.a n = A222122 (n + 1)

end A222122

/-! ## A222122.P1773850289753104268

`abs(Δ[A060961(A020705(n))])`
-/

namespace A222122.P1773850289753104268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060961 (A020705 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A222122.P1773850289753104268

namespace A222122

/-- `abs(Δ[A060961(A020705(n))])` -/
def P1773850289753104268.Spec : Prop :=
  ∀ n, P1773850289753104268.a n = A222122 (n + 1)

end A222122

/-! ## A222122.P15807889183652047389

`A222334(∑[n+2])`
-/

namespace A222122.P15807889183652047389
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222334 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A222122.P15807889183652047389

namespace A222122

/-- `A222334(∑[n+2])` -/
def P15807889183652047389.Spec : Prop :=
  ∀ n, P15807889183652047389.a n = A222122 (n + 1)

end A222122

/-! ## A222122.P7228745452687536336

`A222127(∑[n+3]+1)`
-/

namespace A222122.P7228745452687536336
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222127 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A222122.P7228745452687536336

namespace A222122

/-- `A222127(∑[n+3]+1)` -/
def P7228745452687536336.Spec : Prop :=
  ∀ n, P7228745452687536336.a n = A222122 (n + 1)

end A222122

/-!
# A222123: Number of binary arrays indicating the locations of trailing edge maxima of a random length-n 0..4 array extended with zeros and convolved with 1,2,1.

The programs for A222123, the canonical program `A222123.P17816980248010901518` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A222123 has offset 1).

The definition of A222123 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 489 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A222123.P17816980248010901518

`a(n-1)+a(n-3)+2*a(n-5)-a(n-6)` with `a(0)=2, a(1)=3, a(2)=4, a(3)=8, a(4)=12, a(5)=19`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A222123

/-- `a(n-1)+a(n-3)+2*a(n-5)-a(n-6)` -/
def P17816980248010901518.Spec : Prop :=
  ∀ n, P17816980248010901518.a n = A222123 (n + 1)

theorem P17816980248010901518.correct : P17816980248010901518.Spec := by
  intro n
  simp only [A222123, Nat.add_sub_cancel]

end A222123

/-! ## A222123.P5846845578450607810

`A222127(∑[n+4]+3)`
-/

namespace A222123.P5846845578450607810
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222127 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A222123.P5846845578450607810

namespace A222123

/-- `A222127(∑[n+4]+3)` -/
def P5846845578450607810.Spec : Prop :=
  ∀ n, P5846845578450607810.a n = A222123 (n + 1)

end A222123

/-! ## A222123.P4208963733527438166

`record[A222127(A027379(n))]`
-/

namespace A222123.P4208963733527438166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222127 (A027379 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222123.P4208963733527438166

namespace A222123

/-- `record[A222127(A027379(n))]` -/
def P4208963733527438166.Spec : Prop :=
  ∀ n, P4208963733527438166.a n = A222123 (n + 1)

end A222123

/-! ## A222123.P1131730658483002287

`or(char[1], A222127(A155212(n)+5))`
-/

namespace A222123.P1131730658483002287
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A222127 (A155212 n + 5).toNat)

end

end A222123.P1131730658483002287

namespace A222123

/-- `or(char[1], A222127(A155212(n)+5))` -/
def P1131730658483002287.Spec : Prop :=
  ∀ n, P1131730658483002287.a n = A222123 (n + 1)

end A222123

/-! ## A222123.P4943981315363438215

`A222127(A055998(n+2))%A000032(n+2)`
-/

namespace A222123.P4943981315363438215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A222127 (A055998 (n + 2)).toNat) (A000032 (n + 2))

end

end A222123.P4943981315363438215

namespace A222123

/-- `A222127(A055998(n+2))%A000032(n+2)` -/
def P4943981315363438215.Spec : Prop :=
  ∀ n, P4943981315363438215.a n = A222123 (n + 1)

end A222123

/-! ## A222123.P16034674988377081680

`A222127(A155212(n)+5)%A000032(n+2)`
-/

namespace A222123.P16034674988377081680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A222127 (A155212 n + 5).toNat) (A000032 (n + 2))

end

end A222123.P16034674988377081680

namespace A222123

/-- `A222127(A155212(n)+5)%A000032(n+2)` -/
def P16034674988377081680.Spec : Prop :=
  ∀ n, P16034674988377081680.a n = A222123 (n + 1)

end A222123

/-! ## A222123.P12392606227575330389

`A222127(A155212(n)+5)+A002265(C(2, n))`
-/

namespace A222123.P12392606227575330389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222127 (A155212 n + 5).toNat + A002265 (Nat.choose 2 n)

end

end A222123.P12392606227575330389

namespace A222123

/-- `A222127(A155212(n)+5)+A002265(C(2, n))` -/
def P12392606227575330389.Spec : Prop :=
  ∀ n, P12392606227575330389.a n = A222123 (n + 1)

end A222123

/-! ## A222123.P12741293058214326437

`A007318(C(2, n))*A222127(A155212(n)+5)`
-/

namespace A222123.P12741293058214326437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A222127 (A155212 n + 5).toNat

end

end A222123.P12741293058214326437

namespace A222123

/-- `A007318(C(2, n))*A222127(A155212(n)+5)` -/
def P12741293058214326437.Spec : Prop :=
  ∀ n, P12741293058214326437.a n = A222123 (n + 1)

end A222123

/-! ## A222123.P9138174444150049764

`A000041(C(2, n+2))*A222127(A155212(n)+5)`
-/

namespace A222123.P9138174444150049764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * A222127 (A155212 n + 5).toNat

end

end A222123.P9138174444150049764

namespace A222123

/-- `A000041(C(2, n+2))*A222127(A155212(n)+5)` -/
def P9138174444150049764.Spec : Prop :=
  ∀ n, P9138174444150049764.a n = A222123 (n + 1)

end A222123

/-!
# A222124: Number of binary arrays indicating the locations of trailing edge maxima of a random length-n 0..5 array extended with zeros and convolved with 1,2,1.

The programs for A222124, there is no canonical definition to state claims against.
-/

/-! ## A222124.P18134678053645784268

`A222127(∑[n+5]+6)`
-/

namespace A222124.P18134678053645784268
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222127 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A222124.P18134678053645784268

/-! ## A222124.P6303920447062207295

`or(char[1], A222127(A046691(n+3)))`
-/

namespace A222124.P6303920447062207295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A222127 (A046691 (n + 3)).toNat)

end

end A222124.P6303920447062207295

/-! ## A222124.P6929212880918010401

`A033999(n)²*A222127(A046691(n+3))`
-/

namespace A222124.P6929212880918010401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2 * A222127 (A046691 (n + 3)).toNat

end

end A222124.P6929212880918010401

/-! ## A222124.P8529065559193547314

`char[A079714(n)]*A222127(A046691(n+3))`
-/

namespace A222124.P8529065559193547314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079714 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A222127 (A046691 (n + 3)).toNat

end

end A222124.P8529065559193547314

/-! ## A222124.P6465657963710706648

`A222127(A046691(n+3))%A116331(n+1)`
-/

namespace A222124.P6465657963710706648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A222127 (A046691 (n + 3)).toNat) (A116331 (n + 1))

end

end A222124.P6465657963710706648

/-! ## A222124.P13469082376171412479

`A007318(C(2, n))*A222127(A046691(n+3))`
-/

namespace A222124.P13469082376171412479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A222127 (A046691 (n + 3)).toNat

end

end A222124.P13469082376171412479

/-! ## A222124.P16609134372779447283

`ceil(1/A000041(n))*A222127(A046691(n+3))`
-/

namespace A222124.P16609134372779447283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈1 / (A000041 n : ℚ)⌉ * A222127 (A046691 (n + 3)).toNat

end

end A222124.P16609134372779447283

/-! ## A222124.P3137727239992292718

`A000041(C(n, n²))*A222127(A046691(n+3))`
-/

namespace A222124.P3137727239992292718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose n (n ^ 2)) * A222127 (A046691 (n + 3)).toNat

end

end A222124.P3137727239992292718

/-!
# A222125: Number of binary arrays indicating the locations of trailing edge maxima of a random length-n 0..6 array extended with zeros and convolved with 1,2,1.

The programs for A222125, there is no canonical definition to state claims against.
-/

/-! ## A222125.P15664840321717713554

`A222127(A052905(n+3))`
-/

namespace A222125.P15664840321717713554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222127 (A052905 (n + 3)).toNat

end

end A222125.P15664840321717713554

/-! ## A222125.P11107944195653653051

`A222127(A056119(n)+16)`
-/

namespace A222125.P11107944195653653051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222127 (A056119 n + 16).toNat

end

end A222125.P11107944195653653051

/-! ## A222125.P10466225668791168402

`A222127(eq[3, A219347(n)])`
-/

namespace A222125.P10466225668791168402
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222127 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222125.P10466225668791168402

/-! ## A222125.P14724383033711093678

`A222127(Δ[A055831(n+5)])`
-/

namespace A222125.P14724383033711093678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055831 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222127 (f1 (n + 1) - f1 n).toNat

end

end A222125.P14724383033711093678

/-! ## A222125.P6099151890515866975

`A222127(A055999(n+3)+1)`
-/

namespace A222125.P6099151890515866975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222127 (A055999 (n + 3) + 1).toNat

end

end A222125.P6099151890515866975

/-! ## A222125.P15468427852526068245

`A222127(A027379(n+4)-2)`
-/

namespace A222125.P15468427852526068245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222127 (A027379 (n + 4) - 2).toNat

end

end A222125.P15468427852526068245

/-! ## A222125.P10150586361828928403

`A222127(A055998(n+4)-2)`
-/

namespace A222125.P10150586361828928403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222127 (A055998 (n + 4) - 2).toNat

end

end A222125.P10150586361828928403

/-! ## A222125.P15882970331446674565

`A222127(A000096(n+5)-4)`
-/

namespace A222125.P15882970331446674565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222127 (A000096 (n + 5) - 4).toNat

end

end A222125.P15882970331446674565

/-! ## A222125.P3382988850736771203

`A222127(A000217(n+6)-5)`
-/

namespace A222125.P3382988850736771203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222127 (A000217 (n + 6) - 5).toNat

end

end A222125.P3382988850736771203

/-! ## A222125.P16183691137313047532

`A222127(A000124(n+6)-6)`
-/

namespace A222125.P16183691137313047532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222127 (A000124 (n + 6) - 6).toNat

end

end A222125.P16183691137313047532

/-!
# A222126: Number of binary arrays indicating the locations of trailing edge maxima of a random length-n 0..7 array extended with zeros and convolved with 1,2,1.

The programs for A222126, there is no canonical definition to state claims against.
-/

/-! ## A222126.P9858070369130010203

`A222127(A055999(n+4))`
-/

namespace A222126.P9858070369130010203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222127 (A055999 (n + 4)).toNat

end

end A222126.P9858070369130010203

/-! ## A222126.P5106443940944756538

`A222127(eq[4, A219347(n)])`
-/

namespace A222126.P5106443940944756538
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222127 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222126.P5106443940944756538

/-! ## A222126.P9722402139529965492

`A222127(Δ[A026054(n+4)])`
-/

namespace A222126.P9722402139529965492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222127 (f1 (n + 1) - f1 n).toNat

end

end A222126.P9722402139529965492

/-! ## A222126.P4854174627873114506

`A222127(A052905(n+4)-1)`
-/

namespace A222126.P4854174627873114506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222127 (A052905 (n + 4) - 1).toNat

end

end A222126.P4854174627873114506

/-! ## A222126.P14549140387945386434

`A222127(A046691(n+5)-2)`
-/

namespace A222126.P14549140387945386434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222127 (A046691 (n + 5) - 2).toNat

end

end A222126.P14549140387945386434

/-! ## A222126.P17681831764343519262

`A222127(A055998(n+5)-3)`
-/

namespace A222126.P17681831764343519262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222127 (A055998 (n + 5) - 3).toNat

end

end A222126.P17681831764343519262

/-! ## A222126.P2446700325943413504

`A222127(A034856(n+6)-4)`
-/

namespace A222126.P2446700325943413504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222127 (A034856 (n + 6) - 4).toNat

end

end A222126.P2446700325943413504

/-! ## A222126.P18106044727799925224

`A222127(A000124(n+7)-7)`
-/

namespace A222126.P18106044727799925224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222127 (A000124 (n + 7) - 7).toNat

end

end A222126.P18106044727799925224

/-! ## A222126.P7721526932119945807

`A222127(A000096(n+5)+n+2)`
-/

namespace A222126.P7721526932119945807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222127 (A000096 (n + 5) + (n + 2 : ℤ)).toNat

end

end A222126.P7721526932119945807

/-! ## A222126.P1121342303859789216

`A222127(A000217(n+6)+n+1)`
-/

namespace A222126.P1121342303859789216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222127 (A000217 (n + 6) + (n + 1 : ℤ)).toNat

end

end A222126.P1121342303859789216

/-!
# A222127: T(n,k)=Number of binary arrays indicating the locations of trailing edge maxima of a random length-n 0..k array extended with zeros and convolved with 1,2,1.

The programs for A222127, there is no canonical definition to state claims against.
-/

/-! ## A222127.P6484530819084059077

`A222027(n+1)+A185284(A094761(n))`
-/

namespace A222127.P6484530819084059077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222027 (n + 1) + A185284 (A094761 n).toNat

end

end A222127.P6484530819084059077

/-! ## A222127.P13066062298163768667

`A222027(n+1)+A033683(A189988(n+1))`
-/

namespace A222127.P13066062298163768667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222027 (n + 1) + A033683 (A189988 (n + 1)).toNat

end

end A222127.P13066062298163768667

/-! ## A222127.P1420453762492754793

`A222027(n+1)+A102683(A022166(n))`
-/

namespace A222127.P1420453762492754793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222027 (n + 1) + A102683 (A022166 n).toNat

end

end A222127.P1420453762492754793

/-! ## A222127.P2129530845311780839

`A222027(n+1)+A055641(A154227(n))`
-/

namespace A222127.P2129530845311780839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222027 (n + 1) + A055641 (A154227 n).toNat

end

end A222127.P2129530845311780839

/-! ## A222127.P15430244175403709268

`A222027(n+1)+A055641(A168288(n))`
-/

namespace A222127.P15430244175403709268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222027 (n + 1) + A055641 (A168288 n).toNat

end

end A222127.P15430244175403709268

/-!
# A222132: Decimal expansion of sqrt(4 + sqrt(4 + sqrt(4 + sqrt(4 + ... )))).

The programs for A222132, there is no canonical definition to state claims against.
-/

/-! ## A222132.P7618117146814161832

`A178255(n)-floor(acot(n))`
-/

namespace A222132.P7618117146814161832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178255 (n + 1) - ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A222132.P7618117146814161832

/-! ## A222132.P18014711012328835512

`A222133(n)+A000007(n)`
-/

namespace A222132.P18014711012328835512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222133 (n + 1) + A000007 n

end

end A222132.P18014711012328835512

/-! ## A222132.P8681938808161880598

`A178255(n)-A000007(n)`
-/

namespace A222132.P8681938808161880598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178255 (n + 1) - A000007 n

end

end A222132.P8681938808161880598

/-! ## A222132.P12085653624452848591

`A054977(n)*A222133(n)`
-/

namespace A222132.P12085653624452848591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n * A222133 (n + 1)

end

end A222132.P12085653624452848591

/-! ## A222132.P13548570871647036908

`sqrt(A082486(n)*A222133(n))`
-/

namespace A222132.P13548570871647036908
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A082486 (n + 1) * A222133 (n + 1) : ℝ)

end

end A222132.P13548570871647036908

/-! ## A222132.P9948640609527147399

`A082486(n)/(A000007(n)+1)`
-/

namespace A222132.P9948640609527147399
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A082486 (n + 1) : ℚ) / (A000007 n + 1 : ℚ)

end

end A222132.P9948640609527147399

/-! ## A222132.P12757550091863255137

`2*A178255(n)-A082486(n)`
-/

namespace A222132.P12757550091863255137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A178255 (n + 1) - A082486 (n + 1)

end

end A222132.P12757550091863255137

/-! ## A222132.P9152762145350176762

`(A222133(n)+A178255(n))/2`
-/

namespace A222132.P9152762145350176762
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A222133 (n + 1) + A178255 (n + 1) : ℚ) / 2

end

end A222132.P9152762145350176762

/-! ## A222132.P13339857600104298325

`A222133(n)+A000035(A001316(n))`
-/

namespace A222132.P13339857600104298325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222133 (n + 1) + A000035 (A001316 n).toNat

end

end A222132.P13339857600104298325

/-! ## A222132.P5065120374330108758

`A178255(n)-A000035(A001316(n))`
-/

namespace A222132.P5065120374330108758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178255 (n + 1) - A000035 (A001316 n).toNat

end

end A222132.P5065120374330108758

/-! ## A222132.P1190256985059700170

`A082486(n)/A035214(A001316(n))`
-/

namespace A222132.P1190256985059700170
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A082486 (n + 1) : ℚ) / (A035214 (A001316 n).toNat : ℚ)

end

end A222132.P1190256985059700170

/-! ## A222132.P1319906260398748121

`A082486(n)-(A178255(n)-A222133(n))`
-/

namespace A222132.P1319906260398748121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082486 (n + 1) - (A178255 (n + 1) - A222133 (n + 1))

end

end A222132.P1319906260398748121

/-! ## A222132.P1403893406901853709

`A001222(A008578(n+1))+A178255(n)-1`
-/

namespace A222132.P1403893406901853709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A008578 (n + 1)).toNat + (A178255 (n + 1) - 1)

end

end A222132.P1403893406901853709

/-! ## A222132.P16542985925965078833

`A001222(A006005(n+1))+A178255(n)-1`
-/

namespace A222132.P16542985925965078833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A006005 (n + 1)).toNat + (A178255 (n + 1) - 1)

end

end A222132.P16542985925965078833

/-! ## A222132.P9529050664238480248

`A001221(A137688(n))+A178255(n)-1`
-/

namespace A222132.P9529050664238480248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A137688 n).toNat + (A178255 (n + 1) - 1)

end

end A222132.P9529050664238480248

/-! ## A222132.P1436842225643630625

`A178255(n)-A073424(A000124(n))`
-/

namespace A222132.P1436842225643630625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178255 (n + 1) - A073424 (A000124 n).toNat

end

end A222132.P1436842225643630625

/-! ## A222132.P3885400264362080930

`A035214(A000124(n))*A222133(n)`
-/

namespace A222132.P3885400264362080930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 (A000124 n).toNat * A222133 (n + 1)

end

end A222132.P3885400264362080930

/-! ## A222132.P606428605314036712

`A082486(n)/A035214(A000124(n))`
-/

namespace A222132.P606428605314036712
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A082486 (n + 1) : ℚ) / (A035214 (A000124 n).toNat : ℚ)

end

end A222132.P606428605314036712

/-! ## A222132.P11918252450250689214

`A082486(n)/A035214(A000096(n))`
-/

namespace A222132.P11918252450250689214
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A082486 (n + 1) : ℚ) / (A035214 (A000096 n).toNat : ℚ)

end

end A222132.P11918252450250689214

/-! ## A222132.P15969374920179113303

`A178255(n)-A073424(A137688(n))`
-/

namespace A222132.P15969374920179113303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178255 (n + 1) - A073424 (A137688 n).toNat

end

end A222132.P15969374920179113303

/-!
# A222133: Decimal expansion of sqrt(4 - sqrt(4 - sqrt(4 - sqrt(4 - ... )))).

The programs for A222133, there is no canonical definition to state claims against.
-/

/-! ## A222133.P5586601347572987853

`ceil(A222132(n)-acot(n))`
-/

namespace A222133.P5586601347572987853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A222132 (n + 1) : ℝ) - SequenceMachineLib.acot (n : ℝ)⌉

end

end A222133.P5586601347572987853

/-! ## A222133.P772597175304076002

`A178255(n)-floor(acot(n)²)`
-/

namespace A222133.P772597175304076002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178255 (n + 1) - ⌊SequenceMachineLib.acot (n : ℝ) ^ 2⌋

end

end A222133.P772597175304076002

/-! ## A222133.P16567103684168338304

`A222132(n)-A000007(n)`
-/

namespace A222133.P16567103684168338304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222132 (n + 1) - A000007 n

end

end A222133.P16567103684168338304

/-! ## A222133.P17749919544682560606

`A222132(n)/A054977(n)`
-/

namespace A222133.P17749919544682560606
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A222132 (n + 1) : ℚ) / (A054977 n : ℚ)

end

end A222133.P17749919544682560606

/-! ## A222133.P2405494970285079960

`gcd(A178255(n), A222132(n))`
-/

namespace A222133.P2405494970285079960
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A178255 (n + 1)) (A222132 (n + 1))

end

end A222133.P2405494970285079960

/-! ## A222133.P8627247826123979888

`A178255(n)-2*A000007(n)`
-/

namespace A222133.P8627247826123979888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178255 (n + 1) - 2 * A000007 n

end

end A222133.P8627247826123979888

/-! ## A222133.P11698352430126362218

`A040012(n)/8*A222132(n)`
-/

namespace A222133.P11698352430126362218
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A040012 n : ℚ) / 8 * (A222132 (n + 1) : ℚ)

end

end A222133.P11698352430126362218

/-! ## A222133.P17391558056918868655

`A222132(n)/A000034(A001316(n))`
-/

namespace A222133.P17391558056918868655
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A222132 (n + 1) : ℚ) / (A000034 (A001316 n).toNat : ℚ)

end

end A222133.P17391558056918868655

/-! ## A222133.P6366322967469183942

`A222132(n)^A019425(A019425(n))`
-/

namespace A222133.P6366322967469183942
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A222132 (n + 1) : ℚ) ^ (A019425 (A019425 n).toNat : ℤ)

end

end A222133.P6366322967469183942

/-! ## A222133.P17737385205477358435

`A082486(n)/A035214(A001316(n))²`
-/

namespace A222133.P17737385205477358435
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A082486 (n + 1) : ℚ) / (A035214 (A001316 n).toNat ^ 2 : ℚ)

end

end A222133.P17737385205477358435

/-! ## A222133.P17960268668003897754

`A178255(n)-2*A000035(A001316(n))`
-/

namespace A222133.P17960268668003897754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178255 (n + 1) - 2 * A000035 (A001316 n).toNat

end

end A222133.P17960268668003897754

/-! ## A222133.P12547964766767193597

`A178255(n)+A222132(n)-A082486(n)`
-/

namespace A222133.P12547964766767193597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178255 (n + 1) + (A222132 (n + 1) - A082486 (n + 1))

end

end A222133.P12547964766767193597

/-! ## A222133.P16999137353463761415

`A178255(n)^A001222(A008578(n+1))`
-/

namespace A222133.P16999137353463761415
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A178255 (n + 1) : ℚ) ^ (A001222 (A008578 (n + 1)).toNat : ℤ)

end

end A222133.P16999137353463761415

/-! ## A222133.P16926148650280586003

`A178255(n)^A001222(A006005(n+1))`
-/

namespace A222133.P16926148650280586003
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A178255 (n + 1) : ℚ) ^ (A001222 (A006005 (n + 1)).toNat : ℤ)

end

end A222133.P16926148650280586003

/-! ## A222133.P365189540214273500

`A222132(n)/A014963(A322489(n+1))`
-/

namespace A222133.P365189540214273500
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A222132 (n + 1) : ℚ) / (A014963 (A322489 (n + 1)).toNat : ℚ)

end

end A222133.P365189540214273500

/-! ## A222133.P6371539956524003513

`A082486(n)^A001221(A137688(n))`
-/

namespace A222133.P6371539956524003513
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A082486 (n + 1) : ℚ) ^ (A001221 (A137688 n).toNat : ℤ)

end

end A222133.P6371539956524003513

/-! ## A222133.P9927673230857554028

`A178255(n)^A001221(A137688(n))`
-/

namespace A222133.P9927673230857554028
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A178255 (n + 1) : ℚ) ^ (A001221 (A137688 n).toNat : ℤ)

end

end A222133.P9927673230857554028

/-! ## A222133.P9057307178956132861

`A222132(n)^A001221(A137688(n))`
-/

namespace A222133.P9057307178956132861
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A222132 (n + 1) : ℚ) ^ (A001221 (A137688 n).toNat : ℤ)

end

end A222133.P9057307178956132861

/-! ## A222133.P262398713215430043

`A222132(n)-A073424(A000124(n))`
-/

namespace A222133.P262398713215430043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222132 (n + 1) - A073424 (A000124 n).toNat

end

end A222133.P262398713215430043

/-! ## A222133.P2730059463589025816

`A178255(n)-2*A073424(A000124(n))`
-/

namespace A222133.P2730059463589025816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178255 (n + 1) - 2 * A073424 (A000124 n).toNat

end

end A222133.P2730059463589025816

/-!
# A222134: Decimal expansion of sqrt(5 + sqrt(5 + sqrt(5 + sqrt(5 + ... )))).

The programs for A222134, there is no canonical definition to state claims against.
-/

/-! ## A222134.P14585706767617000871

`A090458(n)-A000007(n)`
-/

namespace A222134.P14585706767617000871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090458 (n + 1) - A000007 n

end

end A222134.P14585706767617000871

/-! ## A222134.P8287220937893714477

`A107905(n)/(A000007(n)+1)`
-/

namespace A222134.P8287220937893714477
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A107905 (n + 1) : ℚ) / (A000007 n + 1 : ℚ)

end

end A222134.P8287220937893714477

/-! ## A222134.P11790603507328735400

`A107905(4*A000007(n)+n)`
-/

namespace A222134.P11790603507328735400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107905 ((4 * A000007 n + (n : ℤ)).toNat + 1)

end

end A222134.P11790603507328735400

/-! ## A222134.P2543978189803421987

`A002194(n)+A090458(n)-A090388(n)`
-/

namespace A222134.P2543978189803421987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002194 (n + 1) + (A090458 (n + 1) - A090388 (n + 1))

end

end A222134.P2543978189803421987

/-! ## A222134.P9938763023497913626

`A090458(n)-A033683(A001222(n+1)+1)`
-/

namespace A222134.P9938763023497913626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090458 (n + 1) - A033683 (A001222 (n + 1) + 1).toNat

end

end A222134.P9938763023497913626

/-! ## A222134.P12470223033040311807

`A008288(A008288(a(n-1)))*A090458(n)` with `a(0)=2`
-/

namespace A222134.P12470223033040311807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A008288 (A008288 (a (n - 1)).toNat).toNat * A090458 (n + 1)

end

end A222134.P12470223033040311807

/-! ## A222134.P11973727189483093335

`A090458(n)-A049084(2*(n+1))`
-/

namespace A222134.P11973727189483093335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090458 (n + 1) - A049084 (2 * (n + 1))

end

end A222134.P11973727189483093335

/-! ## A222134.P15707779094436423473

`A090458(n)+A008683(A338506(2*n+1))`
-/

namespace A222134.P15707779094436423473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090458 (n + 1) + A008683 (A338506 (2 * n + 1)).toNat

end

end A222134.P15707779094436423473

/-! ## A222134.P2641066130093595569

`A090458(n)+A008683(A124434(n+1))`
-/

namespace A222134.P2641066130093595569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090458 (n + 1) + A008683 (A124434 (n + 1)).toNat

end

end A222134.P2641066130093595569

/-! ## A222134.P3370105391198180349

`A090458(n)-A033683(A133263(n)-n)`
-/

namespace A222134.P3370105391198180349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090458 (n + 1) - A033683 (A133263 n - (n : ℤ)).toNat

end

end A222134.P3370105391198180349

/-! ## A222134.P732004195282175429

`A090458(n)-A033683(A133263(n))`
-/

namespace A222134.P732004195282175429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090458 (n + 1) - A033683 (A133263 n).toNat

end

end A222134.P732004195282175429

/-! ## A222134.P8954247794150539209

`A090458(n)-A008683((n+1)²)`
-/

namespace A222134.P8954247794150539209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090458 (n + 1) - A008683 ((n + 1) ^ 2)

end

end A222134.P8954247794150539209

/-! ## A222134.P15707485847547181848

`A090458(n)-A033683(n²+1)`
-/

namespace A222134.P15707485847547181848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090458 (n + 1) - A033683 (n ^ 2 + 1)

end

end A222134.P15707485847547181848

/-! ## A222134.P13740352192870616890

`A002262(A000124(n))+A090458(n)-1`
-/

namespace A222134.P13740352192870616890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A000124 n).toNat + (A090458 (n + 1) - 1)

end

end A222134.P13740352192870616890

/-! ## A222134.P8465693465755034334

`A090458(n)-A000035(A338506(n+1)/2)`
-/

namespace A222134.P8465693465755034334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090458 (n + 1) - A000035 (SequenceMachineLib.roundAway ((A338506 (n + 1) : ℚ) / 2)).toNat

end

end A222134.P8465693465755034334

/-!
# A222135: Decimal expansion of sqrt(5 - sqrt(5 - sqrt(5 - sqrt(5 - ... )))).

The programs for A222135, there is no canonical definition to state claims against.
-/

/-! ## A222135.P5263701884914770228

`gcd(A090458(n), A222134(n))`
-/

namespace A222135.P5263701884914770228
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A090458 (n + 1)) (A222134 (n + 1))

end

end A222135.P5263701884914770228

/-! ## A222135.P7390499592952784835

`A090458(3*A000007(n)+n)`
-/

namespace A222135.P7390499592952784835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090458 ((3 * A000007 n + (n : ℤ)).toNat + 1)

end

end A222135.P7390499592952784835

/-! ## A222135.P13634019066478661254

`A090458(n)-2*A000007(n)`
-/

namespace A222135.P13634019066478661254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090458 (n + 1) - 2 * A000007 n

end

end A222135.P13634019066478661254

/-! ## A222135.P7464352306175936731

`A107905(n)/(A000007(n)+1)²`
-/

namespace A222135.P7464352306175936731
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A107905 (n + 1) : ℚ) / ((A000007 n + 1) ^ 2 : ℚ)

end

end A222135.P7464352306175936731

/-! ## A222135.P10374967260134288794

`A090458(A033683(4*a(n-1))+n)` with `a(0)=1`
-/

namespace A222135.P10374967260134288794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A090458 ((A033683 (4 * a (n - 1)).toNat + (n : ℤ)).toNat + 1)

end

end A222135.P10374967260134288794

/-! ## A222135.P9327519301755975452

`A008288(A008288(a(n-1)))*A090458(n)` with `a(0)=1`
-/

namespace A222135.P9327519301755975452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A008288 (A008288 (a (n - 1)).toNat).toNat * A090458 (n + 1)

end

end A222135.P9327519301755975452

/-! ## A222135.P7944166052105957479

`A222134(n)/(A152950(n+1)-A133263(n))`
-/

namespace A222135.P7944166052105957479
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A222134 (n + 1) : ℚ) / (A152950 (n + 1) - A133263 n : ℚ)

end

end A222135.P7944166052105957479

/-! ## A222135.P2556293238761887479

`A090458(n)+A000035(A338506(a(n-1)+1))` with `a(0)=1`
-/

namespace A222135.P2556293238761887479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A090458 (n + 1) + A000035 (A338506 (a (n - 1) + 1).toNat).toNat

end

end A222135.P2556293238761887479

/-! ## A222135.P17736992655218380152

`A090458(n)+A049084(A221361(a(n-1)+1)+1)` with `a(0)=1`
-/

namespace A222135.P17736992655218380152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A090458 (n + 1) + A049084 (A221361 (a (n - 1) + 1).toNat + 1).toNat

end

end A222135.P17736992655218380152

/-! ## A222135.P6525021166666244372

`A090458(n)*A305565(A104245(a(n-1)+1)+1)` with `a(0)=1`
-/

namespace A222135.P6525021166666244372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A090458 (n + 1) * A305565 (A104245 (a (n - 1) + 1).toNat + 1).toNat

end

end A222135.P6525021166666244372

/-! ## A222135.P5009170311485550303

`A090458(n)*A305565(A305565(a(n-1)+1)+1)` with `a(0)=1`
-/

namespace A222135.P5009170311485550303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A090458 (n + 1) * A305565 (A305565 (a (n - 1) + 1).toNat + 1).toNat

end

end A222135.P5009170311485550303

/-! ## A222135.P1703336340116703644

`A090458(n)+2*A008683(A124434(n+1))`
-/

namespace A222135.P1703336340116703644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090458 (n + 1) + 2 * A008683 (A124434 (n + 1)).toNat

end

end A222135.P1703336340116703644

/-! ## A222135.P16481367382554085772

`A090458(n)-2*A033683(A133263(n))`
-/

namespace A222135.P16481367382554085772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090458 (n + 1) - 2 * A033683 (A133263 n).toNat

end

end A222135.P16481367382554085772

/-! ## A222135.P5635856177887076116

`A090458(n)+2*A008683(A338506(n+1))`
-/

namespace A222135.P5635856177887076116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090458 (n + 1) + 2 * A008683 (A338506 (n + 1)).toNat

end

end A222135.P5635856177887076116

/-! ## A222135.P4508676805479040582

`A090458(n)^A002262(A000124(n))`
-/

namespace A222135.P4508676805479040582
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090458 (n + 1) : ℚ) ^ (A002262 (A000124 n).toNat : ℤ)

end

end A222135.P4508676805479040582

/-! ## A222135.P7027909960351473034

`A222134(n)^A002262(A000124(n))`
-/

namespace A222135.P7027909960351473034
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A222134 (n + 1) : ℚ) ^ (A002262 (A000124 n).toNat : ℤ)

end

end A222135.P7027909960351473034

/-!
# A222137: Primes of the form 2^p - p^2, where p is prime.

The programs for A222137, there is no canonical definition to state claims against.
-/

/-! ## A222137.P15489471645987914247

`A024012(A242929(n+1))`
-/

namespace A222137.P15489471645987914247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024012 (A242929 (n + 1)).toNat

end

end A222137.P15489471645987914247

/-! ## A222137.P8348634291884665436

`A350964(A117587(n+1))`
-/

namespace A222137.P8348634291884665436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350964 (A117587 (n + 1)).toNat

end

end A222137.P8348634291884665436

/-!
# A222138: Number of nX2 0..4 arrays with no entry increasing mod 5 by 4 rightwards or downwards, starting with upper left zero.

The programs for A222138, there is no canonical definition to state claims against.
-/

/-! ## A222138.P15856114573275228445

`4*13^n`
-/

namespace A222138.P15856114573275228445
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * 13 ^ n

end

end A222138.P15856114573275228445

/-!
# A222139: Number of n X 3 0..4 arrays with no entry increasing mod 5 by 4 rightwards or downwards, starting with upper left zero.

The programs for A222139, there is no canonical definition to state claims against.
-/

/-! ## A222139.P1603146396340607053

`45*a(n-1)-116*a(n-2)` with `a(0)=16, a(1)=676`
-/

namespace A222139.P1603146396340607053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [16, 676] fun n a =>
  45 * a (n - 1) - 116 * a (n - 2)

end

end A222139.P1603146396340607053

/-! ## A222139.P8324864232358875695

`4*A355883(n+1)`
-/

namespace A222139.P8324864232358875695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A355883 (n + 1)

end

end A222139.P8324864232358875695

/-! ## A222139.P14453265282353984835

`A222144(∑[n+2]+4)`
-/

namespace A222139.P14453265282353984835
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222144 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A222139.P14453265282353984835

/-! ## A222139.P11668980953793377929

`lcm(2, A222144(A167614(n+1)))`
-/

namespace A222139.P11668980953793377929
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A222144 (A167614 (n + 1)).toNat)

end

end A222139.P11668980953793377929

/-! ## A222139.P4673666265568591284

`and(-4, A222144(A167499(n)+n))`
-/

namespace A222139.P4673666265568591284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-4) (A222144 (A167499 n + (n : ℤ)).toNat)

end

end A222139.P4673666265568591284

/-!
# A222140: Number of n X 4 0..4 arrays with no entry increasing mod 5 by 4 rightwards or downwards, starting with upper left zero.

The programs for A222140, there is no canonical definition to state claims against.
-/

/-! ## A222140.P17880045963718487367

`A222144(A374004(n+1))`
-/

namespace A222140.P17880045963718487367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222144 (A374004 (n + 1)).toNat

end

end A222140.P17880045963718487367

/-! ## A222140.P36841339130231977

`A222144(A141214(n)+7)`
-/

namespace A222140.P36841339130231977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222144 (A141214 n + 7).toNat

end

end A222140.P36841339130231977

/-! ## A222140.P9520854194045383889

`A222144(A052905(n)+9)`
-/

namespace A222140.P9520854194045383889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222144 (A052905 n + 9).toNat

end

end A222140.P9520854194045383889

/-! ## A222140.P4050411681058422182

`A222144(A055999(n)+10)`
-/

namespace A222140.P4050411681058422182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222144 (A055999 n + 10).toNat

end

end A222140.P4050411681058422182

/-! ## A222140.P11817789796007859201

`A222144(A167614(n+2)+1)`
-/

namespace A222140.P11817789796007859201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222144 (A167614 (n + 2) + 1).toNat

end

end A222140.P11817789796007859201

/-!
# A222141: Number of nX5 0..4 arrays with no entry increasing mod 5 by 4 rightwards or downwards, starting with upper left zero.

The programs for A222141, there is no canonical definition to state claims against.
-/

/-! ## A222141.P13183651028638862971

`A222144(A374005(n+1))`
-/

namespace A222141.P13183651028638862971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222144 (A374005 (n + 1)).toNat

end

end A222141.P13183651028638862971

/-! ## A222141.P8319585546969379556

`A222144(A167499(n+3))`
-/

namespace A222141.P8319585546969379556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222144 (A167499 (n + 3)).toNat

end

end A222141.P8319585546969379556

/-! ## A222141.P4808393285196067217

`A222144(A155212(n)+13)`
-/

namespace A222141.P4808393285196067217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222144 (A155212 n + 13).toNat

end

end A222141.P4808393285196067217

/-! ## A222141.P4109918412262247490

`A222144(A056000(n)+15)`
-/

namespace A222141.P4109918412262247490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222144 (A056000 n + 15).toNat

end

end A222141.P4109918412262247490

/-! ## A222141.P8761803064258859924

`A222144(eq[7, A066657(n)])`
-/

namespace A222141.P8761803064258859924
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222144 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222141.P8761803064258859924

/-!
# A222142: Number of nX6 0..4 arrays with no entry increasing mod 5 by 4 rightwards or downwards, starting with upper left zero.

The programs for A222142, there is no canonical definition to state claims against.
-/

/-! ## A222142.P3420233468433889150

`A222144(A374007(n+1))`
-/

namespace A222142.P3420233468433889150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222144 (A374007 (n + 1)).toNat

end

end A222142.P3420233468433889150

/-! ## A222142.P50428909398176301

`A222144(Δ[Δ[A006504(n+1)]])`
-/

namespace A222142.P50428909398176301
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222144 (f1 (n + 1) - f1 n).toNat

end

end A222142.P50428909398176301

/-! ## A222142.P2751571851418106238

`A222144(A000217(n+5)+n+1)`
-/

namespace A222142.P2751571851418106238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222144 (A000217 (n + 5) + (n + 1 : ℤ)).toNat

end

end A222142.P2751571851418106238

/-!
# A222143: 

The programs for A222143, there is no canonical definition to state claims against.
-/

/-! ## A222143.P11954460361660647247

`A222144(eq[11, A066657(n)])`
-/

namespace A222143.P11954460361660647247
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222144 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222143.P11954460361660647247

/-! ## A222143.P196820975090473556

`A222144(A056000(n+2)+17)`
-/

namespace A222143.P196820975090473556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222144 (A056000 (n + 2) + 17).toNat

end

end A222143.P196820975090473556

/-!
# A222145: a(n) = n-th second-order hyperharmonic-exponential number, multiplied by n!.

The programs for A222145, there is no canonical definition to state claims against.
-/

/-! ## A222145.P9624569431600313379

`A342265(A134063(n+1))`
-/

namespace A222145.P9624569431600313379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342265 (A134063 (n + 1)).toNat

end

end A222145.P9624569431600313379

/-!
# A222146: a(n) = n-th third-order hyperharmonic-exponential number, multiplied by n!.

The programs for A222146, there is no canonical definition to state claims against.
-/

/-! ## A222146.P3180516663435475325

`∑{d}[A267827(n), A235645(#)]`
-/

namespace A222146.P3180516663435475325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267827 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A235645 d

end

end A222146.P3180516663435475325

/-!
# A222147: Number of binary arrays indicating the locations of trailing edge maxima of a random length-n 0..2 array extended with zeros and convolved with 1,-2,1.

The programs for A222147, there is no canonical definition to state claims against.
-/

/-! ## A222147.P7699716127906070567

`A222153(∑[n+2])`
-/

namespace A222147.P7699716127906070567
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222153 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A222147.P7699716127906070567

/-! ## A222147.P11885700350062795631

`record[A222153(A209268(n+2)-1)]`
-/

namespace A222147.P11885700350062795631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222153 (A209268 (n + 2) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222147.P11885700350062795631

/-! ## A222147.P8148948324095230234

`record[A222153(A209268(2*(n+1)))]`
-/

namespace A222147.P8148948324095230234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222153 (A209268 (2 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222147.P8148948324095230234

/-! ## A222147.P7529266084785573805

`record[A222153(A000096(A002260(n+1)))]`
-/

namespace A222147.P7529266084785573805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222153 (A000096 (A002260 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222147.P7529266084785573805

/-! ## A222147.P10886573142710688457

`record[A222153(A000096(A056538(n+1)))]`
-/

namespace A222147.P10886573142710688457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222153 (A000096 (A056538 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222147.P10886573142710688457

/-!
# A222148: Number of binary arrays indicating the locations of trailing edge maxima of a random length-n 0..3 array extended with zeros and convolved with 1,-2,1.

The programs for A222148, there is no canonical definition to state claims against.
-/

/-! ## A222148.P17719337597139964787

`A222153(∑[n+3]+1)`
-/

namespace A222148.P17719337597139964787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222153 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A222148.P17719337597139964787

/-! ## A222148.P2993364461550770066

`or(char[3], A222153(A034856(n+2)))`
-/

namespace A222148.P2993364461550770066
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A222153 (A034856 (n + 2)).toNat)

end

end A222148.P2993364461550770066

/-! ## A222148.P2577000100347250966

`record[A222153(A245552(2*n+1)+n)]`
-/

namespace A222148.P2577000100347250966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222153 (A245552 (2 * n + 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222148.P2577000100347250966

/-! ## A222148.P10565536463916544693

`A222153(A034856(n+2))+A000007(n+1)`
-/

namespace A222148.P10565536463916544693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222153 (A034856 (n + 2)).toNat + A000007 (n + 1)

end

end A222148.P10565536463916544693

/-! ## A222148.P18026856384062176084

`A222153(A034856(n+2))+A000038(n+1)`
-/

namespace A222148.P18026856384062176084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222153 (A034856 (n + 2)).toNat + A000038 (n + 1)

end

end A222148.P18026856384062176084

/-! ## A222148.P15464760755743164642

`A222153(A034856(n+2))%A222156(n+1)`
-/

namespace A222148.P15464760755743164642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A222153 (A034856 (n + 2)).toNat) (A222156 (n + 1))

end

end A222148.P15464760755743164642

/-! ## A222148.P582040231529819000

`lcm(A208645(2*n), A222153(A034856(n+2)))`
-/

namespace A222148.P582040231529819000
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A208645 (2 * n)) (A222153 (A034856 (n + 2)).toNat)

end

end A222148.P582040231529819000

/-! ## A222148.P7400860856235758127

`and(A057428(n+1), A222153(A034856(n+2)))`
-/

namespace A222148.P7400860856235758127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057428 (n + 1)) (A222153 (A034856 (n + 2)).toNat)

end

end A222148.P7400860856235758127

/-! ## A222148.P6794581212961853115

`A014963(A008458(n))*A222153(A034856(n+2))`
-/

namespace A222148.P6794581212961853115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A008458 n).toNat * A222153 (A034856 (n + 2)).toNat

end

end A222148.P6794581212961853115

/-!
# A222149: Number of binary arrays indicating the locations of trailing edge maxima of a random length-n 0..4 array extended with zeros and convolved with 1,-2,1.

The programs for A222149, there is no canonical definition to state claims against.
-/

/-! ## A222149.P8924665194741470994

`A222153(∑[n+4]+3)`
-/

namespace A222149.P8924665194741470994
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222153 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A222149.P8924665194741470994

/-! ## A222149.P3103138495713395395

`record[A222153(A027379(n))]`
-/

namespace A222149.P3103138495713395395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222153 (A027379 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222149.P3103138495713395395

/-! ## A222149.P4824656124727333114

`A222153(A034856(n+3)-1)%A048575(n)²`
-/

namespace A222149.P4824656124727333114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A222153 (A034856 (n + 3) - 1).toNat) (A048575 n ^ 2)

end

end A222149.P4824656124727333114

/-! ## A222149.P9167955719605729537

`A033999(2*n)*A222153(A052905(n+1)+2)`
-/

namespace A222149.P9167955719605729537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n) * A222153 (A052905 (n + 1) + 2).toNat

end

end A222149.P9167955719605729537

/-! ## A222149.P2859419723763148300

`A222153(A052905(n+1)+2)%A127220(n+1)`
-/

namespace A222149.P2859419723763148300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A222153 (A052905 (n + 1) + 2).toNat) (A127220 (n + 1))

end

end A222149.P2859419723763148300

/-! ## A222149.P8367087182680287869

`A001221(A151800(n))*A222153(A052905(n+1)+2)`
-/

namespace A222149.P8367087182680287869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A151800 n).toNat * A222153 (A052905 (n + 1) + 2).toNat

end

end A222149.P8367087182680287869

/-! ## A222149.P4900779152249545883

`A001221(A011756(n+1))*A222153(A052905(n+1)+2)`
-/

namespace A222149.P4900779152249545883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A011756 (n + 1)).toNat * A222153 (A052905 (n + 1) + 2).toNat

end

end A222149.P4900779152249545883

/-! ## A222149.P13382612715591185340

`A001221(A338570(n+1))*A222153(A052905(n+1)+2)`
-/

namespace A222149.P13382612715591185340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A338570 (n + 1)).toNat * A222153 (A052905 (n + 1) + 2).toNat

end

end A222149.P13382612715591185340

/-! ## A222149.P16592436603828372605

`A014963(A000217(n+6))*A222153(A052905(n+1)+2)`
-/

namespace A222149.P16592436603828372605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A000217 (n + 6)).toNat * A222153 (A052905 (n + 1) + 2).toNat

end

end A222149.P16592436603828372605

/-!
# A222150: Number of binary arrays indicating the locations of trailing edge maxima of a random length-n 0..5 array extended with zeros and convolved with 1,-2,1.

The programs for A222150, there is no canonical definition to state claims against.
-/

/-! ## A222150.P1534766903819251320

`A222153(∑[n+5]+6)`
-/

namespace A222150.P1534766903819251320
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222153 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A222150.P1534766903819251320

/-! ## A222150.P2877712797583951562

`A222153(A046691(n+3))%(∑{d}[n+2, 5^#]/5)`
-/

namespace A222150.P2877712797583951562
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A222153 (A046691 (n + 3)).toNat) (SequenceMachineLib.roundAway (((∑ d ∈ Nat.divisors (f1 n), 5 ^ d : ℕ) : ℚ) / 5))

end

end A222150.P2877712797583951562

/-! ## A222150.P14927330226744504556

`A222153(A046691(n+3))%A099359(n)`
-/

namespace A222150.P14927330226744504556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A222153 (A046691 (n + 3)).toNat) (A099359 n)

end

end A222150.P14927330226744504556

/-! ## A222150.P1883538807421250636

`A222153(Δ[A023545(n+1)])%A041932(n)`
-/

namespace A222150.P1883538807421250636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A222153 (f1 (n + 1) - f1 n).toNat) (A041932 n)

end

end A222150.P1883538807421250636

/-! ## A222150.P8564445167494757635

`lcm(A056594(2*n), A222153(A046691(n+3)))`
-/

namespace A222150.P8564445167494757635
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A056594 (2 * n)) (A222153 (A046691 (n + 3)).toNat)

end

end A222150.P8564445167494757635

/-! ## A222150.P4165664113299308071

`A014963(A000217(n+9))*A222153(A046691(n+3))`
-/

namespace A222150.P4165664113299308071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A000217 (n + 9)).toNat * A222153 (A046691 (n + 3)).toNat

end

end A222150.P4165664113299308071

/-!
# A222151: Number of binary arrays indicating the locations of trailing edge maxima of a random length-n 0..6 array extended with zeros and convolved with 1,-2,1.

The programs for A222151, there is no canonical definition to state claims against.
-/

/-! ## A222151.P13836365502715318444

`A222153((n+4)²-∑[n+1]+1)`
-/

namespace A222151.P13836365502715318444
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222153 (((n + 4) ^ 2 : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + 1).toNat

end

end A222151.P13836365502715318444

/-! ## A222151.P5312048152116759411

`A222153(A052905(n+3))%A099359(n)`
-/

namespace A222151.P5312048152116759411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A222153 (A052905 (n + 3)).toNat) (A099359 n)

end

end A222151.P5312048152116759411

/-! ## A222151.P2922426799073429018

`A222153(A052905(n+3))+A000007(n+1)`
-/

namespace A222151.P2922426799073429018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222153 (A052905 (n + 3)).toNat + A000007 (n + 1)

end

end A222151.P2922426799073429018

/-! ## A222151.P1935140494265304628

`A057427(n+1)*A222153(A052905(n+3))`
-/

namespace A222151.P1935140494265304628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (n + 1) * A222153 (A052905 (n + 3)).toNat

end

end A222151.P1935140494265304628

/-! ## A222151.P1290484638882750544

`A062157(n+1)²*A222153(A052905(n+3))`
-/

namespace A222151.P1290484638882750544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (n + 1) ^ 2 * A222153 (A052905 (n + 3)).toNat

end

end A222151.P1290484638882750544

/-! ## A222151.P3878776130996394246

`A222153(A052905(n+3))+A000122(A000040(n+1))`
-/

namespace A222151.P3878776130996394246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222153 (A052905 (n + 3)).toNat + A000122 (A000040 (n + 1)).toNat

end

end A222151.P3878776130996394246

/-! ## A222151.P9341480779941529712

`A007318(A290105(n+1))*A222153(A052905(n+3))`
-/

namespace A222151.P9341480779941529712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A290105 (n + 1)).toNat * A222153 (A052905 (n + 3)).toNat

end

end A222151.P9341480779941529712

/-! ## A222151.P3842114509464212624

`A001221(A008578(n+2))*A222153(A052905(n+3))`
-/

namespace A222151.P3842114509464212624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A008578 (n + 2)).toNat * A222153 (A052905 (n + 3)).toNat

end

end A222151.P3842114509464212624

/-!
# A222152: Number of binary arrays indicating the locations of trailing edge maxima of a random length-n 0..7 array extended with zeros and convolved with 1,-2,1.

The programs for A222152, there is no canonical definition to state claims against.
-/

/-! ## A222152.P11122095580515969540

`A222153(A055999(n+4))`
-/

namespace A222152.P11122095580515969540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222153 (A055999 (n + 4)).toNat

end

end A222152.P11122095580515969540

/-! ## A222152.P10895723979430434266

`A222153(Δ[A023551(n+2)])`
-/

namespace A222152.P10895723979430434266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222153 (f1 (n + 1) - f1 n).toNat

end

end A222152.P10895723979430434266

/-! ## A222152.P16524212744950716259

`A222153(A046691(n+5)-2)`
-/

namespace A222152.P16524212744950716259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222153 (A046691 (n + 5) - 2).toNat

end

end A222152.P16524212744950716259

/-! ## A222152.P5720743551759347215

`A222153(A000124(n+7)-7)`
-/

namespace A222152.P5720743551759347215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222153 (A000124 (n + 7) - 7).toNat

end

end A222152.P5720743551759347215

/-! ## A222152.P2994625337036394017

`A222153(A000217(n+6)+n+1)`
-/

namespace A222152.P2994625337036394017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222153 (A000217 (n + 6) + (n + 1 : ℤ)).toNat

end

end A222152.P2994625337036394017

/-!
# A222153: T(n,k)=Number of binary arrays indicating the locations of trailing edge maxima of a random length-n 0..k array extended with zeros and convolved with 1,-2,1.

The programs for A222153, there is no canonical definition to state claims against.
-/

/-! ## A222153.P14611190990287086714

`A143844(n)+A143796(A143802(n+2))`
-/

namespace A222153.P14611190990287086714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143844 n + A143796 (A143802 (n + 2)).toNat

end

end A222153.P14611190990287086714

/-! ## A222153.P13123535431809549047

`A222043(n+1)+A165766(A324726(n+1))`
-/

namespace A222153.P13123535431809549047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222043 (n + 1) + A165766 (A324726 (n + 1)).toNat

end

end A222153.P13123535431809549047

/-! ## A222153.P16867888613649011298

`A222043(n+1)+A070109(A000032(n+2))`
-/

namespace A222153.P16867888613649011298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222043 (n + 1) + A070109 (A000032 (n + 2)).toNat

end

end A222153.P16867888613649011298

/-! ## A222153.P4860408359653280655

`A240328(A052942(n+4))+A222043(n+1)`
-/

namespace A222153.P4860408359653280655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240328 (A052942 (n + 4)).toNat + A222043 (n + 1)

end

end A222153.P4860408359653280655

/-! ## A222153.P10936669560381111478

`A093874(A208527(n+1))`
-/

namespace A222153.P10936669560381111478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093874 (A208527 (n + 1)).toNat

end

end A222153.P10936669560381111478

/-!
# A222154: Numbers n such that there are three distinct triples (k, k+n, k+2n) of squares.

The programs for A222154, there is no canonical definition to state claims against.
-/

/-! ## A222154.P10577941596055178604

`A174571(A051642(n))*A177021(n+1)`
-/

namespace A222154.P10577941596055178604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174571 (A051642 n).toNat * A177021 (n + 1)

end

end A222154.P10577941596055178604

/-! ## A222154.P8966767421991400693

`A174571(A146360(n+1))*A177021(n+1)`
-/

namespace A222154.P8966767421991400693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174571 (A146360 (n + 1)).toNat * A177021 (n + 1)

end

end A222154.P8966767421991400693

/-! ## A222154.P3484582748883309560

`A174571(A255207(n+1))*A177021(n+1)`
-/

namespace A222154.P3484582748883309560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174571 (A255207 (n + 1)).toNat * A177021 (n + 1)

end

end A222154.P3484582748883309560

/-! ## A222154.P3649859661877102477

`A107279(A024365(n+1))²*A177021(n+1)`
-/

namespace A222154.P3649859661877102477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107279 (A024365 (n + 1)).toNat ^ 2 * A177021 (n + 1)

end

end A222154.P3649859661877102477

/-! ## A222154.P5769323977914579644

`A010694(A283989(n))*A177021(n+1)`
-/

namespace A222154.P5769323977914579644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010694 (A283989 n).toNat * A177021 (n + 1)

end

end A222154.P5769323977914579644

/-!
# A222156: Number of n X 4 arrays with each row a permutation of 1..4 having at least as many downsteps as the preceding row, with rows in lexicographically nondecreasing order.

The programs for A222156, there is no canonical definition to state claims against.
-/

/-! ## A222156.P12519055994298272397

`A222159(A141214(n+1))`
-/

namespace A222156.P12519055994298272397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222159 (A141214 (n + 1)).toNat

end

end A222156.P12519055994298272397

/-!
# A222159: T(n,k)=Number of nXk arrays with each row a permutation of 1..k having at least as many downsteps as the preceding row, with rows in lexicographically nondecreasing order.

The programs for A222159, there is no canonical definition to state claims against.
-/

/-! ## A222159.P16700793856287468711

`A327146(A294118(n))+A173333(n+1)`
-/

namespace A222159.P16700793856287468711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327146 (A294118 n).toNat + A173333 (n + 1)

end

end A222159.P16700793856287468711

/-! ## A222159.P6502067200407964214

`A325139(n)-A213509(A111578(n+1))`
-/

namespace A222159.P6502067200407964214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325139 n - A213509 (A111578 (n + 1)).toNat

end

end A222159.P6502067200407964214

/-! ## A222159.P1416003592019433525

`A249817(A221623(n+1)^A261585(n))`
-/

namespace A222159.P1416003592019433525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249817 (SequenceMachineLib.roundAway ((A221623 (n + 1) : ℚ) ^ (A261585 n : ℤ))).toNat

end

end A222159.P1416003592019433525

/-! ## A222159.P8745764193690930424

`A250246(A221623(n+1)^A261585(n))`
-/

namespace A222159.P8745764193690930424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250246 (SequenceMachineLib.roundAway ((A221623 (n + 1) : ℚ) ^ (A261585 n : ℤ))).toNat

end

end A222159.P8745764193690930424

/-! ## A222159.P10936956660932532743

`A249817(C(A221623(n+1), A261585(n)))`
-/

namespace A222159.P10936956660932532743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249817 (Nat.choose (A221623 (n + 1)).toNat (A261585 n).toNat)

end

end A222159.P10936956660932532743

/-!
# A222160: Number of (n+2) X 1 arrays of occupancy after each element moves up to +-2 places but not 0 and without 2-loops.

The programs for A222160, there is no canonical definition to state claims against.
-/

/-! ## A222160.P14903465923458745196

`A222165(∑[n+2])`
-/

namespace A222160.P14903465923458745196
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222165 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A222160.P14903465923458745196

/-! ## A222160.P1008471828948528291

`record[A222165(abs(A201163(n)))]`
-/

namespace A222160.P1008471828948528291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222165 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222160.P1008471828948528291

/-! ## A222160.P2308647396810236574

`record[gcd(A065600(n), A222165(n+1))]`
-/

namespace A222160.P2308647396810236574
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A065600 n) (A222165 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222160.P2308647396810236574

/-!
# A222161: Number of (n+3)X1 arrays of occupancy after each element moves up to +-3 places but not 0 and without 2-loops.

The programs for A222161, there is no canonical definition to state claims against.
-/

/-! ## A222161.P11561061378052210376

`A222165(∑[n+3]+1)`
-/

namespace A222161.P11561061378052210376
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222165 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A222161.P11561061378052210376

/-!
# A222162: Number of (n+4)X1 arrays of occupancy after each element moves up to +-4 places but not 0 and without 2-loops.

The programs for A222162, there is no canonical definition to state claims against.
-/

/-! ## A222162.P8631302416551753864

`A222165(∑[n+2]+2*n+5)`
-/

namespace A222162.P8631302416551753864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222165 (∑ j ∈ Finset.range (n + 1), f1 j + (2 * n + 5))

end

end A222162.P8631302416551753864

/-!
# A222163: Number of (n+5)X1 arrays of occupancy after each element moves up to +-5 places but not 0 and without 2-loops.

The programs for A222163, there is no canonical definition to state claims against.
-/

/-! ## A222163.P11139421228642584966

`A222165(Δ[A264443(n)])`
-/

namespace A222163.P11139421228642584966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222165 (f1 (n + 1) - f1 n).toNat

end

end A222163.P11139421228642584966

/-!
# A222166: Number of nX5 0..4 arrays with entries increasing mod 5 by 0, 1 or 2 rightwards and downwards, starting with upper left zero.

The programs for A222166, there is no canonical definition to state claims against.
-/

/-! ## A222166.P9496309523458241886

`A222169(A374005(n+1))`
-/

namespace A222166.P9496309523458241886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222169 (A374005 (n + 1)).toNat

end

end A222166.P9496309523458241886

/-! ## A222166.P5544174410496244533

`A222169(A155212(n)+13)`
-/

namespace A222166.P5544174410496244533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222169 (A155212 n + 13).toNat

end

end A222166.P5544174410496244533

/-! ## A222166.P15246844678465015587

`A222169(eq[7, A066657(n)])`
-/

namespace A222166.P15246844678465015587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222169 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222166.P15246844678465015587

/-! ## A222166.P8489938624125549744

`A222169(A167614(n+3)+2)`
-/

namespace A222166.P8489938624125549744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222169 (A167614 (n + 3) + 2).toNat

end

end A222166.P8489938624125549744

/-! ## A222166.P2124136569295166044

`A222169(A141214(n+1)+8)`
-/

namespace A222166.P2124136569295166044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222169 (A141214 (n + 1) + 8).toNat

end

end A222166.P2124136569295166044

/-!
# A222167: Number of nX6 0..4 arrays with entries increasing mod 5 by 0, 1 or 2 rightwards and downwards, starting with upper left zero.

The programs for A222167, there is no canonical definition to state claims against.
-/

/-! ## A222167.P13624939825710848763

`A222169(A374007(n+1))`
-/

namespace A222167.P13624939825710848763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222169 (A374007 (n + 1)).toNat

end

end A222167.P13624939825710848763

/-! ## A222167.P2327655077196968535

`A222169(A166136(n+4))`
-/

namespace A222167.P2327655077196968535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222169 (A166136 (n + 4)).toNat

end

end A222167.P2327655077196968535

/-! ## A222167.P5587458285535147742

`A222169(eq[7, A131818(n+1)])`
-/

namespace A222167.P5587458285535147742
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222169 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222167.P5587458285535147742

/-! ## A222167.P12129390465476199758

`A222169(A052905(n+3))`
-/

namespace A222167.P12129390465476199758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222169 (A052905 (n + 3)).toNat

end

end A222167.P12129390465476199758

/-! ## A222167.P4086902578293628872

`A222169(eq[5, A193592(n)])`
-/

namespace A222167.P4086902578293628872
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222169 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222167.P4086902578293628872

/-!
# A222168: Number of nX7 0..4 arrays with entries increasing mod 5 by 0, 1 or 2 rightwards and downwards, starting with upper left zero.

The programs for A222168, there is no canonical definition to state claims against.
-/

/-! ## A222168.P3783555647499420494

`A222169(A374008(n+1))`
-/

namespace A222168.P3783555647499420494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222169 (A374008 (n + 1)).toNat

end

end A222168.P3783555647499420494

/-! ## A222168.P5891650845475413896

`A222169(eq[11, A066657(n)])`
-/

namespace A222168.P5891650845475413896
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222169 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222168.P5891650845475413896

/-! ## A222168.P5058029781342524127

`A222169(A055999(n+4))`
-/

namespace A222168.P5058029781342524127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222169 (A055999 (n + 4)).toNat

end

end A222168.P5058029781342524127

/-!
# A222169: T(n,k)=Number of nXk 0..4 arrays with entries increasing mod 5 by 0, 1 or 2 rightwards and downwards, starting with upper left zero.

The programs for A222169, there is no canonical definition to state claims against.
-/

/-! ## A222169.P5948680660143191147

`A327356(A306326(n))+A038221(n)`
-/

namespace A222169.P5948680660143191147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327356 (A306326 n).toNat + A038221 n

end

end A222169.P5948680660143191147

/-! ## A222169.P14219225732224461180

`or(A038221(n), A147117(A022167(n)))`
-/

namespace A222169.P14219225732224461180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A038221 n) (A147117 (A022167 n).toNat)

end

end A222169.P14219225732224461180

/-! ## A222169.P4924510495960242224

`or(A008337(A166345(n+1)), A038221(n))`
-/

namespace A222169.P4924510495960242224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A008337 (A166345 (n + 1)).toNat) (A038221 n)

end

end A222169.P4924510495960242224

/-! ## A222169.P9549114005662967390

`or(A038221(n), A147117(A222188(n+1)))`
-/

namespace A222169.P9549114005662967390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A038221 n) (A147117 (A222188 (n + 1)).toNat)

end

end A222169.P9549114005662967390

/-!
# A222170: a(n) = n^2 + 2*floor(n^2/3).

The programs for A222170, the canonical program `A222170.P10473872825266309268` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A222170 has offset 0).

The definition of A222170 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n²+2*floor(n²/3)` (program `A222170.P10473872825266309268`, by `A222170.P10473872825266309268.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A222170.P1687116772312132210

`floor(5*n²/3)`
-/

namespace A222170.P1687116772312132210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(5 * n ^ 2 : ℚ) / 3⌋

end

end A222170.P1687116772312132210

namespace A222170

/-- `floor(5*n²/3)` -/
def P1687116772312132210.Spec : Prop :=
  ∀ n, P1687116772312132210.a n = A222170 n

end A222170

/-! ## A222170.P10473872825266309268

`n²+2*floor(n²/3)`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A222170

/-- `n²+2*floor(n²/3)` -/
def P10473872825266309268.Spec : Prop :=
  ∀ n, P10473872825266309268.a n = A222170 n

theorem P10473872825266309268.correct : P10473872825266309268.Spec := by
  intro n
  simp only [A222170]

end A222170

/-! ## A222170.P9137283052881340576

`∑[a(n-3)+10]` with `a(0)=0, a(1)=1, a(2)=5, a(3)=9`
-/

namespace A222170.P9137283052881340576
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 5, 9] fun n f1 =>
  f1 (n - 3) + 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A222170.P9137283052881340576

namespace A222170

/-- `∑[a(n-3)+10]` -/
def P9137283052881340576.Spec : Prop :=
  ∀ n, (P9137283052881340576.a n : ℤ) = A222170 n

end A222170

/-! ## A222170.P15893819341052739194

`∑[∑[floor(a(n-3))]]` with `a(0)=0, a(1)=1, a(2)=4, a(3)=4, a(4)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A222170.P15893819341052739194
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 4, 4, 2] fun n f2 =>
  f2 (n - 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A222170.P15893819341052739194

namespace A222170

/-- `∑[∑[floor(a(n-3))]]` -/
def P15893819341052739194.Spec : Prop :=
  ∀ n, (P15893819341052739194.a n : ℤ) = A222170 n

end A222170

/-! ## A222170.P4307265058152260061

`∑[∑[gcd(4, a(n-3))]]` with `a(0)=0, a(1)=1, a(2)=4, a(3)=4, a(4)=2`
-/

namespace A222170.P4307265058152260061
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 4, 4, 2] fun n f2 =>
  Nat.gcd 4 (f2 (n - 3))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A222170.P4307265058152260061

namespace A222170

/-- `∑[∑[gcd(4, a(n-3))]]` -/
def P4307265058152260061.Spec : Prop :=
  ∀ n, (P4307265058152260061.a n : ℤ) = A222170 n

end A222170

/-! ## A222170.P3856397330085952081

`∑[∑[a(n-3)%5]]` with `a(0)=0, a(1)=1, a(2)=4, a(3)=4, a(4)=2`
-/

namespace A222170.P3856397330085952081
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 4, 4, 2] fun n f2 =>
  f2 (n - 3) % 5

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A222170.P3856397330085952081

namespace A222170

/-- `∑[∑[a(n-3)%5]]` -/
def P3856397330085952081.Spec : Prop :=
  ∀ n, (P3856397330085952081.a n : ℤ) = A222170 n

end A222170

/-! ## A222170.P13230952978859816866

`xor(A113422(n), A120323(n))`
-/

namespace A222170.P13230952978859816866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A113422 n) (A120323 n)

end

end A222170.P13230952978859816866

namespace A222170

/-- `xor(A113422(n), A120323(n))` -/
def P13230952978859816866.Spec : Prop :=
  ∀ n, P13230952978859816866.a n = A222170 n

end A222170

/-! ## A222170.P17596331921305783448

`A033438(2*n)`
-/

namespace A222170.P17596331921305783448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033438 (2 * n)

end

end A222170.P17596331921305783448

namespace A222170

/-- `A033438(2*n)` -/
def P17596331921305783448.Spec : Prop :=
  ∀ n, P17596331921305783448.a n = A222170 n

end A222170

/-! ## A222170.P12146377590749301609

`A008851(A084672(n))`
-/

namespace A222170.P12146377590749301609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008851 (A084672 n).toNat

end

end A222170.P12146377590749301609

namespace A222170

/-- `A008851(A084672(n))` -/
def P12146377590749301609.Spec : Prop :=
  ∀ n, P12146377590749301609.a n = A222170 n

end A222170

/-! ## A222170.P17383480095419116374

`A008854(n²+1)`
-/

namespace A222170.P17383480095419116374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008854 (n ^ 2 + 1)

end

end A222170.P17383480095419116374

namespace A222170

/-- `A008854(n²+1)` -/
def P17383480095419116374.Spec : Prop :=
  ∀ n, P17383480095419116374.a n = A222170 n

end A222170

/-! ## A222170.P13077565884336938955

`A047217(n²+1)`
-/

namespace A222170.P13077565884336938955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047217 (n ^ 2 + 1)

end

end A222170.P13077565884336938955

namespace A222170

/-- `A047217(n²+1)` -/
def P13077565884336938955.Spec : Prop :=
  ∀ n, P13077565884336938955.a n = A222170 n

theorem P13077565884336938955.correct : P13077565884336938955.Spec := by
  intro n
  simp only [A222170, Nat.add_sub_cancel, A222170.P13077565884336938955.a, A222170.P10473872825266309268.a, A047217, A047217.P5680528817059073200.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A222170

/-! ## A222170.P12033268153139614610

`A047220(n²+1)`
-/

namespace A222170.P12033268153139614610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047220 (n ^ 2 + 1)

end

end A222170.P12033268153139614610

namespace A222170

/-- `A047220(n²+1)` -/
def P12033268153139614610.Spec : Prop :=
  ∀ n, P12033268153139614610.a n = A222170 n

end A222170

/-!
# A222172: Total number of ON states after n generations of cellular automaton based on pentagons starting near of the vertex of an infinite 36-degree wedge.

The programs for A222172, there is no canonical definition to state claims against.
-/

/-! ## A222172.P1218029527560427953

`(A222176(n+1)-1)/2`
-/

namespace A222172.P1218029527560427953
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A222176 (n + 1) - 1 : ℚ) / 2

end

end A222172.P1218029527560427953

/-! ## A222172.P2054943362920906303

`(A222180(n+2)-6)/10`
-/

namespace A222172.P2054943362920906303
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A222180 (n + 2) - 6 : ℚ) / 10

end

end A222172.P2054943362920906303

/-! ## A222172.P10969363743802669004

`∑[A222173(n)]`
-/

namespace A222172.P10969363743802669004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222173 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A222172.P10969363743802669004

/-! ## A222172.P927960527668265414

`floor(A222176(n+1)/2)`
-/

namespace A222172.P927960527668265414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A222176 (n + 1) : ℚ) / 2⌋

end

end A222172.P927960527668265414

/-! ## A222172.P16950293661191578707

`floor(A222180(n+2)/10)`
-/

namespace A222172.P16950293661191578707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A222180 (n + 2) : ℚ) / 10⌋

end

end A222172.P16950293661191578707

/-!
# A222173: Number of pentagons added at n-th stage to the structure of A222172.

The programs for A222173, there is no canonical definition to state claims against.
-/

/-! ## A222173.P11209902822697121972

`Δ[floor(A222176(n)/2)]`
-/

namespace A222173.P11209902822697121972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A222176 n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A222173.P11209902822697121972

/-! ## A222173.P7969565406946381946

`floor(A222177(n+1)/2)`
-/

namespace A222173.P7969565406946381946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A222177 (n + 1) : ℚ) / 2⌋

end

end A222173.P7969565406946381946

/-! ## A222173.P11501272598364149189

`floor(A222181(n+2)/9)`
-/

namespace A222173.P11501272598364149189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A222181 (n + 2) : ℚ) / 9⌋

end

end A222173.P11501272598364149189

/-! ## A222173.P6380132213905959338

`Δ[A222172(log2(ceil(2^(n-1))))]`
-/

namespace A222173.P6380132213905959338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222172 (SequenceMachineLib.roundAway (Real.logb 2 (⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A222173.P6380132213905959338

/-! ## A222173.P8974935005518311504

`A004526(Δ[A222176(n)])`
-/

namespace A222173.P8974935005518311504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222176 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (f1 (n + 1) - f1 n).toNat

end

end A222173.P8974935005518311504

/-!
# A222174: Numbers n such that sigma(n) + sigma(n-1) = 3n, where sigma(n) = sum of divisors of n (A000203).

The programs for A222174, there is no canonical definition to state claims against.
-/

/-! ## A222174.P2082847569489533180

`filter[A227306(n+2), A340369(#)]`
-/

namespace A222174.P2082847569489533180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227306 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340369 (f1 j).toNat = 1) n)

end

end A222174.P2082847569489533180

/-! ## A222174.P15875825832728687451

`∩[A184335(n+1), A227306(n+1)]`
-/

namespace A222174.P15875825832728687451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184335 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227306 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A222174.P15875825832728687451

/-!
# A222175: Numbers n such that 7n is a partition number.

The programs for A222175, there is no canonical definition to state claims against.
-/

/-! ## A222175.P896780360416931089

`A225327(n+1)/7`
-/

namespace A222175.P896780360416931089
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A225327 (n + 1) : ℚ) / 7

end

end A222175.P896780360416931089

/-! ## A222175.P9187998830538957072

`A000041(A243936(n+1))/7`
-/

namespace A222175.P9187998830538957072
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000041 (A243936 (n + 1)).toNat : ℚ) / 7

end

end A222175.P9187998830538957072

/-! ## A222175.P2472187246148386200

`A035363(2*A243936(n+1))/7`
-/

namespace A222175.P2472187246148386200
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035363 (2 * A243936 (n + 1)).toNat : ℚ) / 7

end

end A222175.P2472187246148386200

/-! ## A222175.P12906261085096432377

`A119620(2*A243936(n+1))/7`
-/

namespace A222175.P12906261085096432377
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A119620 (2 * A243936 (n + 1)).toNat : ℚ) / 7

end

end A222175.P12906261085096432377

/-! ## A222175.P6132529848644411977

`A000041(eq[0, A000041(n)%7])/7`
-/

namespace A222175.P6132529848644411977
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000041 n) 7

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000041 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) : ℚ) / 7

end

end A222175.P6132529848644411977

/-!
# A222176: Total number of ON states after n generations of cellular automaton based on pentagons starting near of the vertex of an infinite 72-degree wedge.

The programs for A222176, there is no canonical definition to state claims against.
-/

/-! ## A222176.P6461417177016570356

`(A222180(n+1)-1)/5`
-/

namespace A222176.P6461417177016570356
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A222180 (n + 1) - 1 : ℚ) / 5

end

end A222176.P6461417177016570356

/-! ## A222176.P7221259171585439570

`∑[A222177(n)]`
-/

namespace A222176.P7221259171585439570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222177 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A222176.P7221259171585439570

/-! ## A222176.P16971853191046787641

`floor(A222180(n+1)/5)`
-/

namespace A222176.P16971853191046787641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A222180 (n + 1) : ℚ) / 5⌋

end

end A222176.P16971853191046787641

/-! ## A222176.P11974879185468025517

`∑[floor(Δ[A222180(n)]/5)]`
-/

namespace A222176.P11974879185468025517
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222180 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f2 (n + 1) - f2 n : ℚ) / 5⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A222176.P11974879185468025517

/-! ## A222176.P14352166326516306763

`∑[floor(A222181(n+1)/5)]`
-/

namespace A222176.P14352166326516306763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A222181 (n + 1) : ℚ) / 5⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A222176.P14352166326516306763

/-!
# A222177: Number of pentagons added at n-th stage to the structure of A222176.

The programs for A222177, there is no canonical definition to state claims against.
-/

/-! ## A222177.P1136682235647156202

`Δ[floor(A222180(n)/5)]`
-/

namespace A222177.P1136682235647156202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A222180 n : ℚ) / 5⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A222177.P1136682235647156202

/-! ## A222177.P12028101558839390864

`floor(A222181(n+1)/5)`
-/

namespace A222177.P12028101558839390864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A222181 (n + 1) : ℚ) / 5⌋

end

end A222177.P12028101558839390864

/-! ## A222177.P9857530619697708502

`Δ[floor(∑[A222181(n)/5])]`
-/

namespace A222177.P9857530619697708502
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A222181 n : ℚ) / 5

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f2 j⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A222177.P9857530619697708502

/-! ## A222177.P13836532956735860422

`Δ[A222176(log2(ceil(2^(n-1))))]`
-/

namespace A222177.P13836532956735860422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222176 (SequenceMachineLib.roundAway (Real.logb 2 (⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A222177.P13836532956735860422

/-! ## A222177.P7869159463190337448

`A002266(Δ[A222180(n)])`
-/

namespace A222177.P7869159463190337448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222180 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (f1 (n + 1) - f1 n).toNat

end

end A222177.P7869159463190337448

/-!
# A222178: Numbers n such that 8n is a partition number.

The programs for A222178, there is no canonical definition to state claims against.
-/

/-! ## A222178.P17396936374303846567

`A225358(n+1)/8`
-/

namespace A222178.P17396936374303846567
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A225358 (n + 1) : ℚ) / 8

end

end A222178.P17396936374303846567

/-! ## A222178.P16168880523622197354

`A000041(lt[2, A278478(n)])/8`
-/

namespace A222178.P16168880523622197354
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278478 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000041 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) : ℚ) / 8

end

end A222178.P16168880523622197354

/-! ## A222178.P17049485693113767538

`(A000065(lt[2, A278478(n)])+1)/8`
-/

namespace A222178.P17049485693113767538
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278478 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000065 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) + 1 : ℚ) / 8

end

end A222178.P17049485693113767538

/-! ## A222178.P7191877048390437881

`A000041(eq[0, A000041(n)%8])/8`
-/

namespace A222178.P7191877048390437881
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000041 n) 8

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000041 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) : ℚ) / 8

end

end A222178.P7191877048390437881

/-! ## A222178.P14350203815320071059

`A000041(lt[2, val(A000041(n), 2)])/8`
-/

namespace A222178.P14350203815320071059
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000041 n).toNat 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000041 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n) : ℚ) / 8

end

end A222178.P14350203815320071059

/-!
# A222179: Numbers n such that 9n is a partition number.

The programs for A222179, there is no canonical definition to state claims against.
-/

/-! ## A222179.P4768968633549867502

`A225360(n+1)/9`
-/

namespace A222179.P4768968633549867502
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A225360 (n + 1) : ℚ) / 9

end

end A222179.P4768968633549867502

/-! ## A222179.P12149490851477280176

`A000041(lt[8, dr(A000041(n))])/9`
-/

namespace A222179.P12149490851477280176
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A000041 n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000041 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n) : ℚ) / 9

end

end A222179.P12149490851477280176

/-! ## A222179.P7042161789179269169

`A000041(eq[9, dr(A000041(n))])/9`
-/

namespace A222179.P7042161789179269169
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A000041 n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000041 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n) : ℚ) / 9

end

end A222179.P7042161789179269169

/-! ## A222179.P12423226771638163845

`A000041(eq[0, A000041(n)%9])/9`
-/

namespace A222179.P12423226771638163845
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000041 n) 9

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000041 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) : ℚ) / 9

end

end A222179.P12423226771638163845

/-! ## A222179.P389241974398836818

`A000041(eq[9, gcd(9, A000041(n))])/9`
-/

namespace A222179.P389241974398836818
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 9 (A000041 n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000041 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n) : ℚ) / 9

end

end A222179.P389241974398836818

/-!
# A222180: Total number of ON states after n generations of cellular automaton based on pentagons. Also P-toothpick sequence (see Comments lines for definition).

The programs for A222180, there is no canonical definition to state claims against.
-/

/-! ## A222180.P13596666066966124098

`∑[A222181(n)]`
-/

namespace A222180.P13596666066966124098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222181 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A222180.P13596666066966124098

/-! ## A222180.P13727028292961254425

`A222181(A028310(n))+a(n-1)` with `a(0)=0`
-/

namespace A222180.P13727028292961254425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A222181 (A028310 n).toNat + a (n - 1)

end

end A222180.P13727028292961254425

/-! ## A222180.P12291391594873924956

`A295560(n^A109014(n))+A004524(A160164(n))`
-/

namespace A222180.P12291391594873924956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295560 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A109014 n : ℤ))).toNat + A004524 (A160164 n).toNat

end

end A222180.P12291391594873924956

/-! ## A222180.P18219284865721109850

`A295560(n^A319099(n+1))+A004524(A160164(n))`
-/

namespace A222180.P18219284865721109850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295560 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A319099 (n + 1) : ℤ))).toNat + A004524 (A160164 n).toNat

end

end A222180.P18219284865721109850

/-! ## A222180.P12243470094684395091

`A244644(A161644(n))`
-/

namespace A222180.P12243470094684395091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244644 (A161644 n).toNat

end

end A222180.P12243470094684395091

/-!
# A222181: Number of pentagons added at n-th stage to the structure of A222180.

The programs for A222181, there is no canonical definition to state claims against.
-/

/-! ## A222181.P7872860970743154379

`Δ[A222180(log2(ceil(2^(n-1))))]`
-/

namespace A222181.P7872860970743154379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222180 (SequenceMachineLib.roundAway (Real.logb 2 (⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A222181.P7872860970743154379

/-!
# A222182: Numbers m such that 2*m + 11 is a square.

The programs for A222182, the canonical program `A222182.P8414222339941885344` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A222182 has offset 1).

The definition of A222182 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A222182.P8414222339941885344

`2*(n+1)²-2*(n+1)-5`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A222182

/-- `2*(n+1)²-2*(n+1)-5` -/
def P8414222339941885344.Spec : Prop :=
  ∀ n, P8414222339941885344.a n = A222182 (n + 1)

theorem P8414222339941885344.correct : P8414222339941885344.Spec := by
  intro n
  simp only [A222182, Nat.add_sub_cancel]

end A222182

/-! ## A222182.P13917913299080662491

`∑[a(n-1)+4]` with `a(0)=-5, a(1)=4`
-/

namespace A222182.P13917913299080662491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-5, 4] fun n f1 =>
  f1 (n - 1) + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A222182.P13917913299080662491

namespace A222182

/-- `∑[a(n-1)+4]` -/
def P13917913299080662491.Spec : Prop :=
  ∀ n, P13917913299080662491.a n = A222182 (n + 1)

end A222182

/-! ## A222182.P2736375785917623723

`or(1, 2*(n²-3+n))`
-/

namespace A222182.P2736375785917623723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (2 * ((n ^ 2 : ℤ) - 3 + (n : ℤ)))

end

end A222182.P2736375785917623723

namespace A222182

/-- `or(1, 2*(n²-3+n))` -/
def P2736375785917623723.Spec : Prop :=
  ∀ n, P2736375785917623723.a n = A222182 (n + 1)

end A222182

/-! ## A222182.P11658111182342476168

`xor(1, 2*(n²-3+n))`
-/

namespace A222182.P11658111182342476168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (2 * ((n ^ 2 : ℤ) - 3 + (n : ℤ)))

end

end A222182.P11658111182342476168

namespace A222182

/-- `xor(1, 2*(n²-3+n))` -/
def P11658111182342476168.Spec : Prop :=
  ∀ n, P11658111182342476168.a n = A222182 (n + 1)

end A222182

/-! ## A222182.P15912575104669884794

`-(xor(1, ∑[-(4*n)])+4)`
-/

namespace A222182.P15912575104669884794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(4 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(Int.xor 1 (∑ j ∈ Finset.range (n + 1), f1 j) + 4)

end

end A222182.P15912575104669884794

namespace A222182

/-- `-(xor(1, ∑[-(4*n)])+4)` -/
def P15912575104669884794.Spec : Prop :=
  ∀ n, P15912575104669884794.a n = A222182 (n + 1)

end A222182

/-! ## A222182.P14955099287192555400

`floor(a(n-1)+4*n)` with `a(0)=-5`

`floor` is left out, it is the identity on integers.
-/

namespace A222182.P14955099287192555400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [-5] fun n a =>
  a (n - 1) + (4 * n : ℤ)

end

end A222182.P14955099287192555400

namespace A222182

/-- `floor(a(n-1)+4*n)` -/
def P14955099287192555400.Spec : Prop :=
  ∀ n, P14955099287192555400.a n = A222182 (n + 1)

theorem P14955099287192555400.correct : P14955099287192555400.Spec := by
  intro n
  induction n with
  | zero => simp [A222182, A222182.P14955099287192555400.a, A222182.P8414222339941885344.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A222182, Nat.add_sub_cancel, A222182.P14955099287192555400.a, A222182.P8414222339941885344.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A222182

/-! ## A222182.P3107914802441026290

`4*(a(n-1)/4+n)` with `a(0)=-5`
-/

namespace A222182.P3107914802441026290
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [-5] fun n a =>
  4 * (a (n - 1) / 4 + (n : ℚ))

end

end A222182.P3107914802441026290

namespace A222182

/-- `4*(a(n-1)/4+n)` -/
def P3107914802441026290.Spec : Prop :=
  ∀ n, P3107914802441026290.a n = (A222182 (n + 1) : ℚ)

theorem P3107914802441026290.correct : P3107914802441026290.Spec := by
  intro n
  induction n with
  | zero => simp [A222182, A222182.P3107914802441026290.a, A222182.P8414222339941885344.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A222182, Nat.add_sub_cancel, A222182.P3107914802441026290.a, A222182.P8414222339941885344.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A222182

/-! ## A222182.P16930026589421299882

`-(4*(1-n-C(n, 2))+1)`
-/

namespace A222182.P16930026589421299882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(4 * (1 - (n : ℤ) - (Nat.choose n 2 : ℤ)) + 1)

end

end A222182.P16930026589421299882

namespace A222182

/-- `-(4*(1-n-C(n, 2))+1)` -/
def P16930026589421299882.Spec : Prop :=
  ∀ n, P16930026589421299882.a n = A222182 (n + 1)

theorem P16930026589421299882.correct : P16930026589421299882.Spec := by
  intro n
  simp only [A222182, Nat.add_sub_cancel, A222182.P16930026589421299882.a, A222182.P8414222339941885344.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A222182

/-! ## A222182.P2919525222726540008

`-xor(1, (n+2)*2*(1-n))`
-/

namespace A222182.P2919525222726540008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor 1 ((n + 2 : ℤ) * (2 * (1 - (n : ℤ))))

end

end A222182.P2919525222726540008

namespace A222182

/-- `-xor(1, (n+2)*2*(1-n))` -/
def P2919525222726540008.Spec : Prop :=
  ∀ n, P2919525222726540008.a n = A222182 (n + 1)

end A222182

/-! ## A222182.P7425058196437298747

`floor(n-4-∑[a(n-1)-4])` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A222182.P7425058196437298747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 4 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A222182.P7425058196437298747

namespace A222182

/-- `floor(n-4-∑[a(n-1)-4])` -/
def P7425058196437298747.Spec : Prop :=
  ∀ n, P7425058196437298747.a n = A222182 (n + 1)

end A222182

/-! ## A222182.P11600586524696023869

`Δ[a(n-1)+4*C(n, 2)-5]` with `a(0)=1`
-/

namespace A222182.P11600586524696023869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) + ((4 * Nat.choose n 2 : ℤ) - 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A222182.P11600586524696023869

namespace A222182

/-- `Δ[a(n-1)+4*C(n, 2)-5]` -/
def P11600586524696023869.Spec : Prop :=
  ∀ n, P11600586524696023869.a n = A222182 (n + 1)

end A222182

/-! ## A222182.P8038277493623562700

`floor(C(2*n+1, 2)-ϕ+n-3)`
-/

namespace A222182.P8038277493623562700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.choose (2 * n + 1) 2 : ℝ) - Real.goldenRatio + ((n : ℤ) - 3 : ℝ)⌋

end

end A222182.P8038277493623562700

namespace A222182

/-- `floor(C(2*n+1, 2)-ϕ+n-3)` -/
def P8038277493623562700.Spec : Prop :=
  ∀ n, P8038277493623562700.a n = A222182 (n + 1)

end A222182

/-! ## A222182.P8103831626341088835

`round(n-3+C(2*n+1, 2)-ϕ)`
-/

namespace A222182.P8103831626341088835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((n : ℤ) - 3 : ℝ) + ((Nat.choose (2 * n + 1) 2 : ℝ) - Real.goldenRatio))

end

end A222182.P8103831626341088835

namespace A222182

/-- `round(n-3+C(2*n+1, 2)-ϕ)` -/
def P8103831626341088835.Spec : Prop :=
  ∀ n, P8103831626341088835.a n = A222182 (n + 1)

end A222182

/-! ## A222182.P3488821546788488936

`floor(lcm(n, 2*n+1)-ϕ+n-3)`
-/

namespace A222182.P3488821546788488936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.lcm n (2 * n + 1) : ℝ) - Real.goldenRatio + ((n : ℤ) - 3 : ℝ)⌋

end

end A222182.P3488821546788488936

namespace A222182

/-- `floor(lcm(n, 2*n+1)-ϕ+n-3)` -/
def P3488821546788488936.Spec : Prop :=
  ∀ n, P3488821546788488936.a n = A222182 (n + 1)

end A222182

/-! ## A222182.P10393724154481730742

`record[(2*n+1)*(n-3)-abs(2-n)]`
-/

namespace A222182.P10393724154481730742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * ((n : ℤ) - 3) - |2 - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222182.P10393724154481730742

namespace A222182

/-- `record[(2*n+1)*(n-3)-abs(2-n)]` -/
def P10393724154481730742.Spec : Prop :=
  ∀ n, P10393724154481730742.a n = A222182 (n + 1)

end A222182

/-! ## A222182.P10750113569585958929

`Δ[n-3+a(n-1)+(2*n+1)*(n-2)]` with `a(0)=0`
-/

namespace A222182.P10750113569585958929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  (n : ℤ) - 3 + (f1 (n - 1) + (2 * n + 1 : ℤ) * ((n : ℤ) - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A222182.P10750113569585958929

namespace A222182

/-- `Δ[n-3+a(n-1)+(2*n+1)*(n-2)]` -/
def P10750113569585958929.Spec : Prop :=
  ∀ n, P10750113569585958929.a n = A222182 (n + 1)

end A222182

/-! ## A222182.P3103994334145643429

`Δ[A006331(n)-(n+3)²]`
-/

namespace A222182.P3103994334145643429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006331 n - ((n + 3) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A222182.P3103994334145643429

namespace A222182

/-- `Δ[A006331(n)-(n+3)²]` -/
def P3103994334145643429.Spec : Prop :=
  ∀ n, P3103994334145643429.a n = A222182 (n + 1)

end A222182

/-! ## A222182.P16067579535951131721

`-(2*(n-A005563(n))+5)`
-/

namespace A222182.P16067579535951131721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(2 * ((n : ℤ) - A005563 n) + 5)

end

end A222182.P16067579535951131721

namespace A222182

/-- `-(2*(n-A005563(n))+5)` -/
def P16067579535951131721.Spec : Prop :=
  ∀ n, P16067579535951131721.a n = A222182 (n + 1)

theorem P16067579535951131721.correct : P16067579535951131721.Spec := by
  intro n
  simp only [A222182, Nat.add_sub_cancel, A222182.P16067579535951131721.a, A222182.P8414222339941885344.a, A005563, A005563.P13300161655551567421.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A222182

/-! ## A222182.P17179867778186957944

`Δ[A272870(n)]/Δ[n²]`
-/

namespace A222182.P17179867778186957944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272870 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / ((f2 (n + 1) : ℤ) - (f2 n : ℤ) : ℚ)

end

end A222182.P17179867778186957944

namespace A222182

/-- `Δ[A272870(n)]/Δ[n²]` -/
def P17179867778186957944.Spec : Prop :=
  ∀ n, P17179867778186957944.a n = (A222182 (n + 1) : ℚ)

end A222182

/-!
# A222184: Primes p such that q^(p-1) == 1 (mod p^2) for some prime q < p.

The programs for A222184, there is no canonical definition to state claims against.
-/

/-! ## A222184.P6109500086281274790

`A045319(lt[0, A285931(n+1)])`
-/

namespace A222184.P6109500086281274790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285931 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A222184.P6109500086281274790

/-! ## A222184.P10219619196148261062

`A045344(lt[0, A285931(n+1)])`
-/

namespace A222184.P10219619196148261062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285931 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A222184.P10219619196148261062

/-!
# A222185: Least prime q with q^(p-1) == 1 (mod p^2), where p = A222184(n).

The programs for A222185, there is no canonical definition to state claims against.
-/

/-! ## A222185.P8984351105140467489

`A250206(A222184(n+1)*A352884(n+1))`
-/

namespace A222185.P8984351105140467489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250206 (A222184 (n + 1) * A352884 (n + 1)).toNat

end

end A222185.P8984351105140467489

/-! ## A222185.P16243807296412115491

`A250206(A001227(n+2)*A222184(n+1))`
-/

namespace A222185.P16243807296412115491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250206 (A001227 (n + 2) * A222184 (n + 1)).toNat

end

end A222185.P16243807296412115491

/-! ## A222185.P14786199509639841573

`A250206(A222184(n+1)*A254444(2*(n+2)))`
-/

namespace A222185.P14786199509639841573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250206 (A222184 (n + 1) * A254444 (2 * (n + 2))).toNat

end

end A222185.P14786199509639841573

/-! ## A222185.P8108819582842171322

`A001222(A105269(n+1))*A250206(2*A222184(n+1))`
-/

namespace A222185.P8108819582842171322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A105269 (n + 1)).toNat * A250206 (2 * A222184 (n + 1)).toNat

end

end A222185.P8108819582842171322

/-!
# A222187: Number of toroidal n X 2 binary arrays, allowing rotation and/or reflection of the rows and/or the columns.

The programs for A222187, there is no canonical definition to state claims against.
-/

/-! ## A222187.P9409285759349507780

`A222188(∑[n+1]+2)`
-/

namespace A222187.P9409285759349507780
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222188 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A222187.P9409285759349507780

/-! ## A222187.P17546613924046801461

`record[gcd(A002262(n), A222188(n+2))]`
-/

namespace A222187.P17546613924046801461
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A222188 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222187.P17546613924046801461

/-! ## A222187.P10196949121905937216

`record[A222188(Δ[A003453(n+5)])]`
-/

namespace A222187.P10196949121905937216
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222188 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222187.P10196949121905937216

/-! ## A222187.P1120516318036080238

`record[or(A055137(n), A222188(n+1))]`
-/

namespace A222187.P1120516318036080238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A055137 n) (A222188 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222187.P1120516318036080238

/-! ## A222187.P17724736559292534765

`record[lcm(A167374(n+1), A222188(n+2))]`
-/

namespace A222187.P17724736559292534765
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A167374 (n + 1)) (A222188 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222187.P17724736559292534765

/-!
# A222188: Table read by antidiagonals: number of toroidal m X n binary arrays, allowing rotation and/or reflection of the rows and/or the columns.

The programs for A222188, there is no canonical definition to state claims against.
-/

/-! ## A222188.P12909523777850745167

`A368307(A043317(n+1))`
-/

namespace A222188.P12909523777850745167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368307 (A043317 (n + 1)).toNat

end

end A222188.P12909523777850745167

/-! ## A222188.P451745354421497188

`A368307(A044914(n+1))`
-/

namespace A222188.P451745354421497188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368307 (A044914 (n + 1)).toNat

end

end A222188.P451745354421497188

/-! ## A222188.P7862498178714862883

`A368307(A055648(n+1))`
-/

namespace A222188.P7862498178714862883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368307 (A055648 (n + 1)).toNat

end

end A222188.P7862498178714862883

/-! ## A222188.P6097023667027069438

`A368307(A132378(n+1))`
-/

namespace A222188.P6097023667027069438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368307 (A132378 (n + 1)).toNat

end

end A222188.P6097023667027069438

/-! ## A222188.P14789835180895596968

`A368307(A004863(n+2))`
-/

namespace A222188.P14789835180895596968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368307 (A004863 (n + 2)).toNat

end

end A222188.P14789835180895596968

/-!
# A222189: Number of toroidal n X 3 binary arrays, allowing rotation and/or reflection of the rows and/or the columns.

The programs for A222189, there is no canonical definition to state claims against.
-/

/-! ## A222189.P13806292896631673179

`A222188(∑[n+2]+4)`
-/

namespace A222189.P13806292896631673179
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222188 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A222189.P13806292896631673179

/-! ## A222189.P3896333245783822606

`lcm(A033999(n), A222188(A167614(n+1)))`
-/

namespace A222189.P3896333245783822606
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A222188 (A167614 (n + 1)).toNat)

end

end A222189.P3896333245783822606

/-! ## A222189.P13739636344828503413

`A222188(A167614(n+1))+A000038(n+1)`
-/

namespace A222189.P13739636344828503413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222188 (A167614 (n + 1)).toNat + A000038 (n + 1)

end

end A222189.P13739636344828503413

/-! ## A222189.P11415275516419344164

`A222188(A167614(n+1))+A135481(2*n)`
-/

namespace A222189.P11415275516419344164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222188 (A167614 (n + 1)).toNat + A135481 (2 * n)

end

end A222189.P11415275516419344164

/-! ## A222189.P3741853338802817450

`A222188(A167614(n+1))%A184282(n+1)`
-/

namespace A222189.P3741853338802817450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A222188 (A167614 (n + 1)).toNat) (A184282 (n + 1))

end

end A222189.P3741853338802817450

/-!
# A222190: Number of toroidal n X 4 binary arrays, allowing rotation and/or reflection of the rows and/or the columns.

The programs for A222190, there is no canonical definition to state claims against.
-/

/-! ## A222190.P3920329040616631589

`A222188(A141214(n+1))`
-/

namespace A222190.P3920329040616631589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222188 (A141214 (n + 1)).toNat

end

end A222190.P3920329040616631589

/-! ## A222190.P6403154195052117406

`A222188(A374004(n+1))`
-/

namespace A222190.P6403154195052117406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222188 (A374004 (n + 1)).toNat

end

end A222190.P6403154195052117406

/-! ## A222190.P15085437493350503540

`A222188(A155212(n)+5)`
-/

namespace A222190.P15085437493350503540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222188 (A155212 n + 5).toNat

end

end A222190.P15085437493350503540

/-! ## A222190.P10172165481749887427

`A222188(A052905(n)+9)`
-/

namespace A222190.P10172165481749887427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222188 (A052905 n + 9).toNat

end

end A222190.P10172165481749887427

/-! ## A222190.P6351290805899657426

`A222188(A055999(n)+10)`
-/

namespace A222190.P6351290805899657426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222188 (A055999 n + 10).toNat

end

end A222190.P6351290805899657426

/-!
# A222191: Number of toroidal n X 5 binary arrays, allowing rotation and/or reflection of the rows and/or the columns.

The programs for A222191, there is no canonical definition to state claims against.
-/

/-! ## A222191.P9106138742854473269

`A222188(Δ[A264443(n)])`
-/

namespace A222191.P9106138742854473269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222188 (f1 (n + 1) - f1 n).toNat

end

end A222191.P9106138742854473269

/-! ## A222191.P10386470389239211079

`A222188(A374005(n+1))`
-/

namespace A222191.P10386470389239211079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222188 (A374005 (n + 1)).toNat

end

end A222191.P10386470389239211079

/-! ## A222191.P1638478994725670034

`A222188(A155212(n)+13)`
-/

namespace A222191.P1638478994725670034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222188 (A155212 n + 13).toNat

end

end A222191.P1638478994725670034

/-! ## A222191.P3315294010665866155

`A222188(eq[4, A193592(n)])`
-/

namespace A222191.P3315294010665866155
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222188 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222191.P3315294010665866155

/-! ## A222191.P17416402552475901547

`A222188(eq[7, A066657(n)])`
-/

namespace A222191.P17416402552475901547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222188 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222191.P17416402552475901547

/-!
# A222193: Records in A114183.

The programs for A222193, there is no canonical definition to state claims against.
-/

/-! ## A222193.P5505516301823062299

`record[A114183(n+1)]`
-/

namespace A222193.P5505516301823062299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114183 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222193.P5505516301823062299

/-! ## A222193.P8469441649362442370

`A114183(A222194(n+1))`
-/

namespace A222193.P8469441649362442370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114183 (A222194 (n + 1)).toNat

end

end A222193.P8469441649362442370

/-! ## A222193.P17469310605038565705

`record[A114183(A028310(n))]%A017129(n)`
-/

namespace A222193.P17469310605038565705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114183 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A017129 n)

end

end A222193.P17469310605038565705

/-! ## A222193.P6401013460016023180

`record[A114183(A028310(n))]-A000035(2*n)`
-/

namespace A222193.P6401013460016023180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114183 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A000035 (2 * n)

end

end A222193.P6401013460016023180

/-! ## A222193.P483013895809181030

`record[A114183(A080513(n))]^A178334(n)`
-/

namespace A222193.P483013895809181030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114183 (A080513 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) ^ (A178334 n : ℤ)

end

end A222193.P483013895809181030

/-!
# A222194: Where records occur in A114183.

The programs for A222194, there is no canonical definition to state claims against.
-/

/-! ## A222194.P16884450722813810497

`A189419(A222193(n+1))`
-/

namespace A222194.P16884450722813810497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189419 (A222193 (n + 1)).toNat

end

end A222194.P16884450722813810497

/-! ## A222194.P16175682398615065436

`A189419(record[A114183(n+1)])`
-/

namespace A222194.P16175682398615065436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114183 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189419 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A222194.P16175682398615065436

/-!
# A222199: Number of Hamiltonian cycles in the graph C_n X C_n.

The programs for A222199, there is no canonical definition to state claims against.
-/

/-! ## A222199.P7971182497095798648

`A270273((n+2)²+(n+3)²)`
-/

namespace A222199.P7971182497095798648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270273 ((n + 2) ^ 2 + (n + 3) ^ 2)

end

end A222199.P7971182497095798648

/-! ## A222199.P7410243653856885494

`record[A270273(A055524(n+5))]`
-/

namespace A222199.P7410243653856885494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270273 (A055524 (n + 5)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222199.P7410243653856885494

/-! ## A222199.P11960334358461373518

`lcm(2, A270273(A001844(n+2)))`
-/

namespace A222199.P11960334358461373518
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A270273 (A001844 (n + 2)).toNat)

end

end A222199.P11960334358461373518

/-! ## A222199.P7524445647010217929

`A270273(A001844(n+2))*A341847(n)`
-/

namespace A222199.P7524445647010217929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270273 (A001844 (n + 2)).toNat * A341847 n

end

end A222199.P7524445647010217929

