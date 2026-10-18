import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
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
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B007.C000
import Seq.B007.C001
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A027500: Third diagonal of A027495.

The programs for A027500, there is no canonical definition to state claims against.
-/

/-! ## A027500.P17791633061740696309

`A027495(∑[n+3]+1)`
-/

namespace A027500.P17791633061740696309
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027495 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A027500.P17791633061740696309

/-!
# A027501: First diagonal of A027496.

The programs for A027501, there is no canonical definition to state claims against.
-/

/-! ## A027501.P17261711083487336078

`A027496(∑[n+1])`
-/

namespace A027501.P17261711083487336078
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027496 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A027501.P17261711083487336078

/-! ## A027501.P6105995006631819571

`A326545(n)+A027496(A176659(n+1))`
-/

namespace A027501.P6105995006631819571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326545 n + A027496 (A176659 (n + 1)).toNat

end

end A027501.P6105995006631819571

/-! ## A027501.P15256460581702168655

`gcd(A027496(A000217(n+1)), A130706(n))`
-/

namespace A027501.P15256460581702168655
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A027496 (A000217 (n + 1)).toNat) (A130706 n)

end

end A027501.P15256460581702168655

/-! ## A027501.P12025857003665735035

`lcm(A027496(A176659(n+1)), A033999(n))`
-/

namespace A027501.P12025857003665735035
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A027496 (A176659 (n + 1)).toNat) (A033999 n)

end

end A027501.P12025857003665735035

/-! ## A027501.P4250053410914902461

`A027496(A176659(n+1))%A027502(n+2)`
-/

namespace A027501.P4250053410914902461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A027496 (A176659 (n + 1)).toNat) (A027502 (n + 2))

end

end A027501.P4250053410914902461

/-!
# A027502: Second diagonal of A027496.

The programs for A027502, there is no canonical definition to state claims against.
-/

/-! ## A027502.P14083019987261028208

`A027496(∑[n+2])`
-/

namespace A027502.P14083019987261028208
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027496 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A027502.P14083019987261028208

/-!
# A027503: Third diagonal of A027496.

The programs for A027503, there is no canonical definition to state claims against.
-/

/-! ## A027503.P8100317983377034458

`A027496(∑[n+3]+1)`
-/

namespace A027503.P8100317983377034458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027496 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A027503.P8100317983377034458

/-!
# A027504: First diagonal of A027497.

The programs for A027504, there is no canonical definition to state claims against.
-/

/-! ## A027504.P14421418712044347160

`A027497(∑[n+1])`
-/

namespace A027504.P14421418712044347160
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027497 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A027504.P14421418712044347160

/-!
# A027505: Second diagonal of A027497.

The programs for A027505, there is no canonical definition to state claims against.
-/

/-! ## A027505.P16091948693174601062

`A027497(∑[n+2])`
-/

namespace A027505.P16091948693174601062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027497 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A027505.P16091948693174601062

/-!
# A027506: 

The programs for A027506, there is no canonical definition to state claims against.
-/

/-! ## A027506.P13938922864434990279

`A027497(∑[n+3]+1)`
-/

namespace A027506.P13938922864434990279
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027497 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A027506.P13938922864434990279

/-!
# A027507: First column of A027495.

The programs for A027507, there is no canonical definition to state claims against.
-/

/-! ## A027507.P12382232269490397867

`A027495(∑[n]+1)`
-/

namespace A027507.P12382232269490397867
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027495 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A027507.P12382232269490397867

/-! ## A027507.P565436478609713885

`record[A010054(n)*A027495(n+1)]`
-/

namespace A027507.P565436478609713885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A027495 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027507.P565436478609713885

/-! ## A027507.P5191201307845699719

`record[A027495(n+1)/A013609(n)]`
-/

namespace A027507.P5191201307845699719
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027495 (n + 1) : ℚ) / (A013609 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027507.P5191201307845699719

/-! ## A027507.P12737879247220087080

`record[gcd(A014473(n), A027495(n+1))]`
-/

namespace A027507.P12737879247220087080
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A014473 n) (A027495 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027507.P12737879247220087080

/-! ## A027507.P1274214789790461533

`record[A027495(n+1)/A008277(n+1)]`
-/

namespace A027507.P1274214789790461533
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027495 (n + 1) : ℚ) / (A008277 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027507.P1274214789790461533

/-!
# A027508: Second column of A027495.

The programs for A027508, there is no canonical definition to state claims against.
-/

/-! ## A027508.P3368387306053535451

`A027495(∑[n+1]+2)`
-/

namespace A027508.P3368387306053535451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027495 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A027508.P3368387306053535451

/-! ## A027508.P5435073468817594426

`record[gcd(A027495(n+1), A263655(n))]`
-/

namespace A027508.P5435073468817594426
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A027495 (n + 1)) (A263655 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027508.P5435073468817594426

/-! ## A027508.P1931080184883114731

`record[A027495(A133263(∑{e}[n, #]))]`
-/

namespace A027508.P1931080184883114731
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027495 (A133263 (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027508.P1931080184883114731

/-! ## A027508.P17543207255405677564

`record[A027495(record[A194916(n+1)])]`
-/

namespace A027508.P17543207255405677564
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194916 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027495 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027508.P17543207255405677564

/-! ## A027508.P5964788108483157792

`record[gcd(A027495(n+2), A246118(n+1))]`
-/

namespace A027508.P5964788108483157792
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A027495 (n + 2)) (A246118 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027508.P5964788108483157792

/-!
# A027509: Third column of A027495.

The programs for A027509, there is no canonical definition to state claims against.
-/

/-! ## A027509.P14065355883360454712

`A027495(∑[n+2]+4)`
-/

namespace A027509.P14065355883360454712
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027495 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A027509.P14065355883360454712

/-!
# A027510: First column of A027496.

The programs for A027510, there is no canonical definition to state claims against.
-/

/-! ## A027510.P1280384917128854214

`A027496(∑[n]+1)`
-/

namespace A027510.P1280384917128854214
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027496 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A027510.P1280384917128854214

/-!
# A027511: Second column of A027496.

The programs for A027511, there is no canonical definition to state claims against.
-/

/-! ## A027511.P7765344942521218149

`A027496(A133263(n+1))`
-/

namespace A027511.P7765344942521218149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027496 (A133263 (n + 1)).toNat

end

end A027511.P7765344942521218149

/-! ## A027511.P17959632647779307418

`A027496(A000096(n)+3)`
-/

namespace A027511.P17959632647779307418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027496 (A000096 n + 3).toNat

end

end A027511.P17959632647779307418

/-! ## A027511.P6267767935439479443

`A027496(A080036(∑[n]+1))`
-/

namespace A027511.P6267767935439479443
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027496 (A080036 (∑ j ∈ Finset.range (n + 1), f1 j + 1)).toNat

end

end A027511.P6267767935439479443

/-! ## A027511.P9425441076791524173

`A027496(A038722(∑[n+2]))`
-/

namespace A027511.P9425441076791524173
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027496 (A038722 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A027511.P9425441076791524173

/-! ## A027511.P10856720359234254117

`A027496(A000124(n+1)+1)`
-/

namespace A027511.P10856720359234254117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027496 (A000124 (n + 1) + 1).toNat

end

end A027511.P10856720359234254117

/-!
# A027512: 

The programs for A027512, there is no canonical definition to state claims against.
-/

/-! ## A027512.P630694672533235442

`A027496(A167614(n+1))`
-/

namespace A027512.P630694672533235442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027496 (A167614 (n + 1)).toNat

end

end A027512.P630694672533235442

/-! ## A027512.P12282741604603928852

`A027496(A167499(n)+n)`
-/

namespace A027512.P12282741604603928852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027496 (A167499 n + (n : ℤ)).toNat

end

end A027512.P12282741604603928852

/-! ## A027512.P11486150937244893007

`A027496(A133263(n+2)+1)`
-/

namespace A027512.P11486150937244893007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027496 (A133263 (n + 2) + 1).toNat

end

end A027512.P11486150937244893007

/-! ## A027512.P3518050722165635243

`A027496(A000124(n+2)+2)`
-/

namespace A027512.P3518050722165635243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027496 (A000124 (n + 2) + 2).toNat

end

end A027512.P3518050722165635243

/-! ## A027512.P13121613210043225726

`A027496(eq[2, A144328(n+1)]+1)`
-/

namespace A027512.P13121613210043225726
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027496 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A027512.P13121613210043225726

/-!
# A027513: First column of A027497.

The programs for A027513, there is no canonical definition to state claims against.
-/

/-! ## A027513.P8704370004721326578

`A027497(∑[n]+1)`
-/

namespace A027513.P8704370004721326578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027497 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A027513.P8704370004721326578

/-! ## A027513.P8453972014687930130

`record[A027497(n+1)]`
-/

namespace A027513.P8453972014687930130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027497 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027513.P8453972014687930130

/-!
# A027514: 

The programs for A027514, there is no canonical definition to state claims against.
-/

/-! ## A027514.P9993891196898229675

`A027497(A133263(n+1))`
-/

namespace A027514.P9993891196898229675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027497 (A133263 (n + 1)).toNat

end

end A027514.P9993891196898229675

/-! ## A027514.P18220827190473578141

`A027497(A080036(∑[n]+1))`
-/

namespace A027514.P18220827190473578141
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027497 (A080036 (∑ j ∈ Finset.range (n + 1), f1 j + 1)).toNat

end

end A027514.P18220827190473578141

/-! ## A027514.P17537236957288714230

`A027497(A038722(∑[n+2]))`
-/

namespace A027514.P17537236957288714230
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027497 (A038722 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A027514.P17537236957288714230

/-! ## A027514.P3892312938038612330

`A027497(A000124(n+1)+1)`
-/

namespace A027514.P3892312938038612330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027497 (A000124 (n + 1) + 1).toNat

end

end A027514.P3892312938038612330

/-! ## A027514.P12528950627049118065

`A027497(A161680(n+2)+2)`
-/

namespace A027514.P12528950627049118065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027497 (A161680 (n + 2) + 2).toNat

end

end A027514.P12528950627049118065

/-!
# A027515: 

The programs for A027515, there is no canonical definition to state claims against.
-/

/-! ## A027515.P1022627776600702992

`A027497(A167614(n+1))`
-/

namespace A027515.P1022627776600702992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027497 (A167614 (n + 1)).toNat

end

end A027515.P1022627776600702992

/-! ## A027515.P488218208978051330

`A027497(A133263(n+2)+1)`
-/

namespace A027515.P488218208978051330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027497 (A133263 (n + 2) + 1).toNat

end

end A027515.P488218208978051330

/-! ## A027515.P10919217892779508859

`A027497(A000124(n+2)+2)`
-/

namespace A027515.P10919217892779508859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027497 (A000124 (n + 2) + 2).toNat

end

end A027515.P10919217892779508859

/-! ## A027515.P10921340178506233333

`A027497(A034856(n+1)+5)`
-/

namespace A027515.P10921340178506233333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027497 (A034856 (n + 1) + 5).toNat

end

end A027515.P10921340178506233333

/-! ## A027515.P6590342692490192223

`A027497(eq[2, A144328(n+1)]+1)`
-/

namespace A027515.P6590342692490192223
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027497 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A027515.P6590342692490192223

/-!
# A027519: First diagonal of A027516.

The programs for A027519, there is no canonical definition to state claims against.
-/

/-! ## A027519.P5284421330834427826

`A027516(∑[n+1])`
-/

namespace A027519.P5284421330834427826
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027516 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A027519.P5284421330834427826

/-! ## A027519.P8232785277886068101

`A027516(A000217(n+1))^A178334(n)`
-/

namespace A027519.P8232785277886068101
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027516 (A000217 (n + 1)).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A027519.P8232785277886068101

/-! ## A027519.P7572402887463781077

`A056594(2*n)²*A027516(A000217(n+1))`
-/

namespace A027519.P7572402887463781077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (2 * n) ^ 2 * A027516 (A000217 (n + 1)).toNat

end

end A027519.P7572402887463781077

/-! ## A027519.P7480844629908265185

`lcm(-A000040(n+2)%2, A027516(A000217(n+1)))`
-/

namespace A027519.P7480844629908265185
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (Int.tmod (-A000040 (n + 2)) 2) (A027516 (A000217 (n + 1)).toNat)

end

end A027519.P7480844629908265185

/-! ## A027519.P3650198975032302405

`A027516(A000217(n+1))*A057427(A094442(n))`
-/

namespace A027519.P3650198975032302405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027516 (A000217 (n + 1)).toNat * A057427 (A094442 n).toNat

end

end A027519.P3650198975032302405

/-!
# A027520: Second diagonal of A027516.

The programs for A027520, there is no canonical definition to state claims against.
-/

/-! ## A027520.P10371296745319768142

`A027516(∑[n+2])`
-/

namespace A027520.P10371296745319768142
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027516 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A027520.P10371296745319768142

/-! ## A027520.P6490461050230911996

`abs(A027516(A000096(n+1))-1)+1`
-/

namespace A027520.P6490461050230911996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A027516 (A000096 (n + 1)).toNat - 1| + 1

end

end A027520.P6490461050230911996

/-! ## A027520.P16214581885071919078

`A102683(n)!*A027516(A000096(n+1))`
-/

namespace A027520.P16214581885071919078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A102683 n).toNat : ℤ) * A027516 (A000096 (n + 1)).toNat

end

end A027520.P16214581885071919078

/-! ## A027520.P2911691897108406019

`A000034(2*n)*A027516(A000096(n+1))`
-/

namespace A027520.P2911691897108406019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) * A027516 (A000096 (n + 1)).toNat

end

end A027520.P2911691897108406019

/-! ## A027520.P3649745469624872943

`A010685(2*n)*A027516(A000096(n+1))`
-/

namespace A027520.P3649745469624872943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010685 (2 * n) * A027516 (A000096 (n + 1)).toNat

end

end A027520.P3649745469624872943

/-! ## A027520.P1157966538964894814

`A007318(C(2, n))*A027516(A000096(n+1))`
-/

namespace A027520.P1157966538964894814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A027516 (A000096 (n + 1)).toNat

end

end A027520.P1157966538964894814

/-! ## A027520.P6600611655288356236

`A014963(10*(n+1))*A027516(A000096(n+1))`
-/

namespace A027520.P6600611655288356236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (10 * (n + 1)) * A027516 (A000096 (n + 1)).toNat

end

end A027520.P6600611655288356236

/-! ## A027520.P5068297286307942521

`∏{e}[A006530(2*(n+1)), A027516(A000096(n+1))^#]`
-/

namespace A027520.P5068297286307942521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A027516 (A000096 (n + 1)).toNat ^ Nat.factorization (f1 n).natAbs p

end

end A027520.P5068297286307942521

/-!
# A027521: Third diagonal of A027516.

The programs for A027521, there is no canonical definition to state claims against.
-/

/-! ## A027521.P6471671719708397409

`A027516(∑[n+3]+1)`
-/

namespace A027521.P6471671719708397409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027516 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A027521.P6471671719708397409

/-! ## A027521.P1200416371801988460

`abs(1-A027516(A034856(n+2)))+1`
-/

namespace A027521.P1200416371801988460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A027516 (A034856 (n + 2)).toNat| + 1

end

end A027521.P1200416371801988460

/-! ## A027521.P8055042948070643528

`lcm(A020985(n), A027516(A034856(n+2)))`
-/

namespace A027521.P8055042948070643528
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A027516 (A034856 (n + 2)).toNat)

end

end A027521.P8055042948070643528

/-! ## A027521.P9526263536240549367

`A027516(A034856(n+2))+A000007(n+1)`
-/

namespace A027521.P9526263536240549367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027516 (A034856 (n + 2)).toNat + A000007 (n + 1)

end

end A027521.P9526263536240549367

/-! ## A027521.P12104739967245825089

`A027516(A034856(n+2))+C(A000038(n), 3)`
-/

namespace A027521.P12104739967245825089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027516 (A034856 (n + 2)).toNat + (Nat.choose (A000038 n).toNat 3 : ℤ)

end

end A027521.P12104739967245825089

/-! ## A027521.P13931162879685257024

`A027516(A034856(n+2))+val(A098547(n), 70)`
-/

namespace A027521.P13931162879685257024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027516 (A034856 (n + 2)).toNat + (SequenceMachineLib.valuation (A098547 n).toNat 70 : ℤ)

end

end A027521.P13931162879685257024

/-! ## A027521.P2823121888668409085

`A027516(A034856(n+2))*A060576(2*(n+1))`
-/

namespace A027521.P2823121888668409085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027516 (A034856 (n + 2)).toNat * A060576 (2 * (n + 1))

end

end A027521.P2823121888668409085

/-! ## A027521.P7017051603522962643

`A000040(2*(n+1))%2*A027516(A034856(n+2))`
-/

namespace A027521.P7017051603522962643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (2 * (n + 1))) 2 * A027516 (A034856 (n + 2)).toNat

end

end A027521.P7017051603522962643

/-! ## A027521.P311977921043020065

`A007318(A000217(n))*A027516(A034856(n+2))`
-/

