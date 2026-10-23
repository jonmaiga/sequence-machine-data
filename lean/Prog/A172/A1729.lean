import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C006
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C001
import Seq.B008.C000
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
# A172904: Number of n X 6 0..6 arrays with row sums 6 and column sums n.

The programs for A172904, there is no canonical definition to state claims against.
-/

/-! ## A172904.P14546477382507344037

`A333901(A166136(n+6))`
-/

namespace A172904.P14546477382507344037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333901 (A166136 (n + 6)).toNat

end

end A172904.P14546477382507344037

/-! ## A172904.P9086181051463445221

`A333901(eq[5, A219347(n)])`
-/

namespace A172904.P9086181051463445221
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333901 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A172904.P9086181051463445221

/-! ## A172904.P9262642275770983101

`A333901(eq[7, A128227(n)])`
-/

namespace A172904.P9262642275770983101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128227 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333901 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A172904.P9262642275770983101

/-! ## A172904.P308368206860090430

`A333901(eq[7, A193592(n)])`
-/

namespace A172904.P308368206860090430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333901 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A172904.P308368206860090430

/-! ## A172904.P15694864660138616414

`A333901(eq[64, A057728(n+1)])`
-/

namespace A172904.P15694864660138616414
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  64

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333901 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A172904.P15694864660138616414

/-!
# A172907: Number of n X n 0..6 arrays with row sums n and column sums n.

The programs for A172907, there is no canonical definition to state claims against.
-/

/-! ## A172907.P2222457262001993145

`A257493(eq[4, A261790(n)])`
-/

namespace A172907.P2222457262001993145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261790 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257493 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A172907.P2222457262001993145

/-! ## A172907.P15597598187456573808

`A110058((n+1)*A257462(2*n))`
-/

namespace A172907.P15597598187456573808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110058 ((n + 1 : ℤ) * A257462 (2 * n)).toNat

end

end A172907.P15597598187456573808

/-!
# A172919: Number of n X n 0..7 arrays with row sums 7 and column sums 7.

The programs for A172919, there is no canonical definition to state claims against.
-/

/-! ## A172919.P9715189587470242062

`A257493(A155212(n+4))`
-/

namespace A172919.P9715189587470242062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257493 (A155212 (n + 4)).toNat

end

end A172919.P9715189587470242062

/-! ## A172919.P1082835029335476475

`A257493(eq[7, A025581(n)])`
-/

namespace A172919.P1082835029335476475
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257493 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A172919.P1082835029335476475

/-! ## A172919.P13886862918195983985

`A257493(eq[8, A193739(n)])`
-/

namespace A172919.P13886862918195983985
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257493 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A172919.P13886862918195983985

/-! ## A172919.P5940096871485540724

`A257493(eq[15, A099375(n)])`
-/

namespace A172919.P5940096871485540724
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257493 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A172919.P5940096871485540724

/-! ## A172919.P4479597413480971258

`A257493(A056000(n+4)+2)`
-/

namespace A172919.P4479597413480971258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257493 (A056000 (n + 4) + 2).toNat

end

end A172919.P4479597413480971258

/-!
# A172931: 

The programs for A172931, there is no canonical definition to state claims against.
-/

/-! ## A172931.P5522534114652494017

`A333901(A155212(n+5))`
-/

namespace A172931.P5522534114652494017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333901 (A155212 (n + 5)).toNat

end

end A172931.P5522534114652494017

/-! ## A172931.P3069253538290200867

`A333901(A167487(n+7))`
-/

namespace A172931.P3069253538290200867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333901 (A167487 (n + 7)).toNat

end

end A172931.P3069253538290200867

/-! ## A172931.P12037789672177196475

`A333901(eq[6, A219347(n)])`
-/

namespace A172931.P12037789672177196475
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333901 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A172931.P12037789672177196475

/-! ## A172931.P2140195166788174698

`A333901(eq[8, A128227(n)])`
-/

namespace A172931.P2140195166788174698
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128227 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333901 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A172931.P2140195166788174698

/-! ## A172931.P13208709275656990024

`A333901(eq[8, A193592(n)])`
-/

namespace A172931.P13208709275656990024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333901 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A172931.P13208709275656990024

/-!
# A172944: Number of n X n 0..8 arrays with row sums 8 and column sums 8.

The programs for A172944, there is no canonical definition to state claims against.
-/

/-! ## A172944.P15795584446100392060

`A257493(eq[8, A025581(n)])`
-/

namespace A172944.P15795584446100392060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257493 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A172944.P15795584446100392060

/-! ## A172944.P82220841188351810

`A257493(eq[9, A193739(n)])`
-/

namespace A172944.P82220841188351810
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257493 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A172944.P82220841188351810

/-! ## A172944.P13503150261015402713

`A257493(eq[8, log2(A130321(n))])`
-/

namespace A172944.P13503150261015402713
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A130321 n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257493 (SequenceMachineLib.nth (fun j => (f1 j : ℝ) = f2 j) n)

end

end A172944.P13503150261015402713

/-! ## A172944.P2767515290079454300

`A257493(eq[8, A144257(n+1)])`
-/

namespace A172944.P2767515290079454300
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144257 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257493 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A172944.P2767515290079454300

/-! ## A172944.P4968235507642593610

`A257493(eq[9, A004736(n+1)])`
-/

namespace A172944.P4968235507642593610
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257493 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A172944.P4968235507642593610

/-!
# A172947: 

The programs for A172947, there is no canonical definition to state claims against.
-/

/-! ## A172947.P10270649899169485919

`A333901(eq[8, A219347(n)])`
-/

namespace A172947.P10270649899169485919
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333901 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A172947.P10270649899169485919

/-! ## A172947.P66924069318799205

`A333901(eq[9, A128227(n)])`
-/

namespace A172947.P66924069318799205
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128227 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333901 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A172947.P66924069318799205

/-! ## A172947.P249943089645176591

`A333901(eq[9, A193592(n)])`
-/

namespace A172947.P249943089645176591
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333901 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A172947.P249943089645176591

/-! ## A172947.P13315256518202865295

`A333901(A052905(n+7)-4)`
-/

namespace A172947.P13315256518202865295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333901 (A052905 (n + 7) - 4).toNat

end

end A172947.P13315256518202865295

/-! ## A172947.P10530127231230308571

`A333901(eq[9, A048151(n+1)])`
-/

namespace A172947.P10530127231230308571
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048151 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333901 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A172947.P10530127231230308571

/-!
# A172950: 

The programs for A172950, there is no canonical definition to state claims against.
-/

/-! ## A172950.P15383227234269652481

`A110058((n+1)*A257493(n))`
-/

namespace A172950.P15383227234269652481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110058 ((n + 1 : ℤ) * A257493 n).toNat

end

end A172950.P15383227234269652481

/-! ## A172950.P14421643110962410219

`A110058(∑[A195644(n+1)²])`
-/

namespace A172950.P14421643110962410219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195644 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110058 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A172950.P14421643110962410219

/-! ## A172950.P8140328530296786556

`A110058(∑[A195644(n+1)!])`
-/

namespace A172950.P8140328530296786556
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A195644 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110058 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A172950.P8140328530296786556

/-!
# A172958: Number of n X n 0..9 arrays with row sums 9 and column sums 9.

The programs for A172958, there is no canonical definition to state claims against.
-/

/-! ## A172958.P18175134157928121664

`A257493(A056000(n+6))`
-/

namespace A172958.P18175134157928121664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257493 (A056000 (n + 6)).toNat

end

end A172958.P18175134157928121664

/-! ## A172958.P736207159972200213

`A257493(eq[9, A025581(n)])`
-/

namespace A172958.P736207159972200213
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257493 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A172958.P736207159972200213

/-! ## A172958.P11652492933208050784

`A257493(eq[10, A193739(n)])`
-/

namespace A172958.P11652492933208050784
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257493 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A172958.P11652492933208050784

/-! ## A172958.P3310679844914613128

`A257493(eq[19, A099375(n)])`
-/

namespace A172958.P3310679844914613128
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257493 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A172958.P3310679844914613128

/-! ## A172958.P17074703013582723849

`A257493(eq[10, A004736(n+1)])`
-/

namespace A172958.P17074703013582723849
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257493 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A172958.P17074703013582723849

/-!
# A172962: 

The programs for A172962, there is no canonical definition to state claims against.
-/

/-! ## A172962.P14515916896307522945

`A110058(A032555(n+1))`
-/

namespace A172962.P14515916896307522945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110058 (A032555 (n + 1)).toNat

end

end A172962.P14515916896307522945

/-!
# A172964: Number of ways to place 2 nonattacking knights on an n X n cylindrical board.

