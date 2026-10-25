import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
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
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C036
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B010.C000
import Seq.B011.C000
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
import Seq.Opaque.C014
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C024

/-!
# A196800: Number of nX6 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 3,2,0,4,1 for x=0,1,2,3,4.

The programs for A196800, there is no canonical definition to state claims against.
-/

/-! ## A196800.P12309244371189124033

`A196802(A000124(n+5)+5)`
-/

namespace A196800.P12309244371189124033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196802 (A000124 (n + 5) + 5).toNat

end

end A196800.P12309244371189124033

/-! ## A196800.P7548222868734483694

`A196802(eq[7, A131818(n+1)])`
-/

namespace A196800.P7548222868734483694
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196802 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196800.P7548222868734483694

/-! ## A196800.P5591477112762031433

`A196802(A374007(n+1))`
-/

namespace A196800.P5591477112762031433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196802 (A374007 (n + 1)).toNat

end

end A196800.P5591477112762031433

/-! ## A196800.P729104593549388485

`A196802(A052905(n+3))`
-/

namespace A196800.P729104593549388485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196802 (A052905 (n + 3)).toNat

end

end A196800.P729104593549388485

/-! ## A196800.P5656820962992910731

`A196802(eq[3, A219347(n)])`
-/

namespace A196800.P5656820962992910731
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196802 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196800.P5656820962992910731

/-!
# A196801: Number of nX7 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 3,2,0,4,1 for x=0,1,2,3,4.

The programs for A196801, there is no canonical definition to state claims against.
-/

/-! ## A196801.P7754755230100250909

`A196802(eq[8, A131818(n+1)])`
-/

namespace A196801.P7754755230100250909
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196802 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196801.P7754755230100250909

/-! ## A196801.P16525773024522102672

`A196802(A374008(n+1))`
-/

namespace A196801.P16525773024522102672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196802 (A374008 (n + 1)).toNat

end

end A196801.P16525773024522102672

/-! ## A196801.P12470470393160860579

`A196802(eq[4, A219347(n)])`
-/

namespace A196801.P12470470393160860579
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196802 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196801.P12470470393160860579

/-! ## A196801.P16528906100600695296

`A196802(eq[6, A193592(n)])`
-/

namespace A196801.P16528906100600695296
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196802 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196801.P16528906100600695296

/-! ## A196801.P8664232930082669160

`A196802(eq[7, A200370(n+1)])`
-/

namespace A196801.P8664232930082669160
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196802 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196801.P8664232930082669160

/-!
# A196803: Number of n X n 0..4 arrays with each element x equal to the number of its horizontal and vertical neighbors equal to 4,2,3,0,1 for x=0,1,2,3,4.

The programs for A196803, there is no canonical definition to state claims against.
-/

/-! ## A196803.P6712942618750524327

`A196809(∑[4*n]+1)`
-/

namespace A196803.P6712942618750524327
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196809 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A196803.P6712942618750524327

/-! ## A196803.P4287709061660935398

`A196809(A001844(n))+C(n, 64)`
-/

namespace A196803.P4287709061660935398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196809 (A001844 n).toNat + (Nat.choose n 64 : ℤ)

end

end A196803.P4287709061660935398

/-! ## A196803.P61297984586699545

`A196809(A001844(n))^A136400(n)`
-/

namespace A196803.P61297984586699545
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A196809 (A001844 n).toNat : ℚ) ^ (A136400 n : ℤ)

end

end A196803.P61297984586699545

/-! ## A196803.P15992365794582508713

`gcd(A000038(n), A196809(A001844(n)))`
-/

namespace A196803.P15992365794582508713
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A196809 (A001844 n).toNat)

end

end A196803.P15992365794582508713

/-! ## A196803.P3246382385800462382

`A196809(A001844(n))+A034449(n+1)`
-/

namespace A196803.P3246382385800462382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196809 (A001844 n).toNat + A034449 (n + 1)

end

end A196803.P3246382385800462382

/-!
# A196804: Number of n X 3 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 4,2,3,0,1 for x=0,1,2,3,4.

The programs for A196804, there is no canonical definition to state claims against.
-/

/-! ## A196804.P15226426386761366505

`A196809(∑[n+2]+4)`
-/

namespace A196804.P15226426386761366505
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196809 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A196804.P15226426386761366505

/-! ## A196804.P6729216236143053229

`A196809(A167614(n+1))^ceil(acot(n))`
-/

namespace A196804.P6729216236143053229
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A196809 (A167614 (n + 1)).toNat : ℚ) ^ (⌈SequenceMachineLib.acot (n : ℝ)⌉ : ℤ)

end

end A196804.P6729216236143053229

/-! ## A196804.P17270705663296952873

`A196809(A167614(n+1))%A034474(n)`
-/

namespace A196804.P17270705663296952873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A196809 (A167614 (n + 1)).toNat) (A034474 n)

end

end A196804.P17270705663296952873

/-! ## A196804.P16343195076475635150

`gcd(A000038(n), A196809(A167614(n+1)))`
-/

namespace A196804.P16343195076475635150
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A196809 (A167614 (n + 1)).toNat)

end

end A196804.P16343195076475635150

/-! ## A196804.P8670118638325424211

`A196809(A167614(n+1))+A034449(n+1)`
-/

namespace A196804.P8670118638325424211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196809 (A167614 (n + 1)).toNat + A034449 (n + 1)

end

end A196804.P8670118638325424211

/-!
# A196805: Number of nX4 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 4,2,3,0,1 for x=0,1,2,3,4.

The programs for A196805, there is no canonical definition to state claims against.
-/

/-! ## A196805.P14256754818173669393

`A196809(A374004(n+1))`
-/

namespace A196805.P14256754818173669393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196809 (A374004 (n + 1)).toNat

end

end A196805.P14256754818173669393

/-! ## A196805.P11797066149087938318

`A196809(A141214(n)+7)`
-/

namespace A196805.P11797066149087938318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196809 (A141214 n + 7).toNat

end

end A196805.P11797066149087938318

/-! ## A196805.P18424152634171413394

`A196809(A052905(n)+9)`
-/

namespace A196805.P18424152634171413394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196809 (A052905 n + 9).toNat

end

end A196805.P18424152634171413394

/-! ## A196805.P16847031642005119372

`A196809(A055999(n)+10)`
-/

namespace A196805.P16847031642005119372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196809 (A055999 n + 10).toNat

end

end A196805.P16847031642005119372

/-! ## A196805.P13628333406095329183

`A196809(A167614(n+2)+1)`
-/

namespace A196805.P13628333406095329183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196809 (A167614 (n + 2) + 1).toNat

end

end A196805.P13628333406095329183

/-!
# A196806: Number of nX5 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 4,2,3,0,1 for x=0,1,2,3,4.

The programs for A196806, there is no canonical definition to state claims against.
-/

/-! ## A196806.P11579236217350037509

`A196809(A374005(n+1))`
-/

namespace A196806.P11579236217350037509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196809 (A374005 (n + 1)).toNat

end

end A196806.P11579236217350037509

/-! ## A196806.P12341347173562476584

`A196809(A155212(n)+13)`
-/

namespace A196806.P12341347173562476584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196809 (A155212 n + 13).toNat

end

end A196806.P12341347173562476584

/-! ## A196806.P11094434047375085301

`A196809(eq[6, A131818(n+1)])`
-/

namespace A196806.P11094434047375085301
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196809 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196806.P11094434047375085301

/-! ## A196806.P7641223972565634475

`A196809(eq[32, A130321(n)]-A005843(n))`
-/

namespace A196806.P7641223972565634475
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  32

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196809 ((SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - A005843 n).toNat

end

end A196806.P7641223972565634475

/-! ## A196806.P1397526825061227095

`A196809(eq[4, A193592(n)])`
-/

namespace A196806.P1397526825061227095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196809 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196806.P1397526825061227095

/-!
# A196807: Number of nX6 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 4,2,3,0,1 for x=0,1,2,3,4.

The programs for A196807, there is no canonical definition to state claims against.
-/

/-! ## A196807.P8826812661684140393

`A196809(A374007(n+1))`
-/

namespace A196807.P8826812661684140393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196809 (A374007 (n + 1)).toNat

end

end A196807.P8826812661684140393

/-! ## A196807.P8580108323004907953

`A196809(eq[7, A131818(n+1)])`
-/

namespace A196807.P8580108323004907953
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196809 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196807.P8580108323004907953

/-! ## A196807.P18433575503061431935

`A196809(A052905(n+3))`
-/

namespace A196807.P18433575503061431935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196809 (A052905 (n + 3)).toNat

end

end A196807.P18433575503061431935

/-! ## A196807.P15308839337641213259

`A196809(eq[3, A219347(n)])`
-/

namespace A196807.P15308839337641213259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196809 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196807.P15308839337641213259

/-! ## A196807.P13241587232384556454

`A196809(eq[5, A193592(n)])`
-/

namespace A196807.P13241587232384556454
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196809 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196807.P13241587232384556454

/-!
# A196808: Number of nX7 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 4,2,3,0,1 for x=0,1,2,3,4.

The programs for A196808, there is no canonical definition to state claims against.
-/

/-! ## A196808.P19351713277280362

`A196809(A374008(n+1))`
-/

namespace A196808.P19351713277280362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196809 (A374008 (n + 1)).toNat

end

end A196808.P19351713277280362

/-! ## A196808.P1531638866566852026

`A196809(A000124(n+6)+6)`
-/

namespace A196808.P1531638866566852026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196809 (A000124 (n + 6) + 6).toNat

end

end A196808.P1531638866566852026

/-! ## A196808.P213755857278667178

`A196809(eq[8, A131818(n+1)])`
-/

namespace A196808.P213755857278667178
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196809 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196808.P213755857278667178

/-! ## A196808.P17012652989058088462

`A196809(A055999(n+4))`
-/

namespace A196808.P17012652989058088462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196809 (A055999 (n + 4)).toNat

end

end A196808.P17012652989058088462

/-! ## A196808.P9901115300386066237

`A196809(eq[4, A219347(n)])`
-/

namespace A196808.P9901115300386066237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196809 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196808.P9901115300386066237

/-!
# A196809: T(n,k)=Number of nXk 0..4 arrays with each element x equal to the number of its horizontal and vertical neighbors equal to 4,2,3,0,1 for x=0,1,2,3,4.

The programs for A196809, there is no canonical definition to state claims against.
-/

/-! ## A196809.P16777046762660024416

`A196646(n+1)+A184955(A007318(n))`
-/

namespace A196809.P16777046762660024416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196646 (n + 1) + A184955 (A007318 n).toNat

end

end A196809.P16777046762660024416

/-!
# A196810: Number of ways to place 2 nonattacking nightriders on an n X n cylindrical board.

The programs for A196810, there is no canonical definition to state claims against.
-/

/-! ## A196810.P2414468173667062923

`∑[∑[12*n²]]/A337686(A202965(n+1))`
-/

namespace A196810.P2414468173667062923
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12 * n ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (A337686 (A202965 (n + 1)).toNat : ℚ)

end

end A196810.P2414468173667062923

/-! ## A196810.P11568889371798500342

`∑[∑[12*n²]]/A320034(A238936(n+1))`
-/

namespace A196810.P11568889371798500342
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12 * n ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (A320034 (A238936 (n + 1)).toNat : ℚ)

end

end A196810.P11568889371798500342

/-!
# A196811: Number of ways to place 3 nonattacking nightriders on an n X n cylindrical board.

The programs for A196811, there is no canonical definition to state claims against.
-/

/-! ## A196811.P17624869205439928618

`A035930(∑[floor(3^(n-1))]²)`
-/

namespace A196811.P17624869205439928618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035930 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2).toNat

end

end A196811.P17624869205439928618

/-!
# A196812: Number of ways to place 2 nonattacking nightriders on an n X n toroidal board.

The programs for A196812, there is no canonical definition to state claims against.
-/

/-! ## A196812.P13295117167329047269

`A163102(n)-A132792(A190512(n))`
-/

namespace A196812.P13295117167329047269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163102 n - A132792 (A190512 n).toNat

end

