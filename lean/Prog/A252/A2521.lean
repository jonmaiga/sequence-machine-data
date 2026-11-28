import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C033
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C050
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C008
import Seq.B002.C001
import Seq.B005.C001
import Seq.B006.C001
import Seq.Opaque.C003
import Seq.Opaque.C007
import Seq.Opaque.C010
import Seq.Opaque.C014
import Seq.Opaque.C016
import Seq.Opaque.C021
import Seq.Opaque.C022

/-!
# A252100: Number of (n+2)X(3+2) 0..3 arrays with every 3X3 subblock row and column sum equal to 0 3 4 6 or 7 and every 3X3 diagonal and antidiagonal sum not equal to 0 3 4 6 or 7.

The programs for A252100, there is no canonical definition to state claims against.
-/

/-! ## A252100.P2156502677057165647

`A252105(∑[n+2]+4)`
-/

namespace A252100.P2156502677057165647
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252105 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A252100.P2156502677057165647

/-!
# A252101: Number of (n+2)X(4+2) 0..3 arrays with every 3X3 subblock row and column sum equal to 0 3 4 6 or 7 and every 3X3 diagonal and antidiagonal sum not equal to 0 3 4 6 or 7.

The programs for A252101, there is no canonical definition to state claims against.
-/

/-! ## A252101.P3422693072328305629

`A252105(∑[n+3]+7)`
-/

namespace A252101.P3422693072328305629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252105 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A252101.P3422693072328305629

/-!
# A252102: Number of (n+2)X(5+2) 0..3 arrays with every 3X3 subblock row and column sum equal to 0 3 4 6 or 7 and every 3X3 diagonal and antidiagonal sum not equal to 0 3 4 6 or 7.

The programs for A252102, there is no canonical definition to state claims against.
-/

/-! ## A252102.P9219214281487986122

`A252105(A167499(n+3))`
-/

namespace A252102.P9219214281487986122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252105 (A167499 (n + 3)).toNat

end

end A252102.P9219214281487986122

/-! ## A252102.P12500417094220512897

`A252105(A374005(n+1))`
-/

namespace A252102.P12500417094220512897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252105 (A374005 (n + 1)).toNat

end

end A252102.P12500417094220512897

/-!
# A252103: Number of (n+2)X(6+2) 0..3 arrays with every 3X3 subblock row and column sum equal to 0 3 4 6 or 7 and every 3X3 diagonal and antidiagonal sum not equal to 0 3 4 6 or 7.

The programs for A252103, there is no canonical definition to state claims against.
-/

/-! ## A252103.P4997547287655799815

`A252105(A166136(n+4))`
-/

namespace A252103.P4997547287655799815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252105 (A166136 (n + 4)).toNat

end

end A252103.P4997547287655799815

/-! ## A252103.P18281266525207508736

`A252105(A374007(n+1))`
-/

namespace A252103.P18281266525207508736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252105 (A374007 (n + 1)).toNat

end

end A252103.P18281266525207508736

/-!
# A252104: Number of (n+2)X(7+2) 0..3 arrays with every 3X3 subblock row and column sum equal to 0 3 4 6 or 7 and every 3X3 diagonal and antidiagonal sum not equal to 0 3 4 6 or 7.

The programs for A252104, there is no canonical definition to state claims against.
-/

/-! ## A252104.P12273390677224043530

`A252105(eq[8, A131818(n+1)])`
-/

namespace A252104.P12273390677224043530
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252105 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A252104.P12273390677224043530

/-! ## A252104.P14000728110515630017

`A252105(A374008(n+1))`
-/

namespace A252104.P14000728110515630017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252105 (A374008 (n + 1)).toNat

end

end A252104.P14000728110515630017

/-!
# A252106: Number of (n+2)X(n+2) 0..3 arrays with every 3X3 subblock row and column sum equal to 0 2 3 6 or 7 and every 3X3 diagonal and antidiagonal sum not equal to 0 2 3 6 or 7.

The programs for A252106, there is no canonical definition to state claims against.
-/

/-! ## A252106.P14793329688851540823

`A252114(∑[4*n]+1)`
-/

namespace A252106.P14793329688851540823
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252114 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A252106.P14793329688851540823

/-!
# A252107: Number of (n+2)X(1+2) 0..3 arrays with every 3X3 subblock row and column sum equal to 0 2 3 6 or 7 and every 3X3 diagonal and antidiagonal sum not equal to 0 2 3 6 or 7.

The programs for A252107, there is no canonical definition to state claims against.
-/

/-! ## A252107.P12105606564188976528

`A252114(1+∑[n])`
-/