The programs for A172964, there is no canonical definition to state claims against.
-/

/-! ## A172964.P13585054534535713107

`eq[A083261(n+1), A152800(n)]`
-/

namespace A172964.P13585054534535713107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083261 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152800 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A172964.P13585054534535713107

/-!
# A172965: Number of ways to place 3 nonattacking knights on an n X n cylindrical board.

The programs for A172965, there is no canonical definition to state claims against.
-/

/-! ## A172965.P8392122466018728464

`A276009(or(n, A354334(n)))`
-/

namespace A172965.P8392122466018728464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276009 (Int.lor (n : ℤ) (A354334 n)).toNat

end

end A172965.P8392122466018728464

/-!
# A172966: Number of ways to place 4 nonattacking knights on an n X n cylindrical board.

The programs for A172966, there is no canonical definition to state claims against.
-/

/-! ## A172966.P17996964655854546302

`A080352(and(A019545(n+1), A067902(n)))`
-/

namespace A172966.P17996964655854546302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080352 (Int.land (A019545 (n + 1)) (A067902 n)).toNat

end

end A172966.P17996964655854546302

/-!
# A172967: Number of ways to place 5 nonattacking knights on an n X n cylindrical board.

The programs for A172967, there is no canonical definition to state claims against.
-/

/-! ## A172967.P12416657389414900815

`A265329(C(A146389(n+1), 2))`
-/

namespace A172967.P12416657389414900815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265329 (Nat.choose (A146389 (n + 1)).toNat 2)

end

end A172967.P12416657389414900815

/-!
# A172968: a(n) = 7*a(n-1) - a(n-2) for n>1, a(0)=1, a(1)=2.

The programs for A172968, the canonical program `A172968.P2615953842054391302` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A172968 has offset 0).

The definition of A172968 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `7*a(n-1)-a(n-2)` (program `A172968.P2615953842054391302`, by `A172968.P2615953842054391302.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A172968.P2615953842054391302

`7*a(n-1)-a(n-2)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A172968

/-- `7*a(n-1)-a(n-2)` -/
def P2615953842054391302.Spec : Prop :=
  ∀ n, P2615953842054391302.a n = A172968 n

theorem P2615953842054391302.correct : P2615953842054391302.Spec := by
  intro n
  simp only [A172968]

end A172968

/-! ## A172968.P11229519858706638956

`(a(n-1)²+9)/a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A172968.P11229519858706638956
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n a =>
  (a (n - 1) ^ 2 + 9) / a (n - 2)

end

end A172968.P11229519858706638956

namespace A172968

/-- `(a(n-1)²+9)/a(n-2)` -/
def P11229519858706638956.Spec : Prop :=
  ∀ n, P11229519858706638956.a n = (A172968 n : ℚ)

end A172968

/-! ## A172968.P13808069533819356228

`ogf((1-5x)/(1-7x+x^2))`
-/

namespace A172968.P13808069533819356228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -5] [1, -7, 1] n

end

end A172968.P13808069533819356228

namespace A172968

/-- `ogf((1-5x)/(1-7x+x^2))` -/
def P13808069533819356228.Spec : Prop :=
  ∀ n, P13808069533819356228.a n = A172968 n

end A172968

/-! ## A172968.P17815941805607267886

`floor(ϕ^4*a(n-1))` with `a(0)=1, a(1)=2`
-/

namespace A172968.P17815941805607267886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  ⌊Real.goldenRatio ^ 4 * (a (n - 1) : ℝ)⌋

end

end A172968.P17815941805607267886

namespace A172968

/-- `floor(ϕ^4*a(n-1))` -/
def P17815941805607267886.Spec : Prop :=
  ∀ n, P17815941805607267886.a n = A172968 n

end A172968

/-! ## A172968.P15360758599576568775

`floor(ϕ²²*floor(a(n-1)))` with `a(0)=1, a(1)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A172968.P15360758599576568775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  ⌊(Real.goldenRatio ^ 2) ^ 2 * (a (n - 1) : ℝ)⌋

end

end A172968.P15360758599576568775

namespace A172968

/-- `floor(ϕ²²*floor(a(n-1)))` -/
def P15360758599576568775.Spec : Prop :=
  ∀ n, P15360758599576568775.a n = A172968 n

end A172968

/-! ## A172968.P15269171057801939261

`lcm(7, a(n-1))-a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A172968.P15269171057801939261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  (Int.lcm 7 (a (n - 1)) : ℤ) - a (n - 2)

end

end A172968.P15269171057801939261

namespace A172968

/-- `lcm(7, a(n-1))-a(n-2)` -/
def P15269171057801939261.Spec : Prop :=
  ∀ n, P15269171057801939261.a n = A172968 n

end A172968

/-! ## A172968.P11387505180237283508

`A001519(2*n)`
-/

namespace A172968.P11387505180237283508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001519 (2 * n)

end

end A172968.P11387505180237283508

namespace A172968

/-- `A001519(2*n)` -/
def P11387505180237283508.Spec : Prop :=
  ∀ n, P11387505180237283508.a n = A172968 n

end A172968

/-! ## A172968.P2085161257421645781

`A212804(4*n)`
-/

namespace A172968.P2085161257421645781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (4 * n)

end

end A172968.P2085161257421645781

namespace A172968

/-- `A212804(4*n)` -/
def P2085161257421645781.Spec : Prop :=
  ∀ n, P2085161257421645781.a n = A172968 n

end A172968

/-! ## A172968.P73751460035686185

`A247309(6*n)`
-/

namespace A172968.P73751460035686185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247309 (6 * n)

end

end A172968.P73751460035686185

namespace A172968

/-- `A247309(6*n)` -/
def P73751460035686185.Spec : Prop :=
  ∀ n, P73751460035686185.a n = A172968 n

end A172968

/-! ## A172968.P16033861188944099122

`A247049(12*n)`
-/

namespace A172968.P16033861188944099122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247049 (12 * n)

end

end A172968.P16033861188944099122

namespace A172968

/-- `A247049(12*n)` -/
def P16033861188944099122.Spec : Prop :=
  ∀ n, P16033861188944099122.a n = A172968 n

end A172968

/-! ## A172968.P6231369336018474133

`Δ[A107387(2*n)]`
-/

namespace A172968.P6231369336018474133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107387 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A172968.P6231369336018474133

namespace A172968

/-- `Δ[A107387(2*n)]` -/
def P6231369336018474133.Spec : Prop :=
  ∀ n, P6231369336018474133.a n = A172968 n

end A172968

/-! ## A172968.P15047497315680805191

`A128534(2*n)+1`
-/

namespace A172968.P15047497315680805191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128534 (2 * n) + 1

end

end A172968.P15047497315680805191

namespace A172968

/-- `A128534(2*n)+1` -/
def P15047497315680805191.Spec : Prop :=
  ∀ n, P15047497315680805191.a n = A172968 n

end A172968

/-! ## A172968.P4340033304720971600

`A032908(2*n)-1`
-/

namespace A172968.P4340033304720971600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032908 (2 * n) - 1

end

end A172968.P4340033304720971600

namespace A172968

/-- `A032908(2*n)-1` -/
def P4340033304720971600.Spec : Prop :=
  ∀ n, P4340033304720971600.a n = A172968 n

end A172968

/-! ## A172968.P14611092735277032978

`A131589(2*n)+4`
-/

namespace A172968.P14611092735277032978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131589 (2 * n) + 4

end

end A172968.P14611092735277032978

namespace A172968

/-- `A131589(2*n)+4` -/
def P14611092735277032978.Spec : Prop :=
  ∀ n, P14611092735277032978.a n = A172968 n

end A172968

/-! ## A172968.P6575506137701250785

`A051792(8*n+1)`
-/

namespace A172968.P6575506137701250785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051792 (8 * n + 1)

end

end A172968.P6575506137701250785

namespace A172968

/-- `A051792(8*n+1)` -/
def P6575506137701250785.Spec : Prop :=
  ∀ n, P6575506137701250785.a n = A172968 n

end A172968

/-! ## A172968.P16614663782229604005

`A293064(Δ[n²])+1`
-/

namespace A172968.P16614663782229604005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293064 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1

end

end A172968.P16614663782229604005

namespace A172968

/-- `A293064(Δ[n²])+1` -/
def P16614663782229604005.Spec : Prop :=
  ∀ n, P16614663782229604005.a n = A172968 n

end A172968

/-! ## A172968.P17992841956432771982

`A000045(abs(1-4*n))`
-/

namespace A172968.P17992841956432771982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 |1 - (4 * n : ℤ)|.toNat

end

end A172968.P17992841956432771982

namespace A172968

/-- `A000045(abs(1-4*n))` -/
def P17992841956432771982.Spec : Prop :=
  ∀ n, P17992841956432771982.a n = A172968 n

end A172968

/-! ## A172968.P14390591450501207744

`record[A000045(lcm(2, n)+1)]`
-/

namespace A172968.P14390591450501207744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Nat.lcm 2 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A172968.P14390591450501207744

namespace A172968

/-- `record[A000045(lcm(2, n)+1)]` -/
def P14390591450501207744.Spec : Prop :=
  ∀ n, P14390591450501207744.a n = A172968 n

end A172968

/-! ## A172968.P8834047266116753639

`record[A000045(xor(3, abs(1-n)))]`
-/

namespace A172968.P8834047266116753639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Int.xor 3 |1 - (n : ℤ)|).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A172968.P8834047266116753639

namespace A172968

/-- `record[A000045(xor(3, abs(1-n)))]` -/
def P8834047266116753639.Spec : Prop :=
  ∀ n, P8834047266116753639.a n = A172968 n

end A172968

/-! ## A172968.P11226789712860468776

`record[A000045(2*n*n%2+1)]`
-/

namespace A172968.P11226789712860468776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * n * (n % 2) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A172968.P11226789712860468776

namespace A172968

/-- `record[A000045(2*n*n%2+1)]` -/
def P11226789712860468776.Spec : Prop :=
  ∀ n, P11226789712860468776.a n = A172968 n

end A172968

/-!
# A172969: Numbers k such that 3*A000005(k) = 2*A000005(k+1).

The programs for A172969, the canonical program `A172969.P13289703455094161202` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A172969 has offset 1).

The definition of A172969 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 430 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A172969.P8222612316047981465

`eq[A000005(n+1)/3, A341062(n+1)]`
-/

namespace A172969.P8222612316047981465
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (n + 1) : ℚ) / 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341062 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n

end

end A172969.P8222612316047981465

namespace A172969

/-- `eq[A000005(n+1)/3, A341062(n+1)]` -/
def P8222612316047981465.Spec : Prop :=
  ∀ n, (P8222612316047981465.a n : ℤ) = A172969 (n + 1)

end A172969

/-! ## A172969.P13289703455094161202

`eq[A016789(A032741(n)), A114003(n+1)]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A172969

/-- `eq[A016789(A032741(n)), A114003(n+1)]` -/
def P13289703455094161202.Spec : Prop :=
  ∀ n, (P13289703455094161202.a n : ℤ) = A172969 (n + 1)

theorem P13289703455094161202.correct : P13289703455094161202.Spec := by
  intro n
  simp only [A172969, Nat.add_sub_cancel]

end A172969

/-! ## A172969.P1902840907116932839

`eq[A080036(A032741(n)), A096737(n+1)]`
-/

namespace A172969.P1902840907116932839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080036 (A032741 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096737 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A172969.P1902840907116932839

namespace A172969

/-- `eq[A080036(A032741(n)), A096737(n+1)]` -/
def P1902840907116932839.Spec : Prop :=
  ∀ n, (P1902840907116932839.a n : ℤ) = A172969 (n + 1)

end A172969

/-!
# A172971: Triangle T(n, k) = c(n) - c(k) - c(n-k), where c(n) = Product_{j=0..n} Partitions(j), read by rows.

The programs for A172971, there is no canonical definition to state claims against.
-/

/-! ## A172971.P11774929254722113421

`or(A000096(A210709(n)), A172970(n))`
-/

namespace A172971.P11774929254722113421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000096 (A210709 n).toNat) (A172970 n)

end

end A172971.P11774929254722113421

/-! ## A172971.P5118172099663035441

`A172970(n)%A002907(n)`
-/

namespace A172971.P5118172099663035441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A172970 n) (A002907 n)