end A196812.P13295117167329047269

/-! ## A196812.P9438433207433922718

`A243189(A099301(n+2)+A000330(n))`
-/

namespace A196812.P9438433207433922718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243189 (A099301 (n + 2) + A000330 n).toNat

end

end A196812.P9438433207433922718

/-!
# A196814: Number of ways to place n nonattacking nightriders on an n X n cylindrical board.

The programs for A196814, there is no canonical definition to state claims against.
-/

/-! ## A196814.P5619195450715494467

`lcm(A002024(A153317(n)), A011782(n))`
-/

namespace A196814.P5619195450715494467
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A002024 (A153317 n).toNat) (A011782 n)

end

end A196814.P5619195450715494467

/-!
# A196815: Smallest index k such that prime(k+n) - prime(k) is a perfect square.

The programs for A196815, there is no canonical definition to state claims against.
-/

/-! ## A196815.P10268079845550288805

`A000720(A196874(n+1))`
-/

namespace A196815.P10268079845550288805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A196874 (n + 1)).toNat

end

end A196815.P10268079845550288805

/-! ## A196815.P1185355300819645590

`A061395(p?[A196874(n+1)])`
-/

namespace A196815.P1185355300819645590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196874 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A196815.P1185355300819645590

/-! ## A196815.P14790907921420505196

`A061395(2*A196874(n+1)-A196874(n+1))`
-/

namespace A196815.P14790907921420505196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * A196874 (n + 1) - A196874 (n + 1)).toNat

end

end A196815.P14790907921420505196

/-! ## A196815.P15079310135694973793

`A061395(2*A196874(n+1))`
-/

namespace A196815.P15079310135694973793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * A196874 (n + 1)).toNat

end

end A196815.P15079310135694973793

/-! ## A196815.P3526120771210612309

`A003963(p?[A196874(n+1)])`
-/

namespace A196815.P3526120771210612309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196874 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A196815.P3526120771210612309

/-! ## A196815.P7672917992316877001

`A056239(p?[A196874(n+1)])`
-/

namespace A196815.P7672917992316877001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196874 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A196815.P7672917992316877001

/-! ## A196815.P17229370023341641774

`A230980(p?[A196874(n+1)])`
-/

namespace A196815.P17229370023341641774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196874 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A196815.P17229370023341641774

/-! ## A196815.P12752098182089731836

`∑{d}[A196874(n+1), A230980(#)]`
-/

namespace A196815.P12752098182089731836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196874 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A230980 d

end

end A196815.P12752098182089731836

/-! ## A196815.P5210273428705617829

`A230980(A196874(n+1)-1)+1`
-/

namespace A196815.P5210273428705617829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (A196874 (n + 1) - 1).toNat + 1

end

end A196815.P5210273428705617829

/-! ## A196815.P9698109899745515170

`A026238(A196874(n+1))%A004769(n)`
-/

namespace A196815.P9698109899745515170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026238 (A196874 (n + 1)).toNat) (A004769 n)

end

end A196815.P9698109899745515170

/-! ## A196815.P10157607343613278689

`A056239(A196874(n+1)%A016791(n))`
-/

namespace A196815.P10157607343613278689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (Int.tmod (A196874 (n + 1)) (A016791 n)).toNat

end

end A196815.P10157607343613278689

/-! ## A196815.P12211195231963925333

`A056239(A196874(n+1))%A177336(n+1)`
-/

namespace A196815.P12211195231963925333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056239 (A196874 (n + 1)).toNat) (A177336 (n + 1))

end

end A196815.P12211195231963925333

/-! ## A196815.P11376851134257046319

`A026238(2*A196874(n+1)-A196874(n+1))`
-/

namespace A196815.P11376851134257046319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026238 (2 * A196874 (n + 1) - A196874 (n + 1)).toNat

end

end A196815.P11376851134257046319

/-! ## A196815.P2337895825772258036

`A056239(2*A196874(n+1)-A196874(n+1))`
-/

namespace A196815.P2337895825772258036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (2 * A196874 (n + 1) - A196874 (n + 1)).toNat

end

end A196815.P2337895825772258036

/-! ## A196815.P5467488538804275531

`A056239(2*A196874(n+1))-1`
-/

namespace A196815.P5467488538804275531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (2 * A196874 (n + 1)).toNat - 1

end

end A196815.P5467488538804275531

/-!
# A196834: Row sums of Sheffer triangle A193685 (5-restricted Stirling2 numbers).

The programs for A196834, there is no canonical definition to state claims against.
-/

/-! ## A196834.P8021791518601767028

`A108087(A167499(n+4))`
-/

namespace A196834.P8021791518601767028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108087 (A167499 (n + 4)).toNat

end

end A196834.P8021791518601767028

/-! ## A196834.P13356373364036937497

`A108087(A167614(n+4)+2)`
-/

namespace A196834.P13356373364036937497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108087 (A167614 (n + 4) + 2).toNat

end

end A196834.P13356373364036937497

/-! ## A196834.P7781016465791512032

`A108087(A000096(n+4)+6)`
-/

namespace A196834.P7781016465791512032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108087 (A000096 (n + 4) + 6).toNat

end

end A196834.P7781016465791512032

/-! ## A196834.P6297340588077584379

`A108087(A000217(n+5)+5)`
-/

namespace A196834.P6297340588077584379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108087 (A000217 (n + 5) + 5).toNat

end

end A196834.P6297340588077584379

/-! ## A196834.P7143034346922197181

`A108087(n+9+A000124(n+4))`
-/

namespace A196834.P7143034346922197181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108087 ((n + 9 : ℤ) + A000124 (n + 4)).toNat

end

end A196834.P7143034346922197181

/-!
# A196835: Alternating row sums of Sheffer triangle A193685 (5-restricted Stirling2 numbers).

The programs for A196835, there is no canonical definition to state claims against.
-/

/-! ## A196835.P18388044783924074823

`A282161(9^n)`
-/

namespace A196835.P18388044783924074823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282161 (9 ^ n)

end

end A196835.P18388044783924074823

/-!
# A196836: a(n) = (1^n + 2^n +3^n + 4^n)/2.

The programs for A196836, the canonical program `A196836.P3333352529070358036` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A196836 has offset 0).

The definition of A196836 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A196836.P3333352529070358036

`(1^n+2^n+3^n+4^n)/2`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A196836

/-- `(1^n+2^n+3^n+4^n)/2` -/
def P3333352529070358036.Spec : Prop :=
  ∀ n, P3333352529070358036.a n = (A196836 n : ℚ)

end A196836

/-! ## A196836.P16171095460455693863

`ceil(A074526(n)/2)`
-/

namespace A196836.P16171095460455693863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A074526 n : ℚ) / 2⌉

end

end A196836.P16171095460455693863

namespace A196836

/-- `ceil(A074526(n)/2)` -/
def P16171095460455693863.Spec : Prop :=
  ∀ n, P16171095460455693863.a n = A196836 n

end A196836

/-! ## A196836.P7186134735528596305

`A134064(n)+3^n`
-/

namespace A196836.P7186134735528596305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134064 n + (3 ^ n : ℤ)

end

end A196836.P7186134735528596305

namespace A196836

/-- `A134064(n)+3^n` -/
def P7186134735528596305.Spec : Prop :=
  ∀ n, P7186134735528596305.a n = A196836 n

end A196836

/-! ## A196836.P17930983589224295760

`floor((4^n+3^n+A000225(n)+3)/2)`
-/

namespace A196836.P17930983589224295760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((4 ^ n : ℤ) + ((3 ^ n : ℤ) + (A000225 n + 3)) : ℚ) / 2⌋

end

end A196836.P17930983589224295760

namespace A196836

/-- `floor((4^n+3^n+A000225(n)+3)/2)` -/
def P17930983589224295760.Spec : Prop :=
  ∀ n, P17930983589224295760.a n = A196836 n

end A196836

/-! ## A196836.P4779078389639631078

`A007582(n)+A007051(n)`
-/

namespace A196836.P4779078389639631078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007582 n + A007051 n

end

end A196836.P4779078389639631078

namespace A196836

/-- `A007582(n)+A007051(n)` -/
def P4779078389639631078.Spec : Prop :=
  ∀ n, P4779078389639631078.a n = A196836 n

end A196836

/-! ## A196836.P8262367600213183908

`A053154(n)+A034472(n)`
-/

namespace A196836.P8262367600213183908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053154 n + A034472 n

end

end A196836.P8262367600213183908

namespace A196836

/-- `A053154(n)+A034472(n)` -/
def P8262367600213183908.Spec : Prop :=
  ∀ n, P8262367600213183908.a n = A196836 n

end A196836

/-! ## A196836.P6504621448553307952

`A085282(n)+A007581(n)`
-/

namespace A196836.P6504621448553307952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085282 n + A007581 n

end

end A196836.P6504621448553307952

namespace A196836

/-- `A085282(n)+A007581(n)` -/
def P6504621448553307952.Spec : Prop :=
  ∀ n, P6504621448553307952.a n = A196836 n

end A196836

/-! ## A196836.P14653163295259685630

`A099754(n)+A006516(n)`
-/

namespace A196836.P14653163295259685630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099754 n + A006516 n

end

end A196836.P14653163295259685630

namespace A196836

/-- `A099754(n)+A006516(n)` -/
def P14653163295259685630.Spec : Prop :=
  ∀ n, P14653163295259685630.a n = A196836 n

end A196836

/-! ## A196836.P9862716183519346286

`A134019(n)+A002783(n)`
-/

namespace A196836.P9862716183519346286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134019 n + A002783 n

end

end A196836.P9862716183519346286

namespace A196836

/-- `A134019(n)+A002783(n)` -/
def P9862716183519346286.Spec : Prop :=
  ∀ n, P9862716183519346286.a n = A196836 n

end A196836

/-! ## A196836.P17322710574445675322

`A134168(n)+A083323(n)`
-/

namespace A196836.P17322710574445675322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134168 n + A083323 n

end

end A196836.P17322710574445675322

namespace A196836

/-- `A134168(n)+A083323(n)` -/
def P17322710574445675322.Spec : Prop :=
  ∀ n, P17322710574445675322.a n = A196836 n

end A196836

/-! ## A196836.P7933605325611324210

`A134169(n)+A094374(n)`
-/

namespace A196836.P7933605325611324210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134169 n + A094374 n

end

end A196836.P7933605325611324210

namespace A196836

/-- `A134169(n)+A094374(n)` -/
def P7933605325611324210.Spec : Prop :=
  ∀ n, P7933605325611324210.a n = A196836 n

end A196836

/-! ## A196836.P856466548731077602

`A281481(n)+A003462(n)`
-/

namespace A196836.P856466548731077602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281481 n + A003462 n

end

end A196836.P856466548731077602

namespace A196836

/-- `A281481(n)+A003462(n)` -/
def P856466548731077602.Spec : Prop :=
  ∀ n, P856466548731077602.a n = A196836 n

end A196836

/-! ## A196836.P4037918849472888606

`A001576(n)-A134064(n)`
-/

namespace A196836.P4037918849472888606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001576 n - A134064 n

end

end A196836.P4037918849472888606

namespace A196836

/-- `A001576(n)-A134064(n)` -/
def P4037918849472888606.Spec : Prop :=
  ∀ n, P4037918849472888606.a n = A196836 n

end A196836

/-! ## A196836.P1348110116562870347

`A161168(n)-A053154(n)`
-/

namespace A196836.P1348110116562870347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161168 n - A053154 n

end

end A196836.P1348110116562870347

namespace A196836

/-- `A161168(n)-A053154(n)` -/
def P1348110116562870347.Spec : Prop :=
  ∀ n, P1348110116562870347.a n = A196836 n

end A196836

/-! ## A196836.P13445776270550320323

`A242985(n)-A134168(n)`
-/

namespace A196836.P13445776270550320323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242985 n - A134168 n

end

end A196836.P13445776270550320323

namespace A196836

/-- `A242985(n)-A134168(n)` -/
def P13445776270550320323.Spec : Prop :=
  ∀ n, P13445776270550320323.a n = A196836 n

end A196836