namespace A252107.P12105606564188976528
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252114 (1 + ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A252107.P12105606564188976528

/-!
# A252108: Number of (n+2) X (2+2) 0..3 arrays with every 3 X 3 subblock row and column sum equal to 0 2 3 6 or 7 and every 3 X 3 diagonal and antidiagonal sum not equal to 0 2 3 6 or 7.

The programs for A252108, there is no canonical definition to state claims against.
-/

/-! ## A252108.P11989984775461630912

`A252114(2+∑[n+1])`
-/

namespace A252108.P11989984775461630912
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252114 (2 + ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A252108.P11989984775461630912

/-!
# A252109: Number of (n+2) X (3+2) 0..3 arrays with every 3 X 3 subblock row and column sum equal to 0 2 3 6 or 7 and every 3 X 3 diagonal and antidiagonal sum not equal to 0 2 3 6 or 7.

The programs for A252109, there is no canonical definition to state claims against.
-/

/-! ## A252109.P12547262723181754723

`A252114(∑[n+2]+4)`
-/

namespace A252109.P12547262723181754723
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252114 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A252109.P12547262723181754723

/-!
# A252110: Number of (n+2) X (4+2) 0..3 arrays with every 3 X 3 subblock row and column sum equal to 0 2 3 6 or 7 and every 3 X 3 diagonal and antidiagonal sum not equal to 0 2 3 6 or 7.

The programs for A252110, there is no canonical definition to state claims against.
-/

/-! ## A252110.P193538621225735556

`A252114(∑[n+3]+7)`
-/

namespace A252110.P193538621225735556
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252114 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A252110.P193538621225735556

/-!
# A252111: Number of (n+2) X (5+2) 0..3 arrays with every 3 X 3 subblock row and column sum equal to 0 2 3 6 or 7 and every 3 X 3 diagonal and antidiagonal sum not equal to 0 2 3 6 or 7.

The programs for A252111, there is no canonical definition to state claims against.
-/

/-! ## A252111.P12531161356943508824

`A252114(A167499(n+3))`
-/

namespace A252111.P12531161356943508824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252114 (A167499 (n + 3)).toNat

end

end A252111.P12531161356943508824

/-! ## A252111.P4582873088195709255

`A252114(A374005(n+1))`
-/

namespace A252111.P4582873088195709255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252114 (A374005 (n + 1)).toNat

end

end A252111.P4582873088195709255

/-!
# A252112: Number of (n+2) X (6+2) 0..3 arrays with every 3 X 3 subblock row and column sum equal to 0 2 3 6 or 7 and every 3 X 3 diagonal and antidiagonal sum not equal to 0 2 3 6 or 7.

The programs for A252112, there is no canonical definition to state claims against.
-/

/-! ## A252112.P4518242701250168372

`A252114(∑[n+5]+16)`
-/

namespace A252112.P4518242701250168372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252114 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A252112.P4518242701250168372

/-!
# A252113: Number of (n+2) X (7+2) 0..3 arrays with every 3 X 3 subblock row and column sum equal to 0 2 3 6 or 7 and every 3 X 3 diagonal and antidiagonal sum not equal to 0 2 3 6 or 7.

The programs for A252113, there is no canonical definition to state claims against.
-/

/-! ## A252113.P18153726307582077231

`A252114(A056119(n)+28)`
-/

namespace A252113.P18153726307582077231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252114 (A056119 n + 28).toNat

end

end A252113.P18153726307582077231

/-! ## A252113.P4877117959734672457

`A252114(A374008(n+1))`
-/

namespace A252113.P4877117959734672457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252114 (A374008 (n + 1)).toNat

end

end A252113.P4877117959734672457

/-!
# A252118: Number of (n+2)X(1+2) 0..3 arrays with every 3X3 subblock row, column, diagonal and antidiagonal sum less than 6.

The programs for A252118, there is no canonical definition to state claims against.
-/

/-! ## A252118.P7508890754035878870

`A252121(∑[n]+1)`
-/

namespace A252118.P7508890754035878870
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252121 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A252118.P7508890754035878870

/-! ## A252118.P14225808906627569413

`record[A010054(n)*A252121(n+1)]`
-/

namespace A252118.P14225808906627569413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A252121 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252118.P14225808906627569413

/-! ## A252118.P973078528235855624

`record[A176227(n)*A252121(n+1)]`
-/

namespace A252118.P973078528235855624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176227 n * A252121 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252118.P973078528235855624

/-!
# A252119: Number of (n+2)X(2+2) 0..3 arrays with every 3X3 subblock row, column, diagonal and antidiagonal sum less than 6.

The programs for A252119, there is no canonical definition to state claims against.
-/

/-! ## A252119.P9559754971521298063

`A252121(A000124(n+1)+1)`
-/

namespace A252119.P9559754971521298063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252121 (A000124 (n + 1) + 1).toNat

end

end A252119.P9559754971521298063

/-! ## A252119.P317244064271474053

`A252121(∑[n+2])`
-/

namespace A252119.P317244064271474053
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252121 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A252119.P317244064271474053

/-!
# A252122: Number of (n+2)X(n+2) 0..3 arrays with every 3X3 subblock row and column sum not equal to 0 3 4 6 or 7 and every 3X3 diagonal and antidiagonal sum equal to 0 3 4 6 or 7.

The programs for A252122, there is no canonical definition to state claims against.
-/

/-! ## A252122.P13999747088242704302

`A252130(∑[4*n]+1)`
-/

namespace A252122.P13999747088242704302
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252130 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A252122.P13999747088242704302

/-! ## A252122.P17646526142014503043

`record[gcd(A114327(n), A252130(n+1))]`
-/

namespace A252122.P17646526142014503043
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A252130 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252122.P17646526142014503043

/-!
# A252123: Number of (n+2)X(1+2) 0..3 arrays with every 3X3 subblock row and column sum not equal to 0 3 4 6 or 7 and every 3X3 diagonal and antidiagonal sum equal to 0 3 4 6 or 7.

The programs for A252123, there is no canonical definition to state claims against.
-/

/-! ## A252123.P7016324976265500132

`A252130(∑[n]+1)`
-/

namespace A252123.P7016324976265500132
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252130 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A252123.P7016324976265500132

/-! ## A252123.P8754977732429114833

`record[root(A252130(n+1), A007318(n))]`
-/

namespace A252123.P8754977732429114833
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A252130 (n + 1) : ℝ) ^ (1 / (A007318 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252123.P8754977732429114833

/-! ## A252123.P10708737272403197420

`record[root(A252130(n+1), A193842(n))]`
-/

namespace A252123.P10708737272403197420
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A252130 (n + 1) : ℝ) ^ (1 / (A193842 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252123.P10708737272403197420

/-! ## A252123.P7195395857009605461

`record[gcd(A002262(n), A252130(n+1))]`
-/

namespace A252123.P7195395857009605461
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A252130 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252123.P7195395857009605461

/-!
# A252124: Number of (n+2)X(2+2) 0..3 arrays with every 3X3 subblock row and column sum not equal to 0 3 4 6 or 7 and every 3X3 diagonal and antidiagonal sum equal to 0 3 4 6 or 7.

The programs for A252124, there is no canonical definition to state claims against.
-/

/-! ## A252124.P16509352640414655974

`A252130(∑[n+1]+2)`
-/

namespace A252124.P16509352640414655974
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252130 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A252124.P16509352640414655974

/-! ## A252124.P9585667811012015272

`record[root(A252130(n+2), A193842(n))]`
-/

namespace A252124.P9585667811012015272
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A252130 (n + 2) : ℝ) ^ (1 / (A193842 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252124.P9585667811012015272

/-! ## A252124.P7912181039801906415

`record[gcd(A002262(n), A252130(n+2))]`
-/

namespace A252124.P7912181039801906415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A252130 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252124.P7912181039801906415

/-! ## A252124.P15990068352908324135

`record[A073424(n+1)*A252130(n+3)]`
-/

namespace A252124.P15990068352908324135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073424 (n + 1) * A252130 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252124.P15990068352908324135

/-! ## A252124.P17998844314104287429

`record[gcd(A095884(n+1), A252130(n+3))]`
-/

namespace A252124.P17998844314104287429
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A095884 (n + 1)) (A252130 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252124.P17998844314104287429

/-!
# A252125: Number of (n+2)X(3+2) 0..3 arrays with every 3X3 subblock row and column sum not equal to 0 3 4 6 or 7 and every 3X3 diagonal and antidiagonal sum equal to 0 3 4 6 or 7.

The programs for A252125, there is no canonical definition to state claims against.
-/

/-! ## A252125.P17789930731379323975

`A252130(∑[n+2]+4)`
-/

namespace A252125.P17789930731379323975
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252130 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A252125.P17789930731379323975

/-!
# A252126: Number of (n+2)X(4+2) 0..3 arrays with every 3X3 subblock row and column sum not equal to 0 3 4 6 or 7 and every 3X3 diagonal and antidiagonal sum equal to 0 3 4 6 or 7.

The programs for A252126, there is no canonical definition to state claims against.
-/

/-! ## A252126.P11295042013124610192

`A252130(∑[n+3]+7)`
-/

namespace A252126.P11295042013124610192
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252130 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A252126.P11295042013124610192

/-!
# A252127: Number of (n+2)X(5+2) 0..3 arrays with every 3X3 subblock row and column sum not equal to 0 3 4 6 or 7 and every 3X3 diagonal and antidiagonal sum equal to 0 3 4 6 or 7.

The programs for A252127, there is no canonical definition to state claims against.
-/

/-! ## A252127.P16397869943174754660

`A252130(A374005(n+1))`
-/

namespace A252127.P16397869943174754660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252130 (A374005 (n + 1)).toNat

end

end A252127.P16397869943174754660

/-!
# A252128: Number of (n+2)X(6+2) 0..3 arrays with every 3X3 subblock row and column sum not equal to 0 3 4 6 or 7 and every 3X3 diagonal and antidiagonal sum equal to 0 3 4 6 or 7.

The programs for A252128, there is no canonical definition to state claims against.
-/

/-! ## A252128.P10652367752435767802

`A252130(A374007(n+1))`
-/

namespace A252128.P10652367752435767802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252130 (A374007 (n + 1)).toNat

end

end A252128.P10652367752435767802

/-!
# A252129: Number of (n+2)X(7+2) 0..3 arrays with every 3X3 subblock row and column sum not equal to 0 3 4 6 or 7 and every 3X3 diagonal and antidiagonal sum equal to 0 3 4 6 or 7.

The programs for A252129, there is no canonical definition to state claims against.
-/

/-! ## A252129.P8593681473452210445

`A252130(A374008(n+1))`
-/

namespace A252129.P8593681473452210445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252130 (A374008 (n + 1)).toNat

end

end A252129.P8593681473452210445

/-!
# A252131: Number of (n+2)X(n+2) 0..3 arrays with every 3X3 subblock row, column, diagonal and antidiagonal sum not equal to 0 3 4 6 or 7.

The programs for A252131, there is no canonical definition to state claims against.
-/

/-! ## A252131.P8703509152911461957

`A252139(∑[4*n]+1)`
-/

namespace A252131.P8703509152911461957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252139 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A252131.P8703509152911461957

/-!
# A252132: Number of (n+2) X (1+2) 0..3 arrays with every 3 X 3 subblock row, column, diagonal and antidiagonal sum not equal to 0 3 4 6 or 7.

The programs for A252132, the canonical program `A252132.P8476453778871796968` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A252132 has offset 1).

The definition of A252132 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 287 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A252132.P8476453778871796968

`ogf((172-210x-231x^2-113x^3-350x^4+333x^5+933x^6+792x^7-86x^8-650x^9-324x^10-32x^11)/(1-2x-x^2-x^4+5x^5+7x^6+3x^7-4x^8-6x^9-2x^10))`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A252132

/-- `ogf((172-210x-231x^2-113x^3-350x^4+333x^5+933x^6+792x^7-86x^8-650x^9-324x^10-32x^11)/(1-2x-x^2-x^4+5x^5+7x^6+3x^7-4x^8-6x^9-2x^10))` -/
def P8476453778871796968.Spec : Prop :=
  ∀ n, P8476453778871796968.a n = A252132 (n + 1)

theorem P8476453778871796968.correct : P8476453778871796968.Spec := by
  intro n
  simp only [A252132, Nat.add_sub_cancel]

end A252132

/-! ## A252132.P17726673831842402191

`A252139(∑[n]+1)`
-/

namespace A252132.P17726673831842402191
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252139 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A252132.P17726673831842402191

namespace A252132

/-- `A252139(∑[n]+1)` -/
def P17726673831842402191.Spec : Prop :=
  ∀ n, P17726673831842402191.a n = A252132 (n + 1)

end A252132

/-!
# A252133: Number of (n+2) X (2+2) 0..3 arrays with every 3 X 3 subblock row, column, diagonal and antidiagonal sum not equal to 0 3 4 6 or 7.

The programs for A252133, the canonical program `A252133.P5073722784851461775` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A252133 has offset 1).

The definition of A252133 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 224 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A252133.P5073722784851461775

`ogf((134-112x-15x^2-371x^3-124x^4+143x^5+225x^6+75x^7-13x^8-64x^9-4x^10)/(1-2x-x^2-4x^3+x^4+4x^5+3x^6-x^8-x^9))`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A252133

/-- `ogf((134-112x-15x^2-371x^3-124x^4+143x^5+225x^6+75x^7-13x^8-64x^9-4x^10)/(1-2x-x^2-4x^3+x^4+4x^5+3x^6-x^8-x^9))` -/
def P5073722784851461775.Spec : Prop :=
  ∀ n, P5073722784851461775.a n = A252133 (n + 1)

theorem P5073722784851461775.correct : P5073722784851461775.Spec := by
  intro n
  simp only [A252133, Nat.add_sub_cancel]

end A252133

/-! ## A252133.P5997271673411459285

`A252139(∑[n+1]+2)`
-/

namespace A252133.P5997271673411459285
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252139 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A252133.P5997271673411459285

namespace A252133

/-- `A252139(∑[n+1]+2)` -/
def P5997271673411459285.Spec : Prop :=
  ∀ n, P5997271673411459285.a n = A252133 (n + 1)

end A252133

/-! ## A252133.P10785822504738474111

`record[A127248(n)*A252139(n+3)]`
-/

namespace A252133.P10785822504738474111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127248 n * A252139 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252133.P10785822504738474111

namespace A252133

/-- `record[A127248(n)*A252139(n+3)]` -/
def P10785822504738474111.Spec : Prop :=
  ∀ n, P10785822504738474111.a n = A252133 (n + 1)

end A252133

/-!
# A252134: Number of (n+2)X(3+2) 0..3 arrays with every 3X3 subblock row, column, diagonal and antidiagonal sum not equal to 0 3 4 6 or 7.

The programs for A252134, there is no canonical definition to state claims against.
-/

/-! ## A252134.P14263752197660073898

`A252139(∑[n+2]+4)`
-/

namespace A252134.P14263752197660073898
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252139 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A252134.P14263752197660073898

/-!
# A252135: Number of (n+2)X(4+2) 0..3 arrays with every 3X3 subblock row, column, diagonal and antidiagonal sum not equal to 0 3 4 6 or 7.

The programs for A252135, there is no canonical definition to state claims against.
-/

/-! ## A252135.P9238127290751361261

`A252139(A141214(n)+7)`
-/

namespace A252135.P9238127290751361261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252139 (A141214 n + 7).toNat

end

end A252135.P9238127290751361261

/-! ## A252135.P6090942794341725016

`A252139(A141214(n+1))`
-/

namespace A252135.P6090942794341725016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252139 (A141214 (n + 1)).toNat

end

end A252135.P6090942794341725016

/-!
# A252136: Number of (n+2)X(5+2) 0..3 arrays with every 3X3 subblock row, column, diagonal and antidiagonal sum not equal to 0 3 4 6 or 7.

The programs for A252136, there is no canonical definition to state claims against.
-/

/-! ## A252136.P17016202999025137323

`A252139(A167499(n+3))`
-/

namespace A252136.P17016202999025137323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252139 (A167499 (n + 3)).toNat

end

end A252136.P17016202999025137323

/-! ## A252136.P11905696268331315611

`A252139(A374005(n+1))`
-/

namespace A252136.P11905696268331315611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252139 (A374005 (n + 1)).toNat

end

end A252136.P11905696268331315611

/-!
# A252137: Number of (n+2)X(6+2) 0..3 arrays with every 3X3 subblock row, column, diagonal and antidiagonal sum not equal to 0 3 4 6 or 7.

The programs for A252137, there is no canonical definition to state claims against.
-/

/-! ## A252137.P12494939962187049544

`A252139(A166136(n+4))`
-/

namespace A252137.P12494939962187049544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252139 (A166136 (n + 4)).toNat

end

end A252137.P12494939962187049544

/-! ## A252137.P5176238678457313576

`A252139(A374007(n+1))`
-/

namespace A252137.P5176238678457313576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252139 (A374007 (n + 1)).toNat

end

end A252137.P5176238678457313576

/-!
# A252138: Number of (n+2)X(7+2) 0..3 arrays with every 3X3 subblock row, column, diagonal and antidiagonal sum not equal to 0 3 4 6 or 7.

The programs for A252138, there is no canonical definition to state claims against.
-/

/-! ## A252138.P14798745911220938792

`A252139(A161680(n+7)+7)`
-/

namespace A252138.P14798745911220938792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252139 (A161680 (n + 7) + 7).toNat

end

end A252138.P14798745911220938792

/-! ## A252138.P12470093332139022817

`A252139(A374008(n+1))`
-/

namespace A252138.P12470093332139022817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252139 (A374008 (n + 1)).toNat

end

end A252138.P12470093332139022817

/-!
# A252140: Number of (n+2)X(n+2) 0..3 arrays with every 3X3 subblock row and column sum equal to 0 3 5 6 or 7 and every 3X3 diagonal and antidiagonal sum not equal to 0 3 5 6 or 7.

The programs for A252140, there is no canonical definition to state claims against.
-/

/-! ## A252140.P10145286554903960057

`A252148(∑[4*n]+1)`
-/

namespace A252140.P10145286554903960057
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252148 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A252140.P10145286554903960057

/-!
# A252141: Number of (n+2)X(1+2) 0..3 arrays with every 3X3 subblock row and column sum equal to 0 3 5 6 or 7 and every 3X3 diagonal and antidiagonal sum not equal to 0 3 5 6 or 7.

The programs for A252141, there is no canonical definition to state claims against.
-/

/-! ## A252141.P16056603815285073440

`A252148(∑[n]+1)`
-/

namespace A252141.P16056603815285073440
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252148 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A252141.P16056603815285073440

/-! ## A252141.P9999824374333462726

`record[A252148(1+n)]`
-/

namespace A252141.P9999824374333462726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252148 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252141.P9999824374333462726

/-!
# A252142: Number of (n+2)X(2+2) 0..3 arrays with every 3X3 subblock row and column sum equal to 0 3 5 6 or 7 and every 3X3 diagonal and antidiagonal sum not equal to 0 3 5 6 or 7.

The programs for A252142, there is no canonical definition to state claims against.
-/

/-! ## A252142.P7979551410233039410

`A252148(∑[n+1]+2)`
-/

namespace A252142.P7979551410233039410
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252148 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A252142.P7979551410233039410

/-!
# A252143: Number of (n+2)X(3+2) 0..3 arrays with every 3X3 subblock row and column sum equal to 0 3 5 6 or 7 and every 3X3 diagonal and antidiagonal sum not equal to 0 3 5 6 or 7.

The programs for A252143, there is no canonical definition to state claims against.
-/

/-! ## A252143.P17028742234153689212

`A252148(∑[n+2]+4)`
-/

namespace A252143.P17028742234153689212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252148 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A252143.P17028742234153689212

/-!
# A252144: Number of (n+2)X(4+2) 0..3 arrays with every 3X3 subblock row and column sum equal to 0 3 5 6 or 7 and every 3X3 diagonal and antidiagonal sum not equal to 0 3 5 6 or 7.

The programs for A252144, there is no canonical definition to state claims against.
-/

/-! ## A252144.P11143167463877452700

`A252148(∑[n+3]+7)`
-/

namespace A252144.P11143167463877452700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252148 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A252144.P11143167463877452700

/-!
# A252145: Number of (n+2)X(5+2) 0..3 arrays with every 3X3 subblock row and column sum equal to 0 3 5 6 or 7 and every 3X3 diagonal and antidiagonal sum not equal to 0 3 5 6 or 7.

The programs for A252145, there is no canonical definition to state claims against.
-/

/-! ## A252145.P4370550893136476306

`A252148(A167499(n+3))`
-/

namespace A252145.P4370550893136476306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252148 (A167499 (n + 3)).toNat

end

end A252145.P4370550893136476306

/-! ## A252145.P6177524197488204537

`A252148(A374005(n+1))`
-/

namespace A252145.P6177524197488204537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252148 (A374005 (n + 1)).toNat

end

end A252145.P6177524197488204537

/-!
# A252146: Number of (n+2)X(6+2) 0..3 arrays with every 3X3 subblock row and column sum equal to 0 3 5 6 or 7 and every 3X3 diagonal and antidiagonal sum not equal to 0 3 5 6 or 7.

The programs for A252146, there is no canonical definition to state claims against.
-/

/-! ## A252146.P17594725268758102255

`A252148(A166136(n+4))`
-/

namespace A252146.P17594725268758102255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252148 (A166136 (n + 4)).toNat

end

end A252146.P17594725268758102255

/-! ## A252146.P14991261697280721879

`A252148(A374007(n+1))`
-/

namespace A252146.P14991261697280721879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252148 (A374007 (n + 1)).toNat

end

end A252146.P14991261697280721879

/-!
# A252147: Number of (n+2)X(7+2) 0..3 arrays with every 3X3 subblock row and column sum equal to 0 3 5 6 or 7 and every 3X3 diagonal and antidiagonal sum not equal to 0 3 5 6 or 7.

The programs for A252147, there is no canonical definition to state claims against.
-/

/-! ## A252147.P13601929849734105785

`A252148(A167487(n+5))`
-/

namespace A252147.P13601929849734105785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252148 (A167487 (n + 5)).toNat

end

end A252147.P13601929849734105785

/-! ## A252147.P9343440047123447318

`A252148(A374008(n+1))`
-/

namespace A252147.P9343440047123447318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252148 (A374008 (n + 1)).toNat

end

end A252147.P9343440047123447318

/-!
# A252149: Number of (n+2)X(n+2) 0..3 arrays with every 3X3 subblock row and column sum not equal to 0 1 3 6 or 7 and every 3X3 diagonal and antidiagonal sum equal to 0 1 3 6 or 7.

The programs for A252149, there is no canonical definition to state claims against.
-/

/-! ## A252149.P3352044158115493125

`A252157(∑[4*n]+1)`
-/

namespace A252149.P3352044158115493125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252157 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A252149.P3352044158115493125

/-! ## A252149.P2732802912945831996

`record[A003982(n)*A252157(n+1)]`
-/

namespace A252149.P2732802912945831996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A252157 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252149.P2732802912945831996

/-! ## A252149.P10724034851632603615

`record[root(A252157(n+1), A143182(n))]`
-/

namespace A252149.P10724034851632603615
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A252157 (n + 1) : ℝ) ^ (1 / (A143182 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252149.P10724034851632603615

/-! ## A252149.P849590975845936109

`record[A010052(2*n+1)*A252157(n+1)]`
-/

namespace A252149.P849590975845936109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (2 * n + 1) * A252157 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252149.P849590975845936109

/-!
# A252150: Number of (n+2)X(1+2) 0..3 arrays with every 3X3 subblock row and column sum not equal to 0 1 3 6 or 7 and every 3X3 diagonal and antidiagonal sum equal to 0 1 3 6 or 7.

The programs for A252150, there is no canonical definition to state claims against.
-/

/-! ## A252150.P914255910528344381

`A252157(∑[n]+1)`
-/

namespace A252150.P914255910528344381
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252157 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A252150.P914255910528344381

/-! ## A252150.P18000458538055252184

`record[A252157(A114091(n+1))]`
-/

namespace A252150.P18000458538055252184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252157 (A114091 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252150.P18000458538055252184

/-! ## A252150.P10676039632821281727

`record[A252157(A249725(n+1))]`
-/

namespace A252150.P10676039632821281727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252157 (A249725 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252150.P10676039632821281727

/-! ## A252150.P1678596283509471604

`record[A252157(A249742(n+1))]`
-/

namespace A252150.P1678596283509471604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252157 (A249742 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252150.P1678596283509471604

/-! ## A252150.P5613975775206925561

`record[A252157(A254052(n+1))]`
-/

namespace A252150.P5613975775206925561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252157 (A254052 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252150.P5613975775206925561

/-!
# A252151: Number of (n+2)X(2+2) 0..3 arrays with every 3X3 subblock row and column sum not equal to 0 1 3 6 or 7 and every 3X3 diagonal and antidiagonal sum equal to 0 1 3 6 or 7.

The programs for A252151, there is no canonical definition to state claims against.
-/

/-! ## A252151.P3266205570548834528

`A252157(∑[n+1]+2)`
-/

namespace A252151.P3266205570548834528
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252157 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A252151.P3266205570548834528

/-!
# A252152: Number of (n+2)X(3+2) 0..3 arrays with every 3X3 subblock row and column sum not equal to 0 1 3 6 or 7 and every 3X3 diagonal and antidiagonal sum equal to 0 1 3 6 or 7.

The programs for A252152, there is no canonical definition to state claims against.
-/

/-! ## A252152.P11264043120793475028

`A252157(∑[n+2]+4)`
-/

namespace A252152.P11264043120793475028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252157 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A252152.P11264043120793475028

/-!
# A252153: Number of (n+2)X(4+2) 0..3 arrays with every 3X3 subblock row and column sum not equal to 0 1 3 6 or 7 and every 3X3 diagonal and antidiagonal sum equal to 0 1 3 6 or 7.

The programs for A252153, there is no canonical definition to state claims against.
-/

/-! ## A252153.P13558328038638717497

`A252157(∑[n+3]+7)`
-/

namespace A252153.P13558328038638717497
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252157 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A252153.P13558328038638717497

/-!
# A252154: Number of (n+2)X(5+2) 0..3 arrays with every 3X3 subblock row and column sum not equal to 0 1 3 6 or 7 and every 3X3 diagonal and antidiagonal sum equal to 0 1 3 6 or 7.

The programs for A252154, there is no canonical definition to state claims against.
-/

/-! ## A252154.P7888783893887827974

`A252157(C(n+6, 2)-n)`
-/

namespace A252154.P7888783893887827974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252157 (Nat.choose (n + 6) 2 - n)

end

end A252154.P7888783893887827974

/-!
# A252155: Number of (n+2)X(6+2) 0..3 arrays with every 3X3 subblock row and column sum not equal to 0 1 3 6 or 7 and every 3X3 diagonal and antidiagonal sum equal to 0 1 3 6 or 7.

The programs for A252155, there is no canonical definition to state claims against.
-/

/-! ## A252155.P11696216431035511835

`A252157(∑[n+5]+16)`
-/

namespace A252155.P11696216431035511835
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252157 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A252155.P11696216431035511835

/-!
# A252156: Number of (n+2)X(7+2) 0..3 arrays with every 3X3 subblock row and column sum not equal to 0 1 3 6 or 7 and every 3X3 diagonal and antidiagonal sum equal to 0 1 3 6 or 7.

The programs for A252156, there is no canonical definition to state claims against.
-/

/-! ## A252156.P10513529297212062207

`A252157(A167487(n+5))`
-/

namespace A252156.P10513529297212062207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252157 (A167487 (n + 5)).toNat

end

end A252156.P10513529297212062207

/-! ## A252156.P9842732690783451879

`A252157(A374008(n+1))`
-/

namespace A252156.P9842732690783451879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252157 (A374008 (n + 1)).toNat

end

end A252156.P9842732690783451879

/-!
# A252159: Number of (n+2)X(n+2) 0..3 arrays with every 3X3 subblock row and column sum equal to 2 3 4 6 or 7 and every 3X3 diagonal and antidiagonal sum not equal to 2 3 4 6 or 7.

The programs for A252159, there is no canonical definition to state claims against.
-/

/-! ## A252159.P9952298960705293058

`A252167(∑[4*n]+1)`
-/

namespace A252159.P9952298960705293058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252167 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A252159.P9952298960705293058

/-!
# A252160: Number of (n+2)X(1+2) 0..3 arrays with every 3X3 subblock row and column sum equal to 2 3 4 6 or 7 and every 3X3 diagonal and antidiagonal sum not equal to 2 3 4 6 or 7.

The programs for A252160, there is no canonical definition to state claims against.
-/

/-! ## A252160.P7540197744882995672

`A252167(∑[n]+1)`
-/

namespace A252160.P7540197744882995672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252167 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A252160.P7540197744882995672

/-! ## A252160.P9347584789684616675

`record[A252167(A106247(n))]`
-/

namespace A252160.P9347584789684616675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252167 (A106247 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252160.P9347584789684616675

/-! ## A252160.P12569679515655800165

`record[A252167(n+1)/A086645(n)]`
-/

namespace A252160.P12569679515655800165
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A252167 (n + 1) : ℚ) / (A086645 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252160.P12569679515655800165

/-! ## A252160.P8558341435143064767

`record[A252167(n+1)/A088617(n)]`
-/

namespace A252160.P8558341435143064767
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A252167 (n + 1) : ℚ) / (A088617 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252160.P8558341435143064767

/-! ## A252160.P5652230752909124923

`record[root(A252167(n+1), A193592(n))]`
-/

namespace A252160.P5652230752909124923
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A252167 (n + 1) : ℝ) ^ (1 / (A193592 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252160.P5652230752909124923

/-!
# A252161: Number of (n+2)X(2+2) 0..3 arrays with every 3X3 subblock row and column sum equal to 2 3 4 6 or 7 and every 3X3 diagonal and antidiagonal sum not equal to 2 3 4 6 or 7.

The programs for A252161, there is no canonical definition to state claims against.
-/

/-! ## A252161.P7490608508279441433

`A252167(∑[n+1]+2)`
-/

namespace A252161.P7490608508279441433
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252167 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A252161.P7490608508279441433

/-!
# A252162: Number of (n+2) X (3+2) 0..3 arrays with every 3 X 3 subblock row and column sum equal to 2 3 4 6 or 7 and every 3 X 3 diagonal and antidiagonal sum not equal to 2 3 4 6 or 7.

The programs for A252162, there is no canonical definition to state claims against.
-/

/-! ## A252162.P11904487701639713990

`A252167(∑[n+2]+4)`
-/

namespace A252162.P11904487701639713990
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252167 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A252162.P11904487701639713990

/-!
# A252163: Number of (n+2)X(4+2) 0..3 arrays with every 3X3 subblock row and column sum equal to 2 3 4 6 or 7 and every 3X3 diagonal and antidiagonal sum not equal to 2 3 4 6 or 7.

The programs for A252163, there is no canonical definition to state claims against.
-/

/-! ## A252163.P10660943701912679116

`A252167(A374004(n+1))`
-/

namespace A252163.P10660943701912679116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252167 (A374004 (n + 1)).toNat

end

end A252163.P10660943701912679116

/-! ## A252163.P1536712650283366595

`A252167(A141214(n+1))`
-/

namespace A252163.P1536712650283366595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252167 (A141214 (n + 1)).toNat

end

end A252163.P1536712650283366595

/-!
# A252164: Number of (n+2)X(5+2) 0..3 arrays with every 3X3 subblock row and column sum equal to 2 3 4 6 or 7 and every 3X3 diagonal and antidiagonal sum not equal to 2 3 4 6 or 7.

The programs for A252164, there is no canonical definition to state claims against.
-/

/-! ## A252164.P4068546853441942461

`A252167(A374005(n+1))`
-/

namespace A252164.P4068546853441942461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252167 (A374005 (n + 1)).toNat

end

end A252164.P4068546853441942461

/-! ## A252164.P13043808796395751779

`A252167(Δ[A264443(n)])`
-/

namespace A252164.P13043808796395751779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252167 (f1 (n + 1) - f1 n).toNat

end

end A252164.P13043808796395751779

/-!
# A252165: Number of (n+2)X(6+2) 0..3 arrays with every 3X3 subblock row and column sum equal to 2 3 4 6 or 7 and every 3X3 diagonal and antidiagonal sum not equal to 2 3 4 6 or 7.

The programs for A252165, there is no canonical definition to state claims against.
-/

/-! ## A252165.P17806751894413011741

`A252167(A374007(n+1))`
-/

namespace A252165.P17806751894413011741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252167 (A374007 (n + 1)).toNat

end

end A252165.P17806751894413011741

/-!
# A252166: Number of (n+2)X(7+2) 0..3 arrays with every 3X3 subblock row and column sum equal to 2 3 4 6 or 7 and every 3X3 diagonal and antidiagonal sum not equal to 2 3 4 6 or 7.

The programs for A252166, there is no canonical definition to state claims against.
-/

/-! ## A252166.P15815032208860758072

`A252167(A374008(n+1))`
-/

namespace A252166.P15815032208860758072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252167 (A374008 (n + 1)).toNat

end

end A252166.P15815032208860758072

/-!
# A252168: Smallest k > 0 such that |(2n-1) - 2^k| is prime, or -1 if no such k exists.

The programs for A252168, there is no canonical definition to state claims against.
-/

/-! ## A252168.P8028889596807774790

`A276417(A283622(n+2)*A130706(n)+n)`
-/

namespace A252168.P8028889596807774790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276417 (A283622 (n + 2) * A130706 n + (n : ℤ)).toNat

end

end A252168.P8028889596807774790

/-! ## A252168.P16785185775373909748

`gcd(A276417(n), A346971(n+2))`
-/

namespace A252168.P16785185775373909748
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A276417 n) (A346971 (n + 2))

end

end A252168.P16785185775373909748

/-! ## A252168.P16456347248326961214

`gcd(A137784(n+1), A276417(n))`
-/

namespace A252168.P16456347248326961214
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A137784 (n + 1)) (A276417 n)

end

end A252168.P16456347248326961214

/-! ## A252168.P2904326271300779647

`A276417(n)+A049084(A364546(2*n+3))`
-/

namespace A252168.P2904326271300779647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276417 n + A049084 (A364546 (2 * n + 3)).toNat

end

end A252168.P2904326271300779647

/-! ## A252168.P2757632851106553740

`A357181(A056772(n+1))`
-/

namespace A252168.P2757632851106553740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357181 (A056772 (n + 1)).toNat

end

end A252168.P2757632851106553740

/-!
# A252169: Beatty sequence for sqrt(Pi*phi) where phi is the golden ratio A001622.

The programs for A252169, the canonical program `A252169.P14682295271147615884` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A252169 has offset 1).

The definition of A252169 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A252169.P14682295271147615884

`floor((n+1)*sqrt(π*ϕ))`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A252169

/-- `floor((n+1)*sqrt(π*ϕ))` -/
def P14682295271147615884.Spec : Prop :=
  ∀ n, P14682295271147615884.a n = A252169 (n + 1)

theorem P14682295271147615884.correct : P14682295271147615884.Spec := by
  intro n
  simp only [A252169, Nat.add_sub_cancel]

end A252169

/-! ## A252169.P17696850147119620557

`∑[A020639((n+2)*(A133263(n+6)+4))]`
-/

namespace A252169.P17696850147119620557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 ((n + 2 : ℤ) * (A133263 (n + 6) + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A252169.P17696850147119620557

namespace A252169

/-- `∑[A020639((n+2)*(A133263(n+6)+4))]` -/
def P17696850147119620557.Spec : Prop :=
  ∀ n, P17696850147119620557.a n = A252169 (n + 1)

end A252169

/-! ## A252169.P11033910856570109426

`∑[∑[A114458(A001318(3*n+1))%2+2]%2+2]`
-/

namespace A252169.P11033910856570109426
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A114458 (A001318 (3 * n + 1)).toNat) 2 + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f2 j) 2 + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A252169.P11033910856570109426

namespace A252169

/-- `∑[∑[A114458(A001318(3*n+1))%2+2]%2+2]` -/
def P11033910856570109426.Spec : Prop :=
  ∀ n, P11033910856570109426.a n = A252169 (n + 1)

end A252169

/-!
# A252170: Smallest primitive prime factor of 12^n-1.

The programs for A252170, there is no canonical definition to state claims against.
-/

/-! ## A252170.P3971831406902977277

`A020639(record[lcm(12, a(n-1))+1])` with `a(0)=11, a(1)=0`
-/

namespace A252170.P3971831406902977277
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [11, 0] fun n f1 =>
  Nat.lcm 12 (f1 (n - 1)) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A252170.P3971831406902977277

/-!
# A252171: Number of length n+2 0..2 arrays with the sum of the maximum minus the minimum of adjacent triples multiplied by some arrangement of +-1 equal to zero.

The programs for A252171, there is no canonical definition to state claims against.
-/

/-! ## A252171.P884281791926537362

`A252177(∑[2+n])`
-/

namespace A252171.P884281791926537362
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252177 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A252171.P884281791926537362

/-!
# A252172: Number of length n+2 0..3 arrays with the sum of the maximum minus the minimum of adjacent triples multiplied by some arrangement of +-1 equal to zero.

The programs for A252172, there is no canonical definition to state claims against.
-/

/-! ## A252172.P6327277457400637850

`A252177(1+∑[3+n])`
-/

namespace A252172.P6327277457400637850
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252177 (1 + ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A252172.P6327277457400637850

/-!
# A252173: Number of length n+2 0..4 arrays with the sum of the maximum minus the minimum of adjacent triples multiplied by some arrangement of +-1 equal to zero.

The programs for A252173, there is no canonical definition to state claims against.
-/

/-! ## A252173.P14991942337755179894

`A252177(3+∑[n+4])`
-/

namespace A252173.P14991942337755179894
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252177 (3 + ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A252173.P14991942337755179894

/-!
# A252174: Number of length n+2 0..5 arrays with the sum of the maximum minus the minimum of adjacent triples multiplied by some arrangement of +-1 equal to zero.

The programs for A252174, there is no canonical definition to state claims against.
-/

/-! ## A252174.P13783332940298754195

`A252177(Δ[A264443(n)])`
-/

namespace A252174.P13783332940298754195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252177 (f1 (n + 1) - f1 n).toNat

end

end A252174.P13783332940298754195

/-!
# A252175: Number of length n+2 0..6 arrays with the sum of the maximum minus the minimum of adjacent triples multiplied by some arrangement of +-1 equal to zero.

The programs for A252175, there is no canonical definition to state claims against.
-/

/-! ## A252175.P13468043924350237139

`A252177(A052905(n+3))`
-/

namespace A252175.P13468043924350237139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252177 (A052905 (n + 3)).toNat

end

end A252175.P13468043924350237139

/-!
# A252176: Number of length n+2 0..7 arrays with the sum of the maximum minus the minimum of adjacent triples multiplied by some arrangement of +-1 equal to zero.

The programs for A252176, there is no canonical definition to state claims against.
-/

/-! ## A252176.P12796456527917713855

`A252177(A055999(n+4))`
-/

namespace A252176.P12796456527917713855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252177 (A055999 (n + 4)).toNat

end

end A252176.P12796456527917713855

/-!
# A252178: Number of length 2+2 0..n arrays with the sum of the maximum minus the minimum of adjacent triples multiplied by some arrangement of +-1 equal to zero.

The programs for A252178, the canonical program `A252178.P5229348059605843036` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A252178 has offset 1).

The definition of A252178 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A252178.P6302645900030879334

`ogf((12-11x+7x^2-5x^3+x^4)/(1-5x+10x^2-10x^3+5x^4-x^5))`
-/

namespace A252178.P6302645900030879334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [12, -11, 7, -5, 1] [1, -5, 10, -10, 5, -1] n

end

end A252178.P6302645900030879334

namespace A252178

/-- `ogf((12-11x+7x^2-5x^3+x^4)/(1-5x+10x^2-10x^3+5x^4-x^5))` -/
def P6302645900030879334.Spec : Prop :=
  ∀ n, P6302645900030879334.a n = A252178 (n + 1)

end A252178

/-! ## A252178.P5229348059605843036

`(n+1)^4/6+7*(n+1)^3/3+29*(n+1)²/6+11*(n+1)/3+1`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A252178

/-- `(n+1)^4/6+7*(n+1)^3/3+29*(n+1)²/6+11*(n+1)/3+1` -/
def P5229348059605843036.Spec : Prop :=
  ∀ n, P5229348059605843036.a n = (A252178 (n + 1) : ℚ)

end A252178

/-! ## A252178.P5712701289408954963

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=12, a(1)=49, a(2)=132, a(3)=285, a(4)=536`
-/

namespace A252178.P5712701289408954963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [12, 49, 132, 285, 536] fun n a =>
  5 * a (n - 1) - 10 * a (n - 2) + 10 * a (n - 3) - 5 * a (n - 4) + a (n - 5)

end

end A252178.P5712701289408954963

namespace A252178

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P5712701289408954963.Spec : Prop :=
  ∀ n, P5712701289408954963.a n = A252178 (n + 1)

end A252178

/-! ## A252178.P818869158238549150

`A252177(2+∑[1+n])`
-/

namespace A252178.P818869158238549150
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252177 (2 + ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A252178.P818869158238549150

namespace A252178

/-- `A252177(2+∑[1+n])` -/
def P818869158238549150.Spec : Prop :=
  ∀ n, P818869158238549150.a n = A252178 (n + 1)

end A252178

/-!
# A252179: Number of length 3+2 0..n arrays with the sum of the maximum minus the minimum of adjacent triples multiplied by some arrangement of +-1 equal to zero.

The programs for A252179, the canonical program `A252179.P11442488222726550840` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A252179 has offset 1).

The definition of A252179 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A252179.P11442488222726550840

`ogf((12+47x+15x^2-9x^3-41x^4-13x^5+3x^6+3x^7-x^8)/(1-3x+8x^3-6x^4-6x^5+8x^6-3x^8+x^9))`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A252179

/-- `ogf((12+47x+15x^2-9x^3-41x^4-13x^5+3x^6+3x^7-x^8)/(1-3x+8x^3-6x^4-6x^5+8x^6-3x^8+x^9))` -/
def P11442488222726550840.Spec : Prop :=
  ∀ n, P11442488222726550840.a n = A252179 (n + 1)

theorem P11442488222726550840.correct : P11442488222726550840.Spec := by
  intro n
  simp only [A252179, Nat.add_sub_cancel]

end A252179

/-! ## A252179.P14036250764959561120

`record[A252177(3+∑[n])]`
-/

namespace A252179.P14036250764959561120
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252177 (3 + ∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252179.P14036250764959561120

namespace A252179

/-- `record[A252177(3+∑[n])]` -/
def P14036250764959561120.Spec : Prop :=
  ∀ n, P14036250764959561120.a n = A252179 (n + 1)

end A252179

/-! ## A252179.P6940055554342615920

`A252177(4+∑[2+n])`
-/

namespace A252179.P6940055554342615920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252177 (4 + ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A252179.P6940055554342615920

namespace A252179

/-- `A252177(4+∑[2+n])` -/
def P6940055554342615920.Spec : Prop :=
  ∀ n, P6940055554342615920.a n = A252179 (n + 1)

end A252179

/-!
# A252180: Number of length 4+2 0..n arrays with the sum of the maximum minus the minimum of adjacent triples multiplied by some arrangement of +-1 equal to zero.

The programs for A252180, there is no canonical definition to state claims against.
-/

/-! ## A252180.P16087360001085657545

`A252177(∑[n+3]+7)`
-/

namespace A252180.P16087360001085657545
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252177 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A252180.P16087360001085657545

/-!
# A252181: Number of length 5+2 0..n arrays with the sum of the maximum minus the minimum of adjacent triples multiplied by some arrangement of +-1 equal to zero.

The programs for A252181, there is no canonical definition to state claims against.
-/

/-! ## A252181.P13937914198802194724

`A252177(∑[n+4]+11)`
-/

namespace A252181.P13937914198802194724
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252177 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A252181.P13937914198802194724

/-!
# A252182: Number of length 6+2 0..n arrays with the sum of the maximum minus the minimum of adjacent triples multiplied by some arrangement of +-1 equal to zero.

The programs for A252182, there is no canonical definition to state claims against.
-/

/-! ## A252182.P3368242443371760993

`A252177(A056115(n)+21)`
-/

namespace A252182.P3368242443371760993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252177 (A056115 n + 21).toNat

end

end A252182.P3368242443371760993

/-!
# A252183: Number of length 7+2 0..n arrays with the sum of the maximum minus the minimum of adjacent triples multiplied by some arrangement of +-1 equal to zero.

The programs for A252183, there is no canonical definition to state claims against.
-/

/-! ## A252183.P3286297731180610828

`A252177(∑[n+6]+22)`
-/

namespace A252183.P3286297731180610828
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252177 (∑ j ∈ Finset.range (n + 1), f1 j + 22)

end

end A252183.P3286297731180610828

/-!
# A252184: Number of (n+2)X(n+2) 0..3 arrays with every 3X3 subblock row and column sum equal to 0 1 3 6 or 7 and every 3X3 diagonal and antidiagonal sum not equal to 0 1 3 6 or 7.

The programs for A252184, there is no canonical definition to state claims against.
-/

/-! ## A252184.P18394841675108308870

`A252192(∑[4*n]+1)`
-/

namespace A252184.P18394841675108308870
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252192 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A252184.P18394841675108308870

/-! ## A252184.P1144303305572129098

`record[A003982(n)*A252192(n+1)]`
-/

namespace A252184.P1144303305572129098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A252192 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252184.P1144303305572129098

/-! ## A252184.P4872882756924127579

`record[gcd(A037012(n), A252192(n+1))]`
-/

namespace A252184.P4872882756924127579
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A037012 n) (A252192 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252184.P4872882756924127579

/-! ## A252184.P15169331516517576541

`record[root(A252192(n+1), A059897(n+1))]`
-/

namespace A252184.P15169331516517576541
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A252192 (n + 1) : ℝ) ^ (1 / (A059897 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252184.P15169331516517576541

/-!
# A252185: Number of (n+2)X(1+2) 0..3 arrays with every 3X3 subblock row and column sum equal to 0 1 3 6 or 7 and every 3X3 diagonal and antidiagonal sum not equal to 0 1 3 6 or 7.

The programs for A252185, there is no canonical definition to state claims against.
-/

/-! ## A252185.P6140654310642630569

`A252192(∑[n]+1)`
-/

namespace A252185.P6140654310642630569
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252192 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A252185.P6140654310642630569

/-! ## A252185.P1091279729751167877

`record[A252192(A106247(n))]`
-/

namespace A252185.P1091279729751167877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252192 (A106247 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252185.P1091279729751167877

/-! ## A252185.P11564164295137931371

`record[A252192(A056534(n+1))]`
-/

namespace A252185.P11564164295137931371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252192 (A056534 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252185.P11564164295137931371

/-! ## A252185.P2171459294967619891

`record[A252192(A056536(n+1))]`
-/

namespace A252185.P2171459294967619891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252192 (A056536 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252185.P2171459294967619891

/-! ## A252185.P15793255143317073399

`record[A252192(A114091(n+1))]`
-/

namespace A252185.P15793255143317073399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252192 (A114091 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252185.P15793255143317073399

/-!
# A252186: Number of (n+2) X (2+2) 0..3 arrays with every 3 X 3 subblock row and column sum equal to 0 1 3 6 or 7 and every 3 X 3 diagonal and antidiagonal sum not equal to 0 1 3 6 or 7.

The programs for A252186, there is no canonical definition to state claims against.
-/

/-! ## A252186.P12815298790285807990

`A252192(∑[1+n]+2)`
-/

namespace A252186.P12815298790285807990
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252192 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A252186.P12815298790285807990

/-! ## A252186.P12454505405928109838

`record[A167374(n)*A252192(n+3)]`
-/

namespace A252186.P12454505405928109838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167374 n * A252192 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252186.P12454505405928109838

/-!
# A252187: Number of (n+2) X (3+2) 0..3 arrays with every 3 X 3 subblock row and column sum equal to 0 1 3 6 or 7 and every 3 X 3 diagonal and antidiagonal sum not equal to 0 1 3 6 or 7.

The programs for A252187, there is no canonical definition to state claims against.
-/

/-! ## A252187.P9544760184910117479

`A252192(∑[n+2]+4)`
-/

namespace A252187.P9544760184910117479
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252192 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A252187.P9544760184910117479

/-! ## A252187.P16645975902487909011

`record[A252192(n+4)/A093375(n+1)]`
-/

namespace A252187.P16645975902487909011
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A252192 (n + 4) : ℚ) / (A093375 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252187.P16645975902487909011

/-!
# A252188: Number of (n+2) X (4+2) 0..3 arrays with every 3 X 3 subblock row and column sum equal to 0 1 3 6 or 7 and every 3X3 diagonal and antidiagonal sum not equal to 0, 1, 3, 6, or 7.

The programs for A252188, there is no canonical definition to state claims against.
-/

/-! ## A252188.P9833127568023359725

`A252192(∑[n+3]+7)`
-/

namespace A252188.P9833127568023359725
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252192 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A252188.P9833127568023359725

/-!
# A252189: Number of (n+2)X(5+2) 0..3 arrays with every 3X3 subblock row and column sum equal to 0 1 3 6 or 7 and every 3X3 diagonal and antidiagonal sum not equal to 0 1 3 6 or 7.

The programs for A252189, there is no canonical definition to state claims against.
-/

/-! ## A252189.P16407668387272311262

`A252192(∑[n+4]+11)`
-/

namespace A252189.P16407668387272311262
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252192 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A252189.P16407668387272311262

/-!
# A252190: Number of (n+2)X(6+2) 0..3 arrays with every 3X3 subblock row and column sum equal to 0 1 3 6 or 7 and every 3X3 diagonal and antidiagonal sum not equal to 0 1 3 6 or 7.

The programs for A252190, there is no canonical definition to state claims against.
-/

/-! ## A252190.P7841063401973192740

`A252192(∑[n+5]+16)`
-/

namespace A252190.P7841063401973192740
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252192 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A252190.P7841063401973192740

/-!
# A252191: Number of (n+2)X(7+2) 0..3 arrays with every 3X3 subblock row and column sum equal to 0 1 3 6 or 7 and every 3X3 diagonal and antidiagonal sum not equal to 0 1 3 6 or 7.

The programs for A252191, there is no canonical definition to state claims against.
-/

/-! ## A252191.P10116816467182597015

`A252192(A167487(n+5))`
-/

namespace A252191.P10116816467182597015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252192 (A167487 (n + 5)).toNat

end

end A252191.P10116816467182597015

/-! ## A252191.P18114689658428363317

`A252192(A374008(n+1))`
-/

namespace A252191.P18114689658428363317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252192 (A374008 (n + 1)).toNat

end

end A252191.P18114689658428363317

/-!
# A252193: Number of (n+2)X(n+2) 0..3 arrays with every 3X3 subblock row, column, diagonal and antidiagonal sum not equal to 0 3 5 6 or 7.

The programs for A252193, there is no canonical definition to state claims against.
-/

/-! ## A252193.P14330354396787054971

`A252201(∑[4*n]+1)`
-/

namespace A252193.P14330354396787054971
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252201 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A252193.P14330354396787054971

/-! ## A252193.P4674118714396438983

`record[gcd(A114327(n), A252201(n+1))]`
-/

namespace A252193.P4674118714396438983
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A252201 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252193.P4674118714396438983

/-!
# A252194: Number of (n+2)X(1+2) 0..3 arrays with every 3X3 subblock row, column, diagonal and antidiagonal sum not equal to 0 3 5 6 or 7.

The programs for A252194, there is no canonical definition to state claims against.
-/

/-! ## A252194.P10442372859839185442

`A252201(∑[n]+1)`
-/

namespace A252194.P10442372859839185442
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252201 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A252194.P10442372859839185442

/-! ## A252194.P6818257094327628133

`record[A010054(n)*A252201(n+1)]`
-/

namespace A252194.P6818257094327628133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A252201 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252194.P6818257094327628133

/-! ## A252194.P11892548635568430831

`record[A252201(n+1)/A056940(n)]`
-/

namespace A252194.P11892548635568430831
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A252201 (n + 1) : ℚ) / (A056940 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252194.P11892548635568430831

/-! ## A252194.P7844925003073340138

`record[A252201(n+1)/A180960(n)]`
-/

namespace A252194.P7844925003073340138
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A252201 (n + 1) : ℚ) / (A180960 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252194.P7844925003073340138

/-! ## A252194.P10712180176736933267

`record[root(A252201(n+1), A008288(n))]`
-/

namespace A252194.P10712180176736933267
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A252201 (n + 1) : ℝ) ^ (1 / (A008288 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A252194.P10712180176736933267

/-!
# A252195: Number of (n+2)X(2+2) 0..3 arrays with every 3X3 subblock row, column, diagonal and antidiagonal sum not equal to 0 3 5 6 or 7.

The programs for A252195, there is no canonical definition to state claims against.
-/

/-! ## A252195.P1676115675377008532

`A252201(∑[n+1]+2)`
-/

namespace A252195.P1676115675377008532
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252201 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A252195.P1676115675377008532

/-!
# A252196: Number of (n+2)X(3+2) 0..3 arrays with every 3X3 subblock row, column, diagonal and antidiagonal sum not equal to 0 3 5 6 or 7.

The programs for A252196, there is no canonical definition to state claims against.
-/

/-! ## A252196.P8441766647063918692

`A252201(∑[n+2]+4)`
-/

namespace A252196.P8441766647063918692
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252201 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A252196.P8441766647063918692

/-!
# A252197: Number of (n+2) X (4+2) 0..3 arrays with every 3 X 3 subblock row, column, diagonal and antidiagonal sum not equal to 0 3 5 6 or 7.

The programs for A252197, there is no canonical definition to state claims against.
-/

/-! ## A252197.P15588624478778920875

`A252201(∑[n+3]+7)`
-/

namespace A252197.P15588624478778920875
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252201 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A252197.P15588624478778920875

/-!
# A252198: Number of (n+2)X(5+2) 0..3 arrays with every 3X3 subblock row, column, diagonal and antidiagonal sum not equal to 0 3 5 6 or 7.

The programs for A252198, there is no canonical definition to state claims against.
-/

/-! ## A252198.P3695076914418163416

`A252201(A374005(n+1))`
-/

namespace A252198.P3695076914418163416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252201 (A374005 (n + 1)).toNat

end

end A252198.P3695076914418163416

/-!
# A252199: Number of (n+2)X(6+2) 0..3 arrays with every 3X3 subblock row, column, diagonal and antidiagonal sum not equal to 0 3 5 6 or 7.

The programs for A252199, there is no canonical definition to state claims against.
-/

/-! ## A252199.P7784643302795167961

`A252201(A374007(n+1))`
-/

namespace A252199.P7784643302795167961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252201 (A374007 (n + 1)).toNat

end

end A252199.P7784643302795167961