end

end A172971.P5118172099663035441

/-! ## A172971.P1081100546641847248

`A172970(n-A210709(n+1))`
-/

namespace A172971.P1081100546641847248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172970 ((n : ℤ) - A210709 (n + 1)).toNat

end

end A172971.P1081100546641847248

/-! ## A172971.P12885210043416581743

`or(A172970(n), A210709(n+1))`
-/

namespace A172971.P12885210043416581743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A172970 n) (A210709 (n + 1))

end

end A172971.P12885210043416581743

/-! ## A172971.P14502208398176244073

`A172970(n)+A010872(A172980(2*(n+1)))`
-/

namespace A172971.P14502208398176244073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172970 n + A010872 (A172980 (2 * (n + 1))).toNat

end

end A172971.P14502208398176244073

/-!
# A172973: Partial sums of A048890.

The programs for A172973, there is no canonical definition to state claims against.
-/

/-! ## A172973.P4024088068698042078

`∑[A048890(n+1)]`
-/

namespace A172973.P4024088068698042078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048890 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172973.P4024088068698042078

/-! ## A172973.P4519245812910392332

`∑[record[A048890(A126759(n))]]`
-/

namespace A172973.P4519245812910392332
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048890 (A126759 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172973.P4519245812910392332

/-! ## A172973.P4620239849920920871

`∑[record[A048890(A152271(n))]]`
-/

namespace A172973.P4620239849920920871
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048890 (A152271 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172973.P4620239849920920871

/-! ## A172973.P4753543468939176226

`∑[record[A048890(A154958(n))]]`
-/

namespace A172973.P4753543468939176226
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048890 (A154958 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172973.P4753543468939176226

/-! ## A172973.P5712108800260912221

`∑[record[A048890(A263111(n))]]`
-/

namespace A172973.P5712108800260912221
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048890 (A263111 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172973.P5712108800260912221

/-! ## A172973.P16524152813499259310

`∑[record[A048890(A286544(n))]]`
-/

namespace A172973.P16524152813499259310
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048890 (A286544 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172973.P16524152813499259310

/-! ## A172973.P5087635304530699146

`∑[record[A048890(A291769(n))]]`
-/

namespace A172973.P5087635304530699146
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048890 (A291769 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172973.P5087635304530699146

/-! ## A172973.P14528170659020193440

`∑[record[A048890(A292266(n))]]`
-/

namespace A172973.P14528170659020193440
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048890 (A292266 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172973.P14528170659020193440

/-! ## A172973.P13144276345467536434

`∑[record[A048890(A328399(n))]]`
-/

namespace A172973.P13144276345467536434
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048890 (A328399 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172973.P13144276345467536434

/-! ## A172973.P16515292874759407972

`∑[record[A048890(A101504(n))]]`
-/

namespace A172973.P16515292874759407972
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048890 (A101504 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172973.P16515292874759407972

/-!
# A172974: Degrees of completeness of Łukasiewicz logics.

The programs for A172974, there is no canonical definition to state claims against.
-/

/-! ## A172974.P17452755143979450262

`comp[A172975(n+1)-1]+1`
-/

namespace A172974.P17452755143979450262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172975 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A172974.P17452755143979450262

/-! ## A172974.P7801954436496012040

`eq[char[A172975(n+1)], A151933(n)]`
-/

namespace A172974.P7801954436496012040
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172975 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A172974.P7801954436496012040

/-! ## A172974.P17454058575112244542

`lt[A069547(A363493(n)), A359005(n)]`
-/

namespace A172974.P17454058575112244542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069547 (A363493 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359005 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A172974.P17454058575112244542

/-! ## A172974.P12177704592486273999

`lt[A173886(n), A297248(A297267(n+1))]`
-/

namespace A172974.P12177704592486273999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173886 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297248 (A297267 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A172974.P12177704592486273999

/-! ## A172974.P7241367931852606223

`lt[A160468(n+1), A362284(n+1)²]`
-/

namespace A172974.P7241367931852606223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160468 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362284 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A172974.P7241367931852606223

/-!
# A172975: Complement of A172974.

The programs for A172975, there is no canonical definition to state claims against.
-/

/-! ## A172975.P14832193658158901691

`comp[A172974(n)-1]+1`
-/

namespace A172975.P14832193658158901691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172974 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A172975.P14832193658158901691

/-! ## A172975.P5907290125750452508

`comp[∪[A172967(n+3), A172974(n)]]`
-/

namespace A172975.P5907290125750452508
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172967 (n + 3)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172974 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A172975.P5907290125750452508

/-! ## A172975.P10259904891011314156

`comp[∪[A000217(3*n), A172974(n)]]`
-/

namespace A172975.P10259904891011314156
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (3 * n)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172974 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A172975.P10259904891011314156

/-! ## A172975.P6858536609534539160

`comp[∪[A172966(2*n+3), A172974(n)]]`
-/

namespace A172975.P6858536609534539160
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172966 (2 * n + 3)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172974 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A172975.P6858536609534539160

/-! ## A172975.P8841303902363249201

`eq[char[A172974(n)], A151933(n)]`
-/

namespace A172975.P8841303902363249201
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172974 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A172975.P8841303902363249201

/-!
# A172976: Primes p such that 2p - 1 and 6p - 1 are prime.

The programs for A172976, the canonical program `A172976.P18193489113681705778` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A172976 has offset 1).

The definition of A172976 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 823 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A172976.P18193489113681705778

`∩[A005382(n+1), A158015(n+1)]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A172976

/-- `∩[A005382(n+1), A158015(n+1)]` -/
def P18193489113681705778.Spec : Prop :=
  ∀ n, (P18193489113681705778.a n : ℤ) = A172976 (n + 1)

theorem P18193489113681705778.correct : P18193489113681705778.Spec := by
  intro n
  simp only [A172976, Nat.add_sub_cancel]

end A172976

/-! ## A172976.P7370354170702793523

`∩[A158015(n+1), A174568(n+1)]`
-/

namespace A172976.P7370354170702793523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158015 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174568 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A172976.P7370354170702793523

namespace A172976

/-- `∩[A158015(n+1), A174568(n+1)]` -/
def P7370354170702793523.Spec : Prop :=
  ∀ n, (P7370354170702793523.a n : ℤ) = A172976 (n + 1)

end A172976

/-! ## A172976.P7759699017805775860

`∩[A158015(n+1), A265394(n+1)]`
-/

namespace A172976.P7759699017805775860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158015 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265394 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A172976.P7759699017805775860

namespace A172976

/-- `∩[A158015(n+1), A265394(n+1)]` -/
def P7759699017805775860.Spec : Prop :=
  ∀ n, (P7759699017805775860.a n : ℤ) = A172976 (n + 1)

end A172976

/-! ## A172976.P5053830046376615715

`p?[ceil(A023208(n+1)/2)]`
-/

namespace A172976.P5053830046376615715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A023208 (n + 1) : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A172976.P5053830046376615715

namespace A172976

/-- `p?[ceil(A023208(n+1)/2)]` -/
def P5053830046376615715.Spec : Prop :=
  ∀ n, P5053830046376615715.a n = A172976 (n + 1)

end A172976

/-! ## A172976.P3732817793276827098

`∩[A158015(n+1), A384020(n+1)]`
-/

namespace A172976.P3732817793276827098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158015 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384020 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A172976.P3732817793276827098

namespace A172976

/-- `∩[A158015(n+1), A384020(n+1)]` -/
def P3732817793276827098.Spec : Prop :=
  ∀ n, (P3732817793276827098.a n : ℤ) = A172976 (n + 1)

end A172976

/-! ## A172976.P14035504390602072644

`∩[A068080(n+1), A158015(n+1)]`
-/

namespace A172976.P14035504390602072644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068080 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158015 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A172976.P14035504390602072644

namespace A172976

/-- `∩[A068080(n+1), A158015(n+1)]` -/
def P14035504390602072644.Spec : Prop :=
  ∀ n, (P14035504390602072644.a n : ℤ) = A172976 (n + 1)

end A172976

/-! ## A172976.P7314989799092912778

`∩[A006254(n+1), A158015(n+1)]`
-/

namespace A172976.P7314989799092912778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006254 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158015 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A172976.P7314989799092912778

namespace A172976

/-- `∩[A006254(n+1), A158015(n+1)]` -/
def P7314989799092912778.Spec : Prop :=
  ∀ n, (P7314989799092912778.a n : ℤ) = A172976 (n + 1)

end A172976

/-! ## A172976.P11044190759032479708

`∩[A111333(n+1), A158015(n+1)]`
-/

namespace A172976.P11044190759032479708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111333 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158015 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A172976.P11044190759032479708

namespace A172976

/-- `∩[A111333(n+1), A158015(n+1)]` -/
def P11044190759032479708.Spec : Prop :=
  ∀ n, (P11044190759032479708.a n : ℤ) = A172976 (n + 1)

end A172976

/-! ## A172976.P6541744276238373819

`p?[A014682(A023208(n+1)+1)]`
-/

namespace A172976.P6541744276238373819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A023208 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A172976.P6541744276238373819

namespace A172976

/-- `p?[A014682(A023208(n+1)+1)]` -/
def P6541744276238373819.Spec : Prop :=
  ∀ n, P6541744276238373819.a n = A172976 (n + 1)

end A172976

/-! ## A172976.P13542190180577058250

`∩[A005382(n+1), A024898(n+1)]`
-/

namespace A172976.P13542190180577058250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005382 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024898 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A172976.P13542190180577058250

namespace A172976

/-- `∩[A005382(n+1), A024898(n+1)]` -/
def P13542190180577058250.Spec : Prop :=
  ∀ n, (P13542190180577058250.a n : ℤ) = A172976 (n + 1)

end A172976

/-!
# A172977: Numbers n such that 2*prime(n)-1 and 6*prime(n)-1 are prime.

The programs for A172977, there is no canonical definition to state claims against.
-/

/-! ## A172977.P2516454030550549184

`A000720(A172976(n+1))`
-/

namespace A172977.P2516454030550549184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A172976 (n + 1)).toNat

end

end A172977.P2516454030550549184

/-! ## A172977.P12697594794628388482

`A058933(p?[A172976(n+1)])`
-/

namespace A172977.P12697594794628388482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172976 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058933 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A172977.P12697594794628388482

/-! ## A172977.P11655735693117061220

`A061395(p?[A172976(n+1)])`
-/

namespace A172977.P11655735693117061220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172976 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A172977.P11655735693117061220

/-! ## A172977.P18209786725802330974

`A065770(p?[A172976(n+1)])`
-/

namespace A172977.P18209786725802330974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172976 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065770 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A172977.P18209786725802330974

/-! ## A172977.P604271141986517050

`A263297(p?[A172976(n+1)])`
-/

namespace A172977.P604271141986517050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172976 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263297 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A172977.P604271141986517050

/-! ## A172977.P31048203490389174

`A061395(2*A172976(n+1))`
-/

namespace A172977.P31048203490389174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * A172976 (n + 1)).toNat

end

end A172977.P31048203490389174

/-! ## A172977.P1625832207559649066

`A061395(lcm(2, A172976(n+1)))`
-/

namespace A172977.P1625832207559649066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.lcm 2 (A172976 (n + 1)))

end

end A172977.P1625832207559649066

/-! ## A172977.P3428916626779055355

`∑{d}[A172976(n+1), A061395(#)]`
-/

namespace A172977.P3428916626779055355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172976 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A061395 d

end

end A172977.P3428916626779055355

/-! ## A172977.P15929940367251576021

`∑{d}[A172976(n+1), A065770(#)]`
-/

namespace A172977.P15929940367251576021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172976 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A065770 d

end

end A172977.P15929940367251576021

/-! ## A172977.P6498775601636285384

`A065770(2*A172976(n+1)-A172976(n+1))`
-/

namespace A172977.P6498775601636285384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065770 (2 * A172976 (n + 1) - A172976 (n + 1)).toNat

end

end A172977.P6498775601636285384

/-!
# A172978: a(n) = binomial(n+10, 10)*4^n.

The programs for A172978, the canonical program `A172978.P12122411454425706295` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A172978 has offset 0).

The definition of A172978 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(n+10, 10)*4^n` (program `A172978.P12122411454425706295`, by `A172978.P12122411454425706295.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A172978.P12122411454425706295

`C(n+10, 10)*4^n`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A172978

/-- `C(n+10, 10)*4^n` -/
def P12122411454425706295.Spec : Prop :=
  ∀ n, (P12122411454425706295.a n : ℤ) = A172978 n

theorem P12122411454425706295.correct : P12122411454425706295.Spec := by
  intro n
  simp only [A172978]

end A172978

/-! ## A172978.P13742245544986301409

`(40/n+4)*a(n-1)` with `a(0)=1`
-/

namespace A172978.P13742245544986301409
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (40 / (n : ℚ) + 4) * a (n - 1)

end

end A172978.P13742245544986301409

namespace A172978

/-- `(40/n+4)*a(n-1)` -/
def P13742245544986301409.Spec : Prop :=
  ∀ n, P13742245544986301409.a n = (A172978 n : ℚ)

end A172978

/-! ## A172978.P3154442926301505993

`2^n*A172242(n)`
-/

namespace A172978.P3154442926301505993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A172242 (n + 10)

end

end A172978.P3154442926301505993

namespace A172978

/-- `2^n*A172242(n)` -/
def P3154442926301505993.Spec : Prop :=
  ∀ n, P3154442926301505993.a n = A172978 n

end A172978

/-! ## A172978.P16372878454469780183

`4^n*A001287(n)`
-/

namespace A172978.P16372878454469780183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℤ) * A001287 (n + 10)

end

end A172978.P16372878454469780183

namespace A172978

/-- `4^n*A001287(n)` -/
def P16372878454469780183.Spec : Prop :=
  ∀ n, P16372878454469780183.a n = A172978 n

end A172978

/-! ## A172978.P3623250935193305852

`4^n*∑[A000582(n+9)]`
-/

namespace A172978.P3623250935193305852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000582 (n + 9)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A172978.P3623250935193305852

namespace A172978

/-- `4^n*∑[A000582(n+9)]` -/
def P3623250935193305852.Spec : Prop :=
  ∀ n, P3623250935193305852.a n = A172978 n

end A172978

/-! ## A172978.P10626829925562261622

`A001287(n)*A186949(2*n)`
-/

namespace A172978.P10626829925562261622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001287 (n + 10) * A186949 (2 * n)

end

end A172978.P10626829925562261622

namespace A172978

/-- `A001287(n)*A186949(2*n)` -/
def P10626829925562261622.Spec : Prop :=
  ∀ n, P10626829925562261622.a n = A172978 n

end A172978

/-! ## A172978.P18047534879904210304

`A001287(n)*A011782(n+1)²`
-/

namespace A172978.P18047534879904210304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001287 (n + 10) * A011782 (n + 1) ^ 2

end

end A172978.P18047534879904210304

namespace A172978

/-- `A001287(n)*A011782(n+1)²` -/
def P18047534879904210304.Spec : Prop :=
  ∀ n, P18047534879904210304.a n = A172978 n

end A172978

/-! ## A172978.P9233433222263778420

`∑[A000582(n+9)]*A000302(n)`
-/

namespace A172978.P9233433222263778420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000582 (n + 9)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000302 n

end

end A172978.P9233433222263778420

namespace A172978

/-- `∑[A000582(n+9)]*A000302(n)` -/
def P9233433222263778420.Spec : Prop :=
  ∀ n, P9233433222263778420.a n = A172978 n

end A172978

/-! ## A172978.P14238488626367258259

`A001287(n)*A011782(2*n+1)`
-/

namespace A172978.P14238488626367258259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001287 (n + 10) * A011782 (2 * n + 1)

end

end A172978.P14238488626367258259

namespace A172978

/-- `A001287(n)*A011782(2*n+1)` -/
def P14238488626367258259.Spec : Prop :=
  ∀ n, P14238488626367258259.a n = A172978 n

end A172978

/-! ## A172978.P3094967436794345110

`∑[A000582(n+9)]*A000079(n)²`
-/

namespace A172978.P3094967436794345110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000582 (n + 9)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000079 n ^ 2

end

end A172978.P3094967436794345110

namespace A172978

/-- `∑[A000582(n+9)]*A000079(n)²` -/
def P3094967436794345110.Spec : Prop :=
  ∀ n, P3094967436794345110.a n = A172978 n

end A172978

/-! ## A172978.P17656227473874599929

`∑[A000582(n+9)]*A000079(2*n)`
-/

namespace A172978.P17656227473874599929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000582 (n + 9)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000079 (2 * n)

end

end A172978.P17656227473874599929

namespace A172978

/-- `∑[A000582(n+9)]*A000079(2*n)` -/
def P17656227473874599929.Spec : Prop :=
  ∀ n, P17656227473874599929.a n = A172978 n

end A172978

/-! ## A172978.P1975528990829998315

`A000079(n)²*∑[∑[A000581(n+8)]]`
-/

namespace A172978.P1975528990829998315
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000581 (n + 8)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n ^ 2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A172978.P1975528990829998315

namespace A172978

/-- `A000079(n)²*∑[∑[A000581(n+8)]]` -/
def P1975528990829998315.Spec : Prop :=
  ∀ n, P1975528990829998315.a n = A172978 n

end A172978

/-! ## A172978.P6729450562063815189

`A000079(n)²/A000244(n)*A172362(n)`
-/

namespace A172978.P6729450562063815189
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000079 n ^ 2 : ℚ) / (A000244 n : ℚ) * (A172362 n : ℚ)

end

end A172978.P6729450562063815189

namespace A172978

/-- `A000079(n)²/A000244(n)*A172362(n)` -/
def P6729450562063815189.Spec : Prop :=
  ∀ n, P6729450562063815189.a n = (A172978 n : ℚ)

end A172978

/-! ## A172978.P8973375030738315987

`4^n*A007318(A000096(n+9)+11)`
-/

namespace A172978.P8973375030738315987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℤ) * A007318 (A000096 (n + 9) + 11).toNat

end

end A172978.P8973375030738315987

namespace A172978

/-- `4^n*A007318(A000096(n+9)+11)` -/
def P8973375030738315987.Spec : Prop :=
  ∀ n, P8973375030738315987.a n = A172978 n

end A172978

/-! ## A172978.P16118541672312296658

`A001287(n)*A013628(A000096(n)-n)`
-/

namespace A172978.P16118541672312296658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001287 (n + 10) * A013628 (A000096 n - (n : ℤ)).toNat

end

end A172978.P16118541672312296658

namespace A172978

/-- `A001287(n)*A013628(A000096(n)-n)` -/
def P16118541672312296658.Spec : Prop :=
  ∀ n, P16118541672312296658.a n = A172978 n

end A172978

/-!
# A172979: Primes with locations of right angle turns in Ulam square spiral (primes in A033638).

The programs for A172979, there is no canonical definition to state claims against.
-/

/-! ## A172979.P17391749837900359114

`∪[A002383(n+1), A002496(n+1)]`
-/

namespace A172979.P17391749837900359114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002383 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002496 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A172979.P17391749837900359114

/-! ## A172979.P6591241380919607803

`∪[A002383(n+1), A163588(n+1)]`
-/

namespace A172979.P6591241380919607803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002383 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163588 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A172979.P6591241380919607803

/-! ## A172979.P14517210244568307231

`p?[round(cosh(log(acot(n)))²)]`
-/

namespace A172979.P14517210244568307231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cosh (Real.log (SequenceMachineLib.acot (n : ℝ))) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A172979.P14517210244568307231

/-! ## A172979.P4767668962587561842

`p?[floor((n/2)²)+1]`
-/

namespace A172979.P4767668962587561842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n : ℚ) / 2) ^ 2⌋ + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A172979.P4767668962587561842

/-! ## A172979.P17936485664190592141

`∑{p}[p?[round((n²+2)/4)], #]`
-/

namespace A172979.P17936485664190592141
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n ^ 2 + 2 : ℚ) / 4)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A172979.P17936485664190592141

/-! ## A172979.P5198702636143332839

`∏{d}[p?[a(n-2)+n], #]` with `a(0)=1, a(1)=2`
-/

namespace A172979.P5198702636143332839
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f2 =>
  f2 (n - 2) + n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), d

end

end A172979.P5198702636143332839

/-! ## A172979.P12997956593443807111

`∏{p}[p?[a(n-2)+n], #]` with `a(0)=1, a(1)=2`
-/

namespace A172979.P12997956593443807111
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f2 =>
  f2 (n - 2) + n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), p

end

end A172979.P12997956593443807111

/-! ## A172979.P12360270690643389788

`∏{d}[p?[A033638(n)], #]`
-/

namespace A172979.P12360270690643389788
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033638 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A172979.P12360270690643389788

/-! ## A172979.P10733009921381285622

`∩[A042986(n+1), A274583(n)]`
-/

namespace A172979.P10733009921381285622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274583 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A172979.P10733009921381285622

/-! ## A172979.P14271164217974906072

`∩[A042986(n+1), A262587(n+1)]`
-/

namespace A172979.P14271164217974906072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262587 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A172979.P14271164217974906072

/-! ## A172979.P7230840001615810230

`∩[A042990(n), A274583(n)]`
-/

namespace A172979.P7230840001615810230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042990 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274583 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A172979.P7230840001615810230

/-! ## A172979.P1218874682808650174

`∩[A262587(n+1), A042990(n)]`
-/

namespace A172979.P1218874682808650174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262587 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042990 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A172979.P1218874682808650174

/-! ## A172979.P9701015133230231342

`∩[A216884(n+1), A274583(n)]`
-/

namespace A172979.P9701015133230231342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216884 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274583 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A172979.P9701015133230231342

/-! ## A172979.P15356322142449351649

`∩[A216884(n+1), A262587(n+1)]`
-/

namespace A172979.P15356322142449351649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216884 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262587 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A172979.P15356322142449351649

/-! ## A172979.P9727209103658304023

`record[A020639(floor((n+2)²/4)+1)]`
-/

namespace A172979.P9727209103658304023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (⌊((n + 2) ^ 2 : ℚ) / 4⌋ + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A172979.P9727209103658304023

/-! ## A172979.P17067541163135334099

`filter[A033638(n), A010051(#)]`
-/

namespace A172979.P17067541163135334099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033638 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A172979.P17067541163135334099

/-! ## A172979.P2725205672122661868

`filter[A274583(n), A010051(#)]`
-/

namespace A172979.P2725205672122661868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274583 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A172979.P2725205672122661868

/-! ## A172979.P227939492457846023

`filter[A262587(n+1), A008966(#)]`
-/

namespace A172979.P227939492457846023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262587 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A172979.P227939492457846023

/-! ## A172979.P739070173242122803

`filter[A262587(n+1), A010051(#)]`
-/

namespace A172979.P739070173242122803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262587 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A172979.P739070173242122803

/-! ## A172979.P1556012197500946108

`filter[A262587(n+1), A212793(#)]`
-/

namespace A172979.P1556012197500946108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262587 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A212793 (f1 j).toNat = 1) n)

end

end A172979.P1556012197500946108

/-!
# A172980: a(1)=1, a(2)=3; for n>=3, a(n) is the smallest number larger than a(n-1) such that, for every k

The programs for A172980, there is no canonical definition to state claims against.
-/

/-! ## A172980.P12859996245340122096

`A023709(n+1)+A018432(A212389(n))`
-/

namespace A172980.P12859996245340122096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023709 (n + 1) + A018432 (A212389 n).toNat

end

end A172980.P12859996245340122096

/-! ## A172980.P17694057553712863912

`A064988(A212389(n)!)+A023709(n+1)`
-/

namespace A172980.P17694057553712863912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064988 (Nat.factorial (A212389 n).toNat) + A023709 (n + 1)

end

end A172980.P17694057553712863912

/-! ## A172980.P18020196253327741968

`A178442(A212389(n)!)+A023709(n+1)`
-/

namespace A172980.P18020196253327741968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178442 (Nat.factorial (A212389 n).toNat) + A023709 (n + 1)

end

end A172980.P18020196253327741968

/-! ## A172980.P10606871499191159151

`A178443(A212389(n)!)+A023709(n+1)`
-/

namespace A172980.P10606871499191159151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178443 (Nat.factorial (A212389 n).toNat) + A023709 (n + 1)

end

end A172980.P10606871499191159151

/-! ## A172980.P5807306543846920833

`A347621(C(n+1, 2))+A023709(n+1)`
-/

namespace A172980.P5807306543846920833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347621 (Nat.choose (n + 1) 2) + A023709 (n + 1)

end

end A172980.P5807306543846920833

/-!
# A172981: Primes p such that 210*p+41 is also prime.

The programs for A172981, there is no canonical definition to state claims against.
-/

/-! ## A172981.P8290880640615112113

`p?[∑[A060324(A164073(n+1))]]`
-/

namespace A172981.P8290880640615112113
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060324 (A164073 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A172981.P8290880640615112113

/-! ## A172981.P5880388449782843991

`p?[A122282(3*n+2)]`
-/

namespace A172981.P5880388449782843991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122282 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A172981.P5880388449782843991

/-! ## A172981.P14840931972451053409

`p?[lcm(n, A167905(n+1))]`
-/

namespace A172981.P14840931972451053409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A167905 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A172981.P14840931972451053409

/-! ## A172981.P5741654389829753289

`p?[A122282(n+1)^val(n%3+1, 2)]`
-/

namespace A172981.P5741654389829753289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122282 (n + 1) ^ SequenceMachineLib.valuation (n % 3 + 1) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A172981.P5741654389829753289

/-! ## A172981.P5493416903238099504

`eq[A059975(n+1), A368053(n+1)]`
-/

namespace A172981.P5493416903238099504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059975 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368053 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A172981.P5493416903238099504

/-!
# A172982: Partial sums of minimal set of prime-strings in base 10 (A071062).

The programs for A172982, there is no canonical definition to state claims against.
-/

/-! ## A172982.P3873002710711126445

`∑[A071062(n+1)]`
-/

namespace A172982.P3873002710711126445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071062 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172982.P3873002710711126445

/-! ## A172982.P11376578183441800953

`∑[record[A071062(A020986(n))]]`
-/

namespace A172982.P11376578183441800953
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071062 (A020986 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172982.P11376578183441800953

/-! ## A172982.P13074651778218577982

`∑[record[A071062(A033930(n))]]`
-/

namespace A172982.P13074651778218577982
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071062 (A033930 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172982.P13074651778218577982

/-! ## A172982.P12716354337561407171

`∑[record[A071062(A037162(n))]]`
-/

namespace A172982.P12716354337561407171
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071062 (A037162 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172982.P12716354337561407171

/-! ## A172982.P15583356960915040616

`∑[record[A071062(A038568(n))]]`
-/

namespace A172982.P15583356960915040616
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071062 (A038568 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172982.P15583356960915040616

/-!
# A172983: Partial sums of near-repdigit primes A056710.

The programs for A172983, there is no canonical definition to state claims against.
-/

/-! ## A172983.P9832772403393467260

`∑[A056710(n+1)]`
-/

namespace A172983.P9832772403393467260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056710 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172983.P9832772403393467260

/-! ## A172983.P7413583645909824242

`∑[record[A056710(A065648(n))]]`
-/

namespace A172983.P7413583645909824242
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056710 (A065648 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172983.P7413583645909824242

/-! ## A172983.P12195217033467709729

`∑[record[A056710(A126759(n))]]`
-/

namespace A172983.P12195217033467709729
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056710 (A126759 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172983.P12195217033467709729

/-! ## A172983.P17984793003290473656

`∑[record[A056710(A133310(n))]]`
-/

namespace A172983.P17984793003290473656
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056710 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172983.P17984793003290473656

/-! ## A172983.P4339768415507415290

`∑[record[A056710(A262519(n))]]`
-/

namespace A172983.P4339768415507415290
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056710 (A262519 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172983.P4339768415507415290

/-! ## A172983.P11240329521868434862

`∑[record[A056710(A193592(n))]]`
-/

namespace A172983.P11240329521868434862
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056710 (A193592 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172983.P11240329521868434862

/-!
# A172984: For n <= 18, a(n) = Fibonacci(n) mod 5, using representatives {5,1,2,3,4} (i.e., 5 instead of the usual 0), and a(19)=2.

The programs for A172984, there is no canonical definition to state claims against.
-/

/-! ## A172984.P17580670852859456863

`A007318(A046854(n))+A000071(n+1)%5`
-/

namespace A172984.P17580670852859456863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A046854 n).toNat + Int.tmod (A000071 (n + 1)) 5

end

end A172984.P17580670852859456863

/-! ## A172984.P12105374398302957071

`A282236(n+1)%A040024(A004655(n))`
-/

namespace A172984.P12105374398302957071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A282236 (n + 1)) (A040024 (A004655 n).toNat)

end

end A172984.P12105374398302957071

/-! ## A172984.P16348969045890890369

`A010884(A022310(n))`
-/

namespace A172984.P16348969045890890369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010884 (A022310 n).toNat

end

end A172984.P16348969045890890369

/-! ## A172984.P6581397918436370420

`A125923(A022096(n))`
-/

namespace A172984.P6581397918436370420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125923 (A022096 n).toNat

end

end A172984.P6581397918436370420

/-! ## A172984.P6737074013354646728

`A125923(A111721(n))`
-/

namespace A172984.P6737074013354646728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125923 (A111721 n).toNat

end

end A172984.P6737074013354646728

/-!
# A172985: Triangle T(n,m) = A049614(n)/ (A049614(m)*A049614(n-m)) read by rows.

The programs for A172985, there is no canonical definition to state claims against.
-/

/-! ## A172985.P13493608404425359112

`A338927(A211226(n)%A239087(2*n+5))`
-/

namespace A172985.P13493608404425359112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338927 (Int.tmod (A211226 n) (A239087 (2 * n + 5))).toNat

end

end A172985.P13493608404425359112

/-! ## A172985.P6455968618385276659

`A079171(A211226(n))%A153679(n+3)`
-/

namespace A172985.P6455968618385276659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079171 (A211226 n).toNat) (A153679 (n + 3))

end

end A172985.P6455968618385276659

/-! ## A172985.P4833284380552737528

`A000010(gcd(A022176(n), A157383(n+1)))`
-/

namespace A172985.P4833284380552737528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (Int.gcd (A022176 n) (A157383 (n + 1)))

end

end A172985.P4833284380552737528

/-! ## A172985.P16502168344138595497

`A338927(A211226(n))%A057708(n+4)`
-/

namespace A172985.P16502168344138595497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A338927 (A211226 n).toNat) (A057708 (n + 4))

end

end A172985.P16502168344138595497

/-!
# A172986: a(0) = 0, a(n) = A029826(n+1) for n <= 20, otherwise a(n) = a(n - 1 - n % 20) + A029826(2 + n % 20 ).

The programs for A172986, there is no canonical definition to state claims against.
-/

/-! ## A172986.P4843549518153151900

`A029826(abs(1-n))%A110548(n+1)`
-/

namespace A172986.P4843549518153151900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A029826 |1 - (n : ℤ)|.toNat) (A110548 (n + 1))

end

end A172986.P4843549518153151900

/-! ## A172986.P537829182090652461

`A029826(log2(A011782(n)))%A061978(n+1)`
-/

namespace A172986.P537829182090652461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A029826 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat) (A061978 (n + 1))

end

end A172986.P537829182090652461

/-! ## A172986.P18267824359951777368

`A029826(A028310(n)-1)%A290388(n+1)`
-/

namespace A172986.P18267824359951777368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A029826 (A028310 n - 1).toNat) (A290388 (n + 1))

end

end A172986.P18267824359951777368

/-! ## A172986.P13049253643116896879

`Δ[A125950(n+8)]^A014963(A124827(n+1))`
-/

namespace A172986.P13049253643116896879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125950 (n + 8)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) ^ (A014963 (A124827 (n + 1)).toNat : ℤ)

end

end A172986.P13049253643116896879

/-! ## A172986.P6941959363634107208

`Δ[A125950(n+8)]%A000040(A018176(n))`
-/

namespace A172986.P6941959363634107208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125950 (n + 8)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A000040 (A018176 n).toNat)

end

end A172986.P6941959363634107208

/-!
# A172987: Numbers k such that k + 10 and k + 100 are prime.

The programs for A172987, there is no canonical definition to state claims against.
-/

/-! ## A172987.P738742971398377630

`A032664(record[A136610(n)+1])`
-/

namespace A172987.P738742971398377630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136610 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032664 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A172987.P738742971398377630

/-!
# A172988: Primes p such that either p-3 or p-6 is prime.

The programs for A172988, the canonical program `A172988.P6987108321131650744` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A172988 has offset 1).