namespace A027521.P311977921043020065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000217 n).toNat * A027516 (A034856 (n + 2)).toNat

end

end A027521.P311977921043020065

/-! ## A027521.P5645658059363894348

`A001221(A001248(n+1))*A027516(A034856(n+2))`
-/

namespace A027521.P5645658059363894348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A001248 (n + 1)).toNat * A027516 (A034856 (n + 2)).toNat

end

end A027521.P5645658059363894348

/-!
# A027522: First diagonal of A027517.

The programs for A027522, there is no canonical definition to state claims against.
-/

/-! ## A027522.P7764696451154130473

`A027517(∑[n+1])`
-/

namespace A027522.P7764696451154130473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027517 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A027522.P7764696451154130473

/-! ## A027522.P16318356018091629766

`or(A000007(n), A027517(A000217(n+1)))`
-/

namespace A027522.P16318356018091629766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A027517 (A000217 (n + 1)).toNat)

end

end A027522.P16318356018091629766

/-! ## A027522.P16465210351010711464

`A027517(A000217(n+1))+A000007(n+1)`
-/

namespace A027522.P16465210351010711464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027517 (A000217 (n + 1)).toNat + A000007 (n + 1)

end

end A027522.P16465210351010711464

/-! ## A027522.P7765945596009424221

`A027517(A000217(n+1))%A027532(n+3)`
-/

namespace A027522.P7765945596009424221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A027517 (A000217 (n + 1)).toNat) (A027532 (n + 3))

end

end A027522.P7765945596009424221

/-!
# A027523: Second diagonal of A027517.

The programs for A027523, there is no canonical definition to state claims against.
-/

/-! ## A027523.P16539187640325620999

`A027517(∑[n+2])`
-/

namespace A027523.P16539187640325620999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027517 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A027523.P16539187640325620999

/-!
# A027524: Third diagonal of A027517.

The programs for A027524, there is no canonical definition to state claims against.
-/

/-! ## A027524.P17623011938526668575

`A027517(∑[n+3]+1)`
-/

namespace A027524.P17623011938526668575
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027517 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A027524.P17623011938526668575

/-!
# A027525: First diagonal of A027518.

The programs for A027525, there is no canonical definition to state claims against.
-/

/-! ## A027525.P226400542070256049

`A027518(∑[n+1])`
-/

namespace A027525.P226400542070256049
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027518 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A027525.P226400542070256049

/-! ## A027525.P16086590245342662687

`char[A196199(n)]*A027518(A000124(n)+n)`
-/

namespace A027525.P16086590245342662687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196199 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A027518 (A000124 n + (n : ℤ)).toNat

end

end A027525.P16086590245342662687

/-! ## A027525.P5512050234195117576

`A007318(C(2, n))*A027518(A000124(n)+n)`
-/

namespace A027525.P5512050234195117576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A027518 (A000124 n + (n : ℤ)).toNat

end

end A027525.P5512050234195117576

/-! ## A027525.P16434599564121579688

`A027518(A000124(n)+n)+n*A000007(n)`
-/

namespace A027525.P16434599564121579688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027518 (A000124 n + (n : ℤ)).toNat + (n : ℤ) * A000007 n

end

end A027525.P16434599564121579688

/-! ## A027525.P10813411134093185818

`A027518(A000124(n)+n)+char[A044766(n+1)]`
-/

namespace A027525.P10813411134093185818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044766 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027518 (A000124 n + (n : ℤ)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A027525.P10813411134093185818

/-!
# A027526: Second diagonal of A027518.

The programs for A027526, there is no canonical definition to state claims against.
-/

/-! ## A027526.P17524965356628899836

`A027518(∑[n+2])`
-/

namespace A027526.P17524965356628899836
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027518 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A027526.P17524965356628899836

/-!
# A027527: Third diagonal of A027518.

The programs for A027527, there is no canonical definition to state claims against.
-/

/-! ## A027527.P7053376457261592717

`A027518(∑[n+3]+1)`
-/

namespace A027527.P7053376457261592717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027518 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A027527.P7053376457261592717

/-!
# A027528: First column of A027516.

The programs for A027528, there is no canonical definition to state claims against.
-/

/-! ## A027528.P18420878210138992608

`A027516(∑[n]+1)`
-/

namespace A027528.P18420878210138992608
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027516 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A027528.P18420878210138992608

/-! ## A027528.P1210711855979394409

`gcd(A000038(n), A027516(A000124(n)))`
-/

namespace A027528.P1210711855979394409
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A027516 (A000124 n).toNat)

end

end A027528.P1210711855979394409

/-! ## A027528.P14931616882291926831

`or(A000007(n), A027516(A000124(n)))`
-/

namespace A027528.P14931616882291926831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A027516 (A000124 n).toNat)

end

end A027528.P14931616882291926831

/-! ## A027528.P3970733154226521904

`A130507(n²)+A027516(A000124(n))`
-/

namespace A027528.P3970733154226521904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130507 (n ^ 2) + A027516 (A000124 n).toNat

end

end A027528.P3970733154226521904

/-! ## A027528.P8507427734119030018

`A027516(A000124(n))*A094267(4*n)`
-/

namespace A027528.P8507427734119030018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027516 (A000124 n).toNat * A094267 (4 * n)

end

end A027528.P8507427734119030018

/-! ## A027528.P281954975911398396

`A011558(A052033(n+1))*A027516(A000124(n))`
-/

namespace A027528.P281954975911398396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011558 (A052033 (n + 1)).toNat * A027516 (A000124 n).toNat

end

end A027528.P281954975911398396

/-! ## A027528.P2422559429677620376

`A011558(A236437(n+1))*A027516(A000124(n))`
-/

namespace A027528.P2422559429677620376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011558 (A236437 (n + 1)).toNat * A027516 (A000124 n).toNat

end

end A027528.P2422559429677620376

/-!
# A027529: Second column of A027516.

The programs for A027529, there is no canonical definition to state claims against.
-/

/-! ## A027529.P3448348179670317454

`A027516(∑[n+1]+2)`
-/

namespace A027529.P3448348179670317454
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027516 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A027529.P3448348179670317454

/-! ## A027529.P9687749822975926728

`gcd(A000038(n), A027516(A000096(n)+3))`
-/

namespace A027529.P9687749822975926728
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A027516 (A000096 n + 3).toNat)

end

end A027529.P9687749822975926728

/-! ## A027529.P13803884873456931345

`A000045(((-1)^n)²)*A027516(A000096(n)+3)`
-/

namespace A027529.P13803884873456931345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (((-1) ^ n) ^ 2).toNat * A027516 (A000096 n + 3).toNat

end

end A027529.P13803884873456931345

/-! ## A027529.P184984771706586869

`C(2, A000040(n+1))!*A027516(A000096(n)+3)`
-/

namespace A027529.P184984771706586869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (Nat.choose 2 (A000040 (n + 1)).toNat) : ℤ) * A027516 (A000096 n + 3).toNat

end

end A027529.P184984771706586869

/-! ## A027529.P9689436226742940217

`A027516(A000096(n)+3)+A010051(A001651(n+1)²)`
-/

namespace A027529.P9689436226742940217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027516 (A000096 n + 3).toNat + A010051 (A001651 (n + 1) ^ 2).toNat

end

end A027529.P9689436226742940217

/-!
# A027530: Third column of A027516.

The programs for A027530, there is no canonical definition to state claims against.
-/

/-! ## A027530.P3552985713077971882

`A027516(∑[n+2]+4)`
-/

namespace A027530.P3552985713077971882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027516 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A027530.P3552985713077971882

/-! ## A027530.P15741727673288917857

`abs(A027516(A167614(n+1))-1)+1`
-/

namespace A027530.P15741727673288917857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A027516 (A167614 (n + 1)).toNat - 1| + 1

end

end A027530.P15741727673288917857

/-! ## A027530.P10114201027228888099

`lcm(A027516(A167614(n+1)), A097807(n))`
-/

namespace A027530.P10114201027228888099
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A027516 (A167614 (n + 1)).toNat) (A097807 n)

end

end A027530.P10114201027228888099

/-! ## A027530.P11944354847676881593

`or(A000038(n), A027516(A167614(n+1)))`
-/

namespace A027530.P11944354847676881593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A027516 (A167614 (n + 1)).toNat)

end

end A027530.P11944354847676881593

/-! ## A027530.P12032602296252392097

`A027516(A167614(n+1))+A008683(4*(n+5))`
-/

namespace A027530.P12032602296252392097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027516 (A167614 (n + 1)).toNat + A008683 (4 * (n + 5))

end

end A027530.P12032602296252392097

/-! ## A027530.P4865602908397235491

`A057428(A044739(n+1))²*A027516(A167614(n+1))`
-/

namespace A027530.P4865602908397235491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A044739 (n + 1)).toNat ^ 2 * A027516 (A167614 (n + 1)).toNat

end

end A027530.P4865602908397235491

/-! ## A027530.P11793696402863417322

`A000045(A014963(4*n+2))*A027516(A167614(n+1))`
-/

namespace A027530.P11793696402863417322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A014963 (4 * n + 2)).toNat * A027516 (A167614 (n + 1)).toNat

end

end A027530.P11793696402863417322

/-!
# A027531: First column of A027517.

The programs for A027531, there is no canonical definition to state claims against.
-/

/-! ## A027531.P10241429053367954054

`A027517(∑[n]+1)`
-/

namespace A027531.P10241429053367954054
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027517 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A027531.P10241429053367954054

/-! ## A027531.P5481649611441182456

`lcm(A027517(A000124(n)), A087960(n))`
-/

namespace A027531.P5481649611441182456
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A027517 (A000124 n).toNat) (A087960 n)

end

end A027531.P5481649611441182456

/-! ## A027531.P14997318920100985316

`or(A000007(n), A027517(A000124(n)))`
-/

namespace A027531.P14997318920100985316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A027517 (A000124 n).toNat)

end

end A027531.P14997318920100985316

/-! ## A027531.P5041456375668596251

`A007318(∑[n])*A027517(A000124(n))`
-/

namespace A027531.P5041456375668596251
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A027517 (A000124 n).toNat

end

end A027531.P5041456375668596251

/-! ## A027531.P2240671876112854630

`log2(A020639(2*(n+2)))*A027517(A000124(n))`
-/

namespace A027531.P2240671876112854630
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A020639 (2 * (n + 2)) : ℝ) * (A027517 (A000124 n).toNat : ℝ)

end

end A027531.P2240671876112854630

/-!
# A027532: Second column of A027517.

The programs for A027532, there is no canonical definition to state claims against.
-/

/-! ## A027532.P15645948450241728370

`A027517(∑[n+1]+2)`
-/

namespace A027532.P15645948450241728370
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027517 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A027532.P15645948450241728370

/-! ## A027532.P4822170446643094027

`record[gcd(A027517(n+1), A266291(n+1))]`
-/

namespace A027532.P4822170446643094027
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A027517 (n + 1)) (A266291 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027532.P4822170446643094027

/-!
# A027533: Third column of A027517.

The programs for A027533, there is no canonical definition to state claims against.
-/

/-! ## A027533.P16001358484058561178

`A027517(∑[n+2]+4)`
-/

namespace A027533.P16001358484058561178
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027517 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A027533.P16001358484058561178

/-!
# A027534: First column of A027518.

The programs for A027534, there is no canonical definition to state claims against.
-/

/-! ## A027534.P17131280901040581415

`A027518(∑[n]+1)`
-/

namespace A027534.P17131280901040581415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027518 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A027534.P17131280901040581415

/-! ## A027534.P9185249608051901434

`A007318(∑[n])*A027518(A000124(n))`
-/

namespace A027534.P9185249608051901434
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A027518 (A000124 n).toNat

end

end A027534.P9185249608051901434

/-! ## A027534.P12888086915097266206

`A014963(4*n+6)*A027518(A000124(n))`
-/

namespace A027534.P12888086915097266206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (4 * n + 6) * A027518 (A000124 n).toNat

end

end A027534.P12888086915097266206

/-! ## A027534.P3326300380877532100

`A027518(A000124(n))+A008683(48*(n+1))`
-/

namespace A027534.P3326300380877532100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027518 (A000124 n).toNat + A008683 (48 * (n + 1))

end

end A027534.P3326300380877532100

/-! ## A027534.P4493548337494393678

`A000010(gcd(n, n+1))*A027518(A000124(n))`
-/

namespace A027534.P4493548337494393678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (Nat.gcd n (n + 1)) * A027518 (A000124 n).toNat

end

end A027534.P4493548337494393678

/-!
# A027535: Second column of A027518.

The programs for A027535, there is no canonical definition to state claims against.
-/

/-! ## A027535.P6522550868319869285

`A027518(∑[n+1]+2)`
-/

namespace A027535.P6522550868319869285
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027518 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A027535.P6522550868319869285

/-! ## A027535.P13069008731959801757

`record[A027518(record[A194916(n+1)])]`
-/

namespace A027535.P13069008731959801757
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194916 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027518 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027535.P13069008731959801757

/-! ## A027535.P18269396511742361657

`record[gcd(A027518(n+1), A192174(n))]`
-/

namespace A027535.P18269396511742361657
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A027518 (n + 1)) (A192174 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027535.P18269396511742361657

/-! ## A027535.P2661566886422137537

`record[and(A027518(n+1), A291207(n))]`
-/

namespace A027535.P2661566886422137537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A027518 (n + 1)) (A291207 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027535.P2661566886422137537

/-!
# A027536: Third column of A027518.

The programs for A027536, there is no canonical definition to state claims against.
-/

/-! ## A027536.P6831197095786586296

`A027518(∑[n+2]+4)`
-/

namespace A027536.P6831197095786586296
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027518 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A027536.P6831197095786586296

/-! ## A027536.P8291112582876213849

`A185284(n)+A027518(A167614(n+1))`
-/

namespace A027536.P8291112582876213849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 n + A027518 (A167614 (n + 1)).toNat

end

end A027536.P8291112582876213849

/-! ## A027536.P15859010587999343847

`A027518(A167614(n+1))*A036225(n)`
-/

namespace A027536.P15859010587999343847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027518 (A167614 (n + 1)).toNat * A036225 n

end

end A027536.P15859010587999343847

/-! ## A027536.P2999024731740978787

`A027518(A167614(n+1))*A152848(n)`
-/

namespace A027536.P2999024731740978787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027518 (A167614 (n + 1)).toNat * A152848 n

end

end A027536.P2999024731740978787

/-! ## A027536.P11766333404128045839

`A027518(A167614(n+1))*A057979(2*n)`
-/

namespace A027536.P11766333404128045839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027518 (A167614 (n + 1)).toNat * A057979 (2 * n)

end

end A027536.P11766333404128045839

/-!
# A027537: Square of the lower triangular normalized Eulerian number matrix.

The programs for A027537, there is no canonical definition to state claims against.
-/

/-! ## A027537.P16162906357892101621

`A192721(n+1)-A103698(A260813(3*n+1))`
-/

namespace A027537.P16162906357892101621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192721 (n + 1) - A103698 (A260813 (3 * n + 1)).toNat

end

end A027537.P16162906357892101621

/-!
# A027540: Second diagonal of A027537.

The programs for A027540, the canonical program `A027540.P10127495579640881262` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027540 has offset 2).

The definition of A027540 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A027540.P10127495579640881262