/-! ## A196836.P1299365534533407724

`A084869(n)+A053156(n+1)`
-/

namespace A196836.P1299365534533407724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084869 n + A053156 (n + 1)

end

end A196836.P1299365534533407724

namespace A196836

/-- `A084869(n)+A053156(n+1)` -/
def P1299365534533407724.Spec : Prop :=
  ∀ n, P1299365534533407724.a n = A196836 n

end A196836

/-! ## A196836.P6477069755810098707

`A007581(n+1)-A056473(2*n+1)`
-/

namespace A196836.P6477069755810098707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007581 (n + 1) - A056473 (2 * n + 1)

end

end A196836.P6477069755810098707

namespace A196836

/-- `A007581(n+1)-A056473(2*n+1)` -/
def P6477069755810098707.Spec : Prop :=
  ∀ n, P6477069755810098707.a n = A196836 n

end A196836

/-! ## A196836.P5581573827251905011

`A007581(n+1)-A056510(2*n+1)`
-/

namespace A196836.P5581573827251905011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007581 (n + 1) - A056510 (2 * n + 1)

end

end A196836.P5581573827251905011

namespace A196836

/-- `A007581(n+1)-A056510(2*n+1)` -/
def P5581573827251905011.Spec : Prop :=
  ∀ n, P5581573827251905011.a n = A196836 n

end A196836

/-! ## A196836.P16439683246544952002

`A000079(n)+A094375(n)-A003462(n)`
-/

namespace A196836.P16439683246544952002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n + (A094375 n - A003462 n)

end

end A196836.P16439683246544952002

namespace A196836

/-- `A000079(n)+A094375(n)-A003462(n)` -/
def P16439683246544952002.Spec : Prop :=
  ∀ n, P16439683246544952002.a n = A196836 n

end A196836

/-! ## A196836.P5684046670367010994

`A094373(n+1)+A006516(n)+A003462(n)`
-/

namespace A196836.P5684046670367010994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094373 (n + 1) + (A006516 n + A003462 n)

end

end A196836.P5684046670367010994

namespace A196836

/-- `A094373(n+1)+A006516(n)+A003462(n)` -/
def P5684046670367010994.Spec : Prop :=
  ∀ n, P5684046670367010994.a n = A196836 n

end A196836

/-!
# A196837: Coefficient table of numerator polynomials of o.g.f.s for partial sums of powers of positive integers.

The programs for A196837, there is no canonical definition to state claims against.
-/

/-! ## A196837.P14719737824410489296

`(C(comp[∑[n]]-n, 2)-n)*A008276(comp[∑[n]])`
-/

namespace A196837.P14719737824410489296
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ)) * A008276 (SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n)

end

end A196837.P14719737824410489296

/-! ## A196837.P15471434864243483716

`A004736(n+1)*A008276(comp[∑[n]])`
-/

namespace A196837.P15471434864243483716
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) * A008276 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A196837.P15471434864243483716

/-! ## A196837.P13260913191662818834

`(A025581(n)+1)*A008276(comp[∑[n]])`
-/

namespace A196837.P13260913191662818834
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A025581 n + 1) * A008276 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A196837.P13260913191662818834

/-! ## A196837.P1818059226269538047

`(A099375(n)+1)/2*A008276(comp[∑[n]])`
-/

namespace A196837.P1818059226269538047
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099375 n + 1 : ℚ) / 2 * (A008276 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) : ℚ)

end

end A196837.P1818059226269538047

/-! ## A196837.P374294405542010057

`(A004202(n+1)-(2*n+1))*A008276(comp[∑[n]])`
-/

namespace A196837.P374294405542010057
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004202 (n + 1) - (2 * n + 1 : ℤ)) * A008276 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A196837.P374294405542010057

/-! ## A196837.P3729033289980606820

`A008276(A014132(n+1))*(A025581(n)+1)`
-/

namespace A196837.P3729033289980606820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008276 (A014132 (n + 1)).toNat * (A025581 n + 1)

end

end A196837.P3729033289980606820

/-! ## A196837.P11771165646444103590

`A002260(A038722(n+1))*A008276(A014132(n+1))`
-/

namespace A196837.P11771165646444103590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A038722 (n + 1)).toNat * A008276 (A014132 (n + 1)).toNat

end

end A196837.P11771165646444103590

/-! ## A196837.P15025054879147241232

`A033999(A002262(n))*A074246(A038722(n+1))`
-/

namespace A196837.P15025054879147241232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A002262 n).toNat * A074246 (A038722 (n + 1)).toNat

end

end A196837.P15025054879147241232

/-! ## A196837.P15142289891355276034

`A009531(A158405(n+1))*A074246(A038722(n+1))`
-/

namespace A196837.P15142289891355276034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009531 (A158405 (n + 1)).toNat * A074246 (A038722 (n + 1)).toNat

end

end A196837.P15142289891355276034

/-! ## A196837.P14676508496082996428

`A000005(A130321(n))*A008276(A014132(n+1))`
-/

namespace A196837.P14676508496082996428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A130321 n).toNat * A008276 (A014132 (n + 1)).toNat

end

end A196837.P14676508496082996428

/-!
# A196838: Numerators of coefficients of Bernoulli polynomials with rising powers of the variable.

The programs for A196838, there is no canonical definition to state claims against.
-/

/-! ## A196838.P13207134791833329602

`A053382(A061579(n))`
-/

namespace A196838.P13207134791833329602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053382 (A061579 n).toNat

end

end A196838.P13207134791833329602

/-! ## A196838.P15889010414565915137

`A053382(A114327(n)+n)`
-/

namespace A196838.P15889010414565915137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053382 (A114327 n + (n : ℤ)).toNat

end

end A196838.P15889010414565915137

/-! ## A196838.P7548631217697906045

`A053382(A038722(n+1)-1)`
-/

namespace A196838.P7548631217697906045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053382 (A038722 (n + 1) - 1).toNat

end

end A196838.P7548631217697906045

/-! ## A196838.P6779400988130993323

`A053382(A002378(n)%A014132(n+1))`
-/

namespace A196838.P6779400988130993323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053382 (Int.tmod (A002378 n) (A014132 (n + 1))).toNat

end

end A196838.P6779400988130993323

/-! ## A196838.P15924160769575094188

`A053382(A038722(n+2))`
-/

namespace A196838.P15924160769575094188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053382 (A038722 (n + 2)).toNat

end

end A196838.P15924160769575094188

/-!
# A196839: Triangle of denominators of the coefficient of x^m in the n-th Bernoulli polynomial, 0 <= m <= n.

The programs for A196839, there is no canonical definition to state claims against.
-/

/-! ## A196839.P15241420061835258358

`A053383(∑[2*n]%comp[∑[n]])`
-/

namespace A196839.P15241420061835258358
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053383 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A196839.P15241420061835258358

/-! ## A196839.P2182592767729138042

`A053383(A061579(n))`
-/

namespace A196839.P2182592767729138042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053383 (A061579 n).toNat

end

end A196839.P2182592767729138042

/-! ## A196839.P12639914246773443968

`A053383(A114327(n)+n)`
-/

namespace A196839.P12639914246773443968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053383 (A114327 n + (n : ℤ)).toNat

end

end A196839.P12639914246773443968

/-! ## A196839.P2852478930001343422

`A053383(A038722(n+1)-1)`
-/

namespace A196839.P2852478930001343422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053383 (A038722 (n + 1) - 1).toNat

end

end A196839.P2852478930001343422

/-! ## A196839.P14237725434178818083

`A053383(A038722(n+2))`
-/

namespace A196839.P14237725434178818083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053383 (A038722 (n + 2)).toNat

end

end A196839.P14237725434178818083

/-!
# A196840: Numerators of coefficients of the polynomials in n of the sums of powers of the first n positive integers.

The programs for A196840, there is no canonical definition to state claims against.
-/

/-! ## A196840.P11210973868023962402

`A162298(n)%8`
-/

namespace A196840.P11210973868023962402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A162298 n) 8

end

end A196840.P11210973868023962402

/-! ## A196840.P16193522645194374840

`A162298(n*ceil(n/98))`
-/

namespace A196840.P16193522645194374840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162298 ((n : ℤ) * ⌈(n : ℚ) / 98⌉).toNat

end

end A196840.P16193522645194374840

/-! ## A196840.P10038461527484493941

`A162298(n)^A178334(n)`
-/

namespace A196840.P10038461527484493941
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A162298 n : ℚ) ^ (A178334 n : ℤ)

end

end A196840.P10038461527484493941

/-! ## A196840.P17069095164505536921

`A162298(n)^A178489(n)`
-/

namespace A196840.P17069095164505536921
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A162298 n : ℚ) ^ (A178489 n : ℤ)

end

end A196840.P17069095164505536921

/-! ## A196840.P657114896501264973

`or(A112316(n), A162298(n))`
-/

namespace A196840.P657114896501264973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A112316 n) (A162298 n)

end

end A196840.P657114896501264973

/-! ## A196840.P11863119410049365907

`or(A151933(n), A162298(n))`
-/

namespace A196840.P11863119410049365907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A151933 n) (A162298 n)

end

end A196840.P11863119410049365907

/-! ## A196840.P13155492457704141149

`or(A162298(n), A178333(n))`
-/

namespace A196840.P13155492457704141149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A162298 n) (A178333 n)

end

end A196840.P13155492457704141149

/-! ## A196840.P4823875077012779010

`or(char[A000045(n)], A162298(n))`
-/

namespace A196840.P4823875077012779010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A162298 n)

end

end A196840.P4823875077012779010

/-! ## A196840.P103542000578228452

`or(char[A000150(n)], A162298(n))`
-/

namespace A196840.P103542000578228452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000150 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A162298 n)

end

end A196840.P103542000578228452

/-! ## A196840.P15534012350767688817

`or(char[A000698(n)], A162298(n))`
-/

namespace A196840.P15534012350767688817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000698 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A162298 n)

end

end A196840.P15534012350767688817

/-!
# A196841: Table of the elementary symmetric functions a_k(1,3,4,...,n+1).

The programs for A196841, there is no canonical definition to state claims against.
-/

/-! ## A196841.P86422560865355707

`abs(A123319(∑[2*n]%comp[∑[n]]))`
-/

namespace A196841.P86422560865355707
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A123319 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)|

end

end A196841.P86422560865355707

/-! ## A196841.P2874051175156431624

`abs(A123319(A061579(n)))`
-/

namespace A196841.P2874051175156431624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A123319 (A061579 n).toNat|

end

end A196841.P2874051175156431624

/-! ## A196841.P8214424235247252129

`abs(A123319(A114327(n)+n))`
-/

namespace A196841.P8214424235247252129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A123319 (A114327 n + (n : ℤ)).toNat|

end

end A196841.P8214424235247252129

/-! ## A196841.P99092050448638152

`abs(A123319(A038722(n+1)-1))`
-/

namespace A196841.P99092050448638152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A123319 (A038722 (n + 1) - 1).toNat|

end

end A196841.P99092050448638152

/-! ## A196841.P12427471367824356834

`gcd(A008683(4*(n+1)), A123319(A061579(n)))`
-/

namespace A196841.P12427471367824356834
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008683 (4 * (n + 1))) (A123319 (A061579 n).toNat)

end

end A196841.P12427471367824356834

/-!
# A196843: Table of the elementary symmetric functions a_k(1,2,3,5,6...n+1) (missing 4).

The programs for A196843, there is no canonical definition to state claims against.
-/

/-! ## A196843.P16384731991777195596

`A342191(A156367(n))`
-/

namespace A196843.P16384731991777195596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342191 (A156367 n).toNat

end

end A196843.P16384731991777195596

/-! ## A196843.P9702842265840166343

`A325863(∑{p}[A033878(n), #])`
-/

namespace A196843.P9702842265840166343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033878 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325863 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A196843.P9702842265840166343

/-! ## A196843.P1261292321305723197

`A347578(A347630(n+3)+A347580(n+1))`
-/

namespace A196843.P1261292321305723197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347578 (A347630 (n + 3) + A347580 (n + 1)).toNat

end

end A196843.P1261292321305723197