The definition of A172988 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A172988.P6987108321131650744

`A046117(n%a(n-1))` with `a(0)=5`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A172988

/-- `A046117(n%a(n-1))` -/
def P6987108321131650744.Spec : Prop :=
  ∀ n, P6987108321131650744.a n = A172988 (n + 1)

theorem P6987108321131650744.correct : P6987108321131650744.Spec := by
  intro n
  simp only [A172988, Nat.add_sub_cancel]

end A172988

/-! ## A172988.P4184111714228454709

`A067831(n+1)-A000038(n)`
-/

namespace A172988.P4184111714228454709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067831 (n + 1) - A000038 n

end

end A172988.P4184111714228454709

namespace A172988

/-- `A067831(n+1)-A000038(n)` -/
def P4184111714228454709.Spec : Prop :=
  ∀ n, P4184111714228454709.a n = A172988 (n + 1)

end A172988

/-! ## A172988.P5464242486124130134

`A156274(floor(acot(n))+2*n)`
-/

namespace A172988.P5464242486124130134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156274 (⌊SequenceMachineLib.acot (n : ℝ)⌋ + (2 * n : ℤ)).toNat

end

end A172988.P5464242486124130134

namespace A172988

/-- `A156274(floor(acot(n))+2*n)` -/
def P5464242486124130134.Spec : Prop :=
  ∀ n, P5464242486124130134.a n = A172988 (n + 1)