`(n+3)*A000295(n+2)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A027540

/-- `(n+3)*A000295(n+2)` -/
def P10127495579640881262.Spec : Prop :=
  ∀ n, P10127495579640881262.a n = A027540 (n + 2)

theorem P10127495579640881262.correct : P10127495579640881262.Spec := by
  intro n
  simp only [A027540, Nat.add_sub_cancel]

end A027540

/-! ## A027540.P9675587295394981159

`∑[∑[2^n]]*(n+3)`
-/

namespace A027540.P9675587295394981159
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (n + 3)

end

end A027540.P9675587295394981159

namespace A027540

/-- `∑[∑[2^n]]*(n+3)` -/
def P9675587295394981159.Spec : Prop :=
  ∀ n, (P9675587295394981159.a n : ℤ) = A027540 (n + 2)

end A027540

/-! ## A027540.P4786798072073104074

`∑[∑[∑[ogf((3-5x)/(1-4x+4x^2))]]]`
-/

namespace A027540.P4786798072073104074
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -5] [1, -4, 4] n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027540.P4786798072073104074

namespace A027540

/-- `∑[∑[∑[ogf((3-5x)/(1-4x+4x^2))]]]` -/
def P4786798072073104074.Spec : Prop :=
  ∀ n, P4786798072073104074.a n = A027540 (n + 2)

end A027540

/-! ## A027540.P17236965820417953062

`record[n*(2^(n-1)-(n+1))]+3+n`
-/

namespace A027540.P17236965820417953062
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * ((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - (n + 1 : ℚ))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 3 + (n : ℚ)

end

end A027540.P17236965820417953062

namespace A027540

/-- `record[n*(2^(n-1)-(n+1))]+3+n` -/
def P17236965820417953062.Spec : Prop :=
  ∀ n, P17236965820417953062.a n = (A027540 (n + 2) : ℚ)

end A027540

/-! ## A027540.P1933936133659002020

`∑[A066368(n+2)-1]`
-/

namespace A027540.P1933936133659002020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066368 (n + 2) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027540.P1933936133659002020

namespace A027540

/-- `∑[A066368(n+2)-1]` -/
def P1933936133659002020.Spec : Prop :=
  ∀ n, P1933936133659002020.a n = A027540 (n + 2)

end A027540

/-! ## A027540.P5153994449374842775

`∑[∑[∑[A045891(n+2)]]]`
-/

namespace A027540.P5153994449374842775
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045891 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027540.P5153994449374842775

namespace A027540

/-- `∑[∑[∑[A045891(n+2)]]]` -/
def P5153994449374842775.Spec : Prop :=
  ∀ n, P5153994449374842775.a n = A027540 (n + 2)

end A027540

/-! ## A027540.P1090263936070210080

`∑[∑[∑[A047860(n)+2]]]`
-/

namespace A027540.P1090263936070210080
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047860 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027540.P1090263936070210080

namespace A027540

/-- `∑[∑[∑[A047860(n)+2]]]` -/
def P1090263936070210080.Spec : Prop :=
  ∀ n, P1090263936070210080.a n = A027540 (n + 2)

end A027540

/-! ## A027540.P10589021681305019907

`A092442(n+2)-(n+2)`
-/

namespace A027540.P10589021681305019907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092442 (n + 2) - (n + 2 : ℤ)

end

end A027540.P10589021681305019907

namespace A027540

/-- `A092442(n+2)-(n+2)` -/
def P10589021681305019907.Spec : Prop :=
  ∀ n, P10589021681305019907.a n = A027540 (n + 2)

end A027540

/-! ## A027540.P16096994911900005879

`A342482(n+3)+3+n`
-/

namespace A027540.P16096994911900005879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342482 (n + 3) + 3 + (n : ℤ)

end

end A027540.P16096994911900005879

namespace A027540

/-- `A342482(n+3)+3+n` -/
def P16096994911900005879.Spec : Prop :=
  ∀ n, P16096994911900005879.a n = A027540 (n + 2)

end A027540

/-! ## A027540.P583000052434017260

`∑[∑[A047859(n+1)-1]]`
-/

namespace A027540.P583000052434017260
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047859 (n + 1) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027540.P583000052434017260

namespace A027540

/-- `∑[∑[A047859(n+1)-1]]` -/
def P583000052434017260.Spec : Prop :=
  ∀ n, P583000052434017260.a n = A027540 (n + 2)

end A027540

/-! ## A027540.P10286696374651078745

`∑[∑[A196410(n+5)-2]]`
-/

namespace A027540.P10286696374651078745
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196410 (n + 5) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027540.P10286696374651078745

namespace A027540

/-- `∑[∑[A196410(n+5)-2]]` -/
def P10286696374651078745.Spec : Prop :=
  ∀ n, P10286696374651078745.a n = A027540 (n + 2)

end A027540

/-! ## A027540.P7276706501272112373

`A213569(n+2)-(n+2)²`
-/

namespace A027540.P7276706501272112373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213569 (n + 2) - ((n + 2) ^ 2 : ℤ)

end

end A027540.P7276706501272112373

namespace A027540

/-- `A213569(n+2)-(n+2)²` -/
def P7276706501272112373.Spec : Prop :=
  ∀ n, P7276706501272112373.a n = A027540 (n + 2)

end A027540

/-! ## A027540.P202191397682161519

`A001787(n+3)-(n+3)²`
-/

namespace A027540.P202191397682161519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001787 (n + 3) - ((n + 3) ^ 2 : ℤ)

end

end A027540.P202191397682161519

namespace A027540

/-- `A001787(n+3)-(n+3)²` -/
def P202191397682161519.Spec : Prop :=
  ∀ n, P202191397682161519.a n = A027540 (n + 2)

end A027540

/-! ## A027540.P6749866301348894064

`A139756(n+4)-(n+3)²`
-/

namespace A027540.P6749866301348894064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139756 (n + 4) - ((n + 3) ^ 2 : ℤ)

end

end A027540.P6749866301348894064

namespace A027540

/-- `A139756(n+4)-(n+3)²` -/
def P6749866301348894064.Spec : Prop :=
  ∀ n, P6749866301348894064.a n = A027540 (n + 2)

end A027540

/-! ## A027540.P4877463995755630775

`∑[A053221(n+2)-(n+2)]`
-/

namespace A027540.P4877463995755630775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053221 (n + 2) - (n + 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027540.P4877463995755630775

namespace A027540

/-- `∑[A053221(n+2)-(n+2)]` -/
def P4877463995755630775.Spec : Prop :=
  ∀ n, P4877463995755630775.a n = A027540 (n + 2)

end A027540

/-! ## A027540.P13338278324594685998

`(n+3)*A000247(n+2)+3+n`
-/

namespace A027540.P13338278324594685998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) * A000247 (n + 2) + 3 + (n : ℤ)

end

end A027540.P13338278324594685998

namespace A027540

/-- `(n+3)*A000247(n+2)+3+n` -/
def P13338278324594685998.Spec : Prop :=
  ∀ n, P13338278324594685998.a n = A027540 (n + 2)

end A027540

/-! ## A027540.P3637283607429153342

`A288958(n+1)+∑[A134067(n)]`
-/

namespace A027540.P3637283607429153342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134067 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288958 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027540.P3637283607429153342

namespace A027540

/-- `A288958(n+1)+∑[A134067(n)]` -/
def P3637283607429153342.Spec : Prop :=
  ∀ n, P3637283607429153342.a n = A027540 (n + 2)

end A027540

/-! ## A027540.P8949369112914374295

`A047520(n+1)+A036799(n+1)`
-/

namespace A027540.P8949369112914374295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047520 (n + 1) + A036799 (n + 1)

end

end A027540.P8949369112914374295

namespace A027540

/-- `A047520(n+1)+A036799(n+1)` -/
def P8949369112914374295.Spec : Prop :=
  ∀ n, P8949369112914374295.a n = A027540 (n + 2)

end A027540

/-! ## A027540.P1761695045331214070

`A058877(n+3)-A002378(n+2)`
-/

namespace A027540.P1761695045331214070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058877 (n + 3) - A002378 (n + 2)

end

end A027540.P1761695045331214070

namespace A027540

/-- `A058877(n+3)-A002378(n+2)` -/
def P1761695045331214070.Spec : Prop :=
  ∀ n, P1761695045331214070.a n = A027540 (n + 2)

end A027540

/-! ## A027540.P17220723518664316553

`A125128(n+1)+2*A003469(n+1)`
-/

namespace A027540.P17220723518664316553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125128 (n + 1) + 2 * A003469 (n + 1)

end

end A027540.P17220723518664316553

namespace A027540

/-- `A125128(n+1)+2*A003469(n+1)` -/
def P17220723518664316553.Spec : Prop :=
  ∀ n, P17220723518664316553.a n = A027540 (n + 2)

end A027540

/-!
# A027541: Third diagonal of A027537.

The programs for A027541, there is no canonical definition to state claims against.
-/

/-! ## A027541.P15078117780251812517

`A027537(∑[n+3]+1)`
-/

namespace A027541.P15078117780251812517
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027537 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A027541.P15078117780251812517

/-!
# A027542: Second diagonal of A027538.

The programs for A027542, there is no canonical definition to state claims against.
-/

/-! ## A027542.P2692111088232900059

`(n*(n+5)+7)*∑[∑[2^n]]`
-/

namespace A027542.P2692111088232900059
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n * (n + 5) + 7) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A027542.P2692111088232900059

/-! ## A027542.P16515721086926919670

`A027538(∑[n+2])`
-/

namespace A027542.P16515721086926919670
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027538 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A027542.P16515721086926919670

/-! ## A027542.P10576337088282742817

`record[ratio[1/A027538(n+2)]]`
-/

namespace A027542.P10576337088282742817
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (A027538 (n + 2) : ℚ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) / f2 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027542.P10576337088282742817

/-! ## A027542.P7052119003062445775

`record[A027538(abs(A201163(n)))]`
-/

namespace A027542.P7052119003062445775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027538 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027542.P7052119003062445775

/-! ## A027542.P9681287601844503612

`record[A027538(lt[A008292(n+1), n])]`
-/

namespace A027542.P9681287601844503612
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008292 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027538 (SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027542.P9681287601844503612

/-!
# A027543: Third diagonal of A027538.

The programs for A027543, there is no canonical definition to state claims against.
-/

/-! ## A027543.P1169823735928272899

`A027538(∑[n+3]+1)`
-/

namespace A027543.P1169823735928272899
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027538 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A027543.P1169823735928272899

/-!
# A027544: Second diagonal of A027539.

The programs for A027544, there is no canonical definition to state claims against.
-/

/-! ## A027544.P3678306167069426972

`∑[A126646(n)]*A053698(n+2)`
-/

namespace A027544.P3678306167069426972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A053698 (n + 2)

end

end A027544.P3678306167069426972

/-! ## A027544.P12259519611920104505

`record[A061409(n)]*A027540(n+2)`
-/

namespace A027544.P12259519611920104505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061409 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A027540 (n + 2)

end

end A027544.P12259519611920104505

/-! ## A027544.P5811251439075029482

`A002522(n+2)*A027540(n+2)`
-/

namespace A027544.P5811251439075029482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 (n + 2) * A027540 (n + 2)

end

end A027544.P5811251439075029482

/-! ## A027544.P7449414730158756953

`A000295(n+2)*A053698(n+2)`
-/

namespace A027544.P7449414730158756953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000295 (n + 2) * A053698 (n + 2)

end

end A027544.P7449414730158756953

/-! ## A027544.P18209845896103492954

`∑[A000225(n+1)]*A053698(n+2)`
-/

namespace A027544.P18209845896103492954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A053698 (n + 2)

end

end A027544.P18209845896103492954

/-!
# A027545: Third diagonal of A027539.

The programs for A027545, there is no canonical definition to state claims against.
-/

/-! ## A027545.P2629904960581190386

`A027539(∑[n+3]+1)`
-/

namespace A027545.P2629904960581190386
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027539 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A027545.P2629904960581190386

/-!
# A027546: First column of A027537.

The programs for A027546, there is no canonical definition to state claims against.
-/

/-! ## A027546.P68108514863042450

`A027537(∑[n]+1)`
-/

namespace A027546.P68108514863042450
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027537 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A027546.P68108514863042450

/-! ## A027546.P8531993092550173239

`record[A027537(n+1)/A155493(n)]`
-/

namespace A027546.P8531993092550173239
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027537 (n + 1) : ℚ) / (A155493 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027546.P8531993092550173239

/-! ## A027546.P14846536154690681001

`record[root(A027537(n+1), A132731(n))]`
-/

namespace A027546.P14846536154690681001
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A027537 (n + 1) : ℝ) ^ (1 / (A132731 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027546.P14846536154690681001

/-! ## A027546.P7035180048975126656

`record[gcd(A002262(n), A027537(n+1))]`
-/

namespace A027546.P7035180048975126656
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A027537 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027546.P7035180048975126656

/-! ## A027546.P7868037943811584136

`record[A027537(n+1)/A027537(A080036(n))]`
-/

namespace A027546.P7868037943811584136
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027537 (n + 1) : ℚ) / (A027537 (A080036 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027546.P7868037943811584136

/-!
# A027547: Second column of A027537.

The programs for A027547, there is no canonical definition to state claims against.
-/

/-! ## A027547.P6686095493782141932

`A027537(∑[n+1]+2)`
-/

namespace A027547.P6686095493782141932
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027537 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A027547.P6686095493782141932

/-! ## A027547.P13202465821107003328

`record[ratio[A027537(A080036(n))]]`
-/

namespace A027547.P13202465821107003328
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027537 (A080036 n).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027547.P13202465821107003328

/-! ## A027547.P11333571909108042046

`record[gcd(A027537(n+2), A084938(n))]`
-/

namespace A027547.P11333571909108042046
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A027537 (n + 2)) (A084938 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027547.P11333571909108042046

/-! ## A027547.P9771731987876540221

`record[gcd(1-A002262(n), A027537(n+1))]`
-/

namespace A027547.P9771731987876540221
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (1 - A002262 n) (A027537 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027547.P9771731987876540221

/-! ## A027547.P14038531101204844135

`record[A027537(n+1)^A144473(n+1)]`
-/

namespace A027547.P14038531101204844135
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027537 (n + 1) : ℚ) ^ (A144473 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027547.P14038531101204844135

/-!
# A027548: Third column of A027537.

The programs for A027548, there is no canonical definition to state claims against.
-/

/-! ## A027548.P11954525832266421628

`A027537(∑[n+2]+4)`
-/

namespace A027548.P11954525832266421628
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027537 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A027548.P11954525832266421628

/-! ## A027548.P3814998622103621693

`record[gcd(2-A002262(n), A027537(n+1))]`
-/

namespace A027548.P3814998622103621693
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 - A002262 n) (A027537 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027548.P3814998622103621693

/-! ## A027548.P17423881736595589635

`A027537(A167614(n+1))+A025439(n)`
-/

namespace A027548.P17423881736595589635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027537 (A167614 (n + 1)).toNat + A025439 n

end

end A027548.P17423881736595589635

/-! ## A027548.P8414365795052374637

`A027537(A167614(n+1))^A178489(n)`
-/

namespace A027548.P8414365795052374637
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027537 (A167614 (n + 1)).toNat : ℚ) ^ (A178489 n : ℤ)

end

end A027548.P8414365795052374637

/-! ## A027548.P17325660101415749266

`lcm(A027537(A167614(n+1)), A106400(n))`
-/

namespace A027548.P17325660101415749266
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A027537 (A167614 (n + 1)).toNat) (A106400 n)

end

end A027548.P17325660101415749266

/-!
# A027549: First column of A027538.

The programs for A027549, there is no canonical definition to state claims against.
-/

/-! ## A027549.P15206228721509812091

`A027538(∑[n]+1)`
-/

namespace A027549.P15206228721509812091
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027538 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A027549.P15206228721509812091

/-! ## A027549.P2591386664104359488

`record[ratio[A027538(A028310(n))]]`
-/

namespace A027549.P2591386664104359488
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027538 (A028310 n).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027549.P2591386664104359488

/-! ## A027549.P754212900512432724

`record[A010054(n)*A027538(n+1)]`
-/

namespace A027549.P754212900512432724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A027538 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027549.P754212900512432724

/-! ## A027549.P15803249833355535543

`record[A027538(n+1)/A027555(n)]`
-/

namespace A027549.P15803249833355535543
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027538 (n + 1) : ℚ) / (A027555 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027549.P15803249833355535543

/-! ## A027549.P17228975569694947051

`record[gcd(A027538(n+1), A206294(n))]`
-/

namespace A027549.P17228975569694947051
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A027538 (n + 1)) (A206294 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027549.P17228975569694947051

/-!
# A027550: Second column of A027538.

The programs for A027550, there is no canonical definition to state claims against.
-/

/-! ## A027550.P9328238539001989660

`A027538(∑[n+1]+2)`
-/

namespace A027550.P9328238539001989660
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027538 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A027550.P9328238539001989660

/-! ## A027550.P16301931804412155271

`record[gcd(A027538(n+2), A206294(n))]`
-/

namespace A027550.P16301931804412155271
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A027538 (n + 2)) (A206294 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027550.P16301931804412155271

/-! ## A027550.P9192724487705636883

`A027538(A000096(n)+3)^A014963(A226401(n+1))`
-/

namespace A027550.P9192724487705636883
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027538 (A000096 n + 3).toNat : ℚ) ^ (A014963 (A226401 (n + 1)).toNat : ℤ)

end

end A027550.P9192724487705636883

/-!
# A027551: Third column of A027538.

The programs for A027551, there is no canonical definition to state claims against.
-/

/-! ## A027551.P6730583189912052763

`A027538(∑[n+2]+4)`
-/

namespace A027551.P6730583189912052763
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027538 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A027551.P6730583189912052763

/-!
# A027552: First column of A027539.

The programs for A027552, there is no canonical definition to state claims against.
-/

/-! ## A027552.P4547376653496191286

`A027539(∑[n]+1)`
-/

namespace A027552.P4547376653496191286
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027539 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A027552.P4547376653496191286

/-! ## A027552.P15838516141549033159

`or(1, A027539(A000124(n)))`
-/

namespace A027552.P15838516141549033159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A027539 (A000124 n).toNat)

end

end A027552.P15838516141549033159

/-! ## A027552.P1054549418980960610

`record[A027539(n+1)/A027555(n)]`
-/

namespace A027552.P1054549418980960610
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027539 (n + 1) : ℚ) / (A027555 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027552.P1054549418980960610

/-! ## A027552.P8120174296346218869

`record[A027539(n+1)/A008292(n+1)]`
-/

namespace A027552.P8120174296346218869
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027539 (n + 1) : ℚ) / (A008292 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027552.P8120174296346218869

/-! ## A027552.P7764314553504637031

`A000041(gcd(n, n+1))*A027539(A000124(n))`
-/

namespace A027552.P7764314553504637031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.gcd n (n + 1)) * A027539 (A000124 n).toNat

end

end A027552.P7764314553504637031

/-!
# A027553: Second column of A027539.

The programs for A027553, there is no canonical definition to state claims against.
-/

/-! ## A027553.P14284086283229899670

`A027539(∑[n+1]+2)`
-/

namespace A027553.P14284086283229899670
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027539 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A027553.P14284086283229899670

/-!
# A027554: Third column of A027539.

The programs for A027554, there is no canonical definition to state claims against.
-/

/-! ## A027554.P5438055451205370190

`A027539(∑[n+2]+4)`
-/

namespace A027554.P5438055451205370190
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027539 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A027554.P5438055451205370190

/-!
# A027555: Triangle of binomial coefficients C(-n,k).

The programs for A027555, the canonical program `A027555.P8297131878136320084` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027555 has offset 0).

The definition of A027555 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A027555.P7165313266594423262

`A033999(A002262(n))*A059481(n)`
-/

namespace A027555.P7165313266594423262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A002262 n).toNat * A059481 n

end

end A027555.P7165313266594423262

namespace A027555

/-- `A033999(A002262(n))*A059481(n)` -/
def P7165313266594423262.Spec : Prop :=
  ∀ n, P7165313266594423262.a n = A027555 n

end A027555

/-! ## A027555.P5881490887386091608

`A033999(A294317(n))*A059481(n)`
-/

namespace A027555.P5881490887386091608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A294317 n).toNat * A059481 n

end

end A027555.P5881490887386091608

namespace A027555

/-- `A033999(A294317(n))*A059481(n)` -/
def P5881490887386091608.Spec : Prop :=
  ∀ n, P5881490887386091608.a n = A027555 n

end A027555

/-! ## A027555.P15088051087682568518

`A033999(log2(A059268(n)))*A059481(n)`
-/

namespace A027555.P15088051087682568518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (SequenceMachineLib.roundAway (Real.logb 2 (A059268 n : ℝ))).toNat * A059481 n

end

end A027555.P15088051087682568518

namespace A027555

/-- `A033999(log2(A059268(n)))*A059481(n)` -/
def P15088051087682568518.Spec : Prop :=
  ∀ n, P15088051087682568518.a n = A027555 n

end A027555

/-! ## A027555.P15255526593780438000

`A059481(n)*A062157(A002260(n+1))`
-/

namespace A027555.P15255526593780438000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059481 n * A062157 (A002260 (n + 1)).toNat

end

end A027555.P15255526593780438000

namespace A027555

/-- `A059481(n)*A062157(A002260(n+1))` -/
def P15255526593780438000.Spec : Prop :=
  ∀ n, P15255526593780438000.a n = A027555 n

end A027555

/-! ## A027555.P8297131878136320084

`A033999(A002262(n))*A100100(A061579(n))`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A027555

/-- `A033999(A002262(n))*A100100(A061579(n))` -/
def P8297131878136320084.Spec : Prop :=
  ∀ n, P8297131878136320084.a n = A027555 n

theorem P8297131878136320084.correct : P8297131878136320084.Spec := by
  intro n
  simp only [A027555]

end A027555

/-! ## A027555.P11331444703857975146

`A063007(n)/A293600(n+1)`
-/

namespace A027555.P11331444703857975146
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063007 n : ℚ) / (A293600 (n + 1) : ℚ)

end

end A027555.P11331444703857975146

namespace A027555

/-- `A063007(n)/A293600(n+1)` -/
def P11331444703857975146.Spec : Prop :=
  ∀ n, P11331444703857975146.a n = (A027555 n : ℚ)

end A027555

/-! ## A027555.P5394303995492243726

`A104684(A061579(n))/A293600(n+1)`
-/

namespace A027555.P5394303995492243726
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A104684 (A061579 n).toNat : ℚ) / (A293600 (n + 1) : ℚ)

end

end A027555.P5394303995492243726

namespace A027555

/-- `A104684(A061579(n))/A293600(n+1)` -/
def P5394303995492243726.Spec : Prop :=
  ∀ n, P5394303995492243726.a n = (A027555 n : ℚ)

end A027555

/-! ## A027555.P15110363351216950575

`A110555(A245300(n))`
-/

namespace A027555.P15110363351216950575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110555 (A245300 n).toNat

end

end A027555.P15110363351216950575

namespace A027555

/-- `A110555(A245300(n))` -/
def P15110363351216950575.Spec : Prop :=
  ∀ n, P15110363351216950575.a n = A027555 n

end A027555

/-! ## A027555.P4000313773399936543

`A033999(A002262(n))*A071919(A245300(n))`
-/

namespace A027555.P4000313773399936543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A002262 n).toNat * A071919 (A245300 n).toNat

end

end A027555.P4000313773399936543

namespace A027555

/-- `A033999(A002262(n))*A071919(A245300(n))` -/
def P4000313773399936543.Spec : Prop :=
  ∀ n, P4000313773399936543.a n = A027555 n

end A027555

/-! ## A027555.P17349603559643777169

`A059481(n)*A154269(A059268(n))`
-/

namespace A027555.P17349603559643777169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059481 n * A154269 (A059268 n).toNat

end

end A027555.P17349603559643777169

namespace A027555

/-- `A059481(n)*A154269(A059268(n))` -/
def P17349603559643777169.Spec : Prop :=
  ∀ n, P17349603559643777169.a n = A027555 n

end A027555

/-!
# A027556: Unbalanced strings of length n.

The programs for A027556, the canonical program `A027556.P13941062591336109548` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027556 has offset 0).

The definition of A027556 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A027556.P13941062591336109548

`2^n-A027383(n)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A027556