/-! ## A196843.P10110438091578291563

`A369054(A034691(n+1))+A130534(A061579(n))`
-/

namespace A196843.P10110438091578291563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369054 (A034691 (n + 1)).toNat + A130534 (A061579 n).toNat

end

end A196843.P10110438091578291563

/-! ## A196843.P8455240399279898787

`A369054(A034691(n+1))+A132393(A380649(n+1)+1)`
-/

namespace A196843.P8455240399279898787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369054 (A034691 (n + 1)).toNat + A132393 (A380649 (n + 1) + 1).toNat

end

end A196843.P8455240399279898787

/-!
# A196844: Table of the elementary symmetric functions a_k(1,2,3,4,6,...,n+1) (5 missing).

The programs for A196844, there is no canonical definition to state claims against.
-/

/-! ## A196844.P6852264706987135954

`(A094638(n+1)+char[16])%Δ[A055161(n)]`
-/

namespace A196844.P6852264706987135954
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055161 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A094638 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)) (f2 (n + 1) - f2 n)

end

end A196844.P6852264706987135954

/-! ## A196844.P3528441862537428080

`A094638(n+1)+A010051(A022177(n))`
-/

namespace A196844.P3528441862537428080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094638 (n + 1) + A010051 (A022177 n).toNat

end

end A196844.P3528441862537428080

/-! ## A196844.P8471311010139860832

`A094638(n+1)+A044941(A000079(n))`
-/

namespace A196844.P8471311010139860832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094638 (n + 1) + A044941 (A000079 n).toNat

end

end A196844.P8471311010139860832

/-! ## A196844.P4594820881255229460

`A094638(n+1)+A025466(A022171(n))`
-/

namespace A196844.P4594820881255229460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094638 (n + 1) + A025466 (A022171 n).toNat

end

end A196844.P4594820881255229460

/-! ## A196844.P5635735186839662790

`A094638(n+1)+A025465(A036426(n))`
-/

namespace A196844.P5635735186839662790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094638 (n + 1) + A025465 (A036426 n).toNat

end

end A196844.P5635735186839662790

/-!
# A196845: Table of elementary symmetric function a_k(3,4,...,n+2) (no 1 and 2).

The programs for A196845, there is no canonical definition to state claims against.
-/

/-! ## A196845.P13409206340011798230

`A143492(∑[char[∑[n]]]²-n+2)`
-/

namespace A196845.P13409206340011798230
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143492 ((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - (n : ℤ) + 2).toNat

end

end A196845.P13409206340011798230

/-! ## A196845.P17510755649529654166

`abs(A049458(∑[2*n]%comp[∑[n]]))`
-/

namespace A196845.P17510755649529654166
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A049458 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)|

end

end A196845.P17510755649529654166

/-! ## A196845.P2439385347570806448

`abs(A049458(A061579(n)))`
-/

namespace A196845.P2439385347570806448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A049458 (A061579 n).toNat|

end

end A196845.P2439385347570806448

/-! ## A196845.P16231692603411737044

`abs(A049458(A038722(n+1)-1))`
-/

namespace A196845.P16231692603411737044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A049458 (A038722 (n + 1) - 1).toNat|

end

end A196845.P16231692603411737044

/-! ## A196845.P2087200777515104681

`gcd(A000038(n), A049458(A061579(n)))`
-/

namespace A196845.P2087200777515104681
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A049458 (A061579 n).toNat)

end

end A196845.P2087200777515104681

/-! ## A196845.P5744536348003843171

`lcm(A020985(n), A049458(A061579(n)))`
-/

namespace A196845.P5744536348003843171
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A049458 (A061579 n).toNat)

end

end A196845.P5744536348003843171

/-! ## A196845.P16352749753206420458

`A008836(A059268(n))*A049458(A061579(n))`
-/

namespace A196845.P16352749753206420458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (A059268 n).toNat * A049458 (A061579 n).toNat

end

end A196845.P16352749753206420458

/-!
# A196849: Number of n X n 0..4 arrays with each element x equal to the number of its horizontal and vertical neighbors equal to 3,1,0,2,4 for x=0,1,2,3,4.

The programs for A196849, there is no canonical definition to state claims against.
-/

/-! ## A196849.P9435611618759972122

`A196856(∑[4*n]+1)`
-/

namespace A196849.P9435611618759972122
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196856 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A196849.P9435611618759972122

/-! ## A196849.P15393140378806499937

`record[(1-abs(round(sqrt(2*(n+1)))²-(2*n+1)))*A196856(n+1)]`
-/

namespace A196849.P15393140378806499937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - |SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ)) ^ 2 - (2 * n + 1 : ℤ)|) * A196856 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A196849.P15393140378806499937

/-! ## A196849.P5736889820404031167

`∑{digits}[n, A196856(A001844(#))]`
-/

namespace A196849.P5736889820404031167
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A196856 (A001844 x).toNat).sum

end

end A196849.P5736889820404031167

/-! ## A196849.P17992447626466143683

`record[A196856(Δ[A235355(n)])]`
-/

namespace A196849.P17992447626466143683
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196856 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A196849.P17992447626466143683

/-!
# A196850: Number of n X 2 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 3,1,0,2,4 for x=0,1,2,3,4.

The programs for A196850, there is no canonical definition to state claims against.
-/

/-! ## A196850.P3661889494936931648

`A196856(∑[n+1]+2)`
-/

namespace A196850.P3661889494936931648
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196856 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A196850.P3661889494936931648

/-! ## A196850.P3950366443286750830

`A196950(∑[n+1]+2)`
-/

namespace A196850.P3950366443286750830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196950 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A196850.P3950366443286750830

/-! ## A196850.P7127011645336752454

`record[A196950(abs(A201163(n)))]`
-/

namespace A196850.P7127011645336752454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196950 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A196850.P7127011645336752454

/-! ## A196850.P5192471597832699058

`record[A196856(Δ[A003453(n+5)])]`
-/

namespace A196850.P5192471597832699058
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196856 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A196850.P5192471597832699058

/-! ## A196850.P14510694432741957911

`record[A196950(Δ[A003453(n+5)])]`
-/

namespace A196850.P14510694432741957911
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196950 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A196850.P14510694432741957911

/-!
# A196851: Number of n X 3 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 3,1,0,2,4 for x=0,1,2,3,4.

The programs for A196851, there is no canonical definition to state claims against.
-/

/-! ## A196851.P4661902476418786707

`A196856(∑[n+2]+4)`
-/

namespace A196851.P4661902476418786707
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196856 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A196851.P4661902476418786707

/-! ## A196851.P4331275853303870310

`lcm((-1)^n, A196856(A167614(n+1)))`
-/

namespace A196851.P4331275853303870310
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A196856 (A167614 (n + 1)).toNat)

end

end A196851.P4331275853303870310

/-! ## A196851.P2080850465124470626

`A196856(A167614(n+1))+A185284(n)`
-/

namespace A196851.P2080850465124470626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196856 (A167614 (n + 1)).toNat + A185284 n

end

end A196851.P2080850465124470626

/-! ## A196851.P5748825823350119651

`A015930(n)*A196856(A167614(n+1))`
-/

namespace A196851.P5748825823350119651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015930 n * A196856 (A167614 (n + 1)).toNat

end

end A196851.P5748825823350119651

/-! ## A196851.P7281889016925337411

`A196856(A167614(n+1))%A332176(n)`
-/

namespace A196851.P7281889016925337411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A196856 (A167614 (n + 1)).toNat) (A332176 n)

end

end A196851.P7281889016925337411

/-!
# A196852: Number of nX4 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 3,1,0,2,4 for x=0,1,2,3,4.

The programs for A196852, there is no canonical definition to state claims against.
-/

/-! ## A196852.P4796824926255253699

`A196856(A374004(n+1))`
-/

namespace A196852.P4796824926255253699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196856 (A374004 (n + 1)).toNat

end

end A196852.P4796824926255253699

/-! ## A196852.P13081713305100416665

`A196856(A052905(n)+9)`
-/

namespace A196852.P13081713305100416665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196856 (A052905 n + 9).toNat

end

end A196852.P13081713305100416665

/-! ## A196852.P2884370018338719933

`A196856(A055999(n)+10)`
-/

namespace A196852.P2884370018338719933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196856 (A055999 n + 10).toNat

end

end A196852.P2884370018338719933

/-! ## A196852.P310002350712055025

`A196856(A167614(n+2)+1)`
-/

namespace A196852.P310002350712055025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196856 (A167614 (n + 2) + 1).toNat

end

end A196852.P310002350712055025

/-! ## A196852.P2554692955678874911

`A196856(A034856(n+2)+6)`
-/

namespace A196852.P2554692955678874911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196856 (A034856 (n + 2) + 6).toNat

end

end A196852.P2554692955678874911

/-!
# A196853: Number of nX5 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 3,1,0,2,4 for x=0,1,2,3,4.

The programs for A196853, there is no canonical definition to state claims against.
-/

/-! ## A196853.P18201075137039009072

`A196856(A374005(n+1))`
-/

namespace A196853.P18201075137039009072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196856 (A374005 (n + 1)).toNat

end

end A196853.P18201075137039009072

/-! ## A196853.P15085568805207378266

`A196856(A155212(n)+13)`
-/

namespace A196853.P15085568805207378266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196856 (A155212 n + 13).toNat

end

end A196853.P15085568805207378266

/-! ## A196853.P13725017788529110661

`A196856(A167614(n+3)+2)`
-/

namespace A196853.P13725017788529110661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196856 (A167614 (n + 3) + 2).toNat

end

end A196853.P13725017788529110661

/-! ## A196853.P10246313793336598844

`A196856(A046691(n+2)+9)`
-/

namespace A196853.P10246313793336598844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196856 (A046691 (n + 2) + 9).toNat

end

end A196853.P10246313793336598844

/-! ## A196853.P16962135324735873225

`A196856(A051936(n+4)+14)`
-/

namespace A196853.P16962135324735873225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196856 (A051936 (n + 4) + 14).toNat

end

end A196853.P16962135324735873225

/-!
# A196854: Number of nX6 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 3,1,0,2,4 for x=0,1,2,3,4.

The programs for A196854, there is no canonical definition to state claims against.
-/

/-! ## A196854.P14077462225565088137

`A196856(A374007(n+1))`
-/

namespace A196854.P14077462225565088137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196856 (A374007 (n + 1)).toNat

end

end A196854.P14077462225565088137

/-! ## A196854.P4808531912761156443

`A196856(A052905(n+3))`
-/

namespace A196854.P4808531912761156443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196856 (A052905 (n + 3)).toNat

end

end A196854.P4808531912761156443

/-! ## A196854.P10349345683350670191

`A196856(eq[3, A219347(n)])`
-/

namespace A196854.P10349345683350670191
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196856 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196854.P10349345683350670191

/-! ## A196854.P16936852684282762773

`A196856(eq[5, A193592(n)])`
-/

namespace A196854.P16936852684282762773
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196856 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196854.P16936852684282762773

/-! ## A196854.P825531030215650

`A196856(A055999(n+3)+1)`
-/

namespace A196854.P825531030215650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196856 (A055999 (n + 3) + 1).toNat

end

end A196854.P825531030215650

/-!
# A196855: Number of nX7 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 3,1,0,2,4 for x=0,1,2,3,4.

The programs for A196855, there is no canonical definition to state claims against.
-/

/-! ## A196855.P2983938428709511524

`A196856(A374008(n+1))`
-/

namespace A196855.P2983938428709511524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196856 (A374008 (n + 1)).toNat

end

end A196855.P2983938428709511524

/-! ## A196855.P1524396492561563046

`A196856(A000096(n+5)+8)`
-/

namespace A196855.P1524396492561563046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196856 (A000096 (n + 5) + 8).toNat

end

end A196855.P1524396492561563046

/-! ## A196855.P15284420580855881784

`A196856(eq[8, A131818(n+1)])`
-/

namespace A196855.P15284420580855881784
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196856 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196855.P15284420580855881784

/-! ## A196855.P2428358030088097933

`A196856(A046691(n+6)-4-2*n)`
-/