end A172988

/-! ## A172988.P2921783091389258422

`A156274(round(1/acot(n))+n)`
-/

namespace A172988.P2921783091389258422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156274 (SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ)) + (n : ℤ)).toNat

end

end A172988.P2921783091389258422

namespace A172988

/-- `A156274(round(1/acot(n))+n)` -/
def P2921783091389258422.Spec : Prop :=
  ∀ n, P2921783091389258422.a n = A172988 (n + 1)

end A172988

/-! ## A172988.P3750616619185920572

`A156274(comp[2*(n+1)]+1)`
-/

namespace A172988.P3750616619185920572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156274 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)

end

end A172988.P3750616619185920572

namespace A172988

/-- `A156274(comp[2*(n+1)]+1)` -/
def P3750616619185920572.Spec : Prop :=
  ∀ n, P3750616619185920572.a n = A172988 (n + 1)

end A172988

/-! ## A172988.P16449730050500511203

`p?[A000040(n-floor(4/a(n-1)))+6]` with `a(0)=5`
-/

namespace A172988.P16449730050500511203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [5] fun n f1 =>
  A000040 ((n : ℤ) - ⌊4 / (f1 (n - 1) : ℚ)⌋).toNat + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A172988.P16449730050500511203

namespace A172988

/-- `p?[A000040(n-floor(4/a(n-1)))+6]` -/
def P16449730050500511203.Spec : Prop :=
  ∀ n, P16449730050500511203.a n = A172988 (n + 1)