/-- `2^n-A027383(n)` -/
def P13941062591336109548.Spec : Prop :=
  ∀ n, P13941062591336109548.a n = A027556 n

theorem P13941062591336109548.correct : P13941062591336109548.Spec := by
  intro n
  simp only [A027556]

end A027556

/-! ## A027556.P6853646798992992462

`2^n-∑[2^floor(n/2)]`
-/

namespace A027556.P6853646798992992462
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℚ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027556.P6853646798992992462

namespace A027556

/-- `2^n-∑[2^floor(n/2)]` -/
def P6853646798992992462.Spec : Prop :=
  ∀ n, P6853646798992992462.a n = (A027556 n : ℚ)

end A027556

/-! ## A027556.P11638557772836995961

`2*Δ[A357284(n)]`
-/

namespace A027556.P11638557772836995961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357284 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n)

end

end A027556.P11638557772836995961

namespace A027556

/-- `2*Δ[A357284(n)]` -/
def P11638557772836995961.Spec : Prop :=
  ∀ n, P11638557772836995961.a n = A027556 n

end A027556

/-! ## A027556.P4959315962442551314

`∑[A233411(abs(1-n))]`
-/

namespace A027556.P4959315962442551314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233411 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027556.P4959315962442551314

namespace A027556

/-- `∑[A233411(abs(1-n))]` -/
def P4959315962442551314.Spec : Prop :=
  ∀ n, P4959315962442551314.a n = A027556 n

end A027556

/-! ## A027556.P8329238143017801623

`2*A274230(abs(1-n))`
-/

namespace A027556.P8329238143017801623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A274230 |1 - (n : ℤ)|.toNat

end

end A027556.P8329238143017801623

namespace A027556

/-- `2*A274230(abs(1-n))` -/
def P8329238143017801623.Spec : Prop :=
  ∀ n, P8329238143017801623.a n = A027556 n

end A027556

/-! ## A027556.P5188982737953292329

`∑[A011782(n)-2^floor(n/2)]`
-/

namespace A027556.P5188982737953292329
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011782 n : ℚ) - (2 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027556.P5188982737953292329

namespace A027556

/-- `∑[A011782(n)-2^floor(n/2)]` -/
def P5188982737953292329.Spec : Prop :=
  ∀ n, P5188982737953292329.a n = (A027556 n : ℚ)

end A027556

/-! ## A027556.P12818773699086295182

`∑[A032085(n+1)%ceil(2^(n-1))]`
-/

namespace A027556.P12818773699086295182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A032085 (n + 1)) ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027556.P12818773699086295182

namespace A027556

/-- `∑[A032085(n+1)%ceil(2^(n-1))]` -/
def P12818773699086295182.Spec : Prop :=
  ∀ n, P12818773699086295182.a n = A027556 n

end A027556

/-! ## A027556.P14322459267650343563

`xor(A000225(n), A354788(n))`
-/

namespace A027556.P14322459267650343563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000225 n) (A354788 n)

end

end A027556.P14322459267650343563

namespace A027556

/-- `xor(A000225(n), A354788(n))` -/
def P14322459267650343563.Spec : Prop :=
  ∀ n, P14322459267650343563.a n = A027556 n

end A027556

/-! ## A027556.P9760420197212204402

`abs(A000079(n)-A027383(n))`
-/

namespace A027556.P9760420197212204402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000079 n - A027383 n|

end

end A027556.P9760420197212204402

namespace A027556

/-- `abs(A000079(n)-A027383(n))` -/
def P9760420197212204402.Spec : Prop :=
  ∀ n, P9760420197212204402.a n = A027556 n

end A027556

/-! ## A027556.P15878112309271134004

`xor(∑[A131572(n)], A000225(n))`
-/

namespace A027556.P15878112309271134004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131572 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (∑ j ∈ Finset.range (n + 1), f1 j) (A000225 n)

end

end A027556.P15878112309271134004

namespace A027556

/-- `xor(∑[A131572(n)], A000225(n))` -/
def P15878112309271134004.Spec : Prop :=
  ∀ n, P15878112309271134004.a n = A027556 n

end A027556

/-! ## A027556.P1501888603900949062

`∑[∑[2*A007179(A289207(n))]]`
-/

namespace A027556.P1501888603900949062
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007179 (A289207 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027556.P1501888603900949062

namespace A027556

/-- `∑[∑[2*A007179(A289207(n))]]` -/
def P1501888603900949062.Spec : Prop :=
  ∀ n, P1501888603900949062.a n = A027556 n

end A027556

/-! ## A027556.P15186403456583384315

`Δ[A357283(n)]`
-/

namespace A027556.P15186403456583384315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357283 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A027556.P15186403456583384315

namespace A027556

/-- `Δ[A357283(n)]` -/
def P15186403456583384315.Spec : Prop :=
  ∀ n, P15186403456583384315.a n = A027556 n

end A027556

/-! ## A027556.P17158227065078941398

`A208900(n+1)%A052957(n)`
-/

namespace A027556.P17158227065078941398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A208900 (n + 1)) (A052957 n)

end

end A027556.P17158227065078941398

namespace A027556

/-- `A208900(n+1)%A052957(n)` -/
def P17158227065078941398.Spec : Prop :=
  ∀ n, P17158227065078941398.a n = A027556 n

end A027556

/-! ## A027556.P747573142855349405

`A107659(n)%A033484(n)`
-/

namespace A027556.P747573142855349405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A107659 n) (A033484 n)

end

end A027556.P747573142855349405

namespace A027556

/-- `A107659(n)%A033484(n)` -/
def P747573142855349405.Spec : Prop :=
  ∀ n, P747573142855349405.a n = A027556 n

end A027556

/-! ## A027556.P1486947281860259495

`A395108(n)%A126646(n)`
-/

namespace A027556.P1486947281860259495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A395108 n) (A126646 n)

end

end A027556.P1486947281860259495

namespace A027556

/-- `A395108(n)%A126646(n)` -/
def P1486947281860259495.Spec : Prop :=
  ∀ n, P1486947281860259495.a n = A027556 n

end A027556

/-! ## A027556.P3903903136368639722

`(∑[A208901(n+1)]-A208901(n+1))/2`
-/

namespace A027556.P3903903136368639722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208901 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j - A208901 (n + 1) : ℤ) : ℚ) / 2

end

end A027556.P3903903136368639722

namespace A027556

/-- `(∑[A208901(n+1)]-A208901(n+1))/2` -/
def P3903903136368639722.Spec : Prop :=
  ∀ n, P3903903136368639722.a n = (A027556 n : ℚ)

end A027556

/-! ## A027556.P10769143304332094910

`A087291(n)%A032085(n+1)`
-/

namespace A027556.P10769143304332094910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A087291 n) (A032085 (n + 1))

end

end A027556.P10769143304332094910

namespace A027556

/-- `A087291(n)%A032085(n+1)` -/
def P10769143304332094910.Spec : Prop :=
  ∀ n, P10769143304332094910.a n = A027556 n

end A027556

/-!
# A027557: Number of 3-balanced strings of length n: let d(S)= #(1)'s in S - #(0)'s, then S is k-balanced if every substring T has -k<=d(T)<=k; here k=3.

The programs for A027557, the canonical program `A027557.P14274752979935920469` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027557 has offset 0).

The definition of A027557 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A027557.P398074575757042377

`2*A000045(n+3)-2^floor((n+2)/2)-2^floor((n+1)/2)`
-/

namespace A027557.P398074575757042377
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A000045 (n + 3) : ℚ) - (2 : ℚ) ^ (⌊(n + 2 : ℚ) / 2⌋ : ℤ) - (2 : ℚ) ^ (⌊(n + 1 : ℚ) / 2⌋ : ℤ)

end

end A027557.P398074575757042377

namespace A027557

/-- `2*A000045(n+3)-2^floor((n+2)/2)-2^floor((n+1)/2)` -/
def P398074575757042377.Spec : Prop :=
  ∀ n, P398074575757042377.a n = (A027557 n : ℚ)

end A027557

/-! ## A027557.P14274752979935920469

`a(n-1)+3*a(n-2)-2*a(n-3)-2*a(n-4)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=8`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A027557

/-- `a(n-1)+3*a(n-2)-2*a(n-3)-2*a(n-4)` -/
def P14274752979935920469.Spec : Prop :=
  ∀ n, P14274752979935920469.a n = A027557 n

theorem P14274752979935920469.correct : P14274752979935920469.Spec := by
  intro n
  simp only [A027557]

end A027557

/-! ## A027557.P5114003317409395161

`ogf((1+x-x^2)/(1-x-3x^2+2x^3+2x^4))`
-/

namespace A027557.P5114003317409395161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, -1] [1, -1, -3, 2, 2] n

end

end A027557.P5114003317409395161

namespace A027557

/-- `ogf((1+x-x^2)/(1-x-3x^2+2x^3+2x^4))` -/
def P5114003317409395161.Spec : Prop :=
  ∀ n, P5114003317409395161.a n = A027557 n

end A027557

/-! ## A027557.P9388576389374083258

`2*(a(n-2)+round(ϕ^n/sqrt(5)))` with `a(0)=1, a(1)=2`
-/

namespace A027557.P9388576389374083258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  2 * (a (n - 2) + SequenceMachineLib.roundAway (Real.goldenRatio ^ n / Real.sqrt (5 : ℝ)))

end

end A027557.P9388576389374083258

namespace A027557

/-- `2*(a(n-2)+round(ϕ^n/sqrt(5)))` -/
def P9388576389374083258.Spec : Prop :=
  ∀ n, P9388576389374083258.a n = A027557 n

end A027557

/-! ## A027557.P13162991044011846722

`2*(Δ[Δ[a(n-2)+a(n-1)]]+a(n-2))` with `a(0)=1, a(1)=2`
-/

namespace A027557.P13162991044011846722
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f2 =>
  f2 (n - 2) + f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  2 * (f1 (n + 1) - f1 n + a (n - 2))

end

end A027557.P13162991044011846722

namespace A027557

/-- `2*(Δ[Δ[a(n-2)+a(n-1)]]+a(n-2))` -/
def P13162991044011846722.Spec : Prop :=
  ∀ n, P13162991044011846722.a n = A027557 n

end A027557

/-! ## A027557.P14464558296987330454

`2*(A000045(n)+a(n-2))` with `a(0)=1, a(1)=2`
-/

namespace A027557.P14464558296987330454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  2 * (A000045 n + a (n - 2))

end

end A027557.P14464558296987330454

namespace A027557

/-- `2*(A000045(n)+a(n-2))` -/
def P14464558296987330454.Spec : Prop :=
  ∀ n, P14464558296987330454.a n = A027557 n

end A027557

/-! ## A027557.P4337811159076926259

`A295733(n)+A295717(n)`
-/

namespace A027557.P4337811159076926259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295733 n + A295717 n

end

end A027557.P4337811159076926259

namespace A027557

/-- `A295733(n)+A295717(n)` -/
def P4337811159076926259.Spec : Prop :=
  ∀ n, P4337811159076926259.a n = A027557 n

end A027557

/-! ## A027557.P13356210002881650148

`A154691(n)-A354788(n)`
-/

namespace A027557.P13356210002881650148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154691 n - A354788 n

end

end A027557.P13356210002881650148

namespace A027557

/-- `A154691(n)-A354788(n)` -/
def P13356210002881650148.Spec : Prop :=
  ∀ n, P13356210002881650148.a n = A027557 n

end A027557

/-! ## A027557.P17942367365198100639

`∑[A028892(n)+A000032(n)]`
-/

namespace A027557.P17942367365198100639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028892 n + A000032 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027557.P17942367365198100639