namespace A196855.P2428358030088097933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196856 (A046691 (n + 6) - 4 - (2 * n : ℤ)).toNat

end

end A196855.P2428358030088097933

/-! ## A196855.P4721917429131912081

`A196856(A055999(n+4))`
-/

namespace A196855.P4721917429131912081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196856 (A055999 (n + 4)).toNat

end

end A196855.P4721917429131912081

/-!
# A196856: T(n,k)=Number of nXk 0..4 arrays with each element x equal to the number of its horizontal and vertical neighbors equal to 3,1,0,2,4 for x=0,1,2,3,4.

The programs for A196856, there is no canonical definition to state claims against.
-/

/-! ## A196856.P13653850302596703226

`xor(A196950(n+1), A334045(A022166(n)))`
-/

namespace A196856.P13653850302596703226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A196950 (n + 1)) (A334045 (A022166 n).toNat)

end

end A196856.P13653850302596703226

/-! ## A196856.P13613361472029156086

`A196707(n+1)-A102683(A001405(n))`
-/

namespace A196856.P13613361472029156086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196707 (n + 1) - A102683 (A001405 n).toNat

end

end A196856.P13613361472029156086

/-! ## A196856.P15157956023440098897

`A196707(n+1)-A102683(A081668(n))`
-/

namespace A196856.P15157956023440098897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196707 (n + 1) - A102683 (A081668 n).toNat

end

end A196856.P15157956023440098897

/-! ## A196856.P412598842634202896

`A196707(n+1)-A156659(A174616(n))`
-/

namespace A196856.P412598842634202896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196707 (n + 1) - A156659 (A174616 n).toNat

end

end A196856.P412598842634202896

/-! ## A196856.P6941768415229489541

`A196707(n+1)-A262693(A101127(n))`
-/

namespace A196856.P6941768415229489541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196707 (n + 1) - A262693 (A101127 n).toNat

end

end A196856.P6941768415229489541

/-!
# A196857: Number of n X n 0..4 arrays with each element x equal to the number of its horizontal and vertical neighbors equal to 3,4,2,0,1 for x=0,1,2,3,4.

The programs for A196857, there is no canonical definition to state claims against.
-/

/-! ## A196857.P12781967879500889526

`A196863(∑[4*n]+1)`
-/

namespace A196857.P12781967879500889526
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196863 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A196857.P12781967879500889526

/-! ## A196857.P668154942072727453

`record[(1-abs(round(sqrt(2*(n+1)))²-(2*n+1)))*A196863(n+1)]`
-/

namespace A196857.P668154942072727453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - |SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ)) ^ 2 - (2 * n + 1 : ℤ)|) * A196863 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A196857.P668154942072727453

/-! ## A196857.P11557889503613713992

`record[A196863(Δ[A235355(n)])]`
-/

namespace A196857.P11557889503613713992
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196863 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A196857.P11557889503613713992

/-! ## A196857.P6904165660209858243

`record[A196863(A265225(n)+1)]`
-/

namespace A196857.P6904165660209858243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196863 (A265225 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A196857.P6904165660209858243

/-! ## A196857.P16886767744419104896

`record[A196863(A272267(n+1))]`
-/

namespace A196857.P16886767744419104896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196863 (A272267 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A196857.P16886767744419104896

/-!
# A196858: Number of n X 3 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 3,4,2,0,1 for x=0,1,2,3,4.

The programs for A196858, there is no canonical definition to state claims against.
-/

/-! ## A196858.P5247789224327682389

`A196863(∑[n+2]+4)`
-/

namespace A196858.P5247789224327682389
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196863 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A196858.P5247789224327682389

/-! ## A196858.P16975873783749554838

`record[A010054(n)*A196863(n+3)]`
-/

namespace A196858.P16975873783749554838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A196863 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A196858.P16975873783749554838

/-! ## A196858.P9724777004125381025

`A196863(A167614(n+1))+A185284(n)`
-/

namespace A196858.P9724777004125381025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196863 (A167614 (n + 1)).toNat + A185284 n

end

end A196858.P9724777004125381025

/-! ## A196858.P9449488795494060702

`A277165(n)+A196863(A167614(n+1))`
-/

namespace A196858.P9449488795494060702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277165 n + A196863 (A167614 (n + 1)).toNat

end

end A196858.P9449488795494060702

/-! ## A196858.P2894323743074138250

`A196863(A167614(n+1))%A016936(n)`
-/

namespace A196858.P2894323743074138250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A196863 (A167614 (n + 1)).toNat) (A016936 n)

end

end A196858.P2894323743074138250

/-!
# A196859: Number of n X 4 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 3,4,2,0,1 for x=0,1,2,3,4.

The programs for A196859, there is no canonical definition to state claims against.
-/

/-! ## A196859.P3835934382679029068

`A196863(A374004(n+1))`
-/

namespace A196859.P3835934382679029068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196863 (A374004 (n + 1)).toNat

end

end A196859.P3835934382679029068

/-! ## A196859.P12856419401604440370

`A196863(A052905(n)+9)`
-/

namespace A196859.P12856419401604440370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196863 (A052905 n + 9).toNat

end

end A196859.P12856419401604440370

/-! ## A196859.P11692568245930483092

`A196863(A055999(n)+10)`
-/

namespace A196859.P11692568245930483092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196863 (A055999 n + 10).toNat

end

end A196859.P11692568245930483092

/-! ## A196859.P3829863062681808987

`A196863(A167614(n+2)+1)`
-/

namespace A196859.P3829863062681808987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196863 (A167614 (n + 2) + 1).toNat

end

end A196859.P3829863062681808987

/-! ## A196859.P1773689105794246720

`A196863(A000124(n+3)+3)`
-/

namespace A196859.P1773689105794246720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196863 (A000124 (n + 3) + 3).toNat

end

end A196859.P1773689105794246720

/-!
# A196860: Number of nX5 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 3,4,2,0,1 for x=0,1,2,3,4.

The programs for A196860, there is no canonical definition to state claims against.
-/

/-! ## A196860.P16827432723573121385

`A196863(A374005(n+1))`
-/

namespace A196860.P16827432723573121385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196863 (A374005 (n + 1)).toNat

end

end A196860.P16827432723573121385

/-! ## A196860.P16838698199425526223

`A196863(A167499(n+3))`
-/

namespace A196860.P16838698199425526223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196863 (A167499 (n + 3)).toNat

end

end A196860.P16838698199425526223

/-! ## A196860.P3349530548438098551

`A196863(A056000(n)+15)`
-/

namespace A196860.P3349530548438098551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196863 (A056000 n + 15).toNat

end

end A196860.P3349530548438098551

/-! ## A196860.P12783928831316948296

`A196863(A000124(n+4)+4)`
-/

namespace A196860.P12783928831316948296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196863 (A000124 (n + 4) + 4).toNat

end

end A196860.P12783928831316948296

/-! ## A196860.P767464687671131460

`A196863(A000096(n+3)+6)`
-/

namespace A196860.P767464687671131460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196863 (A000096 (n + 3) + 6).toNat

end

end A196860.P767464687671131460

/-!
# A196861: Number of nX6 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 3,4,2,0,1 for x=0,1,2,3,4.

The programs for A196861, there is no canonical definition to state claims against.
-/

/-! ## A196861.P12159096536929855849

`A196863(A374007(n+1))`
-/

namespace A196861.P12159096536929855849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196863 (A374007 (n + 1)).toNat

end

end A196861.P12159096536929855849

/-! ## A196861.P6792781470425196793

`A196863(A000096(n+4)+7)`
-/

namespace A196861.P6792781470425196793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196863 (A000096 (n + 4) + 7).toNat

end

end A196861.P6792781470425196793

/-! ## A196861.P11380671340776741386

`A196863(A000217(n+5)+6)`
-/

namespace A196861.P11380671340776741386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196863 (A000217 (n + 5) + 6).toNat

end

end A196861.P11380671340776741386

/-! ## A196861.P11360773233155300558

`A196863(A034856(n+4)+8)`
-/

namespace A196861.P11360773233155300558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196863 (A034856 (n + 4) + 8).toNat

end

end A196861.P11360773233155300558

/-! ## A196861.P9441573835433887150

`A196863(A000124(n+6)-(n+1))`
-/

namespace A196861.P9441573835433887150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196863 (A000124 (n + 6) - (n + 1 : ℤ)).toNat

end

end A196861.P9441573835433887150

/-!
# A196862: Number of nX7 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 3,4,2,0,1 for x=0,1,2,3,4.

The programs for A196862, there is no canonical definition to state claims against.
-/

/-! ## A196862.P10844138814232375579

`A196863(A374008(n+1))`
-/

namespace A196862.P10844138814232375579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196863 (A374008 (n + 1)).toNat

end

end A196862.P10844138814232375579

/-! ## A196862.P5992526662455961719

`A196863(A056119(n)+28)`
-/

namespace A196862.P5992526662455961719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196863 (A056119 n + 28).toNat

end

end A196862.P5992526662455961719

/-! ## A196862.P16053656604517045151

`A196863(A167499(n+5)+2)`
-/

namespace A196862.P16053656604517045151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196863 (A167499 (n + 5) + 2).toNat

end

end A196862.P16053656604517045151

/-! ## A196862.P18374221165415743112

`A196863(A000124(n+6)+6)`
-/

namespace A196862.P18374221165415743112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196863 (A000124 (n + 6) + 6).toNat

end

end A196862.P18374221165415743112

/-! ## A196862.P17562601224758574465

`A196863(A000217(n+6)+7)`
-/

namespace A196862.P17562601224758574465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196863 (A000217 (n + 6) + 7).toNat

end

end A196862.P17562601224758574465

/-!
# A196863: T(n,k)=Number of nXk 0..4 arrays with each element x equal to the number of its horizontal and vertical neighbors equal to 3,4,2,0,1 for x=0,1,2,3,4.

The programs for A196863, there is no canonical definition to state claims against.
-/

/-! ## A196863.P17735201090643501210

`A151815(or(1, n))!*A295300(A196922(n+1))`
-/

namespace A196863.P17735201090643501210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A151815 (Nat.lor 1 n)).toNat : ℤ) * A295300 (A196922 (n + 1)).toNat

end

end A196863.P17735201090643501210

/-! ## A196863.P11203039446175498781

`A295300(A196922(n+1))+A118917((9*n)²)`
-/

namespace A196863.P11203039446175498781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295300 (A196922 (n + 1)).toNat + A118917 ((9 * n) ^ 2)

end

end A196863.P11203039446175498781

/-! ## A196863.P7804707697157140368

`A001222(A000043(n+1))*A295300(A196922(n+1))`
-/

namespace A196863.P7804707697157140368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A000043 (n + 1)).toNat * A295300 (A196922 (n + 1)).toNat

end

end A196863.P7804707697157140368

/-! ## A196863.P16458898776222772366

`A196922(n+1)-A185264(A196922(n+1))`
-/

namespace A196863.P16458898776222772366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196922 (n + 1) - A185264 (A196922 (n + 1)).toNat

end

end A196863.P16458898776222772366

/-! ## A196863.P8320174104166201360

`A098452(A196922(n+1))`
-/

namespace A196863.P8320174104166201360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098452 (A196922 (n + 1)).toNat

end

end A196863.P8320174104166201360

/-!
# A196868: G.f. A(x) satisfies: A(x)^2 + A(-x)^2 = 2 and A(x)^3 - A(-x)^3 = 36*x.

The programs for A196868, there is no canonical definition to state claims against.
-/

/-! ## A196868.P14879570686730204802

`A118271(A326093(n)+n)`
-/

namespace A196868.P14879570686730204802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118271 (A326093 n + (n : ℤ)).toNat

end

end A196868.P14879570686730204802

/-!
# A196869: G.f. A(x) satisfies: A(x)^3 + A(-x)^3 = 2 and A(x)^2 - A(-x)^2 = 24*x.

The programs for A196869, there is no canonical definition to state claims against.
-/

/-! ## A196869.P5577582517196303162

`6^n*A111786(A282453(n))`
-/