end A172988

/-! ## A172988.P16078057550786683520

`p?[A040006(n)+A000040(n+1)]`
-/

namespace A172988.P16078057550786683520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040006 n + A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A172988.P16078057550786683520

namespace A172988

/-- `p?[A040006(n)+A000040(n+1)]` -/
def P16078057550786683520.Spec : Prop :=
  ∀ n, P16078057550786683520.a n = A172988 (n + 1)

end A172988

/-! ## A172988.P10775837676198745

`p?[A267884(n)+A008578(n+1)]`
-/

namespace A172988.P10775837676198745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267884 n + A008578 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A172988.P10775837676198745

namespace A172988

/-- `p?[A267884(n)+A008578(n+1)]` -/
def P10775837676198745.Spec : Prop :=
  ∀ n, P10775837676198745.a n = A172988 (n + 1)

end A172988

/-! ## A172988.P8266484313036146307

`p?[A040006(n)+A008578(n+2)]`
-/

namespace A172988.P8266484313036146307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040006 n + A008578 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A172988.P8266484313036146307

namespace A172988

/-- `p?[A040006(n)+A008578(n+2)]` -/
def P8266484313036146307.Spec : Prop :=
  ∀ n, P8266484313036146307.a n = A172988 (n + 1)

end A172988

/-! ## A172988.P9487948127952532532