namespace A027557

/-- `∑[A028892(n)+A000032(n)]` -/
def P17942367365198100639.Spec : Prop :=
  ∀ n, P17942367365198100639.a n = A027557 n

end A027557

/-! ## A027557.P11088699051476531424

`A295728(n+1)+A000032(n)`
-/

namespace A027557.P11088699051476531424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295728 (n + 1) + A000032 n

end

end A027557.P11088699051476531424

namespace A027557

/-- `A295728(n+1)+A000032(n)` -/
def P11088699051476531424.Spec : Prop :=
  ∀ n, P11088699051476531424.a n = A027557 n

end A027557

/-! ## A027557.P5592002116685004756

`A295735(n)+A000032(n+1)`
-/

namespace A027557.P5592002116685004756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295735 n + A000032 (n + 1)

end

end A027557.P5592002116685004756

namespace A027557

/-- `A295735(n)+A000032(n+1)` -/
def P5592002116685004756.Spec : Prop :=
  ∀ n, P5592002116685004756.a n = A027557 n

end A027557

/-! ## A027557.P10948107361590215782

`A295735(n)+A000204(n+1)`
-/

namespace A027557.P10948107361590215782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295735 n + A000204 (n + 1)

end

end A027557.P10948107361590215782

namespace A027557

/-- `A295735(n)+A000204(n+1)` -/
def P10948107361590215782.Spec : Prop :=
  ∀ n, P10948107361590215782.a n = A027557 n

end A027557

/-! ## A027557.P12475689584044087276

`A295857(n)+A097896(n+1)`
-/

namespace A027557.P12475689584044087276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295857 n + A097896 (n + 1)

end

end A027557.P12475689584044087276

namespace A027557

/-- `A295857(n)+A097896(n+1)` -/
def P12475689584044087276.Spec : Prop :=
  ∀ n, P12475689584044087276.a n = A027557 n

end A027557

/-! ## A027557.P6126717252149569929

`A391682(n+1)+A005672(n)`
-/

namespace A027557.P6126717252149569929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391682 (n + 1) + A005672 n

end

end A027557.P6126717252149569929

namespace A027557

/-- `A391682(n+1)+A005672(n)` -/
def P6126717252149569929.Spec : Prop :=
  ∀ n, P6126717252149569929.a n = A027557 n

end A027557

/-! ## A027557.P8022711186730923226

`A295731(n)+A295619(n+1)`
-/

namespace A027557.P8022711186730923226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295731 n + A295619 (n + 1)

end

end A027557.P8022711186730923226

namespace A027557

/-- `A295731(n)+A295619(n+1)` -/
def P8022711186730923226.Spec : Prop :=
  ∀ n, P8022711186730923226.a n = A027557 n

end A027557

/-! ## A027557.P9084304182841997017

`A079284(n)+A005672(n+2)`
-/

namespace A027557.P9084304182841997017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079284 n + A005672 (n + 2)

end

end A027557.P9084304182841997017

namespace A027557

/-- `A079284(n)+A005672(n+2)` -/
def P9084304182841997017.Spec : Prop :=
  ∀ n, P9084304182841997017.a n = A027557 n

end A027557

/-! ## A027557.P10391869652268320172

`A019274(n+3)-∑[A016116(n)]`
-/

namespace A027557.P10391869652268320172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019274 (n + 3) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027557.P10391869652268320172

namespace A027557

/-- `A019274(n+3)-∑[A016116(n)]` -/
def P10391869652268320172.Spec : Prop :=
  ∀ n, P10391869652268320172.a n = A027557 n

end A027557

/-! ## A027557.P2259780304057596411

`∑[A295719(n)-2*A295723(n)]`
-/

namespace A027557.P2259780304057596411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295719 n - 2 * A295723 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027557.P2259780304057596411

namespace A027557

/-- `∑[A295719(n)-2*A295723(n)]` -/
def P2259780304057596411.Spec : Prop :=
  ∀ n, P2259780304057596411.a n = A027557 n

end A027557

/-! ## A027557.P3142412350712647002

`A295724(n+1)+A000045(n+1)`
-/

namespace A027557.P3142412350712647002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295724 (n + 1) + A000045 (n + 1)

end

end A027557.P3142412350712647002

namespace A027557

/-- `A295724(n+1)+A000045(n+1)` -/
def P3142412350712647002.Spec : Prop :=
  ∀ n, P3142412350712647002.a n = A027557 n

end A027557

/-! ## A027557.P15634032919500681817

`A295723(n+1)+A005672(n+1)`
-/

namespace A027557.P15634032919500681817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295723 (n + 1) + A005672 (n + 1)

end

end A027557.P15634032919500681817

namespace A027557

/-- `A295723(n+1)+A005672(n+1)` -/
def P15634032919500681817.Spec : Prop :=
  ∀ n, P15634032919500681817.a n = A027557 n

end A027557

/-!
# A027558: Number of 3-unbalanced strings of length n (= 2^n - A027557(n)).

The programs for A027558, the canonical program `A027558.P5703602840279260603` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027558 has offset 0).

The definition of A027558 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A027558.P14500334055684397754

`2*A005674(n)`
-/

namespace A027558.P14500334055684397754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005674 n

end

end A027558.P14500334055684397754

namespace A027558

/-- `2*A005674(n)` -/
def P14500334055684397754.Spec : Prop :=
  ∀ n, P14500334055684397754.a n = A027558 n

end A027558

/-! ## A027558.P5703602840279260603

`2^n-A027557(n)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A027558

/-- `2^n-A027557(n)` -/
def P5703602840279260603.Spec : Prop :=
  ∀ n, P5703602840279260603.a n = A027558 n

theorem P5703602840279260603.correct : P5703602840279260603.Spec := by
  intro n
  simp only [A027558]

end A027558

/-! ## A027558.P14851770424946368510

`and(-A027557(n), A000225(n))`
-/

namespace A027558.P14851770424946368510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A027557 n) (A000225 n)

end

end A027558.P14851770424946368510

namespace A027558

/-- `and(-A027557(n), A000225(n))` -/
def P14851770424946368510.Spec : Prop :=
  ∀ n, P14851770424946368510.a n = A027558 n

end A027558

/-! ## A027558.P12540553116790028646

`A005674(n+1)-A005672(n)`
-/

namespace A027558.P12540553116790028646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005674 (n + 1) - A005672 n

end

end A027558.P12540553116790028646

namespace A027558

/-- `A005674(n+1)-A005672(n)` -/
def P12540553116790028646.Spec : Prop :=
  ∀ n, P12540553116790028646.a n = A027558 n

end A027558

/-! ## A027558.P12566655029167638478

`A000051(n)-(A027557(n)+1)`
-/

namespace A027558.P12566655029167638478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n - (A027557 n + 1)

end

end A027558.P12566655029167638478

namespace A027558

/-- `A000051(n)-(A027557(n)+1)` -/
def P12566655029167638478.Spec : Prop :=
  ∀ n, P12566655029167638478.a n = A027558 n

end A027558

/-! ## A027558.P14778108534923199076

`A097895(n+1)-A295857(n)`
-/

namespace A027558.P14778108534923199076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097895 (n + 1) - A295857 n

end

end A027558.P14778108534923199076

namespace A027558

/-- `A097895(n+1)-A295857(n)` -/
def P14778108534923199076.Spec : Prop :=
  ∀ n, P14778108534923199076.a n = A027558 n

end A027558

/-! ## A027558.P5441645806036283191

`2*(A007179(n)-Δ[A295731(n)])`
-/

namespace A027558.P5441645806036283191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295731 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A007179 n - (f1 (n + 1) - f1 n))

end

end A027558.P5441645806036283191

namespace A027558

/-- `2*(A007179(n)-Δ[A295731(n)])` -/
def P5441645806036283191.Spec : Prop :=
  ∀ n, P5441645806036283191.a n = A027558 n

end A027558

/-! ## A027558.P16672713958187918525

`A005674(n)+A005674(A005843(n)/2)`
-/

namespace A027558.P16672713958187918525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005674 n + A005674 (SequenceMachineLib.roundAway ((A005843 n : ℚ) / 2)).toNat

end

end A027558.P16672713958187918525

namespace A027558

/-- `A005674(n)+A005674(A005843(n)/2)` -/
def P16672713958187918525.Spec : Prop :=
  ∀ n, P16672713958187918525.a n = A027558 n

end A027558

/-! ## A027558.P2185627223258629435

`A005674(n)+A005674(A005843(n)-n)`
-/

namespace A027558.P2185627223258629435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005674 n + A005674 (A005843 n - (n : ℤ)).toNat

end

end A027558.P2185627223258629435

namespace A027558

/-- `A005674(n)+A005674(A005843(n)-n)` -/
def P2185627223258629435.Spec : Prop :=
  ∀ n, P2185627223258629435.a n = A027558 n

end A027558

/-! ## A027558.P11420363670002672072

`2*(∑[A027934(n)]-A135094(n))`
-/

namespace A027558.P11420363670002672072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027934 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j - A135094 n)

end

end A027558.P11420363670002672072

namespace A027558

/-- `2*(∑[A027934(n)]-A135094(n))` -/
def P11420363670002672072.Spec : Prop :=
  ∀ n, P11420363670002672072.a n = A027558 n

end A027558

/-! ## A027558.P1961715181904391937

`A316528(n)-A107659(n)`
-/

namespace A027558.P1961715181904391937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316528 n - A107659 n

end

end A027558.P1961715181904391937

namespace A027558

/-- `A316528(n)-A107659(n)` -/
def P1961715181904391937.Spec : Prop :=
  ∀ n, P1961715181904391937.a n = A027558 n

end A027558

/-!
# A027559: Number of 4-balanced strings of length n: let d(S)= #(1)'s in S - #(0)'s, then S is k-balanced if every substring T has -k<=d(T)<=k; here k=4.

The programs for A027559, the canonical program `A027559.P16923029583332115534` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027559 has offset 0).

The definition of A027559 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A027559.P16923029583332115534

`a(n-1)+4*a(n-2)-3*a(n-3)-3*a(n-4)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=8, a(4)=16`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A027559

/-- `a(n-1)+4*a(n-2)-3*a(n-3)-3*a(n-4)` -/
def P16923029583332115534.Spec : Prop :=
  ∀ n, P16923029583332115534.a n = A027559 n

theorem P16923029583332115534.correct : P16923029583332115534.Spec := by
  intro n
  simp only [A027559]

end A027559

/-! ## A027559.P14941898132234528758

`2^n-A027561(n)`
-/

namespace A027559.P14941898132234528758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A027561 n

end

end A027559.P14941898132234528758

namespace A027559

/-- `2^n-A027561(n)` -/
def P14941898132234528758.Spec : Prop :=
  ∀ n, P14941898132234528758.a n = A027559 n

end A027559

/-! ## A027559.P14493322633509944982

`abs(A000079(n)-A027561(n))`
-/

namespace A027559.P14493322633509944982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000079 n - A027561 n|

end

end A027559.P14493322633509944982

namespace A027559

/-- `abs(A000079(n)-A027561(n))` -/
def P14493322633509944982.Spec : Prop :=
  ∀ n, P14493322633509944982.a n = A027559 n

end A027559

/-! ## A027559.P2131569092980200148

`A000051(n)-(A027561(n)+1)`
-/

namespace A027559.P2131569092980200148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n - (A027561 n + 1)

end

end A027559.P2131569092980200148

namespace A027559

/-- `A000051(n)-(A027561(n)+1)` -/
def P2131569092980200148.Spec : Prop :=
  ∀ n, P2131569092980200148.a n = A027559 n

end A027559

/-! ## A027559.P5720711694864275895

`A027557(n)+A027558(n)-A027561(n)`
-/

namespace A027559.P5720711694864275895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027557 n + (A027558 n - A027561 n)

end

end A027559.P5720711694864275895

namespace A027559

/-- `A027557(n)+A027558(n)-A027561(n)` -/
def P5720711694864275895.Spec : Prop :=
  ∀ n, P5720711694864275895.a n = A027559 n

end A027559

/-! ## A027559.P7234989722386819794

`A027560(n)+A027562(n)-A027561(n)`
-/

namespace A027559.P7234989722386819794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027560 n + (A027562 n - A027561 n)

end

end A027559.P7234989722386819794

namespace A027559

/-- `A027560(n)+A027562(n)-A027561(n)` -/
def P7234989722386819794.Spec : Prop :=
  ∀ n, P7234989722386819794.a n = A027559 n

end A027559

/-! ## A027559.P1018072971790390146

`(A000079(n)-A027561(n))*A056594(2*n)²`
-/

namespace A027559.P1018072971790390146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000079 n - A027561 n) * A056594 (2 * n) ^ 2

end

end A027559.P1018072971790390146

namespace A027559

/-- `(A000079(n)-A027561(n))*A056594(2*n)²` -/
def P1018072971790390146.Spec : Prop :=
  ∀ n, P1018072971790390146.a n = A027559 n

end A027559

/-! ## A027559.P9743216486949997154

`(A000079(n)-A027561(n))*A000108(A151933(n))`
-/

namespace A027559.P9743216486949997154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000079 n - A027561 n) * A000108 (A151933 n).toNat

end

end A027559.P9743216486949997154

namespace A027559

/-- `(A000079(n)-A027561(n))*A000108(A151933(n))` -/
def P9743216486949997154.Spec : Prop :=
  ∀ n, P9743216486949997154.a n = A027559 n

end A027559

/-!
# A027560: Number of 5-balanced strings of length n: let d(S)= #(1)'s in S - #(0)'s, then S is k-balanced if every substring T has -k<=d(T)<=k; here k=5.

The programs for A027560, there is no canonical definition to state claims against.
-/

/-! ## A027560.P7864034500593343215

`2^n-A027562(n)`
-/

namespace A027560.P7864034500593343215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A027562 n

end

end A027560.P7864034500593343215

/-! ## A027560.P10133613550866311943

`abs(A000079(n)-A027562(n))`
-/

namespace A027560.P10133613550866311943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000079 n - A027562 n|

end

end A027560.P10133613550866311943

/-! ## A027560.P17574590696136825976

`A000225(n)+1-A027562(n)`
-/

namespace A027560.P17574590696136825976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n + (1 - A027562 n)

end

end A027560.P17574590696136825976

/-! ## A027560.P686096814207630466

`A027557(n)+A027558(n)-A027562(n)`
-/

namespace A027560.P686096814207630466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027557 n + (A027558 n - A027562 n)

end

end A027560.P686096814207630466

/-! ## A027560.P17753041948056111750

`A027559(n)+A027561(n)-A027562(n)`
-/

namespace A027560.P17753041948056111750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027559 n + (A027561 n - A027562 n)

end

end A027560.P17753041948056111750

/-! ## A027560.P12080203185516200391

`or(A000079(n)-A027562(n), A000007(n))`
-/

namespace A027560.P12080203185516200391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000079 n - A027562 n) (A000007 n)

end

end A027560.P12080203185516200391

/-! ## A027560.P10840139559570832304

`A000007(n+1)+A000079(n)-A027562(n)`
-/

namespace A027560.P10840139559570832304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + (A000079 n - A027562 n)

end

end A027560.P10840139559570832304

/-! ## A027560.P589740961041266227

`lcm(A000079(n)-A027562(n), A236398(n+2))`
-/

namespace A027560.P589740961041266227
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000079 n - A027562 n) (A236398 (n + 2))

end

end A027560.P589740961041266227

/-! ## A027560.P4571820240172291585

`(A000079(n)-A027562(n))*A008836(n+1)²`
-/

namespace A027560.P4571820240172291585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000079 n - A027562 n) * A008836 (n + 1) ^ 2

end

end A027560.P4571820240172291585

/-! ## A027560.P12526674206745296989

`(A000079(n)-A027562(n))*A005117(gcd(n, n+1))`
-/

namespace A027560.P12526674206745296989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000079 n - A027562 n) * A005117 (Nat.gcd n (n + 1))

end

end A027560.P12526674206745296989

/-! ## A027560.P13109901679163076896

`(A000079(n)-A027562(n))*A000041(C(n, n²)!)`
-/

namespace A027560.P13109901679163076896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000079 n - A027562 n) * A000041 (Nat.factorial (Nat.choose n (n ^ 2)))

end

end A027560.P13109901679163076896

/-! ## A027560.P10887228661292425062

`A000079(n)+A027562(n)*A056594(A187217(n))`
-/

namespace A027560.P10887228661292425062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n + A027562 n * A056594 (A187217 n).toNat

end

end A027560.P10887228661292425062

/-!
# A027561: Number of 4-unbalanced strings of length n (=2^n-A027559(n)).

The programs for A027561, the canonical program `A027561.P18133504905343084791` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027561 has offset 0).

The definition of A027561 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A027561.P18133504905343084791

`2^n-A027559(n)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A027561

/-- `2^n-A027559(n)` -/
def P18133504905343084791.Spec : Prop :=
  ∀ n, P18133504905343084791.a n = A027561 n

theorem P18133504905343084791.correct : P18133504905343084791.Spec := by
  intro n
  simp only [A027561]