namespace A196869.P5577582517196303162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 ^ n : ℤ) * A111786 (A282453 n).toNat

end

end A196869.P5577582517196303162

/-! ## A196869.P10342997476642552004

`A000400(n)*A117162(A000293(n))`
-/

namespace A196869.P10342997476642552004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000400 n * A117162 (A000293 n).toNat

end

end A196869.P10342997476642552004

/-!
# A196870: a(n+1) = A001610(n)*a(n).

The programs for A196870, there is no canonical definition to state claims against.
-/

/-! ## A196870.P8507138534840803112

`∏[round(∑[ϕ^(n-1)])]`
-/

namespace A196870.P8507138534840803112
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.goldenRatio ^ ((n : ℤ) - 1 : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A196870.P8507138534840803112

/-! ## A196870.P15298461131793793039

`abs(∏[-A324015(n+1)])`
-/

namespace A196870.P15298461131793793039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A324015 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∏ j ∈ Finset.range (n + 1), f1 j|

end

end A196870.P15298461131793793039

/-! ## A196870.P17239745765343808730

`a(n-1)*A001610(n)` with `a(0)=1`
-/

namespace A196870.P17239745765343808730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A001610 n

end

end A196870.P17239745765343808730

/-! ## A196870.P6385681653521010519

`(A000032(n+1)-1)*a(n-1)` with `a(0)=1`
-/

namespace A196870.P6385681653521010519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (A000032 (n + 1) - 1) * a (n - 1)

end

end A196870.P6385681653521010519

/-! ## A196870.P13973569122504193280

`∏[A001610(n+1)]/A001610(n+1)`
-/

namespace A196870.P13973569122504193280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001610 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A001610 (n + 1) : ℚ)

end

end A196870.P13973569122504193280

/-!
# A196871: Numbers having no odd primes in their Collatz (3x+1) trajectory.

The programs for A196871, there is no canonical definition to state claims against.
-/

/-! ## A196871.P12211785082139349426

`∪[A000079(n), A078440(n+1)]`
-/

namespace A196871.P12211785082139349426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078440 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A196871.P12211785082139349426

/-! ## A196871.P17208473067267003088

`lt[A055510(n+1), 1]+1`
-/

namespace A196871.P17208473067267003088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055510 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A196871.P17208473067267003088

/-! ## A196871.P8922861284035090685

`record[gcd(n+1, A055509(n+1))]`
-/

namespace A196871.P8922861284035090685
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A055509 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A196871.P8922861284035090685

/-! ## A196871.P6892945162936945397

`record[A103517(n)/(A078350(n+1)+1)]`
-/

namespace A196871.P6892945162936945397
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A103517 n : ℚ) / (A078350 (n + 1) + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A196871.P6892945162936945397

/-! ## A196871.P10244218020042090625

`record[A103517(n)/A000124(A078350(n+1))]`
-/

namespace A196871.P10244218020042090625
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A103517 n : ℚ) / (A000124 (A078350 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A196871.P10244218020042090625

/-!
# A196872: A007018(n) repeated A007018(n) times.

The programs for A196872, the canonical program `A196872.P11700309351671591619` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A196872 has offset 0).

The definition of A196872 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1353 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A196872.P11700309351671591619

`A000037(a(A103128(n)-1)²)` with `a(0)=1`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A196872

/-- `A000037(a(A103128(n)-1)²)` -/
def P11700309351671591619.Spec : Prop :=
  ∀ n, P11700309351671591619.a n = A196872 n

theorem P11700309351671591619.correct : P11700309351671591619.Spec := by
  intro n
  simp only [A196872]

end A196872

/-!
# A196873: E.g.f. A(x) satisfies: A(x*cos(x)) = 1/cos(x).

The programs for A196873, there is no canonical definition to state claims against.
-/

/-! ## A196873.P13412337433680305745

`A185142(n)/(2*n+1)`
-/

namespace A196873.P13412337433680305745
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185142 n : ℚ) / (2 * n + 1 : ℚ)

end

end A196873.P13412337433680305745

/-! ## A196873.P11517795867629191625

`floor(A185142(n)/A005408(n))`
-/

namespace A196873.P11517795867629191625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A185142 n : ℚ) / (A005408 n : ℚ)⌋

end

end A196873.P11517795867629191625

/-! ## A196873.P2776836535737729021

`or(A127802(n), A185142(n))/A005408(n)`
-/

namespace A196873.P2776836535737729021
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lor (A127802 n) (A185142 n) : ℚ) / (A005408 n : ℚ)

end

end A196873.P2776836535737729021

/-!
# A196874: Smallest prime(k) such that prime(k+n) - prime(k) is a perfect square.

The programs for A196874, there is no canonical definition to state claims against.
-/

/-! ## A196874.P5576754190823980774

`A000040(A196815(n+1))`
-/

namespace A196874.P5576754190823980774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A196815 (n + 1)).toNat

end

end A196874.P5576754190823980774

/-! ## A196874.P10943383098617694181

`A008578(A196815(n+1)+1)`
-/

namespace A196874.P10943383098617694181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A196815 (n + 1) + 1).toNat

end

end A196874.P10943383098617694181

/-! ## A196874.P3864039778126783215

`∑{d}[A196815(n+1), A007444(#)]`
-/

namespace A196874.P3864039778126783215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196815 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007444 d

end

end A196874.P3864039778126783215

/-! ## A196874.P3085187995467167470

`A008864(A196815(n+1))+A008683(A109763(n+1))`
-/

namespace A196874.P3085187995467167470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (A196815 (n + 1)).toNat + A008683 (A109763 (n + 1)).toNat

end

end A196874.P3085187995467167470

/-! ## A196874.P7417330181545996810

`A109763(2*A196815(n+1))`
-/

namespace A196874.P7417330181545996810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109763 (2 * A196815 (n + 1)).toNat

end

end A196874.P7417330181545996810

/-! ## A196874.P4762827718349058114

`A109763(A196815(n+1)+A196815(n+1)-1)`
-/

namespace A196874.P4762827718349058114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109763 (A196815 (n + 1) + (A196815 (n + 1) - 1)).toNat

end

end A196874.P4762827718349058114

/-! ## A196874.P3491448710531021880

`A207790(2*A196815(n+1))`
-/

namespace A196874.P3491448710531021880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207790 (2 * A196815 (n + 1)).toNat

end

end A196874.P3491448710531021880

/-! ## A196874.P9384218857329435651

`A008864(A196815(n+1))-A014963(6*(n+2))`
-/

namespace A196874.P9384218857329435651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (A196815 (n + 1)).toNat - A014963 (6 * (n + 2))

end

end A196874.P9384218857329435651

/-! ## A196874.P17386135693639526970

`A008864(A196815(n+1))-A007318(A008805(n))`
-/

namespace A196874.P17386135693639526970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (A196815 (n + 1)).toNat - A007318 (A008805 n).toNat

end

end A196874.P17386135693639526970

/-!
# A196875: a(n) = a(n-4) + a(n-3) + a(n-2) + a(n-1) + (n-5).

The programs for A196875, the canonical program `A196875.P6494403398003307148` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A196875 has offset 1).

The definition of A196875 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-4)+a(n-3)+a(n-2)+a(n-1)+n-4` (program `A196875.P6494403398003307148`, by `A196875.P6494403398003307148.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A196875.P10013503080091842302

`a(n-1)+a(n-2)+a(n-3)+a(n-4)+n-4` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1`
-/

namespace A196875.P10013503080091842302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 1] fun n a =>
  a (n - 1) + a (n - 2) + a (n - 3) + a (n - 4) + ((n : ℤ) - 4)

end

end A196875.P10013503080091842302

namespace A196875

/-- `a(n-1)+a(n-2)+a(n-3)+a(n-4)+n-4` -/
def P10013503080091842302.Spec : Prop :=
  ∀ n, P10013503080091842302.a n = A196875 (n + 1)

end A196875

/-! ## A196875.P6494403398003307148

`a(n-4)+a(n-3)+a(n-2)+a(n-1)+n-4` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A196875

/-- `a(n-4)+a(n-3)+a(n-2)+a(n-1)+n-4` -/
def P6494403398003307148.Spec : Prop :=
  ∀ n, P6494403398003307148.a n = A196875 (n + 1)

theorem P6494403398003307148.correct : P6494403398003307148.Spec := by
  intro n
  simp only [A196875, Nat.add_sub_cancel]

end A196875

/-! ## A196875.P5507526310813323918

`2*a(n-1)-a(n-5)+1` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=4`
-/

namespace A196875.P5507526310813323918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 1, 4] fun n a =>
  2 * a (n - 1) - a (n - 5) + 1

end

end A196875.P5507526310813323918

namespace A196875

/-- `2*a(n-1)-a(n-5)+1` -/
def P5507526310813323918.Spec : Prop :=
  ∀ n, P5507526310813323918.a n = A196875 (n + 1)

end A196875

/-! ## A196875.P14615786684380605257