`p?[A040006(n)+p?[A093641(n+1)]]`
-/

namespace A172988.P9487948127952532532
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093641 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040006 n + f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A172988.P9487948127952532532

namespace A172988

/-- `p?[A040006(n)+p?[A093641(n+1)]]` -/
def P9487948127952532532.Spec : Prop :=
  ∀ n, P9487948127952532532.a n = A172988 (n + 1)

end A172988

/-! ## A172988.P11769016504254599544

`A075567(A067831(n+1))`
-/

namespace A172988.P11769016504254599544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075567 (A067831 (n + 1)).toNat

end

end A172988.P11769016504254599544

namespace A172988

/-- `A075567(A067831(n+1))` -/
def P11769016504254599544.Spec : Prop :=
  ∀ n, P11769016504254599544.a n = A172988 (n + 1)

end A172988

/-! ## A172988.P3607652329823758520

`p?[record[A159076(2*(n+1))]]`
-/

namespace A172988.P3607652329823758520
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159076 (2 * (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A172988.P3607652329823758520

namespace A172988

/-- `p?[record[A159076(2*(n+1))]]` -/
def P3607652329823758520.Spec : Prop :=
  ∀ n, P3607652329823758520.a n = A172988 (n + 1)

end A172988

/-!
# A172989: Smallest k such that the two numbers n^2 +- k are primes.

The programs for A172989, there is no canonical definition to state claims against.
-/

/-! ## A172989.P6001551963742771916

`A082467((n+2)²)`
-/

namespace A172989.P6001551963742771916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082467 ((n + 2) ^ 2)

end

end A172989.P6001551963742771916

/-! ## A172989.P12713513175217636789

`(n+2)²-A304874(n+2)`
-/

namespace A172989.P12713513175217636789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 2 : ℤ) - A304874 (n + 2)

end

end A172989.P12713513175217636789

/-! ## A172989.P9617497490568917179

`A304875(n+2)-(n+2)²`
-/

namespace A172989.P9617497490568917179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304875 (n + 2) - ((n + 2) ^ 2 : ℤ)

end

end A172989.P9617497490568917179

/-! ## A172989.P13457544482731752787

`A000290(n+2)%A304874(n+2)`
-/

namespace A172989.P13457544482731752787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000290 (n + 2)) (A304874 (n + 2))