end A027561

/-! ## A027561.P6266740779835602815

`abs(A000079(n)-A027559(n))`
-/

namespace A027561.P6266740779835602815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000079 n - A027559 n|

end

end A027561.P6266740779835602815

namespace A027561

/-- `abs(A000079(n)-A027559(n))` -/
def P6266740779835602815.Spec : Prop :=
  ∀ n, P6266740779835602815.a n = A027561 n

end A027561

/-! ## A027561.P3554736364730409292

`and(-A027559(n), A000225(n))`
-/

namespace A027561.P3554736364730409292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A027559 n) (A000225 n)

end

end A027561.P3554736364730409292

namespace A027561

/-- `and(-A027559(n), A000225(n))` -/
def P3554736364730409292.Spec : Prop :=
  ∀ n, P3554736364730409292.a n = A027561 n

end A027561

/-! ## A027561.P6387406456505699088

`A000051(n)-(A027559(n)+1)`
-/

namespace A027561.P6387406456505699088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n - (A027559 n + 1)

end

end A027561.P6387406456505699088

namespace A027561

/-- `A000051(n)-(A027559(n)+1)` -/
def P6387406456505699088.Spec : Prop :=
  ∀ n, P6387406456505699088.a n = A027561 n

end A027561

/-! ## A027561.P7035829576516317033

`A000918(n)+2-A027559(n)`
-/

namespace A027561.P7035829576516317033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000918 n + (2 - A027559 n)

end

end A027561.P7035829576516317033

namespace A027561

/-- `A000918(n)+2-A027559(n)` -/
def P7035829576516317033.Spec : Prop :=
  ∀ n, P7035829576516317033.a n = A027561 n

end A027561

/-! ## A027561.P5744916101347220261

`A027557(n)+A027558(n)-A027559(n)`
-/

namespace A027561.P5744916101347220261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027557 n + (A027558 n - A027559 n)

end

end A027561.P5744916101347220261

namespace A027561

/-- `A027557(n)+A027558(n)-A027559(n)` -/
def P5744916101347220261.Spec : Prop :=
  ∀ n, P5744916101347220261.a n = A027561 n

end A027561

/-! ## A027561.P2014744257504805077

`A027560(n)+A027562(n)-A027559(n)`
-/

namespace A027561.P2014744257504805077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027560 n + (A027562 n - A027559 n)

end

end A027561.P2014744257504805077

namespace A027561

/-- `A027560(n)+A027562(n)-A027559(n)` -/
def P2014744257504805077.Spec : Prop :=
  ∀ n, P2014744257504805077.a n = A027561 n

end A027561

/-!
# A027562: Number of 5-unbalanced strings of length n (=2^n-A027560(n)).

The programs for A027562, there is no canonical definition to state claims against.
-/

/-! ## A027562.P11080437573000645785