`a(n-1)+a(n-1)-a(n-5)+1` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=4`
-/

namespace A196875.P14615786684380605257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 1, 4] fun n a =>
  a (n - 1) + (a (n - 1) - a (n - 5)) + 1

end

end A196875.P14615786684380605257

namespace A196875

/-- `a(n-1)+a(n-1)-a(n-5)+1` -/
def P14615786684380605257.Spec : Prop :=
  ∀ n, P14615786684380605257.a n = A196875 (n + 1)

end A196875

/-! ## A196875.P8693286047802735850

`A000288(n)+A145112(n)-A107066(n)`
-/

namespace A196875.P8693286047802735850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000288 n + (A145112 n - A107066 n)

end

end A196875.P8693286047802735850

namespace A196875

/-- `A000288(n)+A145112(n)-A107066(n)` -/
def P8693286047802735850.Spec : Prop :=
  ∀ n, P8693286047802735850.a n = A196875 (n + 1)

end A196875

/-!
# A196876: a(n) = a(n-no-1)+....+a(n-1)+(n-no-2) where no is the 'no+1'th order of the series and 'n' is the element number, here no=6.

The programs for A196876, there is no canonical definition to state claims against.
-/

/-! ## A196876.P7366789241743897233

`A381508(A023423(n))`
-/

namespace A196876.P7366789241743897233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381508 (A023423 n).toNat

end

end A196876.P7366789241743897233

/-! ## A196876.P4333191478477835355

`A381508(A210544(n+1))`
-/

namespace A196876.P4333191478477835355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381508 (A210544 (n + 1)).toNat

end

end A196876.P4333191478477835355

/-! ## A196876.P9749024498350179034

`A381508(A264791(n+1))`
-/

namespace A196876.P9749024498350179034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381508 (A264791 (n + 1)).toNat

end

end A196876.P9749024498350179034

/-! ## A196876.P3339951757278572987

`A381508(A275074(n+1))`
-/

namespace A196876.P3339951757278572987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381508 (A275074 (n + 1)).toNat

end

end A196876.P3339951757278572987

/-! ## A196876.P11209855235261892301

`A138153(A123526(n+2)-val(A228149(n+1), 2))`
-/

namespace A196876.P11209855235261892301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138153 (A123526 (n + 2) - (SequenceMachineLib.valuation (A228149 (n + 1)).toNat 2 : ℤ)).toNat

end

end A196876.P11209855235261892301

/-!
# A196880: Number of partitions of n^2 into powers of 2.

The programs for A196880, the canonical program `A196880.P17409898485460963205` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A196880 has offset 0).

The definition of A196880 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 363 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A196880.P17409898485460963205

`A000123(floor(n²/2))`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A196880

/-- `A000123(floor(n²/2))` -/
def P17409898485460963205.Spec : Prop :=
  ∀ n, P17409898485460963205.a n = A196880 n

theorem P17409898485460963205.correct : P17409898485460963205.Spec := by
  intro n
  simp only [A196880]

end A196880

/-! ## A196880.P17459214285981631069

`lcm(A000123(A007590(n)), A033999(n))`
-/

namespace A196880.P17459214285981631069
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000123 (A007590 n).toNat) (A033999 n)

end

end A196880.P17459214285981631069

namespace A196880

/-- `lcm(A000123(A007590(n)), A033999(n))` -/
def P17459214285981631069.Spec : Prop :=
  ∀ n, (P17459214285981631069.a n : ℤ) = A196880 n

end A196880

/-! ## A196880.P15172622717413879098

`or(A000007(n), A000123(A007590(n)))`
-/

namespace A196880.P15172622717413879098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A000123 (A007590 n).toNat)

end

end A196880.P15172622717413879098

namespace A196880

/-- `or(A000007(n), A000123(A007590(n)))` -/
def P15172622717413879098.Spec : Prop :=
  ∀ n, P15172622717413879098.a n = A196880 n

end A196880

/-! ## A196880.P14865880811721388746

`A000123(A007590(n))+A000035(2*n)`
-/

namespace A196880.P14865880811721388746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000123 (A007590 n).toNat + A000035 (2 * n)

end

end A196880.P14865880811721388746

namespace A196880

/-- `A000123(A007590(n))+A000035(2*n)` -/
def P14865880811721388746.Spec : Prop :=
  ∀ n, P14865880811721388746.a n = A196880 n

end A196880

/-! ## A196880.P907620503242821617

`A000123(A007590(n))/A033999(n)^A107538(n)`
-/

namespace A196880.P907620503242821617
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000123 (A007590 n).toNat : ℚ) / (A033999 n : ℚ) ^ (A107538 n : ℤ)

end

end A196880.P907620503242821617

namespace A196880

/-- `A000123(A007590(n))/A033999(n)^A107538(n)` -/
def P907620503242821617.Spec : Prop :=
  ∀ n, P907620503242821617.a n = (A196880 n : ℚ)

end A196880

/-! ## A196880.P14158878437173361285

`A000123(A007590(n))/A033999(n)^A324980(n+1)`
-/

namespace A196880.P14158878437173361285
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000123 (A007590 n).toNat : ℚ) / (A033999 n : ℚ) ^ (A324980 (n + 1) : ℤ)

end

end A196880.P14158878437173361285

namespace A196880

/-- `A000123(A007590(n))/A033999(n)^A324980(n+1)` -/
def P14158878437173361285.Spec : Prop :=
  ∀ n, P14158878437173361285.a n = (A196880 n : ℚ)

end A196880

/-! ## A196880.P1192224716133739822

`A000123(A007590(n))/A033999(n)^A324987(n+1)`
-/

namespace A196880.P1192224716133739822
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000123 (A007590 n).toNat : ℚ) / (A033999 n : ℚ) ^ (A324987 (n + 1) : ℤ)

end

end A196880.P1192224716133739822

namespace A196880

/-- `A000123(A007590(n))/A033999(n)^A324987(n+1)` -/
def P1192224716133739822.Spec : Prop :=
  ∀ n, P1192224716133739822.a n = (A196880 n : ℚ)

end A196880

/-! ## A196880.P8252796104640610934

`A000123(A007590(n))%A003418(n+2)`
-/

namespace A196880.P8252796104640610934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000123 (A007590 n).toNat) (A003418 (n + 2))

end

end A196880.P8252796104640610934

namespace A196880

/-- `A000123(A007590(n))%A003418(n+2)` -/
def P8252796104640610934.Spec : Prop :=
  ∀ n, P8252796104640610934.a n = A196880 n

end A196880

/-! ## A196880.P4006629299289522106

`A000123(A007590(n))/A033999(n)^A324981(n+1)`
-/

namespace A196880.P4006629299289522106
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000123 (A007590 n).toNat : ℚ) / (A033999 n : ℚ) ^ (A324981 (n + 1) : ℤ)

end

end A196880.P4006629299289522106

namespace A196880

/-- `A000123(A007590(n))/A033999(n)^A324981(n+1)` -/
def P4006629299289522106.Spec : Prop :=
  ∀ n, P4006629299289522106.a n = (A196880 n : ℚ)

end A196880

/-! ## A196880.P12266902075614934297

`A018819(n²)`
-/

namespace A196880.P12266902075614934297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018819 (n ^ 2)

end

end A196880.P12266902075614934297

namespace A196880

/-- `A018819(n²)` -/
def P12266902075614934297.Spec : Prop :=
  ∀ n, P12266902075614934297.a n = A196880 n

end A196880

/-! ## A196880.P15508800063326978745

`A357476(n²)+A255738(n+1)`
-/

namespace A196880.P15508800063326978745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357476 (n ^ 2) + A255738 (n + 1)

end

end A196880.P15508800063326978745

namespace A196880

/-- `A357476(n²)+A255738(n+1)` -/
def P15508800063326978745.Spec : Prop :=
  ∀ n, P15508800063326978745.a n = A196880 n

end A196880

/-!
# A196881: Number of partitions of n^3 into powers of 3.

The programs for A196881, there is no canonical definition to state claims against.
-/

/-! ## A196881.P2822679404753299125

`A005704(A131476(n))`
-/

namespace A196881.P2822679404753299125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005704 (A131476 n).toNat

end

end A196881.P2822679404753299125

/-! ## A196881.P13870875824514450678

`A005704(floor(A000578(n)/3))`
-/

namespace A196881.P13870875824514450678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005704 ⌊(A000578 n : ℚ) / 3⌋.toNat

end

end A196881.P13870875824514450678

/-! ## A196881.P12999179427583036996

`A196879(∑[n+3]+n+3)`
-/

namespace A196881.P12999179427583036996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196879 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A196881.P12999179427583036996

/-! ## A196881.P7053944514084880875

`A062051(n^3)`
-/

namespace A196881.P7053944514084880875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062051 (n ^ 3)

end

end A196881.P7053944514084880875

/-! ## A196881.P15792469734275018692

`A005704(A002264(n^3))`
-/

namespace A196881.P15792469734275018692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005704 (A002264 (n ^ 3)).toNat

end

end A196881.P15792469734275018692

/-!
# A196882: Number of partitions of n^4 into powers of 4.

The programs for A196882, there is no canonical definition to state claims against.
-/

/-! ## A196882.P16966773959497014863

`A196879(A056115(n)+10)`
-/

namespace A196882.P16966773959497014863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196879 (A056115 n + 10).toNat

end

end A196882.P16966773959497014863

/-! ## A196882.P7705870042695691306

`A196879(eq[4, A025581(n)])`
-/

namespace A196882.P7705870042695691306
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196879 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196882.P7705870042695691306

/-! ## A196882.P2340890825843653369

`A196879(eq[5, A193739(n)])`
-/

namespace A196882.P2340890825843653369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196879 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196882.P2340890825843653369

/-! ## A196882.P9034501750077590587

`A196879(eq[9, A099375(n)])`
-/

namespace A196882.P9034501750077590587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196879 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196882.P9034501750077590587

/-! ## A196882.P6962939368853327449

`A196879(eq[5, A004736(n+1)])`
-/

namespace A196882.P6962939368853327449
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196879 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196882.P6962939368853327449

/-!
# A196883: Number of partitions of n^5 into powers of 5.

The programs for A196883, there is no canonical definition to state claims against.
-/

/-! ## A196883.P14816297989574074708

`A196879(A055999(n+3))`
-/

namespace A196883.P14816297989574074708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196879 (A055999 (n + 3)).toNat

end

end A196883.P14816297989574074708

/-! ## A196883.P3254652882003236659

`A196879(eq[5, A025581(n)])`
-/

namespace A196883.P3254652882003236659
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196879 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196883.P3254652882003236659

/-! ## A196883.P3366145397308379470

`A196879(eq[6, A193739(n)])`
-/

namespace A196883.P3366145397308379470
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196879 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196883.P3366145397308379470

/-! ## A196883.P3842324071788635959

`A196879(Δ[A023551(n+1)])`
-/

namespace A196883.P3842324071788635959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196879 (f1 (n + 1) - f1 n).toNat

end

end A196883.P3842324071788635959

/-! ## A196883.P13085588562267581228

`A196879(Δ[A026054(n+3)])`
-/

namespace A196883.P13085588562267581228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196879 (f1 (n + 1) - f1 n).toNat

end

end A196883.P13085588562267581228

/-!
# A196884: Number of partitions of n^6 into powers of 6.

The programs for A196884, there is no canonical definition to state claims against.
-/

/-! ## A196884.P6426271664174401491

`A196879(eq[6, A025581(n)])`
-/

namespace A196884.P6426271664174401491
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196879 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196884.P6426271664174401491

/-! ## A196884.P4642201103675859926

`A196879(eq[7, A193739(n)])`
-/

namespace A196884.P4642201103675859926
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196879 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196884.P4642201103675859926

/-! ## A196884.P8394512553712904945

`A196879(eq[13, A099375(n)])`
-/

namespace A196884.P8394512553712904945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196879 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196884.P8394512553712904945

/-! ## A196884.P15407862397918833943

`A196879(eq[7, A004736(n+1)])`
-/

namespace A196884.P15407862397918833943
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196879 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196884.P15407862397918833943

/-! ## A196884.P10536483931403170806

`A196879(Δ[A023551(n+2)]-1)`
-/

namespace A196884.P10536483931403170806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196879 (f1 (n + 1) - f1 n - 1).toNat

end

end A196884.P10536483931403170806

/-!
# A196885: Number of partitions of n^7 into powers of 7.

The programs for A196885, there is no canonical definition to state claims against.
-/

/-! ## A196885.P8951516189652293755

`A196879(eq[7, A025581(n)])`
-/

namespace A196885.P8951516189652293755
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196879 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196885.P8951516189652293755

/-! ## A196885.P2663485861764392265

`A196879(eq[8, A193739(n)])`
-/

namespace A196885.P2663485861764392265
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196879 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196885.P2663485861764392265

/-! ## A196885.P8090498014283998304

`A196879(eq[15, A099375(n)])`
-/

namespace A196885.P8090498014283998304
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196879 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196885.P8090498014283998304

/-! ## A196885.P4031449761596258605

`A196879(eq[8, A004736(n+1)])`
-/

namespace A196885.P4031449761596258605
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196879 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196885.P4031449761596258605

/-! ## A196885.P138730161219910616

`A196879(eq[8, sqrt(A055461(n+1))])`
-/

namespace A196885.P138730161219910616
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A055461 (n + 1) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196879 (SequenceMachineLib.nth (fun j => (f1 j : ℝ) = f2 j) n)

end

end A196885.P138730161219910616

/-!
# A196886: Number of partitions of n^8 into powers of 8.

The programs for A196886, there is no canonical definition to state claims against.
-/

/-! ## A196886.P3758049889688886476

`A196879(eq[8, A025581(n)])`
-/

namespace A196886.P3758049889688886476
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196879 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196886.P3758049889688886476

/-! ## A196886.P18108689333193012613

`A196879(eq[9, A193739(n)])`
-/

namespace A196886.P18108689333193012613
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196879 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196886.P18108689333193012613

/-! ## A196886.P6642449656630031363

`A196879(eq[17, A099375(n)])`
-/

namespace A196886.P6642449656630031363
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196879 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196886.P6642449656630031363

/-! ## A196886.P18062869039148372587

`A196879(eq[9, A004736(n+1)])`
-/

namespace A196886.P18062869039148372587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196879 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196886.P18062869039148372587

/-! ## A196886.P1106771096539469279

`A196879(eq[9, A243070(n+1)])`
-/

namespace A196886.P1106771096539469279
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243070 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196879 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196886.P1106771096539469279

/-!
# A196887: Number of partitions of n^9 into powers of 9.

The programs for A196887, there is no canonical definition to state claims against.
-/

/-! ## A196887.P10536643849219086051

`A196879(eq[9, A025581(n)])`
-/

namespace A196887.P10536643849219086051
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196879 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196887.P10536643849219086051

/-! ## A196887.P5126892711912345779

`A196879(eq[10, A193739(n)])`
-/

namespace A196887.P5126892711912345779
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196879 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196887.P5126892711912345779

/-! ## A196887.P7167509771357191047

`A196879(eq[10, A004736(n+1)])`
-/

namespace A196887.P7167509771357191047
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196879 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196887.P7167509771357191047

/-!
# A196888: Number of partitions of n^10 into powers of 10.

The programs for A196888, there is no canonical definition to state claims against.
-/

/-! ## A196888.P15110933698233671541

`A196879(eq[10, A025581(n)])`
-/

namespace A196888.P15110933698233671541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196879 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196888.P15110933698233671541

/-! ## A196888.P9023845611034127383

`A196879(eq[11, A004736(n+1)])`
-/

namespace A196888.P9023845611034127383
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196879 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196888.P9023845611034127383

/-!
# A196889: Number of partitions of 2^n into powers of n.

The programs for A196889, there is no canonical definition to state claims against.
-/

/-! ## A196889.P4650133422112009159

`A196879(∑[n+2]+3)`
-/

namespace A196889.P4650133422112009159
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196879 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A196889.P4650133422112009159

/-!
# A196890: Number of partitions of 3^n into powers of n.

The programs for A196890, there is no canonical definition to state claims against.
-/

/-! ## A196890.P8799980243715573272

`A196879(A167614(n+2))`
-/

namespace A196890.P8799980243715573272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196879 (A167614 (n + 2)).toNat

end

end A196890.P8799980243715573272

/-! ## A196890.P1138067046777274807

`A196879(A141214(n)+6)`
-/

namespace A196890.P1138067046777274807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196879 (A141214 n + 6).toNat

end

end A196890.P1138067046777274807

/-! ## A196890.P8580152069202046500

`A196879(A055999(n)+9)`
-/

namespace A196890.P8580152069202046500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196879 (A055999 n + 9).toNat

end

end A196890.P8580152069202046500

/-! ## A196890.P16801623964731169167

`A196879(eq[2, A141169(n)])`
-/

namespace A196890.P16801623964731169167
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141169 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196879 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196890.P16801623964731169167

/-! ## A196890.P15249613504730773221

`A196879(eq[3, A002262(n)])`
-/

namespace A196890.P15249613504730773221
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196879 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196890.P15249613504730773221

/-!
# A196891: Number of partitions of 4^n into powers of n.

The programs for A196891, there is no canonical definition to state claims against.
-/

/-! ## A196891.P10768216761402699770

`A196879(eq[3, A141169(n)])`
-/

namespace A196891.P10768216761402699770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141169 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196879 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196891.P10768216761402699770

/-! ## A196891.P12685819904774380647

`A196879(eq[4, A002262(n)])`
-/

namespace A196891.P12685819904774380647
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196879 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196891.P12685819904774380647

/-! ## A196891.P2293172881243046268

`A196879(eq[4, A144328(n+1)])`
-/

namespace A196891.P2293172881243046268
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196879 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196891.P2293172881243046268

/-! ## A196891.P15415816508648809667

`A196879(eq[5, A002260(n+1)])`
-/

namespace A196891.P15415816508648809667
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196879 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196891.P15415816508648809667

/-! ## A196891.P17942772946438500418

`A196879(eq[5, A104763(n+1)])`
-/

namespace A196891.P17942772946438500418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104763 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196879 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196891.P17942772946438500418

/-!
# A196892: Number of partitions of 5^n into powers of n.

The programs for A196892, there is no canonical definition to state claims against.
-/

/-! ## A196892.P12094518583275206602

`A196879(eq[5, A002262(n)])`
-/

namespace A196892.P12094518583275206602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196879 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196892.P12094518583275206602

/-! ## A196892.P9751620991509664826

`A196879(eq[5, A141169(n)])`
-/

namespace A196892.P9751620991509664826
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141169 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196879 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196892.P9751620991509664826

/-! ## A196892.P17470361709788116830

`A196879(A134869(n+5)+4)`
-/

namespace A196892.P17470361709788116830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196879 (A134869 (n + 5) + 4).toNat

end

end A196892.P17470361709788116830

/-! ## A196892.P11028503554391470901

`A196879(eq[5, A144328(n+1)])`
-/

namespace A196892.P11028503554391470901
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196879 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196892.P11028503554391470901

/-! ## A196892.P10173161132197834236

`A196879(eq[6, A002260(n+1)])`
-/

namespace A196892.P10173161132197834236
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196879 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196892.P10173161132197834236

/-!
# A196893: Number of partitions of 6^n into powers of n.

The programs for A196893, there is no canonical definition to state claims against.
-/

/-! ## A196893.P14581800157283448487

`A196879(eq[6, A002262(n)])`
-/

namespace A196893.P14581800157283448487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196879 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196893.P14581800157283448487

/-! ## A196893.P14282470041505624406

`A196879(eq[8, A141169(n)])`
-/

namespace A196893.P14282470041505624406
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141169 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196879 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196893.P14282470041505624406

/-! ## A196893.P9193436489959496880

`A196879(eq[6, A144328(n+1)])`
-/

namespace A196893.P9193436489959496880
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196879 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196893.P9193436489959496880

/-! ## A196893.P11358966212447622310

`A196879(eq[7, A002260(n+1)])`
-/

namespace A196893.P11358966212447622310
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196879 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196893.P11358966212447622310

/-! ## A196893.P6978166051107684310

`A196879(eq[13, A104763(n+1)])`
-/

namespace A196893.P6978166051107684310
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104763 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196879 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196893.P6978166051107684310

/-!
# A196894: Number of partitions of 7^n into powers of n.

The programs for A196894, there is no canonical definition to state claims against.
-/

/-! ## A196894.P1901439310133829372

`A196879(eq[7, A002262(n)])`
-/

namespace A196894.P1901439310133829372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196879 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196894.P1901439310133829372

/-! ## A196894.P13180592999206349157

`A196879(eq[7, A133233(n)])`
-/

namespace A196894.P13180592999206349157
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133233 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196879 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196894.P13180592999206349157

/-! ## A196894.P12000472071112425936

`A196879(eq[13, A141169(n)])`
-/

namespace A196894.P12000472071112425936
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141169 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196879 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196894.P12000472071112425936

/-! ## A196894.P11913248795421227911

`A196879(eq[7, A144328(n+1)])`
-/

namespace A196894.P11913248795421227911
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196879 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196894.P11913248795421227911

/-! ## A196894.P12281586110602377255

`A196879(eq[8, A002260(n+1)])`
-/

namespace A196894.P12281586110602377255
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196879 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196894.P12281586110602377255

/-!
# A196895: Number of partitions of 8^n into powers of n.

The programs for A196895, there is no canonical definition to state claims against.
-/

/-! ## A196895.P10859858136013125298

`A196879(eq[8, A002262(n)])`
-/

namespace A196895.P10859858136013125298
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196879 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196895.P10859858136013125298

/-! ## A196895.P10769025104304131687

`A196879(eq[21, A141169(n)])`
-/

namespace A196895.P10769025104304131687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  21

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141169 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196879 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196895.P10769025104304131687

/-! ## A196895.P10094157474202252614

`A196879(eq[8, A144328(n+1)])`
-/

namespace A196895.P10094157474202252614
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196879 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196895.P10094157474202252614

/-! ## A196895.P3533348755808710019

`A196879(eq[9, A002260(n+1)])`
-/

namespace A196895.P3533348755808710019
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196879 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196895.P3533348755808710019

/-! ## A196895.P6924708422754984700

`A196879(eq[9, A134868(n+1)])`
-/

namespace A196895.P6924708422754984700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196879 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196895.P6924708422754984700

/-!
# A196896: Number of partitions of 9^n into powers of n.

The programs for A196896, there is no canonical definition to state claims against.
-/

/-! ## A196896.P16861161193687268996

`A196879(eq[9, A002262(n)])`
-/

namespace A196896.P16861161193687268996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196879 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196896.P16861161193687268996

/-! ## A196896.P3363438896748429717

`A196879(eq[9, A144328(n+1)])`
-/

namespace A196896.P3363438896748429717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196879 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196896.P3363438896748429717

/-! ## A196896.P11730614217470261049

`A196879(eq[10, A002260(n+1)])`
-/

namespace A196896.P11730614217470261049
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196879 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196896.P11730614217470261049

/-! ## A196896.P9559580089621327789

`A196879(eq[10, A134868(n+1)])`
-/

namespace A196896.P9559580089621327789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196879 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196896.P9559580089621327789

/-! ## A196896.P1100406594862802860

`A196879(eq[9, A133233(n)])`
-/

namespace A196896.P1100406594862802860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133233 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196879 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196896.P1100406594862802860

/-!
# A196897: Number of partitions of 10^n into powers of n.

The programs for A196897, there is no canonical definition to state claims against.
-/

/-! ## A196897.P1693873189016319871

`A196879(eq[10, A002262(n)])`
-/

namespace A196897.P1693873189016319871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196879 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196897.P1693873189016319871

/-! ## A196897.P5280032184960799768

`A196879(eq[10, A144328(n+1)])`
-/

namespace A196897.P5280032184960799768
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196879 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196897.P5280032184960799768

/-! ## A196897.P18313789531560796243

`A196879(eq[11, A002260(n+1)])`
-/

namespace A196897.P18313789531560796243
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196879 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196897.P18313789531560796243

/-! ## A196897.P7911712110692360588

`A196879(eq[11, A134868(n+1)])`
-/

namespace A196897.P7911712110692360588
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196879 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196897.P7911712110692360588

/-!
# A196898: Number of n X n 0..4 arrays with each element x equal to the number of its horizontal and vertical neighbors equal to 4,3,1,0,2 for x=0,1,2,3,4.

The programs for A196898, there is no canonical definition to state claims against.
-/

/-! ## A196898.P8226853422320345752

`A196904(∑[4*n]+1)`
-/

namespace A196898.P8226853422320345752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196904 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A196898.P8226853422320345752

/-! ## A196898.P12306494405246701026

`A196904(A001844(n))+A025444(n)`
-/

namespace A196898.P12306494405246701026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196904 (A001844 n).toNat + A025444 n

end

end A196898.P12306494405246701026

/-! ## A196898.P17217689062879821598

`A196904(A001844(n))+A185238(n)`
-/

namespace A196898.P17217689062879821598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196904 (A001844 n).toNat + A185238 n

end

end A196898.P17217689062879821598

/-! ## A196898.P4454483045630444703

`A174544(n)*A196904(A001844(n))`
-/

namespace A196898.P4454483045630444703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174544 n * A196904 (A001844 n).toNat

end

end A196898.P4454483045630444703

/-! ## A196898.P14613425005311304998

`gcd(A004530(n), A196904(A001844(n)))`
-/

namespace A196898.P14613425005311304998
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A004530 n) (A196904 (A001844 n).toNat)

end

end A196898.P14613425005311304998

/-!
# A196899: Number of n X 3 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 4,3,1,0,2 for x=0,1,2,3,4.

The programs for A196899, there is no canonical definition to state claims against.
-/

/-! ## A196899.P5785841105287572512

`A196904(∑[n+2]+4)`
-/

namespace A196899.P5785841105287572512
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196904 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A196899.P5785841105287572512

/-! ## A196899.P17683043394502486473

`A196904(A167614(n+1))^ceil(acot(n))`
-/

namespace A196899.P17683043394502486473
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A196904 (A167614 (n + 1)).toNat : ℚ) ^ (⌈SequenceMachineLib.acot (n : ℝ)⌉ : ℤ)

end

end A196899.P17683043394502486473

/-! ## A196899.P15540294205607272274

`record[A196904(A167614(gcd(xor(1, n²), ∑[n])))]`
-/

namespace A196899.P15540294205607272274
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196904 (A167614 (Nat.gcd (Nat.xor 1 (n ^ 2)) (∑ j ∈ Finset.range (n + 1), f2 j))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A196899.P15540294205607272274

/-! ## A196899.P3421956287336268861

`record[A196904(A167614(round(lcm(2, n+3)/6)))]`
-/

namespace A196899.P3421956287336268861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196904 (A167614 (SequenceMachineLib.roundAway ((Nat.lcm 2 (n + 3) : ℚ) / 6)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A196899.P3421956287336268861

/-! ## A196899.P15904612672351335415

`record[A196904(A152950(A116549(n)))]`
-/

namespace A196899.P15904612672351335415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196904 (A152950 (A116549 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A196899.P15904612672351335415