end

end A172989.P13457544482731752787

/-! ## A172989.P17027605314734351370

`A304875(n+2)%A000290(n+2)`
-/

namespace A172989.P17027605314734351370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A304875 (n + 2)) (A000290 (n + 2))

end

end A172989.P17027605314734351370

/-! ## A172989.P743869796458016438

`A000027((n+2)²%A304874(n+2))`
-/

namespace A172989.P743869796458016438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (Int.tmod ((n + 2) ^ 2 : ℤ) (A304874 (n + 2))).toNat

end

end A172989.P743869796458016438

/-! ## A172989.P6248509040586609322

`(A304875(n+2)-A304874(n+2))/2`
-/

namespace A172989.P6248509040586609322
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A304875 (n + 2) - A304874 (n + 2) : ℚ) / 2

end

end A172989.P6248509040586609322

/-! ## A172989.P4854769726720522191

`A175126(A304875(n+2)-A304874(n+2))`
-/

namespace A172989.P4854769726720522191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175126 (A304875 (n + 2) - A304874 (n + 2)).toNat

end

end A172989.P4854769726720522191

/-! ## A172989.P1048779129267348173

`sqrt(A143697((n+2)²))`
-/

namespace A172989.P1048779129267348173
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A143697 ((n + 2) ^ 2) : ℝ)

end

end A172989.P1048779129267348173

/-! ## A172989.P9883183811565956928

`A078496((n+2)²)-(n+2)²`
-/

namespace A172989.P9883183811565956928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078496 ((n + 2) ^ 2) - ((n + 2) ^ 2 : ℤ)

end

end A172989.P9883183811565956928

/-! ## A172989.P1394497762810725533

`(n+2)²-A078587((n+2)²)`
-/

namespace A172989.P1394497762810725533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 2 : ℤ) - A078587 ((n + 2) ^ 2)

end

end A172989.P1394497762810725533

/-!
# A172990: a(n) is the smallest k such that the two numbers n^3 +- k are primes.

The programs for A172990, there is no canonical definition to state claims against.
-/

/-! ## A172990.P10808666040698683741

`sqrt(A143697((n+2)^3))`
-/

namespace A172990.P10808666040698683741
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A143697 ((n + 2) ^ 3) : ℝ)

end

end A172990.P10808666040698683741

/-! ## A172990.P16537574052886575730

`A078496(A000578(n+2))%(n+2)²`
-/

namespace A172990.P16537574052886575730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A078496 (A000578 (n + 2)).toNat) ((n + 2) ^ 2 : ℤ)

end

end A172990.P16537574052886575730

/-! ## A172990.P1938117483996078293

`A047160((n+2)^3)`
-/

namespace A172990.P1938117483996078293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047160 ((n + 2) ^ 3)

end

end A172990.P1938117483996078293

/-! ## A172990.P1317529580631366073

`A082467((n+2)^3)`
-/

namespace A172990.P1317529580631366073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082467 ((n + 2) ^ 3)

end

end A172990.P1317529580631366073

/-! ## A172990.P14388129272368597771

`A325142((n+2)^3)`
-/

namespace A172990.P14388129272368597771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325142 ((n + 2) ^ 3)

end

end A172990.P14388129272368597771

/-!
# A172991: Triangle of binomial sums read by rows: T(n,k) = sum(C(2n-2k-i,i) * C(2k-i,i), i=0..min(k,n-k)).

The programs for A172991, there is no canonical definition to state claims against.
-/

/-! ## A172991.P5773850752328012527

`A111660(A086620(n))+A086623(n)`
-/

namespace A172991.P5773850752328012527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111660 (A086620 n).toNat + A086623 n

end

end A172991.P5773850752328012527

/-! ## A172991.P18186914720098740238

`A243903(A101515(n))+A090223(A185651(n))`
-/

namespace A172991.P18186914720098740238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243903 (A101515 n).toNat + A090223 (A185651 n).toNat

end

end A172991.P18186914720098740238

/-! ## A172991.P2195070295657983137

`A122797(A069322(n))+A000007(A327084(n+1))`
-/

namespace A172991.P2195070295657983137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122797 (A069322 n).toNat + A000007 (A327084 (n + 1)).toNat

end

end A172991.P2195070295657983137

/-! ## A172991.P8614215526337651174

`A122797(A069322(n))+A000007(A179070(n+2))`
-/

namespace A172991.P8614215526337651174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122797 (A069322 n).toNat + A000007 (A179070 (n + 2)).toNat

end

end A172991.P8614215526337651174

/-! ## A172991.P18176753595913682610

`A097873(A347970(n))`
-/

namespace A172991.P18176753595913682610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097873 (A347970 n).toNat

end

end A172991.P18176753595913682610

/-!
# A172992: Maximal number of 4-tree rows in n-tree orchard problem in which the tree coordinates are integers.

The programs for A172992, there is no canonical definition to state claims against.
-/

/-! ## A172992.P6494908561496517497

`A006065(n+1)-A025907(A008620(n))`
-/

namespace A172992.P6494908561496517497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006065 (n + 1) - A025907 (A008620 n).toNat

end

end A172992.P6494908561496517497

/-! ## A172992.P6032732692845114253

`A006065(n+1)-A035622(A057354(n))`
-/

namespace A172992.P6032732692845114253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006065 (n + 1) - A035622 (A057354 n).toNat

end

end A172992.P6032732692845114253

/-! ## A172992.P2518713568218581193

`A006065(n+1)-A056977(A015925(n+1))`
-/

namespace A172992.P2518713568218581193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006065 (n + 1) - A056977 (A015925 (n + 1)).toNat

end

end A172992.P2518713568218581193

/-! ## A172992.P2723400339721031723

`A006065(n+1)-A010060(A079705(n+1))`
-/

namespace A172992.P2723400339721031723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006065 (n + 1) - A010060 (A079705 (n + 1)).toNat

end

end A172992.P2723400339721031723

/-! ## A172992.P17709381969065476519

`A006065(n+1)-A006065(A095133(n+1))`
-/

namespace A172992.P17709381969065476519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006065 (n + 1) - A006065 (A095133 (n + 1)).toNat

end

end A172992.P17709381969065476519

/-!
# A172993: Maximal number of 4-tree rows in n-tree orchard problem in which the coordinates of trees may be complex numbers.

The programs for A172993, there is no canonical definition to state claims against.
-/

/-! ## A172993.P5344497519137605674

`A109968(n)-A112758(record[A127159(n)])`
-/

namespace A172993.P5344497519137605674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127159 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109968 n - A112758 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A172993.P5344497519137605674

/-! ## A172993.P11958534067951633707

`A109968(n)-A112758(A127159(A000217(n)))`
-/

namespace A172993.P11958534067951633707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109968 n - A112758 (A127159 (A000217 n).toNat).toNat

end

end A172993.P11958534067951633707

/-!
# A172995: Numbers k such that (3^k + 7)/2 is prime.

The programs for A172995, there is no canonical definition to state claims against.
-/

/-! ## A172995.P994714007238741604

`A321785(∏[comp[2^n-1]])`
-/

namespace A172995.P994714007238741604
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321785 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A172995.P994714007238741604

/-!
# A172997: Numbers n such that for p=prime(n), (2p-1)^(2p-1) mod 2^(2p-1) is prime.

The programs for A172997, there is no canonical definition to state claims against.
-/

/-! ## A172997.P17185899778925423984

`∑{p}[n+1, #]+or(n+1, n!)`
-/

namespace A172997.P17185899778925423984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), p + Nat.lor (n + 1) (Nat.factorial n)

end

end A172997.P17185899778925423984

/-!
# A172998: Numbers n such that 10^4n + 10^3n - 10^n - 3 is prime.

The programs for A172998, there is no canonical definition to state claims against.
-/

/-! ## A172998.P8804040907307425757

`∑[368^C(n, 4)]`
-/

namespace A172998.P8804040907307425757
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  368 ^ Nat.choose n 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172998.P8804040907307425757

/-!
# A172999: a(1)=1, a(2)=4; for n>=3, a(n) is the smallest number larger than a(n-1) such that, for every k

The programs for A172999, there is no canonical definition to state claims against.
-/

/-! ## A172999.P11107120384047086776

`∑[gcd(A229322(n+1), A260401(n+1))]`
-/

namespace A172999.P11107120384047086776
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A229322 (n + 1)) (A260401 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172999.P11107120384047086776

/-! ## A172999.P8365035589803582216

`∑[gcd(A360388(2*n+3), A360393(3*n+4))]`
-/

namespace A172999.P8365035589803582216
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A360388 (2 * n + 3)) (A360393 (3 * n + 4))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172999.P8365035589803582216