`2^n-A027560(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A027562.P11080437573000645785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A027560 n

end

end A027562.P11080437573000645785

/-! ## A027562.P7888783896756020790

`abs(A000079(n)-A027560(n))`
-/

namespace A027562.P7888783896756020790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000079 n - A027560 n|

end

end A027562.P7888783896756020790

/-! ## A027562.P3039280829951130499

`and(-A027560(n), A000225(n))`
-/

namespace A027562.P3039280829951130499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A027560 n) (A000225 n)

end

end A027562.P3039280829951130499

/-! ## A027562.P4001963098577442948

`A000051(n)-(A027560(n)+1)`
-/

namespace A027562.P4001963098577442948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n - (A027560 n + 1)

end

end A027562.P4001963098577442948

/-! ## A027562.P8008482988569739450

`abs(A011782(n+1)-A027560(n))`
-/

namespace A027562.P8008482988569739450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A011782 (n + 1) - A027560 n|

end

end A027562.P8008482988569739450

/-! ## A027562.P8031649096545104618

`A027557(n)+A027558(n)-A027560(n)`
-/

namespace A027562.P8031649096545104618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027557 n + (A027558 n - A027560 n)

end

end A027562.P8031649096545104618

/-! ## A027562.P1057004395617156143

`A011782(n)+A131577(n)-A027560(n)`
-/

namespace A027562.P1057004395617156143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n + (A131577 n - A027560 n)

end

end A027562.P1057004395617156143

/-! ## A027562.P13704480897817310552

`(A000079(n)-A027560(n))*A007318(∑[n])`
-/

namespace A027562.P13704480897817310552
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000079 n - A027560 n) * A007318 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A027562.P13704480897817310552

/-!
# A027563: Numbers not of form abc + abd + acd + bcd for 1<=a<=b<=c<=d.

The programs for A027563, there is no canonical definition to state claims against.
-/

/-! ## A027563.P14753464482967482964

`eq[A091304(n+1), A266941(A025922(n+4))]`
-/

namespace A027563.P14753464482967482964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091304 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266941 (A025922 (n + 4)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A027563.P14753464482967482964

/-! ## A027563.P2043839999398166321

`∩[A346132(n+1), A005097(A346132(n+1))]`
-/

namespace A027563.P2043839999398166321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346132 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (A346132 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A027563.P2043839999398166321

/-! ## A027563.P13451729395322052111

`eq[A001222(2*n+1), A266941(A025922(n+4))]`
-/

namespace A027563.P13451729395322052111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266941 (A025922 (n + 4)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A027563.P13451729395322052111

/-! ## A027563.P2916557362741921226

`A357866(A238242(n+2))`
-/

namespace A027563.P2916557362741921226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357866 (A238242 (n + 2)).toNat

end

end A027563.P2916557362741921226

/-! ## A027563.P9132474068322873143

`A357866(A256484(n+2))`
-/

namespace A027563.P9132474068322873143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357866 (A256484 (n + 2)).toNat

end

end A027563.P9132474068322873143

/-!
# A027564: Numbers not of form abcd + abce + abde + acde + bcde for 1 <= a <= b <= c <= d <= e.

The programs for A027564, there is no canonical definition to state claims against.
-/

/-! ## A027564.P14530723771669662881

`lt[A014486(n), A341915(A067666(3*n+1))]`
-/

namespace A027564.P14530723771669662881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014486 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341915 (A067666 (3 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A027564.P14530723771669662881

/-! ## A027564.P8346190343221245171

`lt[A318808(A318762(3*n+1)), A185974(n)]`
-/

namespace A027564.P8346190343221245171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318808 (A318762 (3 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185974 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A027564.P8346190343221245171

/-! ## A027564.P1260411463842091070

`lt[A304573(A005843(n+3)), A002034(3*n+1)]`
-/

namespace A027564.P1260411463842091070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304573 (A005843 (n + 3)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002034 (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A027564.P1260411463842091070

/-! ## A027564.P4567627136405340863

`lt[A384798(A206494(3*n+1)), A384799(2*(n+1))]`
-/

namespace A027564.P4567627136405340863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384798 (A206494 (3 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384799 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A027564.P4567627136405340863

/-! ## A027564.P7569203692036887492

`eq[1, A078181(A355249(3*n+4))]+1`
-/

namespace A027564.P7569203692036887492
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078181 (A355249 (3 * n + 4)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A027564.P7569203692036887492

/-!
# A027568: Numbers that are both triangular and tetrahedral.

The programs for A027568, there is no canonical definition to state claims against.
-/

/-! ## A027568.P13287794877916497143

`∩[C(n+1, 2), C(n+2, 3)]`
-/

namespace A027568.P13287794877916497143
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 2) 3

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = x) n

end

end A027568.P13287794877916497143

/-!
# A027569: Initial members of prime decaplets (p, p+2, p+6, p+8, p+12, p+18, p+20, p+26, p+30, p+32).

The programs for A027569, there is no canonical definition to state claims against.
-/

/-! ## A027569.P17345154012609484194

`∩[A022545(n+1), A257127(n+1)]`
-/

namespace A027569.P17345154012609484194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022545 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257127 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A027569.P17345154012609484194

/-! ## A027569.P1155918110711873678

`∩[A022545(n+1), A022547(n+1)-2]`
-/

namespace A027569.P1155918110711873678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022545 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022547 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A027569.P1155918110711873678

/-! ## A027569.P5816251684683664906

`∩[A022547(n+1)-2, A257127(n+1)]`
-/

namespace A027569.P5816251684683664906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022547 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257127 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A027569.P5816251684683664906

/-! ## A027569.P5989161851854070351

`∩[A022011(n+1), A257127(n+1)]`
-/

namespace A027569.P5989161851854070351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022011 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257127 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A027569.P5989161851854070351

/-!
# A027570: Initial members of prime decaplets (p, p+2, p+6, p+12, p+14, p+20, p+24, p+26, p+30, p+32).

The programs for A027570, there is no canonical definition to state claims against.
-/

/-! ## A027570.P11795685972294402781

`∩[A022548(n+1)-2, A257127(n+1)]`
-/

namespace A027570.P11795685972294402781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022548 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257127 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A027570.P11795685972294402781

/-! ## A027570.P10131228478924821774

`∩[A022546(n+1), A257127(n+1)]`
-/

namespace A027570.P10131228478924821774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022546 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257127 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A027570.P10131228478924821774

/-! ## A027570.P9678488891684744858

`∩[A022546(n+1), A022548(n+1)-2]`
-/

namespace A027570.P9678488891684744858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022546 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022548 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A027570.P9678488891684744858

/-! ## A027570.P7677026936162424610

`∩[A022546(n+1), A257125(n+1)-2]`
-/

namespace A027570.P7677026936162424610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022546 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257125 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A027570.P7677026936162424610

/-! ## A027570.P3346506759675073555

`∩[A022548(n+1)-2, A257125(n+1)]`
-/

namespace A027570.P3346506759675073555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022548 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257125 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A027570.P3346506759675073555

/-!
# A027571: Numbers k such that k^2 + (k+1)^2 is palindromic.

The programs for A027571, there is no canonical definition to state claims against.
-/

/-! ## A027571.P5851818660976553948

`floor(sqrt(A027572(n+1)/2))`
-/

namespace A027571.P5851818660976553948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt ((A027572 (n + 1) : ℚ) / 2 : ℝ)⌋

end

end A027571.P5851818660976553948

/-!
# A027572: Palindromes of form n^2 + (n+1)^2.

The programs for A027572, there is no canonical definition to state claims against.
-/

/-! ## A027572.P3667295075308983054

`A001844(A027571(n+1))`
-/

namespace A027572.P3667295075308983054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001844 (A027571 (n + 1)).toNat

end

end A027572.P3667295075308983054

/-! ## A027572.P14836119806143152746

`A271391(2*A027571(n+1))`
-/

namespace A027572.P14836119806143152746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271391 (2 * A027571 (n + 1)).toNat

end

end A027572.P14836119806143152746

/-! ## A027572.P16511320976249031699

`∩[A000384(n+1)-n, A002113(n+2)]`
-/

namespace A027572.P16511320976249031699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000384 (n + 1) - (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A027572.P16511320976249031699

/-! ## A027572.P11388112469415870155

`A119326(n)+A046092(A027571(n+1))`
-/

namespace A027572.P11388112469415870155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119326 n + A046092 (A027571 (n + 1)).toNat

end

end A027572.P11388112469415870155

/-!
# A027573: Numbers n such that n^2 + (n+1)^2 + (n+2)^2 is palindromic.

The programs for A027573, there is no canonical definition to state claims against.
-/

/-! ## A027573.P2232317081432330704

`A233007(n+3)-1`
-/

namespace A027573.P2232317081432330704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233007 (n + 3) - 1

end

end A027573.P2232317081432330704

/-! ## A027573.P6736423734853159751

`∑[abs(Δ[A233007(n+2)])]`
-/

namespace A027573.P6736423734853159751
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233007 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027573.P6736423734853159751

/-!
# A027574: Palindromes of form n^2 + (n+1)^2 + (n+2)^2.

The programs for A027574, there is no canonical definition to state claims against.
-/

/-! ## A027574.P2089270157830208938

`A005918(A233007(n+3))`
-/

namespace A027574.P2089270157830208938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005918 (A233007 (n + 3)).toNat

end

end A027574.P2089270157830208938

/-!
# A027575: a(n) = n^2 + (n+1)^2 + (n+2)^2 + (n+3)^2.

The programs for A027575, the canonical program `A027575.P8736278701241271768` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027575 has offset 0).

The definition of A027575 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n²+(n+1)²+(n+2)²+(n+3)²` (program `A027575.P8736278701241271768`, by `A027575.P8736278701241271768.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A027575.P16825606003618692316

`(2*n+3)²+5`
-/

namespace A027575.P16825606003618692316
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 3) ^ 2 + 5

end

end A027575.P16825606003618692316

namespace A027575

/-- `(2*n+3)²+5` -/
def P16825606003618692316.Spec : Prop :=
  ∀ n, (P16825606003618692316.a n : ℤ) = A027575 n

theorem P16825606003618692316.correct : P16825606003618692316.Spec := by
  intro n
  simp only [A027575, Nat.add_sub_cancel, A027575.P16825606003618692316.a, A027575.P8736278701241271768.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A027575

/-! ## A027575.P8736278701241271768

`n²+(n+1)²+(n+2)²+(n+3)²`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A027575

/-- `n²+(n+1)²+(n+2)²+(n+3)²` -/
def P8736278701241271768.Spec : Prop :=
  ∀ n, (P8736278701241271768.a n : ℤ) = A027575 n

theorem P8736278701241271768.correct : P8736278701241271768.Spec := by
  intro n
  simp only [A027575]

end A027575

/-! ## A027575.P157633948025431701

`or(6, ∑[8*(n+1)])`
-/

namespace A027575.P157633948025431701
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 6 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A027575.P157633948025431701

namespace A027575

/-- `or(6, ∑[8*(n+1)])` -/
def P157633948025431701.Spec : Prop :=
  ∀ n, (P157633948025431701.a n : ℤ) = A027575 n

end A027575

/-! ## A027575.P9208736710943074468

`xor(6, ∑[8*(n+1)])`
-/

namespace A027575.P9208736710943074468
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 6 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A027575.P9208736710943074468

namespace A027575

/-- `xor(6, ∑[8*(n+1)])` -/
def P9208736710943074468.Spec : Prop :=
  ∀ n, (P9208736710943074468.a n : ℤ) = A027575 n

end A027575

/-! ## A027575.P17783588042074445101

`∑[a(n-1)+8]` with `a(0)=14, a(1)=16`
-/

namespace A027575.P17783588042074445101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [14, 16] fun n f1 =>
  f1 (n - 1) + 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027575.P17783588042074445101

namespace A027575

/-- `∑[a(n-1)+8]` -/
def P17783588042074445101.Spec : Prop :=
  ∀ n, (P17783588042074445101.a n : ℤ) = A027575 n

end A027575

/-! ## A027575.P10523995896659859228

`record[or(1, 2-n)²+5]`
-/

namespace A027575.P10523995896659859228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (2 - (n : ℤ)) ^ 2 + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027575.P10523995896659859228

namespace A027575

/-- `record[or(1, 2-n)²+5]` -/
def P10523995896659859228.Spec : Prop :=
  ∀ n, P10523995896659859228.a n = A027575 n

end A027575

/-! ## A027575.P9369931242520553276

`record[xor(1, n+2)²+5]`
-/

namespace A027575.P9369931242520553276
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (n + 2) ^ 2 + 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027575.P9369931242520553276

namespace A027575

/-- `record[xor(1, n+2)²+5]` -/
def P9369931242520553276.Spec : Prop :=
  ∀ n, (P9369931242520553276.a n : ℤ) = A027575 n

end A027575

/-! ## A027575.P3735933564757594973

`record[xor(7, (2*n-3)²)]`
-/

namespace A027575.P3735933564757594973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 7 (((2 * n : ℤ) - 3) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027575.P3735933564757594973

namespace A027575

/-- `record[xor(7, (2*n-3)²)]` -/
def P3735933564757594973.Spec : Prop :=
  ∀ n, P3735933564757594973.a n = A027575 n

end A027575

/-! ## A027575.P10200602580117909825

`record[(n-3+n)²+5]`
-/

namespace A027575.P10200602580117909825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 3 + (n : ℤ)) ^ 2 + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027575.P10200602580117909825

namespace A027575

/-- `record[(n-3+n)²+5]` -/
def P10200602580117909825.Spec : Prop :=
  ∀ n, P10200602580117909825.a n = A027575 n

end A027575

/-! ## A027575.P679737175908332010

`lcm(2, ∑[4*(n+1)]+3)`
-/

namespace A027575.P679737175908332010
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A027575.P679737175908332010

namespace A027575

/-- `lcm(2, ∑[4*(n+1)]+3)` -/
def P679737175908332010.Spec : Prop :=
  ∀ n, (P679737175908332010.a n : ℤ) = A027575 n

end A027575

/-! ## A027575.P2161429622796914700

`abs(xor(5, -(n+3+n)²))`
-/

namespace A027575.P2161429622796914700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor 5 (-((n + 3 + n) ^ 2 : ℤ))|

end

end A027575.P2161429622796914700

namespace A027575

/-- `abs(xor(5, -(n+3+n)²))` -/
def P2161429622796914700.Spec : Prop :=
  ∀ n, P2161429622796914700.a n = A027575 n

end A027575

/-! ## A027575.P4779290419932125443

`-xor(5, -(n+3+n)²)`
-/

namespace A027575.P4779290419932125443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor 5 (-((n + 3 + n) ^ 2 : ℤ))

end

end A027575.P4779290419932125443

namespace A027575

/-- `-xor(5, -(n+3+n)²)` -/
def P4779290419932125443.Spec : Prop :=
  ∀ n, P4779290419932125443.a n = A027575 n

end A027575

/-! ## A027575.P11129162049353700409

`floor(a(n-1)+8*(n+1))` with `a(0)=14`

`floor` is left out, it is the identity on integers.
-/

namespace A027575.P11129162049353700409
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [14] fun n a =>
  a (n - 1) + 8 * (n + 1)

end

end A027575.P11129162049353700409

namespace A027575

/-- `floor(a(n-1)+8*(n+1))` -/
def P11129162049353700409.Spec : Prop :=
  ∀ n, (P11129162049353700409.a n : ℤ) = A027575 n

theorem P11129162049353700409.correct : P11129162049353700409.Spec := by
  intro n
  induction n with
  | zero => simp [A027575, A027575.P11129162049353700409.a, A027575.P8736278701241271768.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A027575, Nat.add_sub_cancel, A027575.P11129162049353700409.a, A027575.P8736278701241271768.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A027575

/-! ## A027575.P17254864112363641856

`floor(4*(lcm(n+1, n+2)+ϕ))`
-/

namespace A027575.P17254864112363641856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊4 * ((Nat.lcm (n + 1) (n + 2) : ℝ) + Real.goldenRatio)⌋

end

end A027575.P17254864112363641856

namespace A027575

/-- `floor(4*(lcm(n+1, n+2)+ϕ))` -/
def P17254864112363641856.Spec : Prop :=
  ∀ n, P17254864112363641856.a n = A027575 n

end A027575

/-! ## A027575.P9383038179940104548

`2*(3-∑[a(n-1)-4])` with `a(0)=-4`
-/

namespace A027575.P9383038179940104548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-4] fun n f1 =>
  f1 (n - 1) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (3 - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A027575.P9383038179940104548

namespace A027575

/-- `2*(3-∑[a(n-1)-4])` -/
def P9383038179940104548.Spec : Prop :=
  ∀ n, P9383038179940104548.a n = A027575 n

end A027575

/-! ## A027575.P17789897181475988825

`2*(C(2*(n+2), 2)-(n-1))`
-/

namespace A027575.P17789897181475988825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((Nat.choose (2 * (n + 2)) 2 : ℤ) - ((n : ℤ) - 1))

end

end A027575.P17789897181475988825

namespace A027575

/-- `2*(C(2*(n+2), 2)-(n-1))` -/
def P17789897181475988825.Spec : Prop :=
  ∀ n, P17789897181475988825.a n = A027575 n

end A027575

/-! ## A027575.P9244333781881281040

`2*(A090288(n)+5)`
-/

namespace A027575.P9244333781881281040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A090288 n + 5)

end

end A027575.P9244333781881281040

namespace A027575

/-- `2*(A090288(n)+5)` -/
def P9244333781881281040.Spec : Prop :=
  ∀ n, P9244333781881281040.a n = A027575 n

end A027575

/-! ## A027575.P10807127737377367146

`2*(A099776(n+1)+2)`
-/

namespace A027575.P10807127737377367146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A099776 (n + 1) + 2)

end

end A027575.P10807127737377367146

namespace A027575

/-- `2*(A099776(n+1)+2)` -/
def P10807127737377367146.Spec : Prop :=
  ∀ n, P10807127737377367146.a n = A027575 n

end A027575

/-! ## A027575.P5153498133632747004

`2*(A046092(n+1)+3)`
-/

namespace A027575.P5153498133632747004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A046092 (n + 1) + 3)

end

end A027575.P5153498133632747004

namespace A027575

/-- `2*(A046092(n+1)+3)` -/
def P5153498133632747004.Spec : Prop :=
  ∀ n, P5153498133632747004.a n = A027575 n

end A027575

/-! ## A027575.P12245894540424035

`2*(∑[4*(A028310(n)+1)]-1)`
-/

namespace A027575.P12245894540424035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A028310 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A027575.P12245894540424035

namespace A027575

/-- `2*(∑[4*(A028310(n)+1)]-1)` -/
def P12245894540424035.Spec : Prop :=
  ∀ n, P12245894540424035.a n = A027575 n

end A027575

/-!
# A027578: Sums of five consecutive squares: a(n) = n^2 + (n+1)^2 + (n+2)^2 + (n+3)^2 + (n+4)^2.

The programs for A027578, the canonical program `A027578.P828493611519042118` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027578 has offset 0).

The definition of A027578 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n²+(n+1)²+(n+2)²+(n+3)²+(n+4)²` (program `A027578.P828493611519042118`, by `A027578.P828493611519042118.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A027578.P5254395816834247410

`5*(n+2)²+10`
-/

namespace A027578.P5254395816834247410
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * (n + 2) ^ 2 + 10

end

end A027578.P5254395816834247410

namespace A027578

/-- `5*(n+2)²+10` -/
def P5254395816834247410.Spec : Prop :=
  ∀ n, (P5254395816834247410.a n : ℤ) = A027578 n

theorem P5254395816834247410.correct : P5254395816834247410.Spec := by
  intro n
  simp only [A027578, Nat.add_sub_cancel, A027578.P5254395816834247410.a, A027578.P828493611519042118.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A027578

/-! ## A027578.P828493611519042118

`n²+(n+1)²+(n+2)²+(n+3)²+(n+4)²`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A027578

/-- `n²+(n+1)²+(n+2)²+(n+3)²+(n+4)²` -/
def P828493611519042118.Spec : Prop :=
  ∀ n, (P828493611519042118.a n : ℤ) = A027578 n

theorem P828493611519042118.correct : P828493611519042118.Spec := by
  intro n
  simp only [A027578]

end A027578

/-! ## A027578.P14528402398927369024

`5*A059100(n+2)`
-/

namespace A027578.P14528402398927369024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A059100 (n + 2)

end

end A027578.P14528402398927369024

namespace A027578

/-- `5*A059100(n+2)` -/
def P14528402398927369024.Spec : Prop :=
  ∀ n, P14528402398927369024.a n = A027578 n

end A027578

/-! ## A027578.P16478724880041503758

`lcm(5, (n+2)²+2)`
-/

namespace A027578.P16478724880041503758
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 5 ((n + 2) ^ 2 + 2)

end

end A027578.P16478724880041503758

namespace A027578

/-- `lcm(5, (n+2)²+2)` -/
def P16478724880041503758.Spec : Prop :=
  ∀ n, (P16478724880041503758.a n : ℤ) = A027578 n

end A027578

/-! ## A027578.P5262011218643099896

`∑[a(n-1)+10]` with `a(0)=30, a(1)=25`
-/

namespace A027578.P5262011218643099896
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [30, 25] fun n f1 =>
  f1 (n - 1) + 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027578.P5262011218643099896

namespace A027578

/-- `∑[a(n-1)+10]` -/
def P5262011218643099896.Spec : Prop :=
  ∀ n, (P5262011218643099896.a n : ℤ) = A027578 n

end A027578

/-! ## A027578.P1667911222310802648

`record[5*or(2, (2-n)²)]`
-/

namespace A027578.P1667911222310802648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * Int.lor 2 ((2 - (n : ℤ)) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027578.P1667911222310802648

namespace A027578

/-- `record[5*or(2, (2-n)²)]` -/
def P1667911222310802648.Spec : Prop :=
  ∀ n, P1667911222310802648.a n = A027578 n

end A027578

/-! ## A027578.P6555548526538429578

`record[5*xor(2, (2-n)²)]`
-/

namespace A027578.P6555548526538429578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * Int.xor 2 ((2 - (n : ℤ)) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027578.P6555548526538429578

namespace A027578

/-- `record[5*xor(2, (2-n)²)]` -/
def P6555548526538429578.Spec : Prop :=
  ∀ n, P6555548526538429578.a n = A027578 n

end A027578

/-! ## A027578.P12430240463708482335

`5*(lcm(n+2, n+3)-n)`
-/

namespace A027578.P12430240463708482335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * ((Nat.lcm (n + 2) (n + 3) : ℤ) - (n : ℤ))

end

end A027578.P12430240463708482335

namespace A027578

/-- `5*(lcm(n+2, n+3)-n)` -/
def P12430240463708482335.Spec : Prop :=
  ∀ n, P12430240463708482335.a n = A027578 n

end A027578

/-! ## A027578.P5756058748435799308

`record[5*((n-1)*(n-3)+3)]`
-/

namespace A027578.P5756058748435799308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (((n : ℤ) - 1) * ((n : ℤ) - 3) + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027578.P5756058748435799308

namespace A027578

/-- `record[5*((n-1)*(n-3)+3)]` -/
def P5756058748435799308.Spec : Prop :=
  ∀ n, P5756058748435799308.a n = A027578 n

end A027578

/-! ## A027578.P598577808589338474

`5*A102305(n+1)`
-/

namespace A027578.P598577808589338474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A102305 (n + 1)

end

end A027578.P598577808589338474

namespace A027578

/-- `5*A102305(n+1)` -/
def P598577808589338474.Spec : Prop :=
  ∀ n, P598577808589338474.a n = A027578 n

end A027578

/-! ## A027578.P259186466866484286

`5*(A028872(n+2)+5)`
-/

namespace A027578.P259186466866484286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (A028872 (n + 2) + 5)

end

end A027578.P259186466866484286

namespace A027578

/-- `5*(A028872(n+2)+5)` -/
def P259186466866484286.Spec : Prop :=
  ∀ n, P259186466866484286.a n = A027578 n

end A027578

/-! ## A027578.P2958196512754327015

`5*A160842(n+2)`
-/

namespace A027578.P2958196512754327015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A160842 (n + 2)

end

end A027578.P2958196512754327015

namespace A027578

/-- `5*A160842(n+2)` -/
def P2958196512754327015.Spec : Prop :=
  ∀ n, P2958196512754327015.a n = A027578 n

end A027578

/-! ## A027578.P12543325112064862106

`5*A183199(n+2)`
-/

namespace A027578.P12543325112064862106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A183199 (n + 2)

end

end A027578.P12543325112064862106

namespace A027578

/-- `5*A183199(n+2)` -/
def P12543325112064862106.Spec : Prop :=
  ∀ n, P12543325112064862106.a n = A027578 n

end A027578

/-! ## A027578.P11586322909928656984

`5*A197985(n+2)`
-/

namespace A027578.P11586322909928656984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A197985 (n + 2)

end

end A027578.P11586322909928656984

namespace A027578

/-- `5*A197985(n+2)` -/
def P11586322909928656984.Spec : Prop :=
  ∀ n, P11586322909928656984.a n = A027578 n

end A027578

/-! ## A027578.P10581267981633403094

`5*A010000(n+2)`
-/

namespace A027578.P10581267981633403094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A010000 (n + 2)

end

end A027578.P10581267981633403094

namespace A027578

/-- `5*A010000(n+2)` -/
def P10581267981633403094.Spec : Prop :=
  ∀ n, P10581267981633403094.a n = A027578 n

end A027578

/-! ## A027578.P2825348366358131892

`5*A158897(∑[n+1])`
-/

namespace A027578.P2825348366358131892
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A158897 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A027578.P2825348366358131892

namespace A027578

/-- `5*A158897(∑[n+1])` -/
def P2825348366358131892.Spec : Prop :=
  ∀ n, P2825348366358131892.a n = A027578 n

end A027578

/-!
# A027581: Sequence satisfies T(T(a))=a, where T is defined below.

The programs for A027581, there is no canonical definition to state claims against.
-/

/-! ## A027581.P4708153834804303728

`A058706(n)-∑[A044941(A039623(n+1))]`
-/

namespace A027581.P4708153834804303728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044941 (A039623 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058706 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027581.P4708153834804303728

/-! ## A027581.P8448854317602702638

`A058706(n)-A185284(comp[2*(n+1)])`
-/

namespace A027581.P8448854317602702638
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058706 n - A185284 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A027581.P8448854317602702638

/-! ## A027581.P2355618733830904390

`or(A058706(n), A185284(2*n+1))`
-/

namespace A027581.P2355618733830904390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A058706 n) (A185284 (2 * n + 1))

end

end A027581.P2355618733830904390

/-! ## A027581.P944835929212341212

`A058706(C(A201552(n+1), n²)+n)`
-/

namespace A027581.P944835929212341212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058706 (Nat.choose (A201552 (n + 1)).toNat (n ^ 2) + n)

end

end A027581.P944835929212341212

/-! ## A027581.P747903249921920002

`A058706(n)+A000007(A196723(n))`
-/

namespace A027581.P747903249921920002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058706 n + A000007 (A196723 n).toNat

end

end A027581.P747903249921920002

/-!
# A027582: Sequence satisfies T(T(a))=a, where T is defined below.

The programs for A027582, there is no canonical definition to state claims against.
-/

/-! ## A027582.P18227183426169402377

`A127321(∑[A291778(n)])`
-/

namespace A027582.P18227183426169402377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127321 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A027582.P18227183426169402377

/-! ## A027582.P38157267638384658

`A127321(∑[2^A004523(n)])`
-/

namespace A027582.P38157267638384658
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A004523 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127321 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A027582.P38157267638384658

/-! ## A027582.P1128096919514324984

`A127321(∑[A000079(floor(2*n/3))])`
-/

namespace A027582.P1128096919514324984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 ⌊2 * ((n : ℚ) / 3)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127321 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A027582.P1128096919514324984

/-! ## A027582.P14847884720832106633

`A048766(A032228(n)*A181325(n))`
-/

namespace A027582.P14847884720832106633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A032228 n * A181325 n).toNat

end

end A027582.P14847884720832106633

/-! ## A027582.P10985421874629928407

`A048766(lcm(A032228(n), A181325(n)))`
-/

namespace A027582.P10985421874629928407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (Int.lcm (A032228 n) (A181325 n))

end

end A027582.P10985421874629928407

/-!
# A027583: Sequence satisfies T(a)=a, where T is defined below.

The programs for A027583, there is no canonical definition to state claims against.
-/

/-! ## A027583.P5272354632477901907

`A034888(A218906(n+1)+A151722(n)²)`
-/

namespace A027583.P5272354632477901907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034888 (A218906 (n + 1) + A151722 n ^ 2).toNat

end

end A027583.P5272354632477901907

/-! ## A027583.P7495231248363444026

`A034888(∑[A151722(n)]*A218906(n+1))`
-/

namespace A027583.P7495231248363444026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151722 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034888 ((∑ j ∈ Finset.range (n + 1), f1 j) * A218906 (n + 1)).toNat

end

end A027583.P7495231248363444026

/-! ## A027583.P16186504047211652855

`A034888((A151722(n)+1)*A218906(n+1))`
-/

namespace A027583.P16186504047211652855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034888 ((A151722 n + 1) * A218906 (n + 1)).toNat

end

end A027583.P16186504047211652855

/-! ## A027583.P9283388080017977615

`A034888(A218906(n+1))^Δ[n^A254730(n)]`
-/

namespace A027583.P9283388080017977615
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (A254730 n : ℤ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A034888 (A218906 (n + 1)).toNat : ℝ) ^ (f1 (n + 1) - f1 n : ℝ)

end

end A027583.P9283388080017977615

/-! ## A027583.P17736491652791756741

`A003056(A325687(n+1)+A194439(n+1))`
-/

namespace A027583.P17736491652791756741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A325687 (n + 1) + A194439 (n + 1)).toNat

end

end A027583.P17736491652791756741

/-!
# A027584: Sequence satisfies T^2(a)=a, where T is defined below.

The programs for A027584, there is no canonical definition to state claims against.
-/

/-! ## A027584.P12532643484302434626

`A161240(n+1)-A055641(A083329(n))`
-/

namespace A027584.P12532643484302434626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161240 (n + 1) - A055641 (A083329 n).toNat

end

end A027584.P12532643484302434626

/-! ## A027584.P6592056294727907353

`A161240(n+1)-A346632(A191518(n))`
-/

namespace A027584.P6592056294727907353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161240 (n + 1) - A346632 (A191518 n).toNat

end

end A027584.P6592056294727907353

/-! ## A027584.P4350745260045207240

`A204551(A015723(n+1)*A030511(n+5))`
-/

namespace A027584.P4350745260045207240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204551 (A015723 (n + 1) * A030511 (n + 5)).toNat

end

end A027584.P4350745260045207240

/-!
# A027585: Sequence satisfies T^2(a)=a, where T is defined below.

The programs for A027585, there is no canonical definition to state claims against.
-/

/-! ## A027585.P5124033170652356981

`A259899(Δ[Δ[A182735(n)]])`
-/

namespace A027585.P5124033170652356981
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182735 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259899 (f1 (n + 1) - f1 n).toNat

end

end A027585.P5124033170652356981

/-! ## A027585.P4455390528530331139

`∑[A000120(A375099(n))]`
-/

namespace A027585.P4455390528530331139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A375099 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027585.P4455390528530331139

/-! ## A027585.P9499857118829404256

`A094500(A062684(n+1))`
-/

namespace A027585.P9499857118829404256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094500 (A062684 (n + 1)).toNat

end

end A027585.P9499857118829404256

/-! ## A027585.P736815864159191349

`A227394(A027594(n)+1)`
-/

namespace A027585.P736815864159191349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227394 (A027594 n + 1).toNat

end

end A027585.P736815864159191349

/-!
# A027586: Sequence satisfies T^2(a)=a, where T is defined below.

The programs for A027586, there is no canonical definition to state claims against.
-/

/-! ## A027586.P5066859467658412894

`A243924(∑[∑[A139582(n)]])`
-/

namespace A027586.P5066859467658412894
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139582 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243924 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A027586.P5066859467658412894

/-! ## A027586.P5413249100601614280

`A227177(A305120(n)+A134483(n+1))`
-/

namespace A027586.P5413249100601614280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227177 (A305120 n + A134483 (n + 1)).toNat

end

end A027586.P5413249100601614280

/-! ## A027586.P605557951526013185

`A074279(A027187(3*n)+A010051(n+1))`
-/

namespace A027586.P605557951526013185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074279 (A027187 (3 * n) + A010051 (n + 1)).toNat

end

end A027586.P605557951526013185

/-! ## A027586.P9426060195030409416

`A074279(A027187(3*n)-A121373(3*n+4))`
-/

namespace A027586.P9426060195030409416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074279 (A027187 (3 * n) - A121373 (3 * n + 4)).toNat

end

end A027586.P9426060195030409416

/-!
# A027588: Sequence satisfies T^2(a)=a, where T is defined below.

The programs for A027588, there is no canonical definition to state claims against.
-/

/-! ## A027588.P3324213060222852587

`A133137(A239958(n+1))`
-/

namespace A027588.P3324213060222852587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133137 (A239958 (n + 1)).toNat

end

end A027588.P3324213060222852587

/-! ## A027588.P3516323724133199117

`A133137(record[A239958(n)%A017377(n)])`
-/

namespace A027588.P3516323724133199117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A239958 n) (A017377 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133137 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A027588.P3516323724133199117

/-! ## A027588.P11242128406500468097

`record[A224956(n)-A239954(A239961(n))]`
-/

namespace A027588.P11242128406500468097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224956 n - A239954 (A239961 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027588.P11242128406500468097

/-! ## A027588.P6873549256000886402

`A340760(2*(n+1))+A020639(A289501(n))`
-/

namespace A027588.P6873549256000886402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340760 (2 * (n + 1)) + A020639 (A289501 n).toNat

end

end A027588.P6873549256000886402

/-! ## A027588.P7177704079139027838

`A048266(A224956(n+1))`
-/

namespace A027588.P7177704079139027838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048266 (A224956 (n + 1)).toNat

end

end A027588.P7177704079139027838

/-!
# A027589: Sequence satisfies T^2(a)=a, where T is defined below.

The programs for A027589, there is no canonical definition to state claims against.
-/

/-! ## A027589.P6358924894313617060

`A259899(A116365(n+2)-A235049(n))`
-/

namespace A027589.P6358924894313617060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259899 (A116365 (n + 2) - A235049 n).toNat

end

end A027589.P6358924894313617060

/-! ## A027589.P9141012523922450223

`A347697(A164160(n+1))`
-/

namespace A027589.P9141012523922450223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347697 (A164160 (n + 1)).toNat

end

end A027589.P9141012523922450223

/-! ## A027589.P1296208311369168495

`∑[A225638(A280195(n))+1]`
-/

namespace A027589.P1296208311369168495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225638 (A280195 n).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027589.P1296208311369168495

/-! ## A027589.P16361900150436671452

`record[A237826(n+1)%(A050987(n+1)+n)]+1`
-/

namespace A027589.P16361900150436671452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A237826 (n + 1)) (A050987 (n + 1) + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1

end

end A027589.P16361900150436671452

/-! ## A027589.P15757452894487537744

`A002620(n)+A000002(A233239(n+1))`
-/

namespace A027589.P15757452894487537744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 n + A000002 (A233239 (n + 1)).toNat

end

end A027589.P15757452894487537744

/-!
# A027590: Sequence satisfies T^2(a)=a, where T is defined below.

The programs for A027590, there is no canonical definition to state claims against.
-/

/-! ## A027590.P1862131466460049876

`A007212(n+1)-A185284(A008281(n))`
-/

namespace A027590.P1862131466460049876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007212 (n + 1) - A185284 (A008281 n).toNat

end

end A027590.P1862131466460049876

/-! ## A027590.P1678816769032200092

`A007212(n+1)-A011731(A185214(n))`
-/

namespace A027590.P1678816769032200092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007212 (n + 1) - A011731 (A185214 n).toNat

end

end A027590.P1678816769032200092

/-! ## A027590.P5293116919093553701

`A007212(n+1)-A185284(A108040(n))`
-/

namespace A027590.P5293116919093553701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007212 (n + 1) - A185284 (A108040 n).toNat

end

end A027590.P5293116919093553701

/-!
# A027591: Sequence satisfies T^2(a)=a, where T is defined below.

The programs for A027591, there is no canonical definition to state claims against.
-/

/-! ## A027591.P543413069413380264

`A007213(n+1)-A185284(A016777(n))`
-/

namespace A027591.P543413069413380264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007213 (n + 1) - A185284 (A016777 n).toNat

end

end A027591.P543413069413380264

/-! ## A027591.P13502819616452072982

`A027596(n+1)-A185284(A016777(n))`
-/

namespace A027591.P13502819616452072982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027596 (n + 1) - A185284 (A016777 n).toNat

end

end A027591.P13502819616452072982

/-! ## A027591.P2530556014331919783

`A100471(n+1)+A010060(A061991(n))`
-/

namespace A027591.P2530556014331919783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100471 (n + 1) + A010060 (A061991 n).toNat

end

end A027591.P2530556014331919783

/-! ## A027591.P12547865894467447807

`A007213(n+1)-A185284(A000040(n+1))`
-/

namespace A027591.P12547865894467447807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007213 (n + 1) - A185284 (A000040 (n + 1)).toNat

end

end A027591.P12547865894467447807

/-! ## A027591.P16191655010571521296

`A027596(n+1)-A185284(A000040(n+1))`
-/

namespace A027591.P16191655010571521296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027596 (n + 1) - A185284 (A000040 (n + 1)).toNat

end

end A027591.P16191655010571521296

/-!
# A027592: Sequence satisfies T(a)=a, where T is defined below.

The programs for A027592, there is no canonical definition to state claims against.
-/

/-! ## A027592.P13851320668609302054

`A007209(n+1)-A124761(A156953(n))`
-/

namespace A027592.P13851320668609302054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007209 (n + 1) - A124761 (A156953 n).toNat

end

end A027592.P13851320668609302054

/-! ## A027592.P363980890906969849

`A007209(n+1)-A216510(A102480(n))`
-/

namespace A027592.P363980890906969849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007209 (n + 1) - A216510 (A102480 n).toNat

end

end A027592.P363980890906969849

/-! ## A027592.P16675107923751064211

`A118759(A007209(n+1))`
-/

namespace A027592.P16675107923751064211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A007209 (n + 1)).toNat

end

end A027592.P16675107923751064211

/-! ## A027592.P16001431897822908221

`A000188(A007209(n+1)²)`
-/

namespace A027592.P16001431897822908221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A007209 (n + 1) ^ 2).toNat

end

end A027592.P16001431897822908221

/-! ## A027592.P3398038927471070487

`A000194(A007209(n+1)²)`
-/

namespace A027592.P3398038927471070487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A007209 (n + 1) ^ 2).toNat

end

end A027592.P3398038927471070487

/-!
# A027593: Sequence satisfies T^2(a)=a, where T is defined below.

The programs for A027593, there is no canonical definition to state claims against.
-/

/-! ## A027593.P9778862319923286037

`A107846(A063759(n))+A007211(n+1)`
-/

namespace A027593.P9778862319923286037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107846 (A063759 n).toNat + A007211 (n + 1)

end

end A027593.P9778862319923286037

/-! ## A027593.P6895636297830033119

`or(A007211(n+1), A185284(A157189(n+1)))`
-/

namespace A027593.P6895636297830033119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A007211 (n + 1)) (A185284 (A157189 (n + 1)).toNat)

end

end A027593.P6895636297830033119

/-!
# A027594: Sequence satisfies T^2(a)=a, where T is defined below.

The programs for A027594, there is no canonical definition to state claims against.
-/

/-! ## A027594.P8716603239576862107

`A060384(∑[A345251(n+1)+2])`
-/

namespace A027594.P8716603239576862107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345251 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060384 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A027594.P8716603239576862107

/-! ## A027594.P11797741155593022397

`A105224(∑[A001248(n+1)+2^n])`
-/

namespace A027594.P11797741155593022397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1) + (2 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105224 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A027594.P11797741155593022397

/-! ## A027594.P5955827051452081156

`A385069(n)+A124766(A000045(n))`
-/

namespace A027594.P5955827051452081156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385069 n + A124766 (A000045 n).toNat

end

end A027594.P5955827051452081156

/-!
# A027597: Sequence satisfies T(a)=a, where T is defined below.

The programs for A027597, there is no canonical definition to state claims against.
-/

/-! ## A027597.P6917201671491717293

`A320278(A320247(2*(n+2))+A320240(3*n))`
-/

namespace A027597.P6917201671491717293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320278 (A320247 (2 * (n + 2)) + A320240 (3 * n)).toNat

end

end A027597.P6917201671491717293

/-! ## A027597.P10631385443728221795

`A204553(A328535(n))`
-/

namespace A027597.P10631385443728221795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204553 (A328535 n).toNat

end

end A027597.P10631385443728221795

/-! ## A027597.P17793624240895434271

`A000006(A131752(n+1)+A000700(n))`
-/

namespace A027597.P17793624240895434271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000006 (A131752 (n + 1) + A000700 n).toNat

end

end A027597.P17793624240895434271

/-! ## A027597.P1865023659714088847

`A074279(A336866(3*n)+A320036(n+1))`
-/

namespace A027597.P1865023659714088847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074279 (A336866 (3 * n) + A320036 (n + 1)).toNat

end

end A027597.P1865023659714088847

/-!
# A027598: Numbers k such that the set of prime divisors of k is equal to the set of prime divisors of sigma(k).

The programs for A027598, there is no canonical definition to state claims against.
-/

/-! ## A027598.P2257377885525238058

`∩[A145551(n+1), A175200(n+1)]`
-/

namespace A027598.P2257377885525238058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145551 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175200 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A027598.P2257377885525238058

/-! ## A027598.P12577278441357864177

`∩[A105402(n+1), A175200(n+1)]`
-/

namespace A027598.P12577278441357864177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105402 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175200 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A027598.P12577278441357864177

/-! ## A027598.P1374647578180333282

`∩[A105402(n+1), A387158(n+1)]`
-/

namespace A027598.P1374647578180333282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105402 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387158 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A027598.P1374647578180333282

/-! ## A027598.P15773525988660502323

`∩[A145551(n+1), A387158(n+1)]`
-/

namespace A027598.P15773525988660502323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145551 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387158 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A027598.P15773525988660502323

/-! ## A027598.P12941029838953506080

`∩[A105402(n+1), A263928(n+1)]`
-/

namespace A027598.P12941029838953506080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105402 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263928 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A027598.P12941029838953506080

/-!
# A027599: a(n) = 3*n^2 - 7*n + 6.

The programs for A027599, the canonical program `A027599.P5595518887014988632` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027599 has offset 0).

The definition of A027599 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*n²-7*n+6` (program `A027599.P5595518887014988632`, by `A027599.P5595518887014988632.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A027599.P10300203220603702158

`((6*n-7)²+23)/12`
-/

namespace A027599.P10300203220603702158
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((6 * n : ℤ) - 7) ^ 2 + 23 : ℚ) / 12

end

end A027599.P10300203220603702158

namespace A027599

/-- `((6*n-7)²+23)/12` -/
def P10300203220603702158.Spec : Prop :=
  ∀ n, P10300203220603702158.a n = (A027599 n : ℚ)

theorem P10300203220603702158.correct : P10300203220603702158.Spec := by
  intro n
  simp only [A027599, Nat.add_sub_cancel, A027599.P10300203220603702158.a, A027599.P5595518887014988632.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A027599

/-! ## A027599.P5595518887014988632

`3*n²-7*n+6`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A027599

/-- `3*n²-7*n+6` -/
def P5595518887014988632.Spec : Prop :=
  ∀ n, P5595518887014988632.a n = A027599 n

theorem P5595518887014988632.correct : P5595518887014988632.Spec := by
  intro n
  simp only [A027599]

end A027599

/-! ## A027599.P1156832496417447367

`∑[a(n-1)+6]` with `a(0)=6, a(1)=-4`
-/

namespace A027599.P1156832496417447367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [6, -4] fun n f1 =>
  f1 (n - 1) + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027599.P1156832496417447367

namespace A027599

/-- `∑[a(n-1)+6]` -/
def P1156832496417447367.Spec : Prop :=
  ∀ n, P1156832496417447367.a n = A027599 n

end A027599

/-! ## A027599.P14321463376041836531

`Δ[(n-1)*or(2, (2-n)²)]`
-/

namespace A027599.P14321463376041836531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * Int.lor 2 ((2 - (n : ℤ)) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A027599.P14321463376041836531

namespace A027599

/-- `Δ[(n-1)*or(2, (2-n)²)]` -/
def P14321463376041836531.Spec : Prop :=
  ∀ n, P14321463376041836531.a n = A027599 n

end A027599

/-! ## A027599.P10934976814430292425

`Δ[(n-1)*xor(2, (2-n)²)]`
-/

namespace A027599.P10934976814430292425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * Int.xor 2 ((2 - (n : ℤ)) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A027599.P10934976814430292425

namespace A027599

/-- `Δ[(n-1)*xor(2, (2-n)²)]` -/
def P10934976814430292425.Spec : Prop :=
  ∀ n, P10934976814430292425.a n = A027599 n

end A027599

/-! ## A027599.P7356843643382673180

`2*(8-∑[a(n-1)-3])` with `a(0)=5`
-/

namespace A027599.P7356843643382673180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [5] fun n f1 =>
  f1 (n - 1) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (8 - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A027599.P7356843643382673180

namespace A027599

/-- `2*(8-∑[a(n-1)-3])` -/
def P7356843643382673180.Spec : Prop :=
  ∀ n, P7356843643382673180.a n = A027599 n

end A027599

/-! ## A027599.P12411755616822681072

`lcm(2, 3*(1-n)²-(n-3))`
-/

namespace A027599.P12411755616822681072
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (3 * (1 - (n : ℤ)) ^ 2 - ((n : ℤ) - 3))

end

end A027599.P12411755616822681072

namespace A027599

/-- `lcm(2, 3*(1-n)²-(n-3))` -/
def P12411755616822681072.Spec : Prop :=
  ∀ n, (P12411755616822681072.a n : ℤ) = A027599 n

end A027599

/-! ## A027599.P11920103326215439700

`xor(1, Δ[(n-2)^3]+2*n)`
-/

namespace A027599.P11920103326215439700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 2) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (f1 (n + 1) - f1 n + (2 * n : ℤ))

end

end A027599.P11920103326215439700

namespace A027599

/-- `xor(1, Δ[(n-2)^3]+2*n)` -/
def P11920103326215439700.Spec : Prop :=
  ∀ n, P11920103326215439700.a n = A027599 n

end A027599

/-! ## A027599.P5414580557112231094

`Δ[(lcm(n-1, n-2)+2)*(n-2)]`
-/

namespace A027599.P5414580557112231094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm ((n : ℤ) - 1) ((n : ℤ) - 2) + 2 : ℤ) * ((n : ℤ) - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A027599.P5414580557112231094

namespace A027599

/-- `Δ[(lcm(n-1, n-2)+2)*(n-2)]` -/
def P5414580557112231094.Spec : Prop :=
  ∀ n, P5414580557112231094.a n = A027599 n

end A027599

/-! ## A027599.P16139463945614815972

`2*(A255843(n)-A052905(n))`
-/

namespace A027599.P16139463945614815972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A255843 n - A052905 n)

end

end A027599.P16139463945614815972

namespace A027599

/-- `2*(A255843(n)-A052905(n))` -/
def P16139463945614815972.Spec : Prop :=
  ∀ n, P16139463945614815972.a n = A027599 n

end A027599

/-! ## A027599.P3363669386488955307

`2*(A045943(n+1)-8*n)`
-/

namespace A027599.P3363669386488955307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A045943 (n + 1) - (8 * n : ℤ))

end

end A027599.P3363669386488955307

namespace A027599

/-- `2*(A045943(n+1)-8*n)` -/
def P3363669386488955307.Spec : Prop :=
  ∀ n, P3363669386488955307.a n = A027599 n

end A027599

