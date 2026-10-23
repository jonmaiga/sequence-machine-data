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
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
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
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B013.C000
import Seq.B014.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C005
import Seq.Opaque.C006
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
import Seq.Opaque.C025

/-!
# A204400: Number of (n+2)X(n+2) 0..2 arrays with every 3X3 subblock having three strictly increasing elements in a row horizontally, vertically or nw-to-se diagonally.

The programs for A204400, there is no canonical definition to state claims against.
-/

/-! ## A204400.P5626657949441237705

`A204408(∑[4*n]+1)`
-/

namespace A204400.P5626657949441237705
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204408 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A204400.P5626657949441237705

/-! ## A204400.P15238388724061438827

`or(1, A204408(A001844(n)))`
-/

namespace A204400.P15238388724061438827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A204408 (A001844 n).toNat)

end

end A204400.P15238388724061438827

/-! ## A204400.P10697107808566789252

`record[A204408(A330613(n+1))]`
-/

namespace A204400.P10697107808566789252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204408 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204400.P10697107808566789252

/-! ## A204400.P11726748342451579369

`record[A003982(n)*A204408(n+1)]`
-/

namespace A204400.P11726748342451579369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A204408 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204400.P11726748342451579369

/-! ## A204400.P18246616995865438912

`record[gcd(A003987(n), A204408(n+1))]`
-/

namespace A204400.P18246616995865438912
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003987 n) (A204408 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204400.P18246616995865438912

/-!
# A204401: Number of (n+2)X3 0..2 arrays with every 3X3 subblock having three strictly increasing elements in a row horizontally, vertically or nw-to-se diagonally.

The programs for A204401, there is no canonical definition to state claims against.
-/

/-! ## A204401.P8384287153560905544

`A204408(∑[n]+1)`
-/

namespace A204401.P8384287153560905544
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204408 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A204401.P8384287153560905544

/-! ## A204401.P15405817429874156915

`record[A204408(n+1)/A008288(n)]`
-/

namespace A204401.P15405817429874156915
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204408 (n + 1) : ℚ) / (A008288 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204401.P15405817429874156915

/-! ## A204401.P1882822409639218928

`record[A204408(n+1)/A343656(n+1)]`
-/

namespace A204401.P1882822409639218928
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204408 (n + 1) : ℚ) / (A343656 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204401.P1882822409639218928

/-! ## A204401.P12100132872014231186

`record[gcd(n*A204533(n), A204408(n+1))]`
-/

namespace A204401.P12100132872014231186
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n : ℤ) * A204533 n) (A204408 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204401.P12100132872014231186

/-! ## A204401.P9502087776889532689

`lcm(A033999(n), A204408(A000124(n)))`
-/

namespace A204401.P9502087776889532689
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A204408 (A000124 n).toNat)

end

end A204401.P9502087776889532689

/-!
# A204402: Number of (n+2)X4 0..2 arrays with every 3X3 subblock having three strictly increasing elements in a row horizontally, vertically or nw-to-se diagonally.

The programs for A204402, there is no canonical definition to state claims against.
-/

/-! ## A204402.P5147840740584855535

`A204408(∑[n+1]+2)`
-/

namespace A204402.P5147840740584855535
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204408 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A204402.P5147840740584855535

/-! ## A204402.P10642075728542903177

`record[gcd(A204408(n+3), A204533(n+1))]`
-/

namespace A204402.P10642075728542903177
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A204408 (n + 3)) (A204533 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204402.P10642075728542903177

/-! ## A204402.P14695897331437159705

`record[gcd(A053615(2*n), A204408(n+2))]`
-/

namespace A204402.P14695897331437159705
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A053615 (2 * n)) (A204408 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204402.P14695897331437159705

/-! ## A204402.P2417603692520231600

`record[A204408(abs(A201163(n)))]`
-/

namespace A204402.P2417603692520231600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204408 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204402.P2417603692520231600

/-! ## A204402.P3809000710856873470

`record[A204408(A061579(A038722(n+1)))]`
-/

namespace A204402.P3809000710856873470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204408 (A061579 (A038722 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204402.P3809000710856873470

/-!
# A204403: Number of (n+2)X5 0..2 arrays with every 3X3 subblock having three strictly increasing elements in a row horizontally, vertically or nw-to-se diagonally.

The programs for A204403, there is no canonical definition to state claims against.
-/

/-! ## A204403.P13192922179595890168

`A204408(A167614(n+1))`
-/

namespace A204403.P13192922179595890168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204408 (A167614 (n + 1)).toNat

end

end A204403.P13192922179595890168

/-! ## A204403.P4205636562257763715

`A204408(A046691(n)+7)`
-/

namespace A204403.P4205636562257763715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204408 (A046691 n + 7).toNat

end

end A204403.P4205636562257763715

/-! ## A204403.P2255580126611948303

`A204408(A167499(n)+n)`
-/

namespace A204403.P2255580126611948303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204408 (A167499 n + (n : ℤ)).toNat

end

end A204403.P2255580126611948303

/-! ## A204403.P17722255131067004344

`A204408(eq[4, A131818(n+1)])`
-/

namespace A204403.P17722255131067004344
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204408 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A204403.P17722255131067004344

/-! ## A204403.P8603120790502855705

`A204408(∑[n+3]+1)`
-/

namespace A204403.P8603120790502855705
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204408 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A204403.P8603120790502855705

/-!
# A204404: Number of (n+2)X6 0..2 arrays with every 3X3 subblock having three strictly increasing elements in a row horizontally, vertically or nw-to-se diagonally.

The programs for A204404, there is no canonical definition to state claims against.
-/

/-! ## A204404.P6031890456666847433

`A204408(A055999(n)+10)`
-/

namespace A204404.P6031890456666847433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204408 (A055999 n + 10).toNat

end

end A204404.P6031890456666847433

/-! ## A204404.P2657392874727934187

`A204408(A167614(n+2)+1)`
-/

namespace A204404.P2657392874727934187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204408 (A167614 (n + 2) + 1).toNat

end

end A204404.P2657392874727934187

/-! ## A204404.P9912642795715816606

`A204408(eq[5, A131818(n+1)])`
-/

namespace A204404.P9912642795715816606
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204408 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A204404.P9912642795715816606

/-! ## A204404.P5928126017699672940

`A204408(Δ[A264443(n)-n²])`
-/

namespace A204404.P5928126017699672940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204408 (f1 (n + 1) - f1 n).toNat

end

end A204404.P5928126017699672940

/-! ## A204404.P2479710248945650095

`A204408(A141214(n+1))`
-/

namespace A204404.P2479710248945650095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204408 (A141214 (n + 1)).toNat

end

end A204404.P2479710248945650095

/-!
# A204405: Number of (n+2)X7 0..2 arrays with every 3X3 subblock having three strictly increasing elements in a row horizontally, vertically or nw-to-se diagonally.

The programs for A204405, there is no canonical definition to state claims against.
-/

/-! ## A204405.P11965294195223018999

`A204408(A167499(n+3))`
-/

namespace A204405.P11965294195223018999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204408 (A167499 (n + 3)).toNat

end

end A204405.P11965294195223018999

/-! ## A204405.P13214873071549728233

`A204408(A155212(n)+13)`
-/

namespace A204405.P13214873071549728233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204408 (A155212 n + 13).toNat

end

end A204405.P13214873071549728233

/-! ## A204405.P10939878085331130352

`A204408(eq[6, A131818(n+1)])`
-/

namespace A204405.P10939878085331130352
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204408 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A204405.P10939878085331130352

/-! ## A204405.P10635951233977408642

`A204408(Δ[A264443(n)])`
-/

namespace A204405.P10635951233977408642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204408 (f1 (n + 1) - f1 n).toNat

end

end A204405.P10635951233977408642

/-! ## A204405.P3652589643363414999

`A204408(A374005(n+1))`
-/

namespace A204405.P3652589643363414999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204408 (A374005 (n + 1)).toNat

end

end A204405.P3652589643363414999

/-!
# A204406: Number of (n+2)X8 0..2 arrays with every 3X3 subblock having three strictly increasing elements in a row horizontally, vertically or nw-to-se diagonally.

The programs for A204406, there is no canonical definition to state claims against.
-/

/-! ## A204406.P14401357628918114523

`A204408(eq[7, A131818(n+1)])`
-/

namespace A204406.P14401357628918114523
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204408 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A204406.P14401357628918114523

/-! ## A204406.P15980110750692877055

`A204408(A374007(n+1))`
-/

namespace A204406.P15980110750692877055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204408 (A374007 (n + 1)).toNat

end

end A204406.P15980110750692877055

/-! ## A204406.P15037446981601143138

`A204408(eq[3, A219347(n)])`
-/

namespace A204406.P15037446981601143138
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204408 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A204406.P15037446981601143138

/-! ## A204406.P8852497737251541964

`A204408(eq[5, A193592(n)])`
-/

namespace A204406.P8852497737251541964
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204408 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A204406.P8852497737251541964

/-! ## A204406.P17975815931669904675

`A204408(A055999(n+3)+1)`
-/

namespace A204406.P17975815931669904675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204408 (A055999 (n + 3) + 1).toNat

end

end A204406.P17975815931669904675

/-!
# A204407: Number of (n+2)X9 0..2 arrays with every 3X3 subblock having three strictly increasing elements in a row horizontally, vertically or nw-to-se diagonally.

The programs for A204407, there is no canonical definition to state claims against.
-/

/-! ## A204407.P14953546309797777025

`A204408(A167499(n+5)+2)`
-/

namespace A204407.P14953546309797777025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204408 (A167499 (n + 5) + 2).toNat

end

end A204407.P14953546309797777025

/-! ## A204407.P1426307370155564114

`A204408(eq[8, A131818(n+1)])`
-/

namespace A204407.P1426307370155564114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204408 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A204407.P1426307370155564114

/-! ## A204407.P5368688485682114533

`A204408(A374008(n+1))`
-/

namespace A204407.P5368688485682114533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204408 (A374008 (n + 1)).toNat

end

end A204407.P5368688485682114533

/-! ## A204407.P11578328185485390854

`A204408(eq[4, A219347(n)])`
-/

namespace A204407.P11578328185485390854
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204408 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A204407.P11578328185485390854

/-! ## A204407.P16433847413475462539

`A204408(eq[6, A193592(n)])`
-/

namespace A204407.P16433847413475462539
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204408 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A204407.P16433847413475462539

/-!
# A204409: Number of (n+2)X(n+2) 0..2 arrays with every 3X3 subblock having three strictly increasing elements in a row horizontally or vertically, exactly one way.

The programs for A204409, there is no canonical definition to state claims against.
-/

/-! ## A204409.P8469802019633321288

`A204417(∑[4*n]+1)`
-/

namespace A204409.P8469802019633321288
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204417 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A204409.P8469802019633321288

/-! ## A204409.P18324389346115476996

`lcm(2, A204417(A001844(n)))`
-/

namespace A204409.P18324389346115476996
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A204417 (A001844 n).toNat)

end

end A204409.P18324389346115476996

/-! ## A204409.P18268970325735035705

`record[A003982(n)*A204417(n+1)]`
-/

namespace A204409.P18268970325735035705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A204417 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204409.P18268970325735035705

/-! ## A204409.P9694233992402729686

`record[gcd(A037012(n), A204417(n+1))]`
-/

namespace A204409.P9694233992402729686
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A037012 n) (A204417 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204409.P9694233992402729686

/-! ## A204409.P17178153569157334004

`or(A000038(n), A204417(A001844(n)))`
-/

namespace A204409.P17178153569157334004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A204417 (A001844 n).toNat)

end

end A204409.P17178153569157334004

/-!
# A204410: Number of (n+2)X3 0..2 arrays with every 3X3 subblock having three strictly increasing elements in a row horizontally or vertically, exactly one way.

The programs for A204410, there is no canonical definition to state claims against.
-/

/-! ## A204410.P9119513505442828880

`A204417(∑[n]+1)`
-/

namespace A204410.P9119513505442828880
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204417 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A204410.P9119513505442828880

/-! ## A204410.P7463099899549113476

`record[A204417(n+1)]`
-/

namespace A204410.P7463099899549113476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204417 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204410.P7463099899549113476

/-! ## A204410.P3383138279980484585

`A007318(∑[n])*A204417(A000124(n))`
-/

namespace A204410.P3383138279980484585
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A204417 (A000124 n).toNat

end

end A204410.P3383138279980484585

/-! ## A204410.P10751850727404071611

`A204417(A000124(n))^A000041(gcd(n, n+1))`
-/

namespace A204410.P10751850727404071611
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204417 (A000124 n).toNat : ℚ) ^ (A000041 (Nat.gcd n (n + 1)) : ℤ)

end

end A204410.P10751850727404071611

/-! ## A204410.P18338876060515856574

`A204417(A000124(n))^A014963(6*A006530(n+2))`
-/

namespace A204410.P18338876060515856574
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204417 (A000124 n).toNat : ℚ) ^ (A014963 (6 * A006530 (n + 2)).toNat : ℤ)

end

end A204410.P18338876060515856574

/-!
# A204411: Number of (n+2)X4 0..2 arrays with every 3X3 subblock having three strictly increasing elements in a row horizontally or vertically, exactly one way.

The programs for A204411, there is no canonical definition to state claims against.
-/

/-! ## A204411.P9163739941070589716

`A204417(∑[n+1]+2)`
-/

namespace A204411.P9163739941070589716
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204417 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A204411.P9163739941070589716

/-! ## A204411.P9711168699319221459

`record[gcd(A002262(n), A204417(n+2))]`
-/

namespace A204411.P9711168699319221459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A204417 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204411.P9711168699319221459

/-! ## A204411.P12004357990312624638

`record[A123706(n+1)*A204417(n+3)]`
-/

namespace A204411.P12004357990312624638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123706 (n + 1) * A204417 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204411.P12004357990312624638

/-! ## A204411.P514338518059188302

`record[A204417(abs(A201163(n)))]`
-/

namespace A204411.P514338518059188302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204417 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204411.P514338518059188302

/-! ## A204411.P4940117654477377437

`record[A204417(A000096(val(n+1, 2)+1))]`
-/

namespace A204411.P4940117654477377437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204417 (A000096 (SequenceMachineLib.valuation (n + 1) 2 + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204411.P4940117654477377437

/-!
# A204412: Number of (n+2)X5 0..2 arrays with every 3X3 subblock having three strictly increasing elements in a row horizontally or vertically, exactly one way.

The programs for A204412, there is no canonical definition to state claims against.
-/

/-! ## A204412.P16401158516009176702

`A204417(A167614(n+1))`
-/

namespace A204412.P16401158516009176702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204417 (A167614 (n + 1)).toNat

end

end A204412.P16401158516009176702

/-! ## A204412.P12828093724634240247

`A204417(A373663(n+1))`
-/

namespace A204412.P12828093724634240247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204417 (A373663 (n + 1)).toNat

end

end A204412.P12828093724634240247

/-! ## A204412.P8143445219429402981

`A204417(A046691(n)+7)`
-/

namespace A204412.P8143445219429402981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204417 (A046691 n + 7).toNat

end

end A204412.P8143445219429402981

/-! ## A204412.P1179026004954437309

`A204417(A167499(n)+n)`
-/

namespace A204412.P1179026004954437309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204417 (A167499 n + (n : ℤ)).toNat

end

end A204412.P1179026004954437309

/-! ## A204412.P15170764818058163781

`A204417(A034856(n+1)+5)`
-/

namespace A204412.P15170764818058163781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204417 (A034856 (n + 1) + 5).toNat

end

end A204412.P15170764818058163781

/-!
# A204413: Number of (n+2)X6 0..2 arrays with every 3X3 subblock having three strictly increasing elements in a row horizontally or vertically, exactly one way.

The programs for A204413, there is no canonical definition to state claims against.
-/

/-! ## A204413.P5529636866360242964

`A204417(A374004(n+1))`
-/

namespace A204413.P5529636866360242964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204417 (A374004 (n + 1)).toNat

end

end A204413.P5529636866360242964

/-! ## A204413.P6085056092230703677

`A204417(A052905(n)+9)`
-/

namespace A204413.P6085056092230703677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204417 (A052905 n + 9).toNat

end

end A204413.P6085056092230703677

/-! ## A204413.P930277055583360610

`A204417(A055999(n)+10)`
-/

namespace A204413.P930277055583360610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204417 (A055999 n + 10).toNat

end

end A204413.P930277055583360610

/-! ## A204413.P5076289617661076638

`A204417(A167614(n+2)+1)`
-/

namespace A204413.P5076289617661076638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204417 (A167614 (n + 2) + 1).toNat

end

end A204413.P5076289617661076638

/-! ## A204413.P11064714611202937114

`A204417(Δ[A023545(n+1)-n²])`
-/

namespace A204413.P11064714611202937114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204417 (f1 (n + 1) - f1 n).toNat

end

end A204413.P11064714611202937114

/-!
# A204414: Number of (n+2)X7 0..2 arrays with every 3X3 subblock having three strictly increasing elements in a row horizontally or vertically, exactly one way.

The programs for A204414, there is no canonical definition to state claims against.
-/

/-! ## A204414.P9531331436060697188

`A204417(A374005(n+1))`
-/

namespace A204414.P9531331436060697188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204417 (A374005 (n + 1)).toNat

end

end A204414.P9531331436060697188

/-! ## A204414.P14159104892255117999

`A204417(A167499(n+3))`
-/

namespace A204414.P14159104892255117999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204417 (A167499 (n + 3)).toNat

end

end A204414.P14159104892255117999

/-! ## A204414.P12229079636235193830

`A204417(A056000(n)+15)`
-/

namespace A204414.P12229079636235193830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204417 (A056000 n + 15).toNat

end

end A204414.P12229079636235193830

/-! ## A204414.P6291514346712892224

`A204417(A046691(n+3))`
-/

namespace A204414.P6291514346712892224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204417 (A046691 (n + 3)).toNat

end

end A204414.P6291514346712892224

/-! ## A204414.P16403436534340689271

`A204417(eq[2, A092921(n)])`
-/

namespace A204414.P16403436534340689271
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204417 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A204414.P16403436534340689271

/-!
# A204415: Number of (n+2)X8 0..2 arrays with every 3X3 subblock having three strictly increasing elements in a row horizontally or vertically, exactly one way.

The programs for A204415, there is no canonical definition to state claims against.
-/

/-! ## A204415.P1198012119890424393

`A204417(A374007(n+1))`
-/

namespace A204415.P1198012119890424393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204417 (A374007 (n + 1)).toNat

end

end A204415.P1198012119890424393

/-! ## A204415.P6462545521697306612

`A204417(A052905(n+3))`
-/

namespace A204415.P6462545521697306612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204417 (A052905 (n + 3)).toNat

end

end A204415.P6462545521697306612

/-! ## A204415.P1286319408894784551

`A204417(eq[3, A219347(n)])`
-/

namespace A204415.P1286319408894784551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204417 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A204415.P1286319408894784551

/-! ## A204415.P18378869971443528550

`A204417(eq[5, A193592(n)])`
-/

namespace A204415.P18378869971443528550
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204417 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A204415.P18378869971443528550

/-! ## A204415.P1280313392695793582

`A204417(∑[A020715(n)]+10)`
-/

namespace A204415.P1280313392695793582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020715 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204417 (∑ j ∈ Finset.range (n + 1), f1 j + 10).toNat

end

end A204415.P1280313392695793582

/-!
# A204416: Number of (n+2)X9 0..2 arrays with every 3X3 subblock having three strictly increasing elements in a row horizontally or vertically, exactly one way.

The programs for A204416, there is no canonical definition to state claims against.
-/

/-! ## A204416.P2142231932409377887

`A204417(A374008(n+1))`
-/

namespace A204416.P2142231932409377887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204417 (A374008 (n + 1)).toNat

end

end A204416.P2142231932409377887

/-! ## A204416.P14676665946191835497

`A204417(eq[11, A066657(n)])`
-/

namespace A204416.P14676665946191835497
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204417 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A204416.P14676665946191835497

/-! ## A204416.P4822507552767246644

`A204417(A055999(n+4))`
-/

namespace A204416.P4822507552767246644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204417 (A055999 (n + 4)).toNat

end

end A204416.P4822507552767246644

/-! ## A204416.P17339068358256131287

`A204417(eq[4, A219347(n)])`
-/

namespace A204416.P17339068358256131287
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204417 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A204416.P17339068358256131287

/-! ## A204416.P8427041041466569250

`A204417(eq[6, A193592(n)])`
-/

namespace A204416.P8427041041466569250
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204417 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A204416.P8427041041466569250

/-!
# A204418: Periodic sequence 1,0,1,..., arranged in a triangle.

The programs for A204418, the canonical program `A204418.P3102934372999592963` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A204418 has offset 0).

The definition of A204418 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A204418.P3102934372999592963

`abs(1-n%3)`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A204418

/-- `abs(1-n%3)` -/
def P3102934372999592963.Spec : Prop :=
  ∀ n, P3102934372999592963.a n = A204418 n

theorem P3102934372999592963.correct : P3102934372999592963.Spec := by
  intro n
  simp only [A204418]

end A204418

/-!
# A204420: Triangle T(n,k) giving number of degree-2n permutations which decompose into exactly k cycles of even length, k=0..n.

The programs for A204420, there is no canonical definition to state claims against.
-/

/-! ## A204420.P1096126874336002132

`A262071(eq[A094718(n+4), A293293(n)])`
-/

namespace A204420.P1096126874336002132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094718 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293293 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262071 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A204420.P1096126874336002132

/-! ## A204420.P9748403911373219185

`A262071(eq[A057595(n+2), A224867(n+1)])`
-/

namespace A204420.P9748403911373219185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057595 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224867 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262071 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A204420.P9748403911373219185

/-! ## A204420.P8883398996163817656

`C(A332718(∑[∑[floor(floor(n/3)+1-n/4)]]), C(comp[∑[n]]-n, 2)-n)`
-/

namespace A204420.P8883398996163817656
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(⌊(n : ℚ) / 3⌋ : ℚ) + (1 - (n : ℚ) / 4)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A332718 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ)).toNat

end

end A204420.P8883398996163817656

/-! ## A204420.P12036593114004065022

`A084913(A268439(n))-1`
-/

namespace A204420.P12036593114004065022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084913 (A268439 n).toNat - 1

end

end A204420.P12036593114004065022

/-!
# A204421: Symmetric matrix: f(i,j)=(i+j+2 mod 3), by antidiagonals.

The programs for A204421, the canonical program `A204421.P13358004304107927410` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A204421 has offset 1).

The definition of A204421 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A204421.P3595103390553820963

`∑[char[∑[n]]]%3`
-/

namespace A204421.P3595103390553820963
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) % 3

end

end A204421.P3595103390553820963

namespace A204421

/-- `∑[char[∑[n]]]%3` -/
def P3595103390553820963.Spec : Prop :=
  ∀ n, (P3595103390553820963.a n : ℤ) = A204421 (n + 1)

end A204421

/-! ## A204421.P10518444215478970125

`abs(round(-sqrt(Δ[n²]))%3)`
-/

namespace A204421.P10518444215478970125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (SequenceMachineLib.roundAway (-Real.sqrt ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℝ))) 3|

end

end A204421.P10518444215478970125

namespace A204421

/-- `abs(round(-sqrt(Δ[n²]))%3)` -/
def P10518444215478970125.Spec : Prop :=
  ∀ n, P10518444215478970125.a n = A204421 (n + 1)

end A204421

/-! ## A204421.P4974546347149285980

`dr(round(sqrt(2*n+1))%3)`
-/

namespace A204421.P4974546347149285980
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (2 * n + 1 : ℝ))) 3)

end

end A204421.P4974546347149285980

namespace A204421

/-- `dr(round(sqrt(2*n+1))%3)` -/
def P4974546347149285980.Spec : Prop :=
  ∀ n, (P4974546347149285980.a n : ℤ) = A204421 (n + 1)

end A204421

/-! ## A204421.P14720246147101527926

`log2(gcd(4, (comp[∑[n]]-n)%3))`
-/

namespace A204421.P14720246147101527926
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Int.gcd 4 (Int.tmod ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)) 3) : ℝ)

end

end A204421.P14720246147101527926

namespace A204421

/-- `log2(gcd(4, (comp[∑[n]]-n)%3))` -/
def P14720246147101527926.Spec : Prop :=
  ∀ n, P14720246147101527926.a n = (A204421 (n + 1) : ℝ)

end A204421

/-! ## A204421.P6194129883833946369

`-(round(-sqrt(2*n+1))%3)`
-/

namespace A204421.P6194129883833946369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.tmod (SequenceMachineLib.roundAway (-Real.sqrt (2 * n + 1 : ℝ))) 3

end

end A204421.P6194129883833946369

namespace A204421

/-- `-(round(-sqrt(2*n+1))%3)` -/
def P6194129883833946369.Spec : Prop :=
  ∀ n, P6194129883833946369.a n = A204421 (n + 1)

end A204421

/-! ## A204421.P13454809515952525555

`2-A204429(n+1)`
-/

namespace A204421.P13454809515952525555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A204429 (n + 1)

end

end A204421.P13454809515952525555

namespace A204421

/-- `2-A204429(n+1)` -/
def P13454809515952525555.Spec : Prop :=
  ∀ n, P13454809515952525555.a n = A204421 (n + 1)

end A204421

/-! ## A204421.P13358004304107927410

`C(2, a(A056943(n))²)` with `a(0)=1`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A204421

/-- `C(2, a(A056943(n))²)` -/
def P13358004304107927410.Spec : Prop :=
  ∀ n, (P13358004304107927410.a n : ℤ) = A204421 (n + 1)

theorem P13358004304107927410.correct : P13358004304107927410.Spec := by
  intro n
  simp only [A204421, Nat.add_sub_cancel]

end A204421

/-! ## A204421.P7786120955308823064

`A010872(round(sqrt(2*n+1)))`
-/

namespace A204421.P7786120955308823064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (SequenceMachineLib.roundAway (Real.sqrt (2 * n + 1 : ℝ))).toNat

end

end A204421.P7786120955308823064

namespace A204421

/-- `A010872(round(sqrt(2*n+1)))` -/
def P7786120955308823064.Spec : Prop :=
  ∀ n, P7786120955308823064.a n = A204421 (n + 1)

end A204421

/-! ## A204421.P16653513718673066779

`C(2, (2-A204431(n+1))²)`
-/

namespace A204421.P16653513718673066779
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 ((2 - A204431 (n + 1)) ^ 2).toNat

end

end A204421.P16653513718673066779

namespace A204421

/-- `C(2, (2-A204431(n+1))²)` -/
def P16653513718673066779.Spec : Prop :=
  ∀ n, (P16653513718673066779.a n : ℤ) = A204421 (n + 1)

end A204421

/-! ## A204421.P12238352811631355048

`2-C(2, A204433(n+1)²)`
-/

namespace A204421.P12238352811631355048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (Nat.choose 2 (A204433 (n + 1) ^ 2).toNat : ℤ)

end

end A204421.P12238352811631355048

namespace A204421

/-- `2-C(2, A204433(n+1)²)` -/
def P12238352811631355048.Spec : Prop :=
  ∀ n, P12238352811631355048.a n = A204421 (n + 1)

end A204421

/-! ## A204421.P12022337342302490473

`A060572(A131507(n))`
-/

namespace A204421.P12022337342302490473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060572 (A131507 n).toNat

end

end A204421.P12022337342302490473

namespace A204421

/-- `A060572(A131507(n))` -/
def P12022337342302490473.Spec : Prop :=
  ∀ n, P12022337342302490473.a n = A204421 (n + 1)

end A204421

/-! ## A204421.P15167940704949816486

`A100286(A279891(n))`
-/

namespace A204421.P15167940704949816486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100286 (A279891 n).toNat

end

end A204421.P15167940704949816486

namespace A204421

/-- `A100286(A279891(n))` -/
def P15167940704949816486.Spec : Prop :=
  ∀ n, P15167940704949816486.a n = A204421 (n + 1)

end A204421

/-! ## A204421.P16542532011100417422

`A102283(A004489(n))+1`
-/

namespace A204421.P16542532011100417422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102283 (A004489 n).toNat + 1

end

end A204421.P16542532011100417422

namespace A204421

/-- `A102283(A004489(n))+1` -/
def P16542532011100417422.Spec : Prop :=
  ∀ n, P16542532011100417422.a n = A204421 (n + 1)

end A204421

/-! ## A204421.P6064113153566503115

`A080425(A111650(n+1))`
-/

namespace A204421.P6064113153566503115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080425 (A111650 (n + 1)).toNat

end

end A204421.P6064113153566503115

namespace A204421

/-- `A080425(A111650(n+1))` -/
def P6064113153566503115.Spec : Prop :=
  ∀ n, P6064113153566503115.a n = A204421 (n + 1)

end A204421

/-! ## A204421.P10634338389421107774

`A080425(A131507(n)+1)`
-/

namespace A204421.P10634338389421107774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080425 (A131507 n + 1).toNat

end

end A204421.P10634338389421107774

namespace A204421

/-- `A080425(A131507(n)+1)` -/
def P10634338389421107774.Spec : Prop :=
  ∀ n, P10634338389421107774.a n = A204421 (n + 1)

end A204421

/-! ## A204421.P4560467524358131560

`A131555(A131507(n)+1)`
-/

namespace A204421.P4560467524358131560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131555 (A131507 n + 1).toNat

end

end A204421.P4560467524358131560

namespace A204421

/-- `A131555(A131507(n)+1)` -/
def P4560467524358131560.Spec : Prop :=
  ∀ n, P4560467524358131560.a n = A204421 (n + 1)

end A204421

/-! ## A204421.P16248819381186022329

`A060571(A131507(n)+2)`
-/

namespace A204421.P16248819381186022329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060571 (A131507 n + 2).toNat

end

end A204421.P16248819381186022329

namespace A204421

/-- `A060571(A131507(n)+2)` -/
def P16248819381186022329.Spec : Prop :=
  ∀ n, P16248819381186022329.a n = A204421 (n + 1)

end A204421

/-! ## A204421.P10446696924641717124

`A080425(A253586(n)+2)`
-/

namespace A204421.P10446696924641717124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080425 (A253586 n + 2).toNat

end

end A204421.P10446696924641717124

namespace A204421

/-- `A080425(A253586(n)+2)` -/
def P10446696924641717124.Spec : Prop :=
  ∀ n, P10446696924641717124.a n = A204421 (n + 1)

end A204421

/-! ## A204421.P3767941923896971336

`A080425(A279891(n)+2)`
-/

namespace A204421.P3767941923896971336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080425 (A279891 n + 2).toNat

end

end A204421.P3767941923896971336

namespace A204421

/-- `A080425(A279891(n)+2)` -/
def P3767941923896971336.Spec : Prop :=
  ∀ n, P3767941923896971336.a n = A204421 (n + 1)

end A204421

/-! ## A204421.P3791868293652994429

`2-A116948(A057944(n))`
-/

namespace A204421.P3791868293652994429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A116948 (A057944 n).toNat

end

end A204421.P3791868293652994429

namespace A204421

/-- `2-A116948(A057944(n))` -/
def P3791868293652994429.Spec : Prop :=
  ∀ n, P3791868293652994429.a n = A204421 (n + 1)

end A204421

/-!
# A204422: Permanent of the n-th principal submatrix of A204269.

The programs for A204422, there is no canonical definition to state claims against.
-/

/-! ## A204422.P4634619518444129788

`A204546(n+1)+A204550(n+1)-A204548(n+1)`
-/

namespace A204422.P4634619518444129788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204546 (n + 1) + (A204550 (n + 1) - A204548 (n + 1))

end

end A204422.P4634619518444129788

/-! ## A204422.P15997569855270288333

`A050378(A294807(n))`
-/

namespace A204422.P15997569855270288333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050378 (A294807 n).toNat

end

end A204422.P15997569855270288333

/-! ## A204422.P9360426991487339315

`A035033(A240183(3*n+1)-∑[-(n*(-1)^n)])`
-/

namespace A204422.P9360426991487339315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((n : ℤ) * (-1) ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035033 (A240183 (3 * n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A204422.P9360426991487339315

/-! ## A204422.P13608980135503641204

`A071127(A117406(n)+A006318(n))`
-/

namespace A204422.P13608980135503641204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071127 (A117406 n + A006318 n).toNat

end

end A204422.P13608980135503641204

/-!
# A204423: Infinite matrix: f(i,j)=(2i+j mod 3), by antidiagonals.

The programs for A204423, the canonical program `A204423.P13069664451970027034` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A204423 has offset 1).

The definition of A204423 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A204423.P13454422907158946707

`(∑[char[∑[n]]]²+n-1)%3`
-/

namespace A204423.P13454422907158946707
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) + ((n : ℤ) - 1)) 3

end

end A204423.P13454422907158946707

namespace A204423

/-- `(∑[char[∑[n]]]²+n-1)%3` -/
def P13454422907158946707.Spec : Prop :=
  ∀ n, P13454422907158946707.a n = A204423 (n + 1)

end A204423

/-! ## A204423.P13069664451970027034

`dr(A051162(n)%3)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A204423

/-- `dr(A051162(n)%3)` -/
def P13069664451970027034.Spec : Prop :=
  ∀ n, (P13069664451970027034.a n : ℤ) = A204423 (n + 1)

theorem P13069664451970027034.correct : P13069664451970027034.Spec := by
  intro n
  simp only [A204423, Nat.add_sub_cancel]

end A204423

/-! ## A204423.P1352914711287898760

`floor(log(dr(A055236(n))))`
-/

namespace A204423.P1352914711287898760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (SequenceMachineLib.digitalRoot (A055236 n) : ℝ)⌋

end

end A204423.P1352914711287898760

namespace A204423

/-- `floor(log(dr(A055236(n))))` -/
def P1352914711287898760.Spec : Prop :=
  ∀ n, P1352914711287898760.a n = A204423 (n + 1)

end A204423

/-! ## A204423.P2598000668382543251

`A204259(n+1)-1`
-/

namespace A204423.P2598000668382543251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204259 (n + 1) - 1

end

end A204423.P2598000668382543251

namespace A204423

/-- `A204259(n+1)-1` -/
def P2598000668382543251.Spec : Prop :=
  ∀ n, P2598000668382543251.a n = A204423 (n + 1)

end A204423

/-! ## A204423.P6810126562456635368

`C(2, A204427(n+1)²)`
-/

namespace A204423.P6810126562456635368
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A204427 (n + 1) ^ 2).toNat

end

end A204423.P6810126562456635368

namespace A204423

/-- `C(2, A204427(n+1)²)` -/
def P6810126562456635368.Spec : Prop :=
  ∀ n, (P6810126562456635368.a n : ℤ) = A204423 (n + 1)

end A204423

/-! ## A204423.P14710216992473412814

`abs((A094727(n+1)-1)%3)`
-/

namespace A204423.P14710216992473412814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A094727 (n + 1) - 1) 3|

end

end A204423.P14710216992473412814

namespace A204423

/-- `abs((A094727(n+1)-1)%3)` -/
def P14710216992473412814.Spec : Prop :=
  ∀ n, P14710216992473412814.a n = A204423 (n + 1)

end A204423

/-! ## A204423.P9100202621903789346

`A010872(A051162(n))`
-/

namespace A204423.P9100202621903789346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (A051162 n).toNat

end

end A204423.P9100202621903789346

namespace A204423

/-- `A010872(A051162(n))` -/
def P9100202621903789346.Spec : Prop :=
  ∀ n, P9100202621903789346.a n = A204423 (n + 1)

end A204423

/-! ## A204423.P11396798352104594174

`A080425(A253587(n))`
-/

namespace A204423.P11396798352104594174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080425 (A253587 n).toNat

end

end A204423.P11396798352104594174

namespace A204423

/-- `A080425(A253587(n))` -/
def P11396798352104594174.Spec : Prop :=
  ∀ n, P11396798352104594174.a n = A204423 (n + 1)

end A204423

/-! ## A204423.P15945559890160010851

`A080425(A294317(n))`
-/

namespace A204423.P15945559890160010851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080425 (A294317 n).toNat

end

end A204423.P15945559890160010851

namespace A204423

/-- `A080425(A294317(n))` -/
def P15945559890160010851.Spec : Prop :=
  ∀ n, P15945559890160010851.a n = A204423 (n + 1)

end A204423

/-! ## A204423.P959146735614309064

`A060571(A131421(n+1))`
-/

namespace A204423.P959146735614309064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060571 (A131421 (n + 1)).toNat

end

end A204423.P959146735614309064

namespace A204423

/-- `A060571(A131421(n+1))` -/
def P959146735614309064.Spec : Prop :=
  ∀ n, P959146735614309064.a n = A204423 (n + 1)

end A204423

/-! ## A204423.P14079273352779427800

`A010872(2*A253587(n))`
-/

namespace A204423.P14079273352779427800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (2 * A253587 n).toNat

end

end A204423.P14079273352779427800

namespace A204423

/-- `A010872(2*A253587(n))` -/
def P14079273352779427800.Spec : Prop :=
  ∀ n, P14079273352779427800.a n = A204423 (n + 1)

end A204423

/-! ## A204423.P15784327253180819406

`A010872(A108872(n+1)+1)`
-/

namespace A204423.P15784327253180819406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (A108872 (n + 1) + 1).toNat

end

end A204423.P15784327253180819406

namespace A204423

/-- `A010872(A108872(n+1)+1)` -/
def P15784327253180819406.Spec : Prop :=
  ∀ n, P15784327253180819406.a n = A204423 (n + 1)

end A204423

/-! ## A204423.P6892515431250892127

`A010872(A094727(n+1)-1)`
-/

namespace A204423.P6892515431250892127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (A094727 (n + 1) - 1).toNat

end

end A204423.P6892515431250892127

namespace A204423

/-- `A010872(A094727(n+1)-1)` -/
def P6892515431250892127.Spec : Prop :=
  ∀ n, P6892515431250892127.a n = A204423 (n + 1)

end A204423

/-! ## A204423.P12237886000608962153

`A080425(A128076(n+1)-1)`
-/

namespace A204423.P12237886000608962153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080425 (A128076 (n + 1) - 1).toNat

end

end A204423.P12237886000608962153

namespace A204423

/-- `A080425(A128076(n+1)-1)` -/
def P12237886000608962153.Spec : Prop :=
  ∀ n, P12237886000608962153.a n = A204423 (n + 1)

end A204423

/-! ## A204423.P3370615204383701939

`A080425(A131421(n+1)-1)`
-/

namespace A204423.P3370615204383701939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080425 (A131421 (n + 1) - 1).toNat

end

end A204423.P3370615204383701939

namespace A204423

/-- `A080425(A131421(n+1)-1)` -/
def P3370615204383701939.Spec : Prop :=
  ∀ n, P3370615204383701939.a n = A204423 (n + 1)

end A204423

/-! ## A204423.P12624984803847903895

`2-A010872(A253587(n)+2)`
-/

namespace A204423.P12624984803847903895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A010872 (A253587 n + 2).toNat

end

end A204423.P12624984803847903895

namespace A204423

/-- `2-A010872(A253587(n)+2)` -/
def P12624984803847903895.Spec : Prop :=
  ∀ n, P12624984803847903895.a n = A204423 (n + 1)

end A204423

/-! ## A204423.P15984328801651132492

`A100286(2*(A051162(n)+2))`
-/

namespace A204423.P15984328801651132492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100286 (2 * (A051162 n + 2)).toNat

end

end A204423.P15984328801651132492

namespace A204423

/-- `A100286(2*(A051162(n)+2))` -/
def P15984328801651132492.Spec : Prop :=
  ∀ n, P15984328801651132492.a n = A204423 (n + 1)

end A204423

/-! ## A204423.P6547183170319581614

`A130784(2*A051162(n))-1`
-/

namespace A204423.P6547183170319581614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130784 (2 * A051162 n).toNat - 1

end

end A204423.P6547183170319581614

namespace A204423

/-- `A130784(2*A051162(n))-1` -/
def P6547183170319581614.Spec : Prop :=
  ∀ n, P6547183170319581614.a n = A204423 (n + 1)

end A204423

/-! ## A204423.P17908911560276640657

`A010882(2*A253587(n))-1`
-/

namespace A204423.P17908911560276640657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010882 (2 * A253587 n).toNat - 1

end

end A204423.P17908911560276640657

namespace A204423

/-- `A010882(2*A253587(n))-1` -/
def P17908911560276640657.Spec : Prop :=
  ∀ n, P17908911560276640657.a n = A204423 (n + 1)

end A204423

/-! ## A204423.P15860882183393166809

`A010882(2*A294317(n))-1`
-/

namespace A204423.P15860882183393166809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010882 (2 * A294317 n).toNat - 1

end

end A204423.P15860882183393166809

namespace A204423

/-- `A010882(2*A294317(n))-1` -/
def P15860882183393166809.Spec : Prop :=
  ∀ n, P15860882183393166809.a n = A204423 (n + 1)

end A204423

/-!
# A204424: Permanent of the n-th principal submatrix of A204423.

The programs for A204424, there is no canonical definition to state claims against.
-/

/-! ## A204424.P457747115169276328

`A204430(n+1)+A204434(n+1)-A179079(n+1)`
-/

namespace A204424.P457747115169276328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204430 (n + 1) + (A204434 (n + 1) - A179079 (n + 1))

end

end A204424.P457747115169276328

/-! ## A204424.P12235690653552863988

`A204265(n+1)+A204268(n+1)-A204432(n+1)`
-/

namespace A204424.P12235690653552863988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204265 (n + 1) + (A204268 (n + 1) - A204432 (n + 1))

end

end A204424.P12235690653552863988

/-! ## A204424.P15746490984529701187

`A204265(n+1)+A204434(n+1)-A204428(n+1)`
-/

namespace A204424.P15746490984529701187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204265 (n + 1) + (A204434 (n + 1) - A204428 (n + 1))

end

end A204424.P15746490984529701187

/-! ## A204424.P9843736747716979958

`A204268(n+1)+A204430(n+1)-A204426(n+1)`
-/

namespace A204424.P9843736747716979958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204268 (n + 1) + (A204430 (n + 1) - A204426 (n + 1))

end

end A204424.P9843736747716979958

/-!
# A204425: Infinite matrix: f(i,j)=(2i+j+1 mod 3), by antidiagonals.

The programs for A204425, the canonical program `A204425.P489075890536107836` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A204425 has offset 1).

The definition of A204425 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A204425.P16468577460165129699

`(∑[char[∑[n]]]²+n)%3`
-/

namespace A204425.P16468577460165129699
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 + n) % 3

end

end A204425.P16468577460165129699

namespace A204425

/-- `(∑[char[∑[n]]]²+n)%3` -/
def P16468577460165129699.Spec : Prop :=
  ∀ n, (P16468577460165129699.a n : ℤ) = A204425 (n + 1)

end A204425

/-! ## A204425.P489075890536107836

`C(2, A204423(n+1)²)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A204425

/-- `C(2, A204423(n+1)²)` -/
def P489075890536107836.Spec : Prop :=
  ∀ n, (P489075890536107836.a n : ℤ) = A204425 (n + 1)

theorem P489075890536107836.correct : P489075890536107836.Spec := by
  intro n
  simp only [A204425, Nat.add_sub_cancel]

end A204425

/-! ## A204425.P989421780215473677

`dr((A051162(n)+1)%3)`
-/

namespace A204425.P989421780215473677
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (Int.tmod (A051162 n + 1) 3)

end

end A204425.P989421780215473677

namespace A204425

/-- `dr((A051162(n)+1)%3)` -/
def P989421780215473677.Spec : Prop :=
  ∀ n, (P989421780215473677.a n : ℤ) = A204425 (n + 1)

end A204425

/-! ## A204425.P2193871409667063935

`dr(A094727(n+1)%3)`
-/

namespace A204425.P2193871409667063935
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (Int.tmod (A094727 (n + 1)) 3)

end

end A204425.P2193871409667063935

namespace A204425

/-- `dr(A094727(n+1)%3)` -/
def P2193871409667063935.Spec : Prop :=
  ∀ n, (P2193871409667063935.a n : ℤ) = A204425 (n + 1)

end A204425

/-! ## A204425.P11655227912070126874

`dr(A204259(n+1)%3)`
-/

namespace A204425.P11655227912070126874
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (Int.tmod (A204259 (n + 1)) 3)

end

end A204425.P11655227912070126874

namespace A204425

/-- `dr(A204259(n+1)%3)` -/
def P11655227912070126874.Spec : Prop :=
  ∀ n, (P11655227912070126874.a n : ℤ) = A204425 (n + 1)

end A204425

/-! ## A204425.P13629372267456118768

`2-A131421(n+1)%3`
-/

namespace A204425.P13629372267456118768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - Int.tmod (A131421 (n + 1)) 3

end

end A204425.P13629372267456118768

namespace A204425

/-- `2-A131421(n+1)%3` -/
def P13629372267456118768.Spec : Prop :=
  ∀ n, P13629372267456118768.a n = A204425 (n + 1)

end A204425

/-! ## A204425.P10184373008652291688

`2-A204257(n+1)%3`
-/

namespace A204425.P10184373008652291688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - Int.tmod (A204257 (n + 1)) 3

end

end A204425.P10184373008652291688

namespace A204425

/-- `2-A204257(n+1)%3` -/
def P10184373008652291688.Spec : Prop :=
  ∀ n, P10184373008652291688.a n = A204425 (n + 1)

end A204425

/-! ## A204425.P14224386913468978500

`A133873(A131432(n))`
-/

namespace A204425.P14224386913468978500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133873 (A131432 n).toNat

end

end A204425.P14224386913468978500

namespace A204425

/-- `A133873(A131432(n))` -/
def P14224386913468978500.Spec : Prop :=
  ∀ n, P14224386913468978500.a n = A204425 (n + 1)

end A204425

/-! ## A204425.P16961470694750262377

`A010872(A051162(n)+1)`
-/

namespace A204425.P16961470694750262377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (A051162 n + 1).toNat

end

end A204425.P16961470694750262377

namespace A204425

/-- `A010872(A051162(n)+1)` -/
def P16961470694750262377.Spec : Prop :=
  ∀ n, P16961470694750262377.a n = A204425 (n + 1)

end A204425

/-! ## A204425.P5920797817727361449

`A010872(A094727(n+1))`
-/

namespace A204425.P5920797817727361449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (A094727 (n + 1)).toNat

end

end A204425.P5920797817727361449

namespace A204425

/-- `A010872(A094727(n+1))` -/
def P5920797817727361449.Spec : Prop :=
  ∀ n, P5920797817727361449.a n = A204425 (n + 1)

end A204425

/-! ## A204425.P5524913508700048341

`A060572(A131421(n+1))`
-/

namespace A204425.P5524913508700048341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060572 (A131421 (n + 1)).toNat

end

end A204425.P5524913508700048341

namespace A204425

/-- `A060572(A131421(n+1))` -/
def P5524913508700048341.Spec : Prop :=
  ∀ n, P5524913508700048341.a n = A204425 (n + 1)

end A204425

/-! ## A204425.P17996067470292658927

`A080425(A253587(n)+2)`
-/

namespace A204425.P17996067470292658927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080425 (A253587 n + 2).toNat

end

end A204425.P17996067470292658927

namespace A204425

/-- `A080425(A253587(n)+2)` -/
def P17996067470292658927.Spec : Prop :=
  ∀ n, P17996067470292658927.a n = A204425 (n + 1)

end A204425

/-! ## A204425.P9465691513820218986

`A080425(A294317(n)+2)`
-/

namespace A204425.P9465691513820218986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080425 (A294317 n + 2).toNat

end

end A204425.P9465691513820218986

namespace A204425

/-- `A080425(A294317(n)+2)` -/
def P9465691513820218986.Spec : Prop :=
  ∀ n, P9465691513820218986.a n = A204425 (n + 1)

end A204425

/-! ## A204425.P13906986241179498842

`A100286(2*A051162(n))`
-/

namespace A204425.P13906986241179498842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100286 (2 * A051162 n).toNat

end

end A204425.P13906986241179498842

namespace A204425

/-- `A100286(2*A051162(n))` -/
def P13906986241179498842.Spec : Prop :=
  ∀ n, P13906986241179498842.a n = A204425 (n + 1)

end A204425

/-! ## A204425.P14263475372483610762

`A080425(A128076(n+1)+1)`
-/

namespace A204425.P14263475372483610762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080425 (A128076 (n + 1) + 1).toNat

end

end A204425.P14263475372483610762

namespace A204425

/-- `A080425(A128076(n+1)+1)` -/
def P14263475372483610762.Spec : Prop :=
  ∀ n, P14263475372483610762.a n = A204425 (n + 1)

end A204425

/-! ## A204425.P1701603725489402362

`A080425(A131421(n+1)+1)`
-/

namespace A204425.P1701603725489402362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080425 (A131421 (n + 1) + 1).toNat

end

end A204425.P1701603725489402362

namespace A204425

/-- `A080425(A131421(n+1)+1)` -/
def P1701603725489402362.Spec : Prop :=
  ∀ n, P1701603725489402362.a n = A204425 (n + 1)

end A204425

/-! ## A204425.P5760573756473105771

`A010882(A051162(n)+1)-1`
-/

namespace A204425.P5760573756473105771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010882 (A051162 n + 1).toNat - 1

end

end A204425.P5760573756473105771

namespace A204425

/-- `A010882(A051162(n)+1)-1` -/
def P5760573756473105771.Spec : Prop :=
  ∀ n, P5760573756473105771.a n = A204425 (n + 1)

end A204425

/-! ## A204425.P6342134488153079071

`A010872(A108872(n+1)-1)`
-/

namespace A204425.P6342134488153079071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (A108872 (n + 1) - 1).toNat

end

end A204425.P6342134488153079071

namespace A204425

/-- `A010872(A108872(n+1)-1)` -/
def P6342134488153079071.Spec : Prop :=
  ∀ n, P6342134488153079071.a n = A204425 (n + 1)

end A204425

/-! ## A204425.P4933316460797142403

`A060571(A131421(n+1)+2)`
-/

namespace A204425.P4933316460797142403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060571 (A131421 (n + 1) + 2).toNat

end

end A204425.P4933316460797142403

namespace A204425

/-- `A060571(A131421(n+1)+2)` -/
def P4933316460797142403.Spec : Prop :=
  ∀ n, P4933316460797142403.a n = A204425 (n + 1)

end A204425

/-! ## A204425.P7327574801940021820

`2-A010872(A253587(n)+1)`
-/

namespace A204425.P7327574801940021820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A010872 (A253587 n + 1).toNat

end

end A204425.P7327574801940021820

namespace A204425

/-- `2-A010872(A253587(n)+1)` -/
def P7327574801940021820.Spec : Prop :=
  ∀ n, P7327574801940021820.a n = A204425 (n + 1)

end A204425

/-!
# A204426: Permanent of the n-th principal submatrix of A204425.

The programs for A204426, there is no canonical definition to state claims against.
-/

/-! ## A204426.P153224531797507235

`A179079(n+1)+A204268(n+1)-A204434(n+1)`
-/

namespace A204426.P153224531797507235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179079 (n + 1) + (A204268 (n + 1) - A204434 (n + 1))

end

end A204426.P153224531797507235

/-! ## A204426.P6413921359700468082

`A179079(n+1)+A204432(n+1)-A204428(n+1)`
-/

namespace A204426.P6413921359700468082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179079 (n + 1) + (A204432 (n + 1) - A204428 (n + 1))

end

end A204426.P6413921359700468082

/-! ## A204426.P13144106955881838314

`A204268(n+1)+A204430(n+1)-A204424(n+1)`
-/

namespace A204426.P13144106955881838314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204268 (n + 1) + (A204430 (n + 1) - A204424 (n + 1))

end

end A204426.P13144106955881838314

/-! ## A204426.P9113429917415839570

`A204430(n+1)+A204432(n+1)-A204265(n+1)`
-/

namespace A204426.P9113429917415839570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204430 (n + 1) + (A204432 (n + 1) - A204265 (n + 1))

end

end A204426.P9113429917415839570

/-!
# A204427: Infinite matrix: f(i,j)=(2i+j+2 mod 3), read by antidiagonals.

The programs for A204427, the canonical program `A204427.P7701524078715562329` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A204427 has offset 1).

The definition of A204427 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A204427.P9743179449430356110

`(∑[char[∑[n]]]²+n+1)%3`
-/

namespace A204427.P9743179449430356110
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 + (n + 1)) % 3

end

end A204427.P9743179449430356110

namespace A204427

/-- `(∑[char[∑[n]]]²+n+1)%3` -/
def P9743179449430356110.Spec : Prop :=
  ∀ n, (P9743179449430356110.a n : ℤ) = A204427 (n + 1)

end A204427

/-! ## A204427.P7701524078715562329

`3-A204257(n+1)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A204427

/-- `3-A204257(n+1)` -/
def P7701524078715562329.Spec : Prop :=
  ∀ n, P7701524078715562329.a n = A204427 (n + 1)

theorem P7701524078715562329.correct : P7701524078715562329.Spec := by
  intro n
  simp only [A204427, Nat.add_sub_cancel]

end A204427

/-! ## A204427.P7189478227123179973

`2-A253587(n)%3`
-/

namespace A204427.P7189478227123179973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - Int.tmod (A253587 n) 3

end

end A204427.P7189478227123179973

namespace A204427

/-- `2-A253587(n)%3` -/
def P7189478227123179973.Spec : Prop :=
  ∀ n, P7189478227123179973.a n = A204427 (n + 1)

end A204427

/-! ## A204427.P7554799793319732562

`C(2, A204425(n+1)²)`
-/

namespace A204427.P7554799793319732562
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A204425 (n + 1) ^ 2).toNat

end

end A204427.P7554799793319732562

namespace A204427

/-- `C(2, A204425(n+1)²)` -/
def P7554799793319732562.Spec : Prop :=
  ∀ n, (P7554799793319732562.a n : ℤ) = A204427 (n + 1)

end A204427

/-! ## A204427.P4280002593242877456

`dr((2*A131421(n+1))%3)`
-/

namespace A204427.P4280002593242877456
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (Int.tmod (2 * A131421 (n + 1)) 3)

end

end A204427.P4280002593242877456

namespace A204427

/-- `dr((2*A131421(n+1))%3)` -/
def P4280002593242877456.Spec : Prop :=
  ∀ n, (P4280002593242877456.a n : ℤ) = A204427 (n + 1)

end A204427

/-! ## A204427.P15541506654294659808

`A010872(A108872(n+1))`
-/

namespace A204427.P15541506654294659808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (A108872 (n + 1)).toNat

end

end A204427.P15541506654294659808

namespace A204427

/-- `A010872(A108872(n+1))` -/
def P15541506654294659808.Spec : Prop :=
  ∀ n, P15541506654294659808.a n = A204427 (n + 1)

end A204427

/-! ## A204427.P15812734247486305928

`A080425(A128076(n+1))`
-/

namespace A204427.P15812734247486305928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080425 (A128076 (n + 1)).toNat

end

end A204427.P15812734247486305928

namespace A204427

/-- `A080425(A128076(n+1))` -/
def P15812734247486305928.Spec : Prop :=
  ∀ n, P15812734247486305928.a n = A204427 (n + 1)

end A204427

/-! ## A204427.P1881171291356650351

`A080425(A131421(n+1))`
-/

namespace A204427.P1881171291356650351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080425 (A131421 (n + 1)).toNat

end

end A204427.P1881171291356650351

namespace A204427

/-- `A080425(A131421(n+1))` -/
def P1881171291356650351.Spec : Prop :=
  ∀ n, P1881171291356650351.a n = A204427 (n + 1)

end A204427

/-! ## A204427.P1561844204382288514

`A080425(A253587(n)+1)`
-/

namespace A204427.P1561844204382288514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080425 (A253587 n + 1).toNat

end

end A204427.P1561844204382288514

namespace A204427

/-- `A080425(A253587(n)+1)` -/
def P1561844204382288514.Spec : Prop :=
  ∀ n, P1561844204382288514.a n = A204427 (n + 1)

end A204427

/-! ## A204427.P14161870049862560092

`A080425(A294317(n)+1)`
-/

namespace A204427.P14161870049862560092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080425 (A294317 n + 1).toNat

end

end A204427.P14161870049862560092

namespace A204427

/-- `A080425(A294317(n)+1)` -/
def P14161870049862560092.Spec : Prop :=
  ∀ n, P14161870049862560092.a n = A204427 (n + 1)

end A204427

/-! ## A204427.P2648505872659605159

`A010872(A051162(n)+2)`
-/

namespace A204427.P2648505872659605159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (A051162 n + 2).toNat

end

end A204427.P2648505872659605159

namespace A204427

/-- `A010872(A051162(n)+2)` -/
def P2648505872659605159.Spec : Prop :=
  ∀ n, P2648505872659605159.a n = A204427 (n + 1)

end A204427

/-! ## A204427.P1830957470380047270

`A133873(A131432(n)+2)`
-/

namespace A204427.P1830957470380047270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133873 (A131432 n + 2).toNat

end

end A204427.P1830957470380047270

namespace A204427

/-- `A133873(A131432(n)+2)` -/
def P1830957470380047270.Spec : Prop :=
  ∀ n, P1830957470380047270.a n = A204427 (n + 1)

end A204427

/-! ## A204427.P5098263512058502503

`A010872(A094727(n+1)+1)`
-/

namespace A204427.P5098263512058502503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (A094727 (n + 1) + 1).toNat

end

end A204427.P5098263512058502503

namespace A204427

/-- `A010872(A094727(n+1)+1)` -/
def P5098263512058502503.Spec : Prop :=
  ∀ n, P5098263512058502503.a n = A204427 (n + 1)

end A204427

/-! ## A204427.P4651262582268246555

`A060572(A131421(n+1)+2)`
-/

namespace A204427.P4651262582268246555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060572 (A131421 (n + 1) + 2).toNat

end

end A204427.P4651262582268246555

namespace A204427

/-- `A060572(A131421(n+1)+2)` -/
def P4651262582268246555.Spec : Prop :=
  ∀ n, P4651262582268246555.a n = A204427 (n + 1)

end A204427

/-! ## A204427.P14296504411569168171

`A130784(A253587(n)+1)-1`
-/

namespace A204427.P14296504411569168171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130784 (A253587 n + 1).toNat - 1

end

end A204427.P14296504411569168171

namespace A204427

/-- `A130784(A253587(n)+1)-1` -/
def P14296504411569168171.Spec : Prop :=
  ∀ n, P14296504411569168171.a n = A204427 (n + 1)

end A204427

/-! ## A204427.P17527964460012036336

`A130784(A294317(n)+1)-1`
-/

namespace A204427.P17527964460012036336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130784 (A294317 n + 1).toNat - 1

end

end A204427.P17527964460012036336

namespace A204427

/-- `A130784(A294317(n)+1)-1` -/
def P17527964460012036336.Spec : Prop :=
  ∀ n, P17527964460012036336.a n = A204427 (n + 1)

end A204427

/-! ## A204427.P1378207735382482199

`A010882(A051162(n)+2)-1`
-/

namespace A204427.P1378207735382482199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010882 (A051162 n + 2).toNat - 1

end

end A204427.P1378207735382482199

namespace A204427

/-- `A010882(A051162(n)+2)-1` -/
def P1378207735382482199.Spec : Prop :=
  ∀ n, P1378207735382482199.a n = A204427 (n + 1)

end A204427

/-! ## A204427.P15165637566609102432

`A100286(2*(A051162(n)+1))`
-/

namespace A204427.P15165637566609102432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100286 (2 * (A051162 n + 1)).toNat

end

end A204427.P15165637566609102432

namespace A204427

/-- `A100286(2*(A051162(n)+1))` -/
def P15165637566609102432.Spec : Prop :=
  ∀ n, P15165637566609102432.a n = A204427 (n + 1)

end A204427

/-! ## A204427.P4767534080548155759

`A010872(2*(A253587(n)+1))`
-/

namespace A204427.P4767534080548155759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (2 * (A253587 n + 1)).toNat

end

end A204427.P4767534080548155759

namespace A204427

/-- `A010872(2*(A253587(n)+1))` -/
def P4767534080548155759.Spec : Prop :=
  ∀ n, P4767534080548155759.a n = A204427 (n + 1)

end A204427

/-! ## A204427.P16383895934604150516

`2-A010872(2*A051162(n))`
-/

namespace A204427.P16383895934604150516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A010872 (2 * A051162 n).toNat

end

end A204427.P16383895934604150516

namespace A204427

/-- `2-A010872(2*A051162(n))` -/
def P16383895934604150516.Spec : Prop :=
  ∀ n, P16383895934604150516.a n = A204427 (n + 1)

end A204427

/-!
# A204428: Permanent of the n-th principal submatrix of A204427.

The programs for A204428, there is no canonical definition to state claims against.
-/

/-! ## A204428.P14229702484691271458

`A179079(n+1)+A204265(n+1)-A204430(n+1)`
-/

namespace A204428.P14229702484691271458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179079 (n + 1) + (A204265 (n + 1) - A204430 (n + 1))

end

end A204428.P14229702484691271458

/-! ## A204428.P3225868544680648000

`A179079(n+1)+A204432(n+1)-A204426(n+1)`
-/

namespace A204428.P3225868544680648000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179079 (n + 1) + (A204432 (n + 1) - A204426 (n + 1))

end

end A204428.P3225868544680648000

/-! ## A204428.P6615875068725924733

`A204265(n+1)+A204434(n+1)-A204424(n+1)`
-/

namespace A204428.P6615875068725924733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204265 (n + 1) + (A204434 (n + 1) - A204424 (n + 1))

end

end A204428.P6615875068725924733

/-! ## A204428.P15273927466226850147

`A204432(n+1)+A204434(n+1)-A204268(n+1)`
-/

namespace A204428.P15273927466226850147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204432 (n + 1) + (A204434 (n + 1) - A204268 (n + 1))

end

end A204428.P15273927466226850147

/-!
# A204429: Symmetric matrix: f(i,j)=(2*i + 2*j) mod 3, by antidiagonals.

The programs for A204429, the canonical program `A204429.P1450093185621297544` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A204429 has offset 1).

The definition of A204429 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A204429.P814799654985365999

`2-∑[char[∑[n]]]%3`
-/

namespace A204429.P814799654985365999
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (((∑ j ∈ Finset.range (n + 1), f1 j) % 3 : ℕ) : ℤ)

end

end A204429.P814799654985365999

namespace A204429

/-- `2-∑[char[∑[n]]]%3` -/
def P814799654985365999.Spec : Prop :=
  ∀ n, P814799654985365999.a n = A204429 (n + 1)

end A204429

/-! ## A204429.P11585471645090767867

`(2*(comp[∑[n]]-n))%3`
-/

namespace A204429.P11585471645090767867
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ))) 3

end

end A204429.P11585471645090767867

namespace A204429

/-- `(2*(comp[∑[n]]-n))%3` -/
def P11585471645090767867.Spec : Prop :=
  ∀ n, P11585471645090767867.a n = A204429 (n + 1)

end A204429

/-! ## A204429.P4817160526868584356

`(n+1-comp[∑[n]])%3+2`
-/

namespace A204429.P4817160526868584356
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n + 1 : ℤ) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)) 3 + 2

end

end A204429.P4817160526868584356

namespace A204429

/-- `(n+1-comp[∑[n]])%3+2` -/
def P4817160526868584356.Spec : Prop :=
  ∀ n, P4817160526868584356.a n = A204429 (n + 1)

end A204429

/-! ## A204429.P1450093185621297544

`2-A204421(n+1)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A204429

/-- `2-A204421(n+1)` -/
def P1450093185621297544.Spec : Prop :=
  ∀ n, P1450093185621297544.a n = A204429 (n + 1)

theorem P1450093185621297544.correct : P1450093185621297544.Spec := by
  intro n
  simp only [A204429, Nat.add_sub_cancel]

end A204429

/-! ## A204429.P12977810519681216905

`C(2, A204433(n+1)²)`
-/

namespace A204429.P12977810519681216905
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A204433 (n + 1) ^ 2).toNat

end

end A204429.P12977810519681216905

namespace A204429

/-- `C(2, A204433(n+1)²)` -/
def P12977810519681216905.Spec : Prop :=
  ∀ n, (P12977810519681216905.a n : ℤ) = A204429 (n + 1)

end A204429

/-! ## A204429.P3197275578759734125

`dr(A204154(n+1)%3)`
-/

namespace A204429.P3197275578759734125
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (Int.tmod (A204154 (n + 1)) 3)

end

end A204429.P3197275578759734125

namespace A204429

/-- `dr(A204154(n+1)%3)` -/
def P3197275578759734125.Spec : Prop :=
  ∀ n, (P3197275578759734125.a n : ℤ) = A204429 (n + 1)

end A204429

/-! ## A204429.P18166630459682815261

`A057078(∑[char[∑[n]]])+1`
-/

namespace A204429.P18166630459682815261
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057078 (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A204429.P18166630459682815261

namespace A204429

/-- `A057078(∑[char[∑[n]]])+1` -/
def P18166630459682815261.Spec : Prop :=
  ∀ n, P18166630459682815261.a n = A204429 (n + 1)

end A204429

/-! ## A204429.P4423359876086169021

`2-A010872(∑[char[∑[n]]])`
-/

namespace A204429.P4423359876086169021
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A010872 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A204429.P4423359876086169021

namespace A204429

/-- `2-A010872(∑[char[∑[n]]])` -/
def P4423359876086169021.Spec : Prop :=
  ∀ n, P4423359876086169021.a n = A204429 (n + 1)

end A204429

/-! ## A204429.P4727706857875214654

`abs(A002024(n+1)%3-2)`
-/

namespace A204429.P4727706857875214654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A002024 (n + 1)) 3 - 2|

end

end A204429.P4727706857875214654

namespace A204429

/-- `abs(A002024(n+1)%3-2)` -/
def P4727706857875214654.Spec : Prop :=
  ∀ n, P4727706857875214654.a n = A204429 (n + 1)

end A204429

/-! ## A204429.P16185914610153919090

`C(2, (2-A204263(n+1))²)`
-/

namespace A204429.P16185914610153919090
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 ((2 - A204263 (n + 1)) ^ 2).toNat

end

end A204429.P16185914610153919090

namespace A204429

/-- `C(2, (2-A204263(n+1))²)` -/
def P16185914610153919090.Spec : Prop :=
  ∀ n, (P16185914610153919090.a n : ℤ) = A204429 (n + 1)

end A204429

/-! ## A204429.P10069848103703470103

`A010872(A131507(n))`
-/

namespace A204429.P10069848103703470103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (A131507 n).toNat

end

end A204429.P10069848103703470103

namespace A204429

/-- `A010872(A131507(n))` -/
def P10069848103703470103.Spec : Prop :=
  ∀ n, P10069848103703470103.a n = A204429 (n + 1)

end A204429

/-! ## A204429.P19081479293514413

`A116948(A057944(n))`
-/

namespace A204429.P19081479293514413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116948 (A057944 n).toNat

end

end A204429.P19081479293514413

namespace A204429

/-- `A116948(A057944(n))` -/
def P19081479293514413.Spec : Prop :=
  ∀ n, P19081479293514413.a n = A204429 (n + 1)

end A204429

/-! ## A204429.P16187459105373653801

`A010872(A204154(n+1))`
-/

namespace A204429.P16187459105373653801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (A204154 (n + 1)).toNat

end

end A204429.P16187459105373653801

namespace A204429

/-- `A010872(A204154(n+1))` -/
def P16187459105373653801.Spec : Prop :=
  ∀ n, P16187459105373653801.a n = A204429 (n + 1)

end A204429

/-! ## A204429.P15505970460134538630

`A010872(A253586(n)+1)`
-/

namespace A204429.P15505970460134538630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (A253586 n + 1).toNat

end

end A204429.P15505970460134538630

namespace A204429

/-- `A010872(A253586(n)+1)` -/
def P15505970460134538630.Spec : Prop :=
  ∀ n, P15505970460134538630.a n = A204429 (n + 1)

end A204429

/-! ## A204429.P11540735118324142361

`A010872(A279891(n)+1)`
-/

namespace A204429.P11540735118324142361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (A279891 n + 1).toNat

end

end A204429.P11540735118324142361

namespace A204429

/-- `A010872(A279891(n)+1)` -/
def P11540735118324142361.Spec : Prop :=
  ∀ n, P11540735118324142361.a n = A204429 (n + 1)

end A204429

/-! ## A204429.P4908818176559533924

`A100286(A279891(n)+1)`
-/

namespace A204429.P4908818176559533924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100286 (A279891 n + 1).toNat

end

end A204429.P4908818176559533924

namespace A204429

/-- `A100286(A279891(n)+1)` -/
def P4908818176559533924.Spec : Prop :=
  ∀ n, P4908818176559533924.a n = A204429 (n + 1)

end A204429

/-! ## A204429.P12161475819878651657

`A080425(A003057(n+2))`
-/

namespace A204429.P12161475819878651657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080425 (A003057 (n + 2)).toNat

end

end A204429.P12161475819878651657

namespace A204429

/-- `A080425(A003057(n+2))` -/
def P12161475819878651657.Spec : Prop :=
  ∀ n, P12161475819878651657.a n = A204429 (n + 1)

end A204429

/-! ## A204429.P15214875415008586378

`A080425(A003056(n)+2)`
-/

namespace A204429.P15214875415008586378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080425 (A003056 n + 2).toNat

end

end A204429.P15214875415008586378

namespace A204429

/-- `A080425(A003056(n)+2)` -/
def P15214875415008586378.Spec : Prop :=
  ∀ n, P15214875415008586378.a n = A204429 (n + 1)

end A204429

/-! ## A204429.P4977425837289019064

`A080425(A004489(n)+2)`
-/

namespace A204429.P4977425837289019064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080425 (A004489 n + 2).toNat

end

end A204429.P4977425837289019064

namespace A204429

/-- `A080425(A004489(n)+2)` -/
def P4977425837289019064.Spec : Prop :=
  ∀ n, P4977425837289019064.a n = A204429 (n + 1)

end A204429

/-! ## A204429.P13669962568135672570

`A131026(A131507(n)+2)`
-/

namespace A204429.P13669962568135672570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131026 (A131507 n + 2).toNat

end

end A204429.P13669962568135672570

namespace A204429

/-- `A131026(A131507(n)+2)` -/
def P13669962568135672570.Spec : Prop :=
  ∀ n, P13669962568135672570.a n = A204429 (n + 1)

end A204429

/-!
# A204430: Permanent of the n-th principal submatrix of A204429.

The programs for A204430, there is no canonical definition to state claims against.
-/

/-! ## A204430.P15877421705998626623

`A179079(n+1)+A204265(n+1)-A204428(n+1)`
-/

namespace A204430.P15877421705998626623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179079 (n + 1) + (A204265 (n + 1) - A204428 (n + 1))

end

end A204430.P15877421705998626623

/-! ## A204430.P3756502095834843661

`A179079(n+1)+A204424(n+1)-A204434(n+1)`
-/

namespace A204430.P3756502095834843661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179079 (n + 1) + (A204424 (n + 1) - A204434 (n + 1))

end

end A204430.P3756502095834843661

/-! ## A204430.P17499371557226382236

`A204265(n+1)+A204426(n+1)-A204432(n+1)`
-/

namespace A204430.P17499371557226382236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204265 (n + 1) + (A204426 (n + 1) - A204432 (n + 1))

end

end A204430.P17499371557226382236

/-! ## A204430.P14060333421284814512

`A204424(n+1)+A204426(n+1)-A204268(n+1)`
-/

namespace A204430.P14060333421284814512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204424 (n + 1) + (A204426 (n + 1) - A204268 (n + 1))

end

end A204430.P14060333421284814512

/-!
# A204431: Symmetric matrix: f(i,j)=(2*(i+j)+1 mod 3), by antidiagonals.

The programs for A204431, the canonical program `A204431.P11334915160070456647` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A204431 has offset 1).

The definition of A204431 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A204431.P17482453998572042310

`∑[2*char[∑[n]]]%3`
-/

namespace A204431.P17482453998572042310
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (if ∃ j, f2 j = n then 1 else 0)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) % 3

end

end A204431.P17482453998572042310

namespace A204431

/-- `∑[2*char[∑[n]]]%3` -/
def P17482453998572042310.Spec : Prop :=
  ∀ n, (P17482453998572042310.a n : ℤ) = A204431 (n + 1)

end A204431

/-! ## A204431.P9937982665431111476

`2-∑[char[∑[n+1]]]%3`
-/

namespace A204431.P9937982665431111476
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (((∑ j ∈ Finset.range (n + 1), f1 j) % 3 : ℕ) : ℤ)

end

end A204431.P9937982665431111476

namespace A204431

/-- `2-∑[char[∑[n+1]]]%3` -/
def P9937982665431111476.Spec : Prop :=
  ∀ n, P9937982665431111476.a n = A204431 (n + 1)

end A204431

/-! ## A204431.P15354568443838853260

`2-abs((∑[char[∑[n]]]-1)%3)`
-/

namespace A204431.P15354568443838853260
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - |Int.tmod (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1) 3|

end

end A204431.P15354568443838853260

namespace A204431

/-- `2-abs((∑[char[∑[n]]]-1)%3)` -/
def P15354568443838853260.Spec : Prop :=
  ∀ n, P15354568443838853260.a n = A204431 (n + 1)

end A204431

/-! ## A204431.P14761687811783436540

`A080425(∑[char[∑[n]]])`
-/

namespace A204431.P14761687811783436540
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080425 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A204431.P14761687811783436540

namespace A204431

/-- `A080425(∑[char[∑[n]]])` -/
def P14761687811783436540.Spec : Prop :=
  ∀ n, P14761687811783436540.a n = A204431 (n + 1)

end A204431

/-! ## A204431.P11334915160070456647

`2-A204267(n+1)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A204431

/-- `2-A204267(n+1)` -/
def P11334915160070456647.Spec : Prop :=
  ∀ n, P11334915160070456647.a n = A204431 (n + 1)

theorem P11334915160070456647.correct : P11334915160070456647.Spec := by
  intro n
  simp only [A204431, Nat.add_sub_cancel]

end A204431

/-! ## A204431.P14828354643437767447

`A010872(∑[2*char[∑[n]]])`
-/

namespace A204431.P14828354643437767447
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (if ∃ j, f2 j = n then 1 else 0)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A204431.P14828354643437767447

namespace A204431

/-- `A010872(∑[2*char[∑[n]]])` -/
def P14828354643437767447.Spec : Prop :=
  ∀ n, P14828354643437767447.a n = A204431 (n + 1)

end A204431

/-! ## A204431.P11961182560295120284

`abs(∑[2*A010816(n)]%3)`
-/

namespace A204431.P11961182560295120284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A010816 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 3|

end

end A204431.P11961182560295120284

namespace A204431

/-- `abs(∑[2*A010816(n)]%3)` -/
def P11961182560295120284.Spec : Prop :=
  ∀ n, P11961182560295120284.a n = A204431 (n + 1)

end A204431

/-! ## A204431.P8893437399515177095

`2-C(2, A204263(n+1)²)`
-/

namespace A204431.P8893437399515177095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (Nat.choose 2 (A204263 (n + 1) ^ 2).toNat : ℤ)

end

end A204431.P8893437399515177095

namespace A204431

/-- `2-C(2, A204263(n+1)²)` -/
def P8893437399515177095.Spec : Prop :=
  ∀ n, P8893437399515177095.a n = A204431 (n + 1)

end A204431

/-! ## A204431.P14106759489374192403

`C(2, (2-A204421(n+1))²)`
-/

namespace A204431.P14106759489374192403
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 ((2 - A204421 (n + 1)) ^ 2).toNat

end

end A204431.P14106759489374192403

namespace A204431

/-- `C(2, (2-A204421(n+1))²)` -/
def P14106759489374192403.Spec : Prop :=
  ∀ n, (P14106759489374192403.a n : ℤ) = A204431 (n + 1)

end A204431

/-! ## A204431.P10499099338890530404

`2-A010872(∑[char[∑[n+1]]])`
-/

namespace A204431.P10499099338890530404
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A010872 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A204431.P10499099338890530404

namespace A204431

/-- `2-A010872(∑[char[∑[n+1]]])` -/
def P10499099338890530404.Spec : Prop :=
  ∀ n, P10499099338890530404.a n = A204431 (n + 1)

end A204431

/-! ## A204431.P17293573736552645931

`A131026(A131507(n))`
-/

namespace A204431.P17293573736552645931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131026 (A131507 n).toNat

end

end A204431.P17293573736552645931

namespace A204431

/-- `A131026(A131507(n))` -/
def P17293573736552645931.Spec : Prop :=
  ∀ n, P17293573736552645931.a n = A204431 (n + 1)

end A204431

/-! ## A204431.P16954959966069926887

`A060588(A111652(n+1))`
-/

namespace A204431.P16954959966069926887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060588 (A111652 (n + 1)).toNat

end

end A204431.P16954959966069926887

namespace A204431

/-- `A060588(A111652(n+1))` -/
def P16954959966069926887.Spec : Prop :=
  ∀ n, P16954959966069926887.a n = A204431 (n + 1)

end A204431

/-! ## A204431.P4168262006664959711

`A078979(A131507(n)+2)`
-/

namespace A204431.P4168262006664959711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078979 (A131507 n + 2).toNat

end

end A204431.P4168262006664959711

namespace A204431

/-- `A078979(A131507(n)+2)` -/
def P4168262006664959711.Spec : Prop :=
  ∀ n, P4168262006664959711.a n = A204431 (n + 1)

end A204431

/-! ## A204431.P15914799976528956991

`A060572(2*A131507(n))`
-/

namespace A204431.P15914799976528956991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060572 (2 * A131507 n).toNat

end

end A204431.P15914799976528956991

namespace A204431

/-- `A060572(2*A131507(n))` -/
def P15914799976528956991.Spec : Prop :=
  ∀ n, P15914799976528956991.a n = A204431 (n + 1)

end A204431

/-! ## A204431.P11639614779676212762

`1-A102283(A004489(n)+2)`
-/

namespace A204431.P11639614779676212762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A102283 (A004489 n + 2).toNat

end

end A204431.P11639614779676212762

namespace A204431

/-- `1-A102283(A004489(n)+2)` -/
def P11639614779676212762.Spec : Prop :=
  ∀ n, P11639614779676212762.a n = A204431 (n + 1)

end A204431

/-! ## A204431.P10890711596003535700

`2-A080425(A131507(n)-1)`
-/

namespace A204431.P10890711596003535700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A080425 (A131507 n - 1).toNat

end

end A204431.P10890711596003535700

namespace A204431

/-- `2-A080425(A131507(n)-1)` -/
def P10890711596003535700.Spec : Prop :=
  ∀ n, P10890711596003535700.a n = A204431 (n + 1)

end A204431

/-! ## A204431.P17780412659176767699

`A131555(2*(A131507(n)+1))`
-/

namespace A204431.P17780412659176767699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131555 (2 * (A131507 n + 1)).toNat

end

end A204431.P17780412659176767699

namespace A204431

/-- `A131555(2*(A131507(n)+1))` -/
def P17780412659176767699.Spec : Prop :=
  ∀ n, P17780412659176767699.a n = A204431 (n + 1)

end A204431

/-! ## A204431.P11531110925960928816

`2-A131555(A131507(n)-1)`
-/

namespace A204431.P11531110925960928816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A131555 (A131507 n - 1).toNat

end

end A204431.P11531110925960928816

namespace A204431

/-- `2-A131555(A131507(n)-1)` -/
def P11531110925960928816.Spec : Prop :=
  ∀ n, P11531110925960928816.a n = A204431 (n + 1)

end A204431

/-! ## A204431.P8497566806167906812

`2-A080425(2*A003056(n))`
-/

namespace A204431.P8497566806167906812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A080425 (2 * A003056 n).toNat

end

end A204431.P8497566806167906812

namespace A204431

/-- `2-A080425(2*A003056(n))` -/
def P8497566806167906812.Spec : Prop :=
  ∀ n, P8497566806167906812.a n = A204431 (n + 1)

end A204431

/-! ## A204431.P3236314673253811192

`2-A080425(2*A004489(n))`
-/

namespace A204431.P3236314673253811192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A080425 (2 * A004489 n).toNat

end

end A204431.P3236314673253811192

namespace A204431

/-- `2-A080425(2*A004489(n))` -/
def P3236314673253811192.Spec : Prop :=
  ∀ n, P3236314673253811192.a n = A204431 (n + 1)

end A204431

/-!
# A204432: Permanent of the n-th principal submatrix of A204431.

The programs for A204432, there is no canonical definition to state claims against.
-/

/-! ## A204432.P10337263368020160761

`A204426(n+1)+A204428(n+1)-A179079(n+1)`
-/

namespace A204432.P10337263368020160761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204426 (n + 1) + (A204428 (n + 1) - A179079 (n + 1))

end

end A204432.P10337263368020160761

/-! ## A204432.P10283999215969285570

`A204265(n+1)+A204268(n+1)-A204424(n+1)`
-/

namespace A204432.P10283999215969285570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204265 (n + 1) + (A204268 (n + 1) - A204424 (n + 1))

end

end A204432.P10283999215969285570

/-! ## A204432.P2250334140928426211

`A204265(n+1)+A204426(n+1)-A204430(n+1)`
-/

namespace A204432.P2250334140928426211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204265 (n + 1) + (A204426 (n + 1) - A204430 (n + 1))

end

end A204432.P2250334140928426211

/-! ## A204432.P11083137589626511987

`A204268(n+1)+A204428(n+1)-A204434(n+1)`
-/

namespace A204432.P11083137589626511987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204268 (n + 1) + (A204428 (n + 1) - A204434 (n + 1))

end

end A204432.P11083137589626511987

/-!
# A204433: Symmetric matrix: f(i,j) = (2*i + 2*j + 2) mod 3, by antidiagonals.

The programs for A204433, the canonical program `A204433.P16829346633461525554` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A204433 has offset 1).

The definition of A204433 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A204433.P2271378124571345501

`(n-comp[∑[n]])%3+2`
-/

namespace A204433.P2271378124571345501
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)) 3 + 2

end

end A204433.P2271378124571345501

namespace A204433

/-- `(n-comp[∑[n]])%3+2` -/
def P2271378124571345501.Spec : Prop :=
  ∀ n, P2271378124571345501.a n = A204433 (n + 1)

end A204433

/-! ## A204433.P16433906533404150549

`2-(comp[∑[n]]-n)%3`
-/

namespace A204433.P16433906533404150549
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - Int.tmod ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)) 3

end

end A204433.P16433906533404150549

namespace A204433

/-- `2-(comp[∑[n]]-n)%3` -/
def P16433906533404150549.Spec : Prop :=
  ∀ n, P16433906533404150549.a n = A204433 (n + 1)

end A204433

/-! ## A204433.P7745248975848530136

`∑[2*char[∑[n+1]]]%3`
-/

namespace A204433.P7745248975848530136
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (if ∃ j, f2 j = n then 1 else 0)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) % 3

end

end A204433.P7745248975848530136

namespace A204433

/-- `∑[2*char[∑[n+1]]]%3` -/
def P7745248975848530136.Spec : Prop :=
  ∀ n, (P7745248975848530136.a n : ℤ) = A204433 (n + 1)

end A204433

/-! ## A204433.P7497195306877367798

`abs(2-(∑[char[∑[n]]]+1)%3)`
-/

namespace A204433.P7497195306877367798
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - (((∑ j ∈ Finset.range (n + 1), f1 j + 1) % 3 : ℕ) : ℤ)|

end

end A204433.P7497195306877367798

namespace A204433

/-- `abs(2-(∑[char[∑[n]]]+1)%3)` -/
def P7497195306877367798.Spec : Prop :=
  ∀ n, P7497195306877367798.a n = A204433 (n + 1)

end A204433

/-! ## A204433.P16829346633461525554

`1-∑[A089812(n)]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A204433

/-- `1-∑[A089812(n)]` -/
def P16829346633461525554.Spec : Prop :=
  ∀ n, P16829346633461525554.a n = A204433 (n + 1)

theorem P16829346633461525554.correct : P16829346633461525554.Spec := by
  intro n
  simp only [A204433, Nat.add_sub_cancel]

end A204433

/-! ## A204433.P5510114861999644394

`dr(A253586(n)%3)`
-/

namespace A204433.P5510114861999644394
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (Int.tmod (A253586 n) 3)

end

end A204433.P5510114861999644394

namespace A204433

/-- `dr(A253586(n)%3)` -/
def P5510114861999644394.Spec : Prop :=
  ∀ n, (P5510114861999644394.a n : ℤ) = A204433 (n + 1)

end A204433

/-! ## A204433.P14666991298451739559

`2-A204263(n+1)`
-/

namespace A204433.P14666991298451739559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A204263 (n + 1)

end

end A204433.P14666991298451739559

namespace A204433

/-- `2-A204263(n+1)` -/
def P14666991298451739559.Spec : Prop :=
  ∀ n, P14666991298451739559.a n = A204433 (n + 1)

end A204433

/-! ## A204433.P5333702086480021464

`3-A204253(n+1)`
-/

namespace A204433.P5333702086480021464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A204253 (n + 1)

end

end A204433.P5333702086480021464

namespace A204433

/-- `3-A204253(n+1)` -/
def P5333702086480021464.Spec : Prop :=
  ∀ n, P5333702086480021464.a n = A204433 (n + 1)

end A204433

/-! ## A204433.P9016241713962644438

`C(2, A204431(n+1)²)`
-/

namespace A204433.P9016241713962644438
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A204431 (n + 1) ^ 2).toNat

end

end A204433.P9016241713962644438

namespace A204433

/-- `C(2, A204431(n+1)²)` -/
def P9016241713962644438.Spec : Prop :=
  ∀ n, (P9016241713962644438.a n : ℤ) = A204433 (n + 1)

end A204433

/-! ## A204433.P199859368279598598

`2-C(2, A204421(n+1)²)`
-/

namespace A204433.P199859368279598598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (Nat.choose 2 (A204421 (n + 1) ^ 2).toNat : ℤ)

end

end A204433.P199859368279598598

namespace A204433

/-- `2-C(2, A204421(n+1)²)` -/
def P199859368279598598.Spec : Prop :=
  ∀ n, P199859368279598598.a n = A204433 (n + 1)

end A204433

/-! ## A204433.P3912328891083642921

`2-dr(A003057(n+2)%3)`
-/

namespace A204433.P3912328891083642921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (SequenceMachineLib.digitalRoot (Int.tmod (A003057 (n + 2)) 3) : ℤ)

end

end A204433.P3912328891083642921

namespace A204433

/-- `2-dr(A003057(n+2)%3)` -/
def P3912328891083642921.Spec : Prop :=
  ∀ n, P3912328891083642921.a n = A204433 (n + 1)

end A204433

/-! ## A204433.P10687382736103218644

`A010872(2*∑[char[∑[n+1]]])`
-/

namespace A204433.P10687382736103218644
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (2 * (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A204433.P10687382736103218644

namespace A204433

/-- `A010872(2*∑[char[∑[n+1]]])` -/
def P10687382736103218644.Spec : Prop :=
  ∀ n, P10687382736103218644.a n = A204433 (n + 1)

end A204433

/-! ## A204433.P14510123918044549487

`A080425(A003056(n))`
-/

namespace A204433.P14510123918044549487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080425 (A003056 n).toNat

end

end A204433.P14510123918044549487

namespace A204433

/-- `A080425(A003056(n))` -/
def P14510123918044549487.Spec : Prop :=
  ∀ n, P14510123918044549487.a n = A204433 (n + 1)

end A204433

/-! ## A204433.P3837104610978483160

`A080425(A004489(n))`
-/

namespace A204433.P3837104610978483160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080425 (A004489 n).toNat

end

end A204433.P3837104610978483160

namespace A204433

/-- `A080425(A004489(n))` -/
def P3837104610978483160.Spec : Prop :=
  ∀ n, P3837104610978483160.a n = A204433 (n + 1)

end A204433

/-! ## A204433.P1083471970376216737

`A078979(A131507(n))`
-/

namespace A204433.P1083471970376216737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078979 (A131507 n).toNat

end

end A204433.P1083471970376216737

namespace A204433

/-- `A078979(A131507(n))` -/
def P1083471970376216737.Spec : Prop :=
  ∀ n, P1083471970376216737.a n = A204433 (n + 1)

end A204433

/-! ## A204433.P8175370102835866162

`A080425(A133196(n+1))`
-/

namespace A204433.P8175370102835866162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080425 (A133196 (n + 1)).toNat

end

end A204433.P8175370102835866162

namespace A204433

/-- `A080425(A133196(n+1))` -/
def P8175370102835866162.Spec : Prop :=
  ∀ n, P8175370102835866162.a n = A204433 (n + 1)

end A204433

/-! ## A204433.P12402732560887080467

`A060571(2*A131507(n))`
-/

namespace A204433.P12402732560887080467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060571 (2 * A131507 n).toNat

end

end A204433.P12402732560887080467

namespace A204433

/-- `A060571(2*A131507(n))` -/
def P12402732560887080467.Spec : Prop :=
  ∀ n, P12402732560887080467.a n = A204433 (n + 1)

end A204433

/-! ## A204433.P9999120971550499589

`A080425(2*A253586(n))`
-/

namespace A204433.P9999120971550499589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080425 (2 * A253586 n).toNat

end

end A204433.P9999120971550499589

namespace A204433

/-- `A080425(2*A253586(n))` -/
def P9999120971550499589.Spec : Prop :=
  ∀ n, P9999120971550499589.a n = A204433 (n + 1)

end A204433

/-! ## A204433.P16148504663504562609

`A080425(2*A279891(n))`
-/

namespace A204433.P16148504663504562609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080425 (2 * A279891 n).toNat

end

end A204433.P16148504663504562609

namespace A204433

/-- `A080425(2*A279891(n))` -/
def P16148504663504562609.Spec : Prop :=
  ∀ n, P16148504663504562609.a n = A204433 (n + 1)

end A204433

/-! ## A204433.P9933668290005797481

`A080425(A279891(n)/2)`
-/

namespace A204433.P9933668290005797481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080425 (SequenceMachineLib.roundAway ((A279891 n : ℚ) / 2)).toNat

end

end A204433.P9933668290005797481

namespace A204433

/-- `A080425(A279891(n)/2)` -/
def P9933668290005797481.Spec : Prop :=
  ∀ n, P9933668290005797481.a n = A204433 (n + 1)

end A204433

/-!
# A204434: Permanent of the n-th principal submatrix of A204433.

The programs for A204434, there is no canonical definition to state claims against.
-/

/-! ## A204434.P3976233901198562813

`A179079(n+1)+A204268(n+1)-A204426(n+1)`
-/

namespace A204434.P3976233901198562813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179079 (n + 1) + (A204268 (n + 1) - A204426 (n + 1))

end

end A204434.P3976233901198562813

/-! ## A204434.P11098960705029286981

`A179079(n+1)+A204424(n+1)-A204430(n+1)`
-/

namespace A204434.P11098960705029286981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179079 (n + 1) + (A204424 (n + 1) - A204430 (n + 1))

end

end A204434.P11098960705029286981

/-! ## A204434.P14654584870884836258

`A204424(n+1)+A204428(n+1)-A204265(n+1)`
-/

namespace A204434.P14654584870884836258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204424 (n + 1) + (A204428 (n + 1) - A204265 (n + 1))

end

end A204434.P14654584870884836258

/-! ## A204434.P10590526230285935516

`A204268(n+1)+A204428(n+1)-A204432(n+1)`
-/

namespace A204434.P10590526230285935516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204268 (n + 1) + (A204428 (n + 1) - A204432 (n + 1))

end

end A204434.P10590526230285935516

/-!
# A204435: Symmetric matrix: f(i,j)=((i+j)^2 mod 3), read by (constant) antidiagonals.

The programs for A204435, the canonical program `A204435.P6677339156414087726` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A204435 has offset 1).

The definition of A204435 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A204435.P12899076246217518115

`(n-comp[∑[n]])²%3`
-/

namespace A204435.P12899076246217518115
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (((n : ℤ) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)) ^ 2) 3

end

end A204435.P12899076246217518115

namespace A204435

/-- `(n-comp[∑[n]])²%3` -/
def P12899076246217518115.Spec : Prop :=
  ∀ n, P12899076246217518115.a n = A204435 (n + 1)

end A204435

/-! ## A204435.P16674745595023530924

`2-(∑[char[∑[n]]]%3)!`
-/

namespace A204435.P16674745595023530924
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (Nat.factorial ((∑ j ∈ Finset.range (n + 1), f1 j) % 3) : ℤ)

end

end A204435.P16674745595023530924

namespace A204435

/-- `2-(∑[char[∑[n]]]%3)!` -/
def P16674745595023530924.Spec : Prop :=
  ∀ n, P16674745595023530924.a n = A204435 (n + 1)

end A204435

/-! ## A204435.P1769712489044394880

`floor(sqrt((comp[∑[n]]-n)%3))`
-/

namespace A204435.P1769712489044394880
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (Int.tmod ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)) 3)

end

end A204435.P1769712489044394880

namespace A204435

/-- `floor(sqrt((comp[∑[n]]-n)%3))` -/
def P1769712489044394880.Spec : Prop :=
  ∀ n, P1769712489044394880.a n = A204435 (n + 1)

end A204435

/-! ## A204435.P9516827702069585282

`1-C(∑[char[∑[n]]], 2)%3`
-/

namespace A204435.P9516827702069585282
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 % 3 : ℕ) : ℤ)

end

end A204435.P9516827702069585282

namespace A204435

/-- `1-C(∑[char[∑[n]]], 2)%3` -/
def P9516827702069585282.Spec : Prop :=
  ∀ n, P9516827702069585282.a n = A204435 (n + 1)

end A204435

/-! ## A204435.P15673487361775221798

`abs(1-∑[char[∑[n+1]]]%3)`
-/

namespace A204435.P15673487361775221798
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (((∑ j ∈ Finset.range (n + 1), f1 j) % 3 : ℕ) : ℤ)|

end

end A204435.P15673487361775221798

namespace A204435

/-- `abs(1-∑[char[∑[n+1]]]%3)` -/
def P15673487361775221798.Spec : Prop :=
  ∀ n, P15673487361775221798.a n = A204435 (n + 1)

end A204435

/-! ## A204435.P9650967158223635378

`((∑[char[∑[n]]]+1)²%3)^n`
-/

namespace A204435.P9650967158223635378
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j + 1) ^ 2 % 3) ^ n

end

end A204435.P9650967158223635378

namespace A204435

/-- `((∑[char[∑[n]]]+1)²%3)^n` -/
def P9650967158223635378.Spec : Prop :=
  ∀ n, (P9650967158223635378.a n : ℤ) = A204435 (n + 1)

end A204435

/-! ## A204435.P10201737721022546008

`floor(sqrt(2-round(sqrt(2*n+1))%3))`
-/

namespace A204435.P10201737721022546008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (2 - Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (2 * n + 1 : ℝ))) 3)

end

end A204435.P10201737721022546008

namespace A204435

/-- `floor(sqrt(2-round(sqrt(2*n+1))%3))` -/
def P10201737721022546008.Spec : Prop :=
  ∀ n, P10201737721022546008.a n = A204435 (n + 1)

end A204435

/-! ## A204435.P6677339156414087726

`floor(sqrt(A204263(n+1)))`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A204435

/-- `floor(sqrt(A204263(n+1)))` -/
def P6677339156414087726.Spec : Prop :=
  ∀ n, P6677339156414087726.a n = A204435 (n + 1)

theorem P6677339156414087726.correct : P6677339156414087726.Spec := by
  intro n
  simp only [A204435, Nat.add_sub_cancel]

end A204435

/-! ## A204435.P3709463368636853870

`floor(sqrt(A204429(n+1)))`
-/

namespace A204435.P3709463368636853870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A204429 (n + 1))

end

end A204435.P3709463368636853870

namespace A204435

/-- `floor(sqrt(A204429(n+1)))` -/
def P3709463368636853870.Spec : Prop :=
  ∀ n, P3709463368636853870.a n = A204435 (n + 1)

end A204435

/-! ## A204435.P14549595986891351228

`(1-A204267(n+1))²`
-/

namespace A204435.P14549595986891351228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A204267 (n + 1)) ^ 2

end

end A204435.P14549595986891351228

namespace A204435

/-- `(1-A204267(n+1))²` -/
def P14549595986891351228.Spec : Prop :=
  ∀ n, P14549595986891351228.a n = A204435 (n + 1)

end A204435

/-! ## A204435.P11650310061509326214

`(1-A204431(n+1))²`
-/

namespace A204435.P11650310061509326214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A204431 (n + 1)) ^ 2

end

end A204435.P11650310061509326214

namespace A204435

/-- `(1-A204431(n+1))²` -/
def P11650310061509326214.Spec : Prop :=
  ∀ n, P11650310061509326214.a n = A204435 (n + 1)

end A204435

/-! ## A204435.P18049120817736047599

`2-gcd(2, A108035(n+1))`
-/

namespace A204435.P18049120817736047599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (Int.gcd 2 (A108035 (n + 1)) : ℤ)

end

end A204435.P18049120817736047599

namespace A204435

/-- `2-gcd(2, A108035(n+1))` -/
def P18049120817736047599.Spec : Prop :=
  ∀ n, P18049120817736047599.a n = A204435 (n + 1)

end A204435

/-! ## A204435.P3346405193107794193

`1-C(A204421(n+1), 2)`
-/

namespace A204435.P3346405193107794193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (Nat.choose (A204421 (n + 1)).toNat 2 : ℤ)

end

end A204435.P3346405193107794193

namespace A204435

/-- `1-C(A204421(n+1), 2)` -/
def P3346405193107794193.Spec : Prop :=
  ∀ n, P3346405193107794193.a n = A204435 (n + 1)

end A204435

/-! ## A204435.P15182280570666868336

`1-C(A204433(n+1), 2)`
-/

namespace A204435.P15182280570666868336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (Nat.choose (A204433 (n + 1)).toNat 2 : ℤ)

end

end A204435.P15182280570666868336

namespace A204435

/-- `1-C(A204433(n+1), 2)` -/
def P15182280570666868336.Spec : Prop :=
  ∀ n, P15182280570666868336.a n = A204435 (n + 1)

end A204435

/-! ## A204435.P3246008089377424227

`and(2, A204253(n+1))/2`
-/

namespace A204435.P3246008089377424227
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land 2 (A204253 (n + 1)) : ℚ) / 2

end

end A204435.P3246008089377424227

namespace A204435

/-- `and(2, A204253(n+1))/2` -/
def P3246008089377424227.Spec : Prop :=
  ∀ n, P3246008089377424227.a n = (A204435 (n + 1) : ℚ)

end A204435

/-! ## A204435.P474755981145371197

`and(1, A000032(comp[∑[n]]-n))`
-/

namespace A204435.P474755981145371197
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A000032 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n - n))

end

end A204435.P474755981145371197

namespace A204435

/-- `and(1, A000032(comp[∑[n]]-n))` -/
def P474755981145371197.Spec : Prop :=
  ∀ n, P474755981145371197.a n = A204435 (n + 1)

end A204435

/-! ## A204435.P17383231534059846446

`and(1, A000045(comp[∑[n]]-n))`
-/

namespace A204435.P17383231534059846446
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A000045 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n - n))

end

end A204435.P17383231534059846446

namespace A204435

/-- `and(1, A000045(comp[∑[n]]-n))` -/
def P17383231534059846446.Spec : Prop :=
  ∀ n, P17383231534059846446.a n = A204435 (n + 1)

end A204435

/-! ## A204435.P13167319929817724323

`A057078(A057944(n))`
-/

namespace A204435.P13167319929817724323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057078 (A057944 n).toNat

end

end A204435.P13167319929817724323

namespace A204435

/-- `A057078(A057944(n))` -/
def P13167319929817724323.Spec : Prop :=
  ∀ n, P13167319929817724323.a n = A204435 (n + 1)

end A204435

/-! ## A204435.P2916037110340556944

`A011655(A131507(n))`
-/

namespace A204435.P2916037110340556944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011655 (A131507 n).toNat

end

end A204435.P2916037110340556944

namespace A204435

/-- `A011655(A131507(n))` -/
def P2916037110340556944.Spec : Prop :=
  ∀ n, P2916037110340556944.a n = A204435 (n + 1)

end A204435

/-! ## A204435.P18287538654784871181

`A117567(A245300(n))`
-/

namespace A204435.P18287538654784871181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117567 (A245300 n).toNat

end

end A204435.P18287538654784871181

namespace A204435

/-- `A117567(A245300(n))` -/
def P18287538654784871181.Spec : Prop :=
  ∀ n, P18287538654784871181.a n = A204435 (n + 1)

end A204435

/-!
# A204436: Permanent of the n-th principal submatrix of A204435.

The programs for A204436, there is no canonical definition to state claims against.
-/

/-! ## A204436.P1034000386685167428

`A204440(n)+A340900(n)-A204438(n)`
-/

namespace A204436.P1034000386685167428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204440 n + (A340900 n - A204438 n)

end

end A204436.P1034000386685167428

/-! ## A204436.P9940156522404351194

`A063659(∏[∑[A349395(n+1)]])`
-/

namespace A204436.P9940156522404351194
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349395 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063659 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A204436.P9940156522404351194

/-! ## A204436.P1689803198039650482

`A010554(A277408(n)+A000142(n))`
-/

namespace A204436.P1689803198039650482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010554 (A277408 n + A000142 n).toNat

end

end A204436.P1689803198039650482

/-!
# A204437: Symmetric matrix: f(i,j)=((i+j+1)^2 mod 3), by (constant) antidiagonals.

The programs for A204437, the canonical program `A204437.P15617630980625576851` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A204437 has offset 1).

The definition of A204437 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A204437.P12509985671381982740

`abs(1-∑[char[∑[n]]]%3)`
-/

namespace A204437.P12509985671381982740
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (((∑ j ∈ Finset.range (n + 1), f1 j) % 3 : ℕ) : ℤ)|

end

end A204437.P12509985671381982740

namespace A204437

/-- `abs(1-∑[char[∑[n]]]%3)` -/
def P12509985671381982740.Spec : Prop :=
  ∀ n, P12509985671381982740.a n = A204437 (n + 1)

end A204437

/-! ## A204437.P771691704126469402

`∑[char[∑[n+1]]]²%3`
-/

namespace A204437.P771691704126469402
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 % 3

end

end A204437.P771691704126469402

namespace A204437

/-- `∑[char[∑[n+1]]]²%3` -/
def P771691704126469402.Spec : Prop :=
  ∀ n, (P771691704126469402.a n : ℤ) = A204437 (n + 1)

end A204437

/-! ## A204437.P5413358867779131061

`2-((comp[∑[n]]-n)%3)!`
-/

namespace A204437.P5413358867779131061
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (Nat.factorial (Int.tmod ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)) 3).toNat : ℤ)

end

end A204437.P5413358867779131061

namespace A204437

/-- `2-((comp[∑[n]]-n)%3)!` -/
def P5413358867779131061.Spec : Prop :=
  ∀ n, P5413358867779131061.a n = A204437 (n + 1)

end A204437

/-! ## A204437.P12177937619004501720

`floor(sqrt(∑[char[∑[n+1]]]%3))`
-/

namespace A204437.P12177937619004501720
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt ((∑ j ∈ Finset.range (n + 1), f1 j) % 3)

end

end A204437.P12177937619004501720

namespace A204437

/-- `floor(sqrt(∑[char[∑[n+1]]]%3))` -/
def P12177937619004501720.Spec : Prop :=
  ∀ n, (P12177937619004501720.a n : ℤ) = A204437 (n + 1)

end A204437

/-! ## A204437.P5555921288612004440

`1-C(comp[∑[n]]-n, 2)%3`
-/

namespace A204437.P5555921288612004440
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 % 3 : ℕ) : ℤ)

end

end A204437.P5555921288612004440

namespace A204437

/-- `1-C(comp[∑[n]]-n, 2)%3` -/
def P5555921288612004440.Spec : Prop :=
  ∀ n, P5555921288612004440.a n = A204437 (n + 1)

end A204437

/-! ## A204437.P4099703356220669262

`floor(sqrt((n-comp[∑[n]])%3+2))`
-/

namespace A204437.P4099703356220669262
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (Int.tmod ((n : ℤ) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)) 3 + 2)

end

end A204437.P4099703356220669262

namespace A204437

/-- `floor(sqrt((n-comp[∑[n]])%3+2))` -/
def P4099703356220669262.Spec : Prop :=
  ∀ n, P4099703356220669262.a n = A204437 (n + 1)

end A204437

/-! ## A204437.P18263192954007628285

`and(1, A050609(n))`
-/

namespace A204437.P18263192954007628285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A050609 n)

end

end A204437.P18263192954007628285

namespace A204437

/-- `and(1, A050609(n))` -/
def P18263192954007628285.Spec : Prop :=
  ∀ n, P18263192954007628285.a n = A204437 (n + 1)

end A204437

/-! ## A204437.P8762965202216644558

`and(1, A050610(n))`
-/

namespace A204437.P8762965202216644558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A050610 n)

end

end A204437.P8762965202216644558

namespace A204437

/-- `and(1, A050610(n))` -/
def P8762965202216644558.Spec : Prop :=
  ∀ n, P8762965202216644558.a n = A204437 (n + 1)

end A204437

/-! ## A204437.P15617630980625576851

`and(1, A108037(n))`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A204437

/-- `and(1, A108037(n))` -/
def P15617630980625576851.Spec : Prop :=
  ∀ n, P15617630980625576851.a n = A204437 (n + 1)

theorem P15617630980625576851.correct : P15617630980625576851.Spec := by
  intro n
  simp only [A204437, Nat.add_sub_cancel]

end A204437

/-! ## A204437.P8548226223906996139

`(A349039(n)%3)²`
-/

namespace A204437.P8548226223906996139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A349039 n) 3 ^ 2

end

end A204437.P8548226223906996139

namespace A204437

/-- `(A349039(n)%3)²` -/
def P8548226223906996139.Spec : Prop :=
  ∀ n, P8548226223906996139.a n = A204437 (n + 1)

end A204437

/-! ## A204437.P14337809638449925545

`floor(sqrt(A204267(n+1)))`
-/

namespace A204437.P14337809638449925545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A204267 (n + 1))

end

end A204437.P14337809638449925545

namespace A204437

/-- `floor(sqrt(A204267(n+1)))` -/
def P14337809638449925545.Spec : Prop :=
  ∀ n, P14337809638449925545.a n = A204437 (n + 1)

end A204437

/-! ## A204437.P2873611042978747006

`floor(sqrt(A204433(n+1)))`
-/

namespace A204437.P2873611042978747006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A204433 (n + 1))

end

end A204437.P2873611042978747006

namespace A204437

/-- `floor(sqrt(A204433(n+1)))` -/
def P2873611042978747006.Spec : Prop :=
  ∀ n, P2873611042978747006.a n = A204437 (n + 1)

end A204437

/-! ## A204437.P16463108167669189885

`(1-A204421(n+1))²`
-/

namespace A204437.P16463108167669189885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A204421 (n + 1)) ^ 2

end

end A204437.P16463108167669189885

namespace A204437

/-- `(1-A204421(n+1))²` -/
def P16463108167669189885.Spec : Prop :=
  ∀ n, P16463108167669189885.a n = A204437 (n + 1)

end A204437

/-! ## A204437.P11677051786136153057

`(1-A204429(n+1))²`
-/

namespace A204437.P11677051786136153057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A204429 (n + 1)) ^ 2

end

end A204437.P11677051786136153057

namespace A204437

/-- `(1-A204429(n+1))²` -/
def P11677051786136153057.Spec : Prop :=
  ∀ n, P11677051786136153057.a n = A204437 (n + 1)

end A204437

/-! ## A204437.P1122251087062683999

`1-C(A204263(n+1), 2)`
-/

namespace A204437.P1122251087062683999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (Nat.choose (A204263 (n + 1)).toNat 2 : ℤ)

end

end A204437.P1122251087062683999

namespace A204437

/-- `1-C(A204263(n+1), 2)` -/
def P1122251087062683999.Spec : Prop :=
  ∀ n, P1122251087062683999.a n = A204437 (n + 1)

end A204437

/-! ## A204437.P5440847856515508234

`1-C(A204431(n+1), 2)`
-/

namespace A204437.P5440847856515508234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (Nat.choose (A204431 (n + 1)).toNat 2 : ℤ)

end

end A204437.P5440847856515508234

namespace A204437

/-- `1-C(A204431(n+1), 2)` -/
def P5440847856515508234.Spec : Prop :=
  ∀ n, P5440847856515508234.a n = A204437 (n + 1)

end A204437

/-! ## A204437.P16969756575801048138

`A204418(round(sqrt(2*n+1)))`
-/

namespace A204437.P16969756575801048138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204418 (SequenceMachineLib.roundAway (Real.sqrt (2 * n + 1 : ℝ))).toNat

end

end A204437.P16969756575801048138

namespace A204437

/-- `A204418(round(sqrt(2*n+1)))` -/
def P16969756575801048138.Spec : Prop :=
  ∀ n, P16969756575801048138.a n = A204437 (n + 1)

end A204437

/-! ## A204437.P4942957975632110736

`and(1, A000045(∑[char[∑[n+1]]]))`
-/

namespace A204437.P4942957975632110736
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A000045 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A204437.P4942957975632110736

namespace A204437

/-- `and(1, A000045(∑[char[∑[n+1]]]))` -/
def P4942957975632110736.Spec : Prop :=
  ∀ n, P4942957975632110736.a n = A204437 (n + 1)

end A204437

/-! ## A204437.P6648781850311327796

`abs((A004736(n+1)+n)%3-1)`
-/

namespace A204437.P6648781850311327796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A004736 (n + 1) + (n : ℤ)) 3 - 1|

end

end A204437.P6648781850311327796

namespace A204437

/-- `abs((A004736(n+1)+n)%3-1)` -/
def P6648781850311327796.Spec : Prop :=
  ∀ n, P6648781850311327796.a n = A204437 (n + 1)

end A204437

/-! ## A204437.P6388350619541999593

`A011655(A003056(n))`
-/

namespace A204437.P6388350619541999593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011655 (A003056 n).toNat

end

end A204437.P6388350619541999593

namespace A204437

/-- `A011655(A003056(n))` -/
def P6388350619541999593.Spec : Prop :=
  ∀ n, P6388350619541999593.a n = A204437 (n + 1)

end A204437

/-!
# A204438: Permanent of the n-th principal submatrix of A204437.

The programs for A204438, there is no canonical definition to state claims against.
-/

/-! ## A204438.P15707001766041720477

`A204440(n)+A340900(n)-A204436(n)`
-/

namespace A204438.P15707001766041720477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204440 n + (A340900 n - A204436 n)

end

end A204438.P15707001766041720477

/-!
# A204439: Symmetric matrix: f(i,j)=((i+j+2)^2 mod 3), by (constant) antidiagonals.

The programs for A204439, the canonical program `A204439.P6813168725087554525` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A204439 has offset 1).

The definition of A204439 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A204439.P13816747900816908245

`∑[char[∑[n]]]²%3`
-/

namespace A204439.P13816747900816908245
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 % 3

end

end A204439.P13816747900816908245

namespace A204439

/-- `∑[char[∑[n]]]²%3` -/
def P13816747900816908245.Spec : Prop :=
  ∀ n, (P13816747900816908245.a n : ℤ) = A204439 (n + 1)

end A204439

/-! ## A204439.P18096442406610434459

`floor(sqrt(∑[char[∑[n]]]%3))`
-/

namespace A204439.P18096442406610434459
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt ((∑ j ∈ Finset.range (n + 1), f1 j) % 3)

end

end A204439.P18096442406610434459

namespace A204439

/-- `floor(sqrt(∑[char[∑[n]]]%3))` -/
def P18096442406610434459.Spec : Prop :=
  ∀ n, (P18096442406610434459.a n : ℤ) = A204439 (n + 1)

end A204439

/-! ## A204439.P10056507618404970714

`abs((comp[∑[n]]-n)%3-1)`
-/

namespace A204439.P10056507618404970714
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)) 3 - 1|

end

end A204439.P10056507618404970714

namespace A204439

/-- `abs((comp[∑[n]]-n)%3-1)` -/
def P10056507618404970714.Spec : Prop :=
  ∀ n, P10056507618404970714.a n = A204439 (n + 1)

end A204439

/-! ## A204439.P5065135214905334674

`((n-comp[∑[n]])%3+1)²`
-/

namespace A204439.P5065135214905334674
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.tmod ((n : ℤ) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)) 3 + 1) ^ 2

end

end A204439.P5065135214905334674

namespace A204439

/-- `((n-comp[∑[n]])%3+1)²` -/
def P5065135214905334674.Spec : Prop :=
  ∀ n, P5065135214905334674.a n = A204439 (n + 1)

end A204439

/-! ## A204439.P18205174442350479635

`∑[-Δ[(round(sqrt(2*n))+1)%3]]²`
-/

namespace A204439.P18205174442350479635
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ)) + 1) 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A204439.P18205174442350479635

namespace A204439

/-- `∑[-Δ[(round(sqrt(2*n))+1)%3]]²` -/
def P18205174442350479635.Spec : Prop :=
  ∀ n, P18205174442350479635.a n = A204439 (n + 1)

end A204439

/-! ## A204439.P6813168725087554525

`abs(∑[A089812(n)])`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A204439

/-- `abs(∑[A089812(n)])` -/
def P6813168725087554525.Spec : Prop :=
  ∀ n, P6813168725087554525.a n = A204439 (n + 1)

theorem P6813168725087554525.correct : P6813168725087554525.Spec := by
  intro n
  simp only [A204439, Nat.add_sub_cancel]

end A204439

/-! ## A204439.P106327071499082888

`and(1, ∑[A133988(n)])`
-/

namespace A204439.P106327071499082888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133988 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A204439.P106327071499082888

namespace A204439

/-- `and(1, ∑[A133988(n)])` -/
def P106327071499082888.Spec : Prop :=
  ∀ n, P106327071499082888.a n = A204439 (n + 1)

end A204439

/-! ## A204439.P3732410814091312103

`and(1, ∑[A226861(n)])`
-/

namespace A204439.P3732410814091312103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226861 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A204439.P3732410814091312103

namespace A204439

/-- `and(1, ∑[A226861(n)])` -/
def P3732410814091312103.Spec : Prop :=
  ∀ n, P3732410814091312103.a n = A204439 (n + 1)

end A204439

/-! ## A204439.P12446826165750022982

`A011655(∑[char[∑[n]]])`
-/

namespace A204439.P12446826165750022982
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011655 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A204439.P12446826165750022982

namespace A204439

/-- `A011655(∑[char[∑[n]]])` -/
def P12446826165750022982.Spec : Prop :=
  ∀ n, P12446826165750022982.a n = A204439 (n + 1)

end A204439

/-! ## A204439.P10461850943105472104

`and(1, A131410(n+1))`
-/

namespace A204439.P10461850943105472104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A131410 (n + 1))

end

end A204439.P10461850943105472104

namespace A204439

/-- `and(1, A131410(n+1))` -/
def P10461850943105472104.Spec : Prop :=
  ∀ n, P10461850943105472104.a n = A204439 (n + 1)

end A204439

/-! ## A204439.P14473399291865266438

`and(1, A204253(n+1))`
-/

namespace A204439.P14473399291865266438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A204253 (n + 1))

end

end A204439.P14473399291865266438

namespace A204439

/-- `and(1, A204253(n+1))` -/
def P14473399291865266438.Spec : Prop :=
  ∀ n, P14473399291865266438.a n = A204439 (n + 1)

end A204439

/-! ## A204439.P14973387087419178965

`floor(sqrt(A204421(n+1)))`
-/

namespace A204439.P14973387087419178965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A204421 (n + 1))

end

end A204439.P14973387087419178965

namespace A204439

/-- `floor(sqrt(A204421(n+1)))` -/
def P14973387087419178965.Spec : Prop :=
  ∀ n, P14973387087419178965.a n = A204439 (n + 1)

end A204439

/-! ## A204439.P10249845178005054470

`floor(sqrt(A204431(n+1)))`
-/

namespace A204439.P10249845178005054470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A204431 (n + 1))

end

end A204439.P10249845178005054470

namespace A204439

/-- `floor(sqrt(A204431(n+1)))` -/
def P10249845178005054470.Spec : Prop :=
  ∀ n, P10249845178005054470.a n = A204439 (n + 1)

end A204439

/-! ## A204439.P9991749452300357975

`(1-A204263(n+1))²`
-/

namespace A204439.P9991749452300357975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A204263 (n + 1)) ^ 2

end

end A204439.P9991749452300357975

namespace A204439

/-- `(1-A204263(n+1))²` -/
def P9991749452300357975.Spec : Prop :=
  ∀ n, P9991749452300357975.a n = A204439 (n + 1)

end A204439

/-! ## A204439.P11385853090923440459

`(1-A204433(n+1))²`
-/

namespace A204439.P11385853090923440459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A204433 (n + 1)) ^ 2

end

end A204439.P11385853090923440459

namespace A204439

/-- `(1-A204433(n+1))²` -/
def P11385853090923440459.Spec : Prop :=
  ∀ n, P11385853090923440459.a n = A204439 (n + 1)

end A204439

/-! ## A204439.P12288494730019208211

`and(1, ∑[A207613(n+1)])`
-/

namespace A204439.P12288494730019208211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207613 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A204439.P12288494730019208211

namespace A204439

/-- `and(1, ∑[A207613(n+1)])` -/
def P12288494730019208211.Spec : Prop :=
  ∀ n, P12288494730019208211.a n = A204439 (n + 1)

end A204439

/-! ## A204439.P706119692434623385

`and(1, A000045(∑[char[∑[n]]]))`
-/

namespace A204439.P706119692434623385
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A000045 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A204439.P706119692434623385

namespace A204439

/-- `and(1, A000045(∑[char[∑[n]]]))` -/
def P706119692434623385.Spec : Prop :=
  ∀ n, P706119692434623385.a n = A204439 (n + 1)

end A204439

/-! ## A204439.P3237185847731673875

`floor(sqrt(2-A204267(n+1)))`
-/

namespace A204439.P3237185847731673875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (2 - A204267 (n + 1))

end

end A204439.P3237185847731673875

namespace A204439

/-- `floor(sqrt(2-A204267(n+1)))` -/
def P3237185847731673875.Spec : Prop :=
  ∀ n, P3237185847731673875.a n = A204439 (n + 1)

end A204439

/-! ## A204439.P15026878031976198302

`floor(sqrt(2-A204429(n+1)))`
-/

namespace A204439.P15026878031976198302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (2 - A204429 (n + 1))

end

end A204439.P15026878031976198302

namespace A204439

/-- `floor(sqrt(2-A204429(n+1)))` -/
def P15026878031976198302.Spec : Prop :=
  ∀ n, P15026878031976198302.a n = A204439 (n + 1)

end A204439

/-! ## A204439.P1489749695247258374

`A267208(round(sqrt(2*n+1)))`
-/

namespace A204439.P1489749695247258374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267208 (SequenceMachineLib.roundAway (Real.sqrt (2 * n + 1 : ℝ))).toNat

end

end A204439.P1489749695247258374

namespace A204439

/-- `A267208(round(sqrt(2*n+1)))` -/
def P1489749695247258374.Spec : Prop :=
  ∀ n, P1489749695247258374.a n = A204439 (n + 1)

end A204439

/-!
# A204440: Permanent of the n-th principal submatrix of A204439.

The programs for A204440, there is no canonical definition to state claims against.
-/

/-! ## A204440.P6127208689524568800

`A204436(n)+A204438(n)-A340900(n)`
-/

namespace A204440.P6127208689524568800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204436 n + (A204438 n - A340900 n)

end

end A204440.P6127208689524568800

/-! ## A204440.P11736870909531584714

`A325763(A001385(n))`
-/

namespace A204440.P11736870909531584714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325763 (A001385 n).toNat

end

end A204440.P11736870909531584714

/-! ## A204440.P2479126884414857676

`A325763(A036618(n))`
-/

namespace A204440.P2479126884414857676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325763 (A036618 n).toNat

end

end A204440.P2479126884414857676

/-! ## A204440.P4460955040498121422

`A325763(A036619(n))`
-/

namespace A204440.P4460955040498121422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325763 (A036619 n).toNat

end

end A204440.P4460955040498121422

/-!
# A204441: Symmetric matrix: f(i,j)=floor[(i+j+2)/4]-floor[(i+j-1)/4], by (constant) antidiagonals.

The programs for A204441, the canonical program `A204441.P7061204664835740213` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A204441 has offset 1).

The definition of A204441 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A204441.P10247227373965371184

`(∑[char[∑[n]]]²%8)%3`
-/

namespace A204441.P10247227373965371184
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 % 8 % 3

end

end A204441.P10247227373965371184

namespace A204441

/-- `(∑[char[∑[n]]]²%8)%3` -/
def P10247227373965371184.Spec : Prop :=
  ∀ n, (P10247227373965371184.a n : ℤ) = A204441 (n + 1)

end A204441

/-! ## A204441.P3157889921889626733

`∑[(n+1)*char[∑[n]]]%2`
-/

namespace A204441.P3157889921889626733
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (if ∃ j, f2 j = n then 1 else 0)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) % 2

end

end A204441.P3157889921889626733

namespace A204441

/-- `∑[(n+1)*char[∑[n]]]%2` -/
def P3157889921889626733.Spec : Prop :=
  ∀ n, (P3157889921889626733.a n : ℤ) = A204441 (n + 1)

end A204441

/-! ## A204441.P12755206184044517511

`and(1, ∑[(n+1)*char[∑[n]]])`
-/

namespace A204441.P12755206184044517511
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (if ∃ j, f2 j = n then 1 else 0)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A204441.P12755206184044517511

namespace A204441

/-- `and(1, ∑[(n+1)*char[∑[n]]])` -/
def P12755206184044517511.Spec : Prop :=
  ∀ n, (P12755206184044517511.a n : ℤ) = A204441 (n + 1)

end A204441

/-! ## A204441.P12448809071647037539

`floor(sqrt(round(sqrt(2*(n+1)))%4))`
-/

namespace A204441.P12448809071647037539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ))) 4)

end

end A204441.P12448809071647037539

namespace A204441

/-- `floor(sqrt(round(sqrt(2*(n+1)))%4))` -/
def P12448809071647037539.Spec : Prop :=
  ∀ n, P12448809071647037539.a n = A204441 (n + 1)

end A204441

/-! ## A204441.P7474882644385943127

`val((∑[(n+1)*char[∑[n]]]+2)²+1, 2)`
-/

namespace A204441.P7474882644385943127
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (if ∃ j, f2 j = n then 1 else 0)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation ((∑ j ∈ Finset.range (n + 1), f1 j + 2) ^ 2 + 1) 2

end

end A204441.P7474882644385943127

namespace A204441

/-- `val((∑[(n+1)*char[∑[n]]]+2)²+1, 2)` -/
def P7474882644385943127.Spec : Prop :=
  ∀ n, (P7474882644385943127.a n : ℤ) = A204441 (n + 1)

end A204441

/-! ## A204441.P4595021961373321024

`A166486(∑[char[∑[n]]])`
-/

namespace A204441.P4595021961373321024
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166486 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A204441.P4595021961373321024

namespace A204441

/-- `A166486(∑[char[∑[n]]])` -/
def P4595021961373321024.Spec : Prop :=
  ∀ n, P4595021961373321024.a n = A204441 (n + 1)

end A204441

/-! ## A204441.P11660623383491376784

`2-A177704(∑[char[∑[n+1]]])`
-/

namespace A204441.P11660623383491376784
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A177704 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A204441.P11660623383491376784

namespace A204441

/-- `2-A177704(∑[char[∑[n+1]]])` -/
def P11660623383491376784.Spec : Prop :=
  ∀ n, P11660623383491376784.a n = A204441 (n + 1)

end A204441

/-! ## A204441.P14409211290829054370

`A169675(A131507(n)+2)`
-/

namespace A204441.P14409211290829054370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169675 (A131507 n + 2).toNat

end

end A204441.P14409211290829054370

namespace A204441

/-- `A169675(A131507(n)+2)` -/
def P14409211290829054370.Spec : Prop :=
  ∀ n, P14409211290829054370.a n = A204441 (n + 1)

end A204441

/-! ## A204441.P7061204664835740213

`A168181(A279891(n)+2)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A204441

/-- `A168181(A279891(n)+2)` -/
def P7061204664835740213.Spec : Prop :=
  ∀ n, P7061204664835740213.a n = A204441 (n + 1)

theorem P7061204664835740213.correct : P7061204664835740213.Spec := by
  intro n
  simp only [A204441, Nat.add_sub_cancel]

end A204441

/-! ## A204441.P11099435785900567977

`A131729(∑[A010054(n)])²`
-/

namespace A204441.P11099435785900567977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131729 (∑ j ∈ Finset.range (n + 1), f1 j).toNat ^ 2

end

end A204441.P11099435785900567977

namespace A204441

/-- `A131729(∑[A010054(n)])²` -/
def P11099435785900567977.Spec : Prop :=
  ∀ n, P11099435785900567977.a n = A204441 (n + 1)

end A204441

/-! ## A204441.P10326664066222182965

`A152822(A204237(n+1)-1)`
-/

namespace A204441.P10326664066222182965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152822 (A204237 (n + 1) - 1).toNat

end

end A204441.P10326664066222182965

namespace A204441

/-- `A152822(A204237(n+1)-1)` -/
def P10326664066222182965.Spec : Prop :=
  ∀ n, P10326664066222182965.a n = A204441 (n + 1)

end A204441

/-! ## A204441.P1796867192479494240

`1-A169675(A131507(n)-1)`
-/

namespace A204441.P1796867192479494240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A169675 (A131507 n - 1).toNat

end

end A204441.P1796867192479494240

namespace A204441

/-- `1-A169675(A131507(n)-1)` -/
def P1796867192479494240.Spec : Prop :=
  ∀ n, P1796867192479494240.a n = A204441 (n + 1)

end A204441

/-! ## A204441.P12659345896061969790

`A010054(∑[A143434(n)]²+2)`
-/

namespace A204441.P12659345896061969790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143434 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 + 2).toNat

end

end A204441.P12659345896061969790

namespace A204441

/-- `A010054(∑[A143434(n)]²+2)` -/
def P12659345896061969790.Spec : Prop :=
  ∀ n, P12659345896061969790.a n = A204441 (n + 1)

end A204441

/-! ## A204441.P15724223099923424656

`∑[A059841(n)*A143434(n)]²`
-/

namespace A204441.P15724223099923424656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n * A143434 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A204441.P15724223099923424656

namespace A204441

/-- `∑[A059841(n)*A143434(n)]²` -/
def P15724223099923424656.Spec : Prop :=
  ∀ n, P15724223099923424656.a n = A204441 (n + 1)

end A204441

/-! ## A204441.P7519367162658561451

`xor(A057212(n+1), A204445(n+1))`
-/

namespace A204441.P7519367162658561451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A057212 (n + 1)) (A204445 (n + 1))

end

end A204441.P7519367162658561451

namespace A204441

/-- `xor(A057212(n+1), A204445(n+1))` -/
def P7519367162658561451.Spec : Prop :=
  ∀ n, P7519367162658561451.a n = A204441 (n + 1)

end A204441

/-! ## A204441.P5632911173522794008

`xor(A204443(n+1), A204547(n+1))`
-/

namespace A204441.P5632911173522794008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A204443 (n + 1)) (A204547 (n + 1))

end

end A204441.P5632911173522794008

namespace A204441

/-- `xor(A204443(n+1), A204547(n+1))` -/
def P5632911173522794008.Spec : Prop :=
  ∀ n, P5632911173522794008.a n = A204441 (n + 1)

end A204441

/-! ## A204441.P5993458550322383423

`xor(A204447(n+1), A204545(n+1))`
-/

namespace A204441.P5993458550322383423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A204447 (n + 1)) (A204545 (n + 1))

end

end A204441.P5993458550322383423

namespace A204441

/-- `xor(A204447(n+1), A204545(n+1))` -/
def P5993458550322383423.Spec : Prop :=
  ∀ n, P5993458550322383423.a n = A204441 (n + 1)

end A204441

/-! ## A204441.P12083348774175255402

`A059841(A099026(A052928(n)))`
-/

namespace A204441.P12083348774175255402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A099026 (A052928 n).toNat).toNat

end

end A204441.P12083348774175255402

namespace A204441

/-- `A059841(A099026(A052928(n)))` -/
def P12083348774175255402.Spec : Prop :=
  ∀ n, P12083348774175255402.a n = A204441 (n + 1)

end A204441

/-! ## A204441.P4055232656618069931

`A036987(A007814(A002024(n+1))²)`
-/

namespace A204441.P4055232656618069931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 (A007814 (A002024 (n + 1)).toNat ^ 2).toNat

end

end A204441.P4055232656618069931

namespace A204441

/-- `A036987(A007814(A002024(n+1))²)` -/
def P4055232656618069931.Spec : Prop :=
  ∀ n, P4055232656618069931.a n = A204441 (n + 1)

end A204441

/-! ## A204441.P5385823188390590759

`A059841(A268040(A059841(n)+n))`
-/

namespace A204441.P5385823188390590759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A268040 (A059841 n + (n : ℤ)).toNat).toNat

end

end A204441.P5385823188390590759

namespace A204441

/-- `A059841(A268040(A059841(n)+n))` -/
def P5385823188390590759.Spec : Prop :=
  ∀ n, P5385823188390590759.a n = A204441 (n + 1)

end A204441

/-!
# A204442: Permanent of the n-th principal submatrix of A204441.

The programs for A204442, there is no canonical definition to state claims against.
-/

/-! ## A204442.P12331014137767077712

`A089247(A002218(n+1)+A000142(n))`
-/

namespace A204442.P12331014137767077712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089247 (A002218 (n + 1) + A000142 n).toNat

end

end A204442.P12331014137767077712

/-! ## A204442.P275583291761554828

`A089247(A052399(n)+A002218(n+1))`
-/

namespace A204442.P275583291761554828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089247 (A052399 n + A002218 (n + 1)).toNat

end

end A204442.P275583291761554828

/-! ## A204442.P6617706791405905641

`A306512(eq[A306518(n+4), A306541(2*(n+1))])`
-/

namespace A204442.P6617706791405905641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306518 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306541 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306512 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A204442.P6617706791405905641

/-!
# A204443: Symmetric matrix: f(i,j)=floor[(i+j+3)/4]-floor[(i+j)/4], by (constant) antidiagonals.

The programs for A204443, the canonical program `A204443.P16622436690329894983` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A204443 has offset 1).

The definition of A204443 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A204443.P12520735945605095494

`ceil((comp[∑[n]]-n)%4/3)`
-/

namespace A204443.P12520735945605095494
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Int.tmod ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)) 4 : ℚ) / 3⌉

end

end A204443.P12520735945605095494

namespace A204443

/-- `ceil((comp[∑[n]]-n)%4/3)` -/
def P12520735945605095494.Spec : Prop :=
  ∀ n, P12520735945605095494.a n = A204443 (n + 1)

end A204443

/-! ## A204443.P12051336338927017139

`ceil(and(3, comp[∑[n]]-n)/3)`
-/

namespace A204443.P12051336338927017139
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Int.land 3 ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)) : ℚ) / 3⌉

end

end A204443.P12051336338927017139

namespace A204443

/-- `ceil(and(3, comp[∑[n]]-n)/3)` -/
def P12051336338927017139.Spec : Prop :=
  ∀ n, P12051336338927017139.a n = A204443 (n + 1)

end A204443

/-! ## A204443.P3708063146762070894

`round(log(A204255(n+1)))`
-/

namespace A204443.P3708063146762070894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log (A204255 (n + 1) : ℝ))

end

end A204443.P3708063146762070894

namespace A204443

/-- `round(log(A204255(n+1)))` -/
def P3708063146762070894.Spec : Prop :=
  ∀ n, P3708063146762070894.a n = A204443 (n + 1)

end A204443

/-! ## A204443.P16421464159070401198

`A166486(comp[∑[n]]-n)`
-/

namespace A204443.P16421464159070401198
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166486 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n - n)

end

end A204443.P16421464159070401198

namespace A204443

/-- `A166486(comp[∑[n]]-n)` -/
def P16421464159070401198.Spec : Prop :=
  ∀ n, P16421464159070401198.a n = A204443 (n + 1)

end A204443

/-! ## A204443.P2608531603686166974

`A152822(∑[char[∑[n+1]]])`
-/

namespace A204443.P2608531603686166974
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152822 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A204443.P2608531603686166974

namespace A204443

/-- `A152822(∑[char[∑[n+1]]])` -/
def P2608531603686166974.Spec : Prop :=
  ∀ n, P2608531603686166974.a n = A204443 (n + 1)

end A204443

/-! ## A204443.P8197320760340321450

`2-A236398(∑[char[∑[n]]])`
-/

namespace A204443.P8197320760340321450
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A236398 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A204443.P8197320760340321450

namespace A204443

/-- `2-A236398(∑[char[∑[n]]])` -/
def P8197320760340321450.Spec : Prop :=
  ∀ n, P8197320760340321450.a n = A204443 (n + 1)

end A204443

/-! ## A204443.P16438413235275456564

`A062748(∑[char[∑[n]]])%2`
-/

namespace A204443.P16438413235275456564
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A062748 (∑ j ∈ Finset.range (n + 1), f1 j)) 2

end

end A204443.P16438413235275456564

namespace A204443

/-- `A062748(∑[char[∑[n]]])%2` -/
def P16438413235275456564.Spec : Prop :=
  ∀ n, P16438413235275456564.a n = A204443 (n + 1)

end A204443

/-! ## A204443.P12460849644199608857

`A177704(∑[char[∑[n]]])%2`
-/

namespace A204443.P12460849644199608857
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A177704 (∑ j ∈ Finset.range (n + 1), f1 j)) 2

end

end A204443.P12460849644199608857

namespace A204443

/-- `A177704(∑[char[∑[n]]])%2` -/
def P12460849644199608857.Spec : Prop :=
  ∀ n, P12460849644199608857.a n = A204443 (n + 1)

end A204443

/-! ## A204443.P15223136514575699647

`A062025(comp[∑[n]]-n)%2`
-/

namespace A204443.P15223136514575699647
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A062025 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n - n)) 2

end

end A204443.P15223136514575699647

namespace A204443

/-- `A062025(comp[∑[n]]-n)%2` -/
def P15223136514575699647.Spec : Prop :=
  ∀ n, P15223136514575699647.a n = A204443 (n + 1)

end A204443

/-! ## A204443.P7737707688324093950

`A000045(comp[∑[n]]-n)²%3`
-/

namespace A204443.P7737707688324093950
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000045 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n - n) ^ 2) 3

end

end A204443.P7737707688324093950

namespace A204443

/-- `A000045(comp[∑[n]]-n)²%3` -/
def P7737707688324093950.Spec : Prop :=
  ∀ n, P7737707688324093950.a n = A204443 (n + 1)

end A204443

/-! ## A204443.P7754851272249188420

`2-A177704(round(sqrt(2*n+1)))`
-/

namespace A204443.P7754851272249188420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A177704 (SequenceMachineLib.roundAway (Real.sqrt (2 * n + 1 : ℝ))).toNat

end

end A204443.P7754851272249188420

namespace A204443

/-- `2-A177704(round(sqrt(2*n+1)))` -/
def P7754851272249188420.Spec : Prop :=
  ∀ n, P7754851272249188420.a n = A204443 (n + 1)

end A204443

/-! ## A204443.P999732227763777079

`A001221(and(3, comp[∑[n]]-n)+1)`
-/

namespace A204443.P999732227763777079
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.land 3 ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)) + 1).toNat

end

end A204443.P999732227763777079

namespace A204443

/-- `A001221(and(3, comp[∑[n]]-n)+1)` -/
def P999732227763777079.Spec : Prop :=
  ∀ n, P999732227763777079.a n = A204443 (n + 1)

end A204443

/-! ## A204443.P1817883172117883605

`A000032(∑[char[∑[n+1]]])²%3`
-/

namespace A204443.P1817883172117883605
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000032 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2) 3

end

end A204443.P1817883172117883605

namespace A204443

/-- `A000032(∑[char[∑[n+1]]])²%3` -/
def P1817883172117883605.Spec : Prop :=
  ∀ n, P1817883172117883605.a n = A204443 (n + 1)

end A204443

/-! ## A204443.P10145984287877580707

`2/A177704(∑[char[∑[n+1]]]+1)-1`
-/

namespace A204443.P10145984287877580707
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A177704 (∑ j ∈ Finset.range (n + 1), f1 j + 1) : ℚ) - 1

end

end A204443.P10145984287877580707

namespace A204443

/-- `2/A177704(∑[char[∑[n+1]]]+1)-1` -/
def P10145984287877580707.Spec : Prop :=
  ∀ n, P10145984287877580707.a n = (A204443 (n + 1) : ℚ)

end A204443

/-! ## A204443.P18120894370930563227

`1-A169675(A131507(n)+1)`
-/

namespace A204443.P18120894370930563227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A169675 (A131507 n + 1).toNat

end

end A204443.P18120894370930563227

namespace A204443

/-- `1-A169675(A131507(n)+1)` -/
def P18120894370930563227.Spec : Prop :=
  ∀ n, P18120894370930563227.a n = A204443 (n + 1)

end A204443

/-! ## A204443.P16622436690329894983

`1-A121262(A003057(n+2))`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A204443

/-- `1-A121262(A003057(n+2))` -/
def P16622436690329894983.Spec : Prop :=
  ∀ n, P16622436690329894983.a n = A204443 (n + 1)

theorem P16622436690329894983.correct : P16622436690329894983.Spec := by
  intro n
  simp only [A204443, Nat.add_sub_cancel]

end A204443

/-! ## A204443.P4744795240677935288

`(A292372(A003056(n))+1)%2`
-/

namespace A204443.P4744795240677935288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A292372 (A003056 n).toNat + 1) 2

end

end A204443.P4744795240677935288

namespace A204443

/-- `(A292372(A003056(n))+1)%2` -/
def P4744795240677935288.Spec : Prop :=
  ∀ n, P4744795240677935288.a n = A204443 (n + 1)

end A204443

/-! ## A204443.P15010415493497579226

`and(1, A026741(A003056(n)+2))`
-/

namespace A204443.P15010415493497579226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A026741 (A003056 n + 2).toNat)

end

end A204443.P15010415493497579226

namespace A204443

/-- `and(1, A026741(A003056(n)+2))` -/
def P15010415493497579226.Spec : Prop :=
  ∀ n, P15010415493497579226.a n = A204443 (n + 1)

end A204443

/-! ## A204443.P8092071254066763462

`A007204(n)%A204255(n+1)`
-/

namespace A204443.P8092071254066763462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007204 n) (A204255 (n + 1))

end

end A204443.P8092071254066763462

namespace A204443

/-- `A007204(n)%A204255(n+1)` -/
def P8092071254066763462.Spec : Prop :=
  ∀ n, P8092071254066763462.a n = A204443 (n + 1)

end A204443

/-! ## A204443.P4399119099872027948

`A008349(n)%A204255(n+1)`
-/

namespace A204443.P4399119099872027948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008349 n) (A204255 (n + 1))

end

end A204443.P4399119099872027948

namespace A204443

/-- `A008349(n)%A204255(n+1)` -/
def P4399119099872027948.Spec : Prop :=
  ∀ n, P4399119099872027948.a n = A204443 (n + 1)

end A204443

/-!
# A204444: Permanent of the n-th principal submatrix of A204443.

The programs for A204444, there is no canonical definition to state claims against.
-/

/-! ## A204444.P9070924487793235395

`A100196(A004213(n))`
-/

namespace A204444.P9070924487793235395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (A004213 n).toNat

end

end A204444.P9070924487793235395

/-! ## A204444.P14246669818633376581

`A089221(A148390(n))`
-/

namespace A204444.P14246669818633376581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089221 (A148390 n).toNat

end

end A204444.P14246669818633376581

/-!
# A204445: Symmetric matrix: f(i,j)=floor[(i+j+4)/4]-floor[(i+j+1)/4], by (constant) antidiagonals.

The programs for A204445, the canonical program `A204445.P52060757072548891` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A204445 has offset 1).

The definition of A204445 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A204445.P15753664824448122089

`(∑[n*char[∑[n]]]+1)%2`
-/

namespace A204445.P15753664824448122089
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (if ∃ j, f2 j = n then 1 else 0)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j + 1) % 2

end

end A204445.P15753664824448122089

namespace A204445

/-- `(∑[n*char[∑[n]]]+1)%2` -/
def P15753664824448122089.Spec : Prop :=
  ∀ n, (P15753664824448122089.a n : ℤ) = A204445 (n + 1)

end A204445

/-! ## A204445.P14114086215368361358

`1-∑[n*char[∑[n]]]%2`
-/

namespace A204445.P14114086215368361358
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (if ∃ j, f2 j = n then 1 else 0)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (((∑ j ∈ Finset.range (n + 1), f1 j) % 2 : ℕ) : ℤ)

end

end A204445.P14114086215368361358

namespace A204445

/-- `1-∑[n*char[∑[n]]]%2` -/
def P14114086215368361358.Spec : Prop :=
  ∀ n, P14114086215368361358.a n = A204445 (n + 1)

end A204445

/-! ## A204445.P10692427454628339900

`and(1, ∑[n*char[∑[n]]]+1)`
-/

namespace A204445.P10692427454628339900
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (if ∃ j, f2 j = n then 1 else 0)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A204445.P10692427454628339900

namespace A204445

/-- `and(1, ∑[n*char[∑[n]]]+1)` -/
def P10692427454628339900.Spec : Prop :=
  ∀ n, (P10692427454628339900.a n : ℤ) = A204445 (n + 1)

end A204445

/-! ## A204445.P1381656479541712798

`xor(and(n, char[∑[n]]), a(n-1))` with `a(0)=1`
-/

namespace A204445.P1381656479541712798
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.xor (Nat.land n (if ∃ j, f1 j = n then 1 else 0)) (a (n - 1))

end

end A204445.P1381656479541712798

namespace A204445

/-- `xor(and(n, char[∑[n]]), a(n-1))` -/
def P1381656479541712798.Spec : Prop :=
  ∀ n, (P1381656479541712798.a n : ℤ) = A204445 (n + 1)

end A204445

/-! ## A204445.P5837687456401522902

`A152822(∑[char[∑[n]]])`
-/

namespace A204445.P5837687456401522902
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152822 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A204445.P5837687456401522902

namespace A204445

/-- `A152822(∑[char[∑[n]]])` -/
def P5837687456401522902.Spec : Prop :=
  ∀ n, P5837687456401522902.a n = A204445 (n + 1)

end A204445

/-! ## A204445.P52060757072548891

`round(2/(A204255(n+1)+1))`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A204445

/-- `round(2/(A204255(n+1)+1))` -/
def P52060757072548891.Spec : Prop :=
  ∀ n, P52060757072548891.a n = A204445 (n + 1)

theorem P52060757072548891.correct : P52060757072548891.Spec := by
  intro n
  simp only [A204445, Nat.add_sub_cancel]

end A204445

/-! ## A204445.P13591725904889031416

`2-A177704(∑[char[∑[n+1]]]+2)`
-/

namespace A204445.P13591725904889031416
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A177704 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A204445.P13591725904889031416

namespace A204445

/-- `2-A177704(∑[char[∑[n+1]]]+2)` -/
def P13591725904889031416.Spec : Prop :=
  ∀ n, P13591725904889031416.a n = A204445 (n + 1)

end A204445

/-! ## A204445.P1934457804319270943

`A010054(∑[A143434(n)]²)`
-/

namespace A204445.P1934457804319270943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143434 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2).toNat

end

end A204445.P1934457804319270943

namespace A204445

/-- `A010054(∑[A143434(n)]²)` -/
def P1934457804319270943.Spec : Prop :=
  ∀ n, P1934457804319270943.a n = A204445 (n + 1)

end A204445

/-! ## A204445.P13670202422080268768

`A121373(∑[A143434(n)]²)`
-/

namespace A204445.P13670202422080268768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143434 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121373 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2).toNat

end

end A204445.P13670202422080268768

namespace A204445

/-- `A121373(∑[A143434(n)]²)` -/
def P13670202422080268768.Spec : Prop :=
  ∀ n, P13670202422080268768.a n = A204445 (n + 1)

end A204445

/-! ## A204445.P16795019707239246880

`A143434(∑[A143434(n)]²)`
-/

namespace A204445.P16795019707239246880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143434 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143434 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2).toNat

end

end A204445.P16795019707239246880

namespace A204445

/-- `A143434(∑[A143434(n)]²)` -/
def P16795019707239246880.Spec : Prop :=
  ∀ n, P16795019707239246880.a n = A204445 (n + 1)

end A204445

/-! ## A204445.P16371304786856488499

`2-A165430(A057944(n)+2)`
-/

namespace A204445.P16371304786856488499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A165430 (A057944 n + 2).toNat

end

end A204445.P16371304786856488499

namespace A204445

/-- `2-A165430(A057944(n)+2)` -/
def P16371304786856488499.Spec : Prop :=
  ∀ n, P16371304786856488499.a n = A204445 (n + 1)

end A204445

/-! ## A204445.P8950014218264659114

`A131729(∑[A010054(n)]+2)²`
-/

namespace A204445.P8950014218264659114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131729 (∑ j ∈ Finset.range (n + 1), f1 j + 2).toNat ^ 2

end

end A204445.P8950014218264659114

namespace A204445

/-- `A131729(∑[A010054(n)]+2)²` -/
def P8950014218264659114.Spec : Prop :=
  ∀ n, P8950014218264659114.a n = A204445 (n + 1)

end A204445

/-! ## A204445.P1950012554540762194

`1-A121262(A003057(n+2)+1)`
-/

namespace A204445.P1950012554540762194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A121262 (A003057 (n + 2) + 1).toNat

end

end A204445.P1950012554540762194

namespace A204445

/-- `1-A121262(A003057(n+2)+1)` -/
def P1950012554540762194.Spec : Prop :=
  ∀ n, P1950012554540762194.a n = A204445 (n + 1)

end A204445

/-! ## A204445.P9820721041930409526

`A204545(n*A204269(n+1)+1)`
-/

namespace A204445.P9820721041930409526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204545 ((n : ℤ) * A204269 (n + 1) + 1).toNat

end

end A204445.P9820721041930409526

namespace A204445

/-- `A204545(n*A204269(n+1)+1)` -/
def P9820721041930409526.Spec : Prop :=
  ∀ n, P9820721041930409526.a n = A204445 (n + 1)

end A204445

/-! ## A204445.P12557493497401028126

`C(A204560(n+1), A204562(n+1))`
-/

namespace A204445.P12557493497401028126
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A204560 (n + 1)).toNat (A204562 (n + 1)).toNat

end

end A204445.P12557493497401028126

namespace A204445

/-- `C(A204560(n+1), A204562(n+1))` -/
def P12557493497401028126.Spec : Prop :=
  ∀ n, (P12557493497401028126.a n : ℤ) = A204445 (n + 1)

end A204445

/-! ## A204445.P12965075037633117750

`or(A204545(n+1), A204547(n+1))`
-/

namespace A204445.P12965075037633117750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A204545 (n + 1)) (A204547 (n + 1))

end

end A204445.P12965075037633117750

namespace A204445

/-- `or(A204545(n+1), A204547(n+1))` -/
def P12965075037633117750.Spec : Prop :=
  ∀ n, P12965075037633117750.a n = A204445 (n + 1)

end A204445

/-! ## A204445.P13726741672142105972

`xor(A057212(n+1), A204441(n+1))`
-/

namespace A204445.P13726741672142105972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A057212 (n + 1)) (A204441 (n + 1))

end

end A204445.P13726741672142105972

namespace A204445

/-- `xor(A057212(n+1), A204441(n+1))` -/
def P13726741672142105972.Spec : Prop :=
  ∀ n, P13726741672142105972.a n = A204445 (n + 1)

end A204445

/-! ## A204445.P4869150512129294564

`xor(A204269(n+1), A204447(n+1))`
-/

namespace A204445.P4869150512129294564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A204269 (n + 1)) (A204447 (n + 1))

end

end A204445.P4869150512129294564

namespace A204445

/-- `xor(A204269(n+1), A204447(n+1))` -/
def P4869150512129294564.Spec : Prop :=
  ∀ n, P4869150512129294564.a n = A204445 (n + 1)

end A204445

/-! ## A204445.P9797452269684185737

`xor(A204443(n+1), A204549(n+1))`
-/

namespace A204445.P9797452269684185737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A204443 (n + 1)) (A204549 (n + 1))

end

end A204445.P9797452269684185737

namespace A204445

/-- `xor(A204443(n+1), A204549(n+1))` -/
def P9797452269684185737.Spec : Prop :=
  ∀ n, P9797452269684185737.a n = A204445 (n + 1)

end A204445

/-! ## A204445.P5631073321220757112

`A204545(n+1)+A204547(n+1)*A204549(n+1)`
-/

namespace A204445.P5631073321220757112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204545 (n + 1) + A204547 (n + 1) * A204549 (n + 1)

end

end A204445.P5631073321220757112

namespace A204445

/-- `A204545(n+1)+A204547(n+1)*A204549(n+1)` -/
def P5631073321220757112.Spec : Prop :=
  ∀ n, P5631073321220757112.a n = A204445 (n + 1)

end A204445

/-!
# A204446: Permanent of the n-th principal submatrix of A204445.

The programs for A204446, there is no canonical definition to state claims against.
-/

/-! ## A204446.P1823273169493959897

`A149002(A001096(n))`
-/

namespace A204446.P1823273169493959897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149002 (A001096 n).toNat

end

end A204446.P1823273169493959897

/-!
# A204447: Symmetric matrix: f(i,j)=floor[(i+j+5)/4]-floor[(i+j+2)/4], by (constant) antidiagonals.

The programs for A204447, the canonical program `A204447.P198229542086877322` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A204447 has offset 1).

The definition of A204447 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A204447.P13755280390201168526

`ceil(∑[char[∑[n+1]]]%4/7)`
-/

namespace A204447.P13755280390201168526
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(((∑ j ∈ Finset.range (n + 1), f1 j) % 4 : ℕ) : ℚ) / 7⌉

end

end A204447.P13755280390201168526

namespace A204447

/-- `ceil(∑[char[∑[n+1]]]%4/7)` -/
def P13755280390201168526.Spec : Prop :=
  ∀ n, P13755280390201168526.a n = A204447 (n + 1)

end A204447

/-! ## A204447.P54084478322730747

`∏{p}[and(3, comp[∑[n]]-n), #-2]`
-/

namespace A204447.P54084478322730747
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 ((SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ) - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, ((p : ℤ) - 2)

end

end A204447.P54084478322730747

namespace A204447

/-- `∏{p}[and(3, comp[∑[n]]-n), #-2]` -/
def P54084478322730747.Spec : Prop :=
  ∀ n, P54084478322730747.a n = A204447 (n + 1)

end A204447

/-! ## A204447.P198229542086877322

`floor(sqrt(and(3, A003056(n))))`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A204447

/-- `floor(sqrt(and(3, A003056(n))))` -/
def P198229542086877322.Spec : Prop :=
  ∀ n, P198229542086877322.a n = A204447 (n + 1)

theorem P198229542086877322.correct : P198229542086877322.Spec := by
  intro n
  simp only [A204447, Nat.add_sub_cancel]

end A204447

/-! ## A204447.P13188578790310495361

`A152822(∑[char[∑[n]]]+1)`
-/

namespace A204447.P13188578790310495361
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152822 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A204447.P13188578790310495361

namespace A204447

/-- `A152822(∑[char[∑[n]]]+1)` -/
def P13188578790310495361.Spec : Prop :=
  ∀ n, P13188578790310495361.a n = A204447 (n + 1)

end A204447

/-! ## A204447.P2584399446248581649

`A166486(∑[char[∑[n+1]]])`
-/

namespace A204447.P2584399446248581649
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166486 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A204447.P2584399446248581649

namespace A204447

/-- `A166486(∑[char[∑[n+1]]])` -/
def P2584399446248581649.Spec : Prop :=
  ∀ n, P2584399446248581649.a n = A204447 (n + 1)

end A204447

/-! ## A204447.P13652491956472038963

`A005286(∑[char[∑[n]]])%2`
-/

namespace A204447.P13652491956472038963
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005286 (∑ j ∈ Finset.range (n + 1), f1 j)) 2

end

end A204447.P13652491956472038963

namespace A204447

/-- `A005286(∑[char[∑[n]]])%2` -/
def P13652491956472038963.Spec : Prop :=
  ∀ n, P13652491956472038963.a n = A204447 (n + 1)

end A204447

/-! ## A204447.P18210697118516353181

`A035104(∑[char[∑[n]]])%2`
-/

namespace A204447.P18210697118516353181
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A035104 (∑ j ∈ Finset.range (n + 1), f1 j)) 2

end

end A204447.P18210697118516353181

namespace A204447

/-- `A035104(∑[char[∑[n]]])%2` -/
def P18210697118516353181.Spec : Prop :=
  ∀ n, P18210697118516353181.a n = A204447 (n + 1)

end A204447

/-! ## A204447.P13290466354576073381

`A061037(comp[∑[n]]-n)%2`
-/

namespace A204447.P13290466354576073381
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061037 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n - n)) 2

end

end A204447.P13290466354576073381

namespace A204447

/-- `A061037(comp[∑[n]]-n)%2` -/
def P13290466354576073381.Spec : Prop :=
  ∀ n, P13290466354576073381.a n = A204447 (n + 1)

end A204447

/-! ## A204447.P6125750032686961965

`A000700(and(3, comp[∑[n]]-n))`
-/

namespace A204447.P6125750032686961965
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 (Int.land 3 ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ))).toNat

end

end A204447.P6125750032686961965

namespace A204447

/-- `A000700(and(3, comp[∑[n]]-n))` -/
def P6125750032686961965.Spec : Prop :=
  ∀ n, P6125750032686961965.a n = A204447 (n + 1)

end A204447

/-! ## A204447.P3833912230813561269

`A084202(and(3, comp[∑[n]]-n))`
-/

namespace A204447.P3833912230813561269
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084202 (Int.land 3 ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ))).toNat

end

end A204447.P3833912230813561269

namespace A204447

/-- `A084202(and(3, comp[∑[n]]-n))` -/
def P3833912230813561269.Spec : Prop :=
  ∀ n, P3833912230813561269.a n = A204447 (n + 1)

end A204447

/-! ## A204447.P17378043551961522457

`A136707(and(3, comp[∑[n]]-n))`
-/

namespace A204447.P17378043551961522457
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136707 (Int.land 3 ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ))).toNat

end

end A204447.P17378043551961522457

namespace A204447

/-- `A136707(and(3, comp[∑[n]]-n))` -/
def P17378043551961522457.Spec : Prop :=
  ∀ n, P17378043551961522457.a n = A204447 (n + 1)

end A204447

/-! ## A204447.P6515637639072804733

`A298934(and(3, comp[∑[n]]-n))`
-/

namespace A204447.P6515637639072804733
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298934 (Int.land 3 ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ))).toNat

end

end A204447.P6515637639072804733

namespace A204447

/-- `A298934(and(3, comp[∑[n]]-n))` -/
def P6515637639072804733.Spec : Prop :=
  ∀ n, P6515637639072804733.a n = A204447 (n + 1)

end A204447

/-! ## A204447.P6343887706775977309

`2-A177704(∑[char[∑[n]]]+2)`
-/

namespace A204447.P6343887706775977309
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A177704 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A204447.P6343887706775977309

namespace A204447

/-- `2-A177704(∑[char[∑[n]]]+2)` -/
def P6343887706775977309.Spec : Prop :=
  ∀ n, P6343887706775977309.a n = A204447 (n + 1)

end A204447

/-! ## A204447.P7283415589446514757

`A004006(∑[char[∑[n+1]]])%2`
-/

namespace A204447.P7283415589446514757
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004006 (∑ j ∈ Finset.range (n + 1), f1 j)) 2

end

end A204447.P7283415589446514757

namespace A204447

/-- `A004006(∑[char[∑[n+1]]])%2` -/
def P7283415589446514757.Spec : Prop :=
  ∀ n, P7283415589446514757.a n = A204447 (n + 1)

end A204447

/-! ## A204447.P15678416252052127070

`A006003(∑[char[∑[n+1]]])%2`
-/

namespace A204447.P15678416252052127070
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006003 (∑ j ∈ Finset.range (n + 1), f1 j)) 2

end

end A204447.P15678416252052127070

namespace A204447

/-- `A006003(∑[char[∑[n+1]]])%2` -/
def P15678416252052127070.Spec : Prop :=
  ∀ n, P15678416252052127070.a n = A204447 (n + 1)

end A204447

/-! ## A204447.P6881017351747208603

`A062025(∑[char[∑[n+1]]])%2`
-/

namespace A204447.P6881017351747208603
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A062025 (∑ j ∈ Finset.range (n + 1), f1 j)) 2

end

end A204447.P6881017351747208603

namespace A204447

/-- `A062025(∑[char[∑[n+1]]])%2` -/
def P6881017351747208603.Spec : Prop :=
  ∀ n, P6881017351747208603.a n = A204447 (n + 1)

end A204447

/-! ## A204447.P1146937853937310632

`A000032(comp[∑[n]]-n)²%3`
-/

namespace A204447.P1146937853937310632
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000032 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n - n) ^ 2) 3

end

end A204447.P1146937853937310632

namespace A204447

/-- `A000032(comp[∑[n]]-n)²%3` -/
def P1146937853937310632.Spec : Prop :=
  ∀ n, P1146937853937310632.a n = A204447 (n + 1)

end A204447

/-! ## A204447.P5482737300450305266

`A000041(and(3, comp[∑[n]]-n))%2`
-/

namespace A204447.P5482737300450305266
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000041 (Int.land 3 ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ))).toNat) 2

end

end A204447.P5482737300450305266

namespace A204447

/-- `A000041(and(3, comp[∑[n]]-n))%2` -/
def P5482737300450305266.Spec : Prop :=
  ∀ n, P5482737300450305266.a n = A204447 (n + 1)

end A204447

/-! ## A204447.P10772035855133563866

`A000108(and(3, comp[∑[n]]-n))%2`
-/

namespace A204447.P10772035855133563866
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000108 (Int.land 3 ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ))).toNat) 2

end

end A204447.P10772035855133563866

namespace A204447

/-- `A000108(and(3, comp[∑[n]]-n))%2` -/
def P10772035855133563866.Spec : Prop :=
  ∀ n, P10772035855133563866.a n = A204447 (n + 1)

end A204447

/-! ## A204447.P4717438033007453798

`A000045(∑[char[∑[n+1]]])²%3`
-/

namespace A204447.P4717438033007453798
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000045 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2) 3

end

end A204447.P4717438033007453798

namespace A204447

/-- `A000045(∑[char[∑[n+1]]])²%3` -/
def P4717438033007453798.Spec : Prop :=
  ∀ n, P4717438033007453798.a n = A204447 (n + 1)

end A204447

/-!
# A204449: Exponential (or binomial) half-convolution of A000032 (Lucas) with itself.

The programs for A204449, there is no canonical definition to state claims against.
-/

/-! ## A204449.P5697703642155748853

`A087131(n)+2-A204450(n)`
-/

namespace A204449.P5697703642155748853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087131 n + (2 - A204450 n)

end

end A204449.P5697703642155748853

/-! ## A204449.P8395407176747336278

`A272263(n)+3-A204450(n)`
-/

namespace A204449.P8395407176747336278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272263 n + (3 - A204450 n)

end

end A204449.P8395407176747336278

/-! ## A204449.P3496561821834065390

`2*A203579(n)-A204450(n)`
-/

namespace A204449.P3496561821834065390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A203579 n - A204450 n

end

end A204449.P3496561821834065390

/-! ## A204449.P2446710725388435021

`A189318(n)-A204450(n)-A272263(n)`
-/

namespace A204449.P2446710725388435021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189318 n - A204450 n - A272263 n

end

end A204449.P2446710725388435021

/-! ## A204449.P3801597156953497078

`A204450(n)+A005843(A203579(n)-A204450(n))`
-/

namespace A204449.P3801597156953497078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204450 n + A005843 (A203579 n - A204450 n).toNat

end

end A204449.P3801597156953497078

/-!
# A204450: 2*A203579 - A204449. Difference between the exponential convolution of A000032 (Lucas) with itself and the corresponding exponential half-convolution.

The programs for A204450, there is no canonical definition to state claims against.
-/

/-! ## A204450.P12228899916966828676

`A087131(n)+2-A204449(n)`
-/

namespace A204450.P12228899916966828676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087131 n + (2 - A204449 n)

end

end A204450.P12228899916966828676

/-! ## A204450.P9127649223655520469

`A272263(n)+3-A204449(n)`
-/

namespace A204450.P9127649223655520469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272263 n + (3 - A204449 n)

end

end A204450.P9127649223655520469

/-! ## A204450.P16839722525956710946

`2*A203579(n)-A204449(n)`
-/

namespace A204450.P16839722525956710946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A203579 n - A204449 n

end

end A204450.P16839722525956710946

/-! ## A204450.P5919376109750209462

`A189318(n)-A204449(n)-A272263(n)`
-/

namespace A204450.P5919376109750209462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189318 n - A204449 n - A272263 n

end

end A204450.P5919376109750209462

/-!
# A204451: 2*A014335 - A203578. Difference of the exponential convolution of A000045 (Fibonacci) with itself and the corresponding exponential half-convolution.

The programs for A204451, there is no canonical definition to state claims against.
-/

/-! ## A204451.P6356091905252605546

`A014334(n)-A203578(n)`
-/

namespace A204451.P6356091905252605546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014334 n - A203578 n

end

end A204451.P6356091905252605546

/-! ## A204451.P13061733762099221366

`2*A014335(n)-A203578(n)`
-/

namespace A204451.P13061733762099221366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A014335 n - A203578 n

end

end A204451.P13061733762099221366

/-! ## A204451.P18094568980437547593

`∑[A131577(n)*A212804(n)]-A203578(n)`
-/

namespace A204451.P18094568980437547593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n * A212804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A203578 n

end

end A204451.P18094568980437547593

/-! ## A204451.P10417279060528485595

`A063727(n)-(A203578(n)+A081057(n))`
-/

namespace A204451.P10417279060528485595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063727 n - (A203578 n + A081057 n)

end

end A204451.P10417279060528485595

/-! ## A204451.P289209898434544904

`∑[A084057(n)]-(A203578(n)+A081057(n))`
-/

namespace A204451.P289209898434544904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (A203578 n + A081057 n)

end

end A204451.P289209898434544904

/-!
# A204452: A014330 - A203577. Difference between the exponential convolution of A000108 (Catalan) with itself and the corresponding exponential half-convolution.

The programs for A204452, there is no canonical definition to state claims against.
-/

/-! ## A204452.P10666909078565737077

`A014330(n)-A203577(n)`
-/

namespace A204452.P10666909078565737077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014330 n - A203577 n

end

end A204452.P10666909078565737077

/-! ## A204452.P1168543118959292478

`A294498(∑[n+3])-A203577(n)`
-/

namespace A204452.P1168543118959292478
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294498 (∑ j ∈ Finset.range (n + 1), f1 j) - A203577 n

end

end A204452.P1168543118959292478

/-! ## A204452.P17452256471530728096

`record[A294498(A069981(n))]-A203577(n)`
-/

namespace A204452.P17452256471530728096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294498 (A069981 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A203577 n

end

end A204452.P17452256471530728096

/-! ## A204452.P12561383352362340455

`A014330(n)+A001478(A203577(n)+1)+1`
-/

namespace A204452.P12561383352362340455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014330 n + (A001478 (A203577 n + 1).toNat + 1)

end

end A204452.P12561383352362340455

/-!
# A204453: Period length 14: [0, 1, 2, 3, 4, 5, 6, 0, 6, 5, 4, 3, 2, 1] repeated.

The programs for A204453, the canonical program `A204453.P3552801562984708517` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A204453 has offset 0).

The definition of A204453 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A204453.P3552801562984708517

`abs((6-(n+6)%14)%7)`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A204453

/-- `abs((6-(n+6)%14)%7)` -/
def P3552801562984708517.Spec : Prop :=
  ∀ n, P3552801562984708517.a n = A204453 n

theorem P3552801562984708517.correct : P3552801562984708517.Spec := by
  intro n
  simp only [A204453]

end A204453

/-!
# A204454: Odd numbers not divisible by 11.

The programs for A204454, the canonical program `A204454.P16109309667546923153` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A204454 has offset 1).

The definition of A204454 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A204454.P16109309667546923153

`n+1+n+2*floor((n+5)/10)`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A204454

/-- `n+1+n+2*floor((n+5)/10)` -/
def P16109309667546923153.Spec : Prop :=
  ∀ n, P16109309667546923153.a n = A204454 (n + 1)

theorem P16109309667546923153.correct : P16109309667546923153.Spec := by
  intro n
  simp only [A204454, Nat.add_sub_cancel]

end A204454

/-! ## A204454.P8268695429363161196

`record[lcm(22, n+1)/22]`
-/

namespace A204454.P8268695429363161196
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 22 (n + 1) : ℚ) / 22

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204454.P8268695429363161196

namespace A204454

/-- `record[lcm(22, n+1)/22]` -/
def P8268695429363161196.Spec : Prop :=
  ∀ n, P8268695429363161196.a n = (A204454 (n + 1) : ℚ)

end A204454

/-! ## A204454.P6977778744521392520

`or(1, comp[6*n]+n)`
-/

namespace A204454.P6977778744521392520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + n)

end

end A204454.P6977778744521392520

namespace A204454

/-- `or(1, comp[6*n]+n)` -/
def P6977778744521392520.Spec : Prop :=
  ∀ n, (P6977778744521392520.a n : ℤ) = A204454 (n + 1)

end A204454

/-! ## A204454.P2251083510166300596

`comp[n*11^(n%2)]`
-/

namespace A204454.P2251083510166300596
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * 11 ^ (n % 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A204454.P2251083510166300596

namespace A204454

/-- `comp[n*11^(n%2)]` -/
def P2251083510166300596.Spec : Prop :=
  ∀ n, (P2251083510166300596.a n : ℤ) = A204454 (n + 1)

end A204454

/-! ## A204454.P7852466899438574750

`eq[1, n^log(gcd(22, n))]`
-/

namespace A204454.P7852466899438574750
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) ^ (Real.log (Nat.gcd 22 n : ℝ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) = f2 j) n

end

end A204454.P7852466899438574750

namespace A204454

/-- `eq[1, n^log(gcd(22, n))]` -/
def P7852466899438574750.Spec : Prop :=
  ∀ n, (P7852466899438574750.a n : ℤ) = A204454 (n + 1)

end A204454

/-! ## A204454.P18065043885941481628

`comp[∪[2*n, 11*n]]`
-/

namespace A204454.P18065043885941481628
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∨ ∃ j, f3 j = x) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A204454.P18065043885941481628

namespace A204454

/-- `comp[∪[2*n, 11*n]]` -/
def P18065043885941481628.Spec : Prop :=
  ∀ n, (P18065043885941481628.a n : ℤ) = A204454 (n + 1)

end A204454

/-! ## A204454.P11821240541734108182

`record[(n+1)/gcd(44, n+1)]`
-/

namespace A204454.P11821240541734108182
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Nat.gcd 44 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204454.P11821240541734108182

namespace A204454

/-- `record[(n+1)/gcd(44, n+1)]` -/
def P11821240541734108182.Spec : Prop :=
  ∀ n, P11821240541734108182.a n = (A204454 (n + 1) : ℚ)

end A204454

/-! ## A204454.P13851630332789879821

`record[A000265(comp[11*n])]`
-/

namespace A204454.P13851630332789879821
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11 * n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204454.P13851630332789879821

namespace A204454

/-- `record[A000265(comp[11*n])]` -/
def P13851630332789879821.Spec : Prop :=
  ∀ n, P13851630332789879821.a n = A204454 (n + 1)

end A204454

/-! ## A204454.P7675731065539432903

`∩[2*n+1, A160542(n+1)]`
-/

namespace A204454.P7675731065539432903
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160542 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A204454.P7675731065539432903

namespace A204454

/-- `∩[2*n+1, A160542(n+1)]` -/
def P7675731065539432903.Spec : Prop :=
  ∀ n, (P7675731065539432903.a n : ℤ) = A204454 (n + 1)

end A204454

/-! ## A204454.P14250946891443359651

`∩[A160542(n+1), A004273(n)]`
-/

namespace A204454.P14250946891443359651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160542 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A204454.P14250946891443359651

namespace A204454

/-- `∩[A160542(n+1), A004273(n)]` -/
def P14250946891443359651.Spec : Prop :=
  ∀ n, (P14250946891443359651.a n : ℤ) = A204454 (n + 1)

end A204454

/-! ## A204454.P4618682348604524204

`∩[A160542(n+1), A060747(n)]`
-/

namespace A204454.P4618682348604524204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160542 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A204454.P4618682348604524204

namespace A204454

/-- `∩[A160542(n+1), A060747(n)]` -/
def P4618682348604524204.Spec : Prop :=
  ∀ n, (P4618682348604524204.a n : ℤ) = A204454 (n + 1)

end A204454

/-! ## A204454.P4227375833654625026

`A109613(A047253(n+1)+n)`
-/

namespace A204454.P4227375833654625026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (A047253 (n + 1) + (n : ℤ)).toNat

end

end A204454.P4227375833654625026

namespace A204454

/-- `A109613(A047253(n+1)+n)` -/
def P4227375833654625026.Spec : Prop :=
  ∀ n, P4227375833654625026.a n = A204454 (n + 1)

end A204454

/-! ## A204454.P13988548925244088932

`record[A106612(2*n+1)]`
-/

namespace A204454.P13988548925244088932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106612 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204454.P13988548925244088932

namespace A204454

/-- `record[A106612(2*n+1)]` -/
def P13988548925244088932.Spec : Prop :=
  ∀ n, P13988548925244088932.a n = A204454 (n + 1)

end A204454

/-! ## A204454.P15783070357626474931

`filter[2*n+1, A145568(#)]`
-/

namespace A204454.P15783070357626474931
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145568 (f1 j) = 1) n)

end

end A204454.P15783070357626474931

namespace A204454

/-- `filter[2*n+1, A145568(#)]` -/
def P15783070357626474931.Spec : Prop :=
  ∀ n, (P15783070357626474931.a n : ℤ) = A204454 (n + 1)

end A204454

/-! ## A204454.P11084687903353077633

`record[A060819(floor(11*n/10)+1)]`
-/

namespace A204454.P11084687903353077633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060819 (⌊11 * ((n : ℚ) / 10)⌋ + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204454.P11084687903353077633

namespace A204454

/-- `record[A060819(floor(11*n/10)+1)]` -/
def P11084687903353077633.Spec : Prop :=
  ∀ n, P11084687903353077633.a n = A204454 (n + 1)

end A204454

/-! ## A204454.P17357606299121612696

`A267458(A364668(n+1))`
-/

namespace A204454.P17357606299121612696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267458 (A364668 (n + 1)).toNat

end

end A204454.P17357606299121612696

namespace A204454

/-- `A267458(A364668(n+1))` -/
def P17357606299121612696.Spec : Prop :=
  ∀ n, P17357606299121612696.a n = A204454 (n + 1)

end A204454

/-! ## A204454.P12694448184733077150

`eq[A050932(n), A109014(n)]`
-/

namespace A204454.P12694448184733077150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050932 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109014 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A204454.P12694448184733077150

namespace A204454

/-- `eq[A050932(n), A109014(n)]` -/
def P12694448184733077150.Spec : Prop :=
  ∀ n, (P12694448184733077150.a n : ℤ) = A204454 (n + 1)

end A204454

/-! ## A204454.P9319891027336751514

`eq[A076826(n), A109014(n)]`
-/

namespace A204454.P9319891027336751514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076826 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109014 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A204454.P9319891027336751514

namespace A204454

/-- `eq[A076826(n), A109014(n)]` -/
def P9319891027336751514.Spec : Prop :=
  ∀ n, (P9319891027336751514.a n : ℤ) = A204454 (n + 1)

end A204454

/-! ## A204454.P8121360277703998762

`eq[A087230(n), A109014(n)]`
-/

namespace A204454.P8121360277703998762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087230 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109014 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A204454.P8121360277703998762

namespace A204454

/-- `eq[A087230(n), A109014(n)]` -/
def P8121360277703998762.Spec : Prop :=
  ∀ n, (P8121360277703998762.a n : ℤ) = A204454 (n + 1)

end A204454

/-! ## A204454.P11222439221438759194

`eq[A050932(n), A145568(n)]`
-/

namespace A204454.P11222439221438759194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050932 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145568 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A204454.P11222439221438759194

namespace A204454

/-- `eq[A050932(n), A145568(n)]` -/
def P11222439221438759194.Spec : Prop :=
  ∀ n, (P11222439221438759194.a n : ℤ) = A204454 (n + 1)

end A204454

/-!
# A204455: Squarefree product of all odd primes dividing n, and 1 if n is a power of 2: A099985/2.

The programs for A204455, the canonical program `A204455.P9449319865665436464` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A204455 has offset 1).

The definition of A204455 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A099985, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A204455.P9449319865665436464

`A099985(n+1)/2`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A204455

/-- `A099985(n+1)/2` -/
def P9449319865665436464.Spec : Prop :=
  ∀ n, P9449319865665436464.a n = (A204455 (n + 1) : ℚ)

end A204455

/-! ## A204455.P11773694970894105236

`A007947(2*(n+1))/2`
-/

namespace A204455.P11773694970894105236
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007947 (2 * (n + 1)) : ℚ) / 2

end

end A204455.P11773694970894105236

namespace A204455

/-- `A007947(2*(n+1))/2` -/
def P11773694970894105236.Spec : Prop :=
  ∀ n, P11773694970894105236.a n = (A204455 (n + 1) : ℚ)

end A204455

/-! ## A204455.P3384867042290158297

`A007947(A000265(n+1))`
-/

namespace A204455.P3384867042290158297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A000265 (n + 1)).toNat

end

end A204455.P3384867042290158297

namespace A204455

/-- `A007947(A000265(n+1))` -/
def P3384867042290158297.Spec : Prop :=
  ∀ n, P3384867042290158297.a n = A204455 (n + 1)

end A204455

/-! ## A204455.P16112014841086717603

`∏{p}[2*(n+1), #]/2`
-/

namespace A204455.P16112014841086717603
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) / 2

end

end A204455.P16112014841086717603

namespace A204455

/-- `∏{p}[2*(n+1), #]/2` -/
def P16112014841086717603.Spec : Prop :=
  ∀ n, P16112014841086717603.a n = (A204455 (n + 1) : ℚ)

end A204455

/-! ## A204455.P13254644651817947108

`lcm(2, ∏{p}[n+1, #])/2`
-/

namespace A204455.P13254644651817947108
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 (∏ p ∈ Nat.primeFactors (f1 n), p) : ℚ) / 2

end

end A204455.P13254644651817947108

namespace A204455

/-- `lcm(2, ∏{p}[n+1, #])/2` -/
def P13254644651817947108.Spec : Prop :=
  ∀ n, P13254644651817947108.a n = (A204455 (n + 1) : ℚ)

end A204455

/-! ## A204455.P9269123863860842168

`∏{p}[n+1, or(1, #-1)]`
-/

namespace A204455.P9269123863860842168
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), Int.lor 1 ((p : ℤ) - 1)

end

end A204455.P9269123863860842168

namespace A204455

/-- `∏{p}[n+1, or(1, #-1)]` -/
def P9269123863860842168.Spec : Prop :=
  ∀ n, P9269123863860842168.a n = A204455 (n + 1)

end A204455

/-! ## A204455.P13181083839497115709

`∏{p}[n+1, #/gcd(2, #)]`
-/

namespace A204455.P13181083839497115709
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (p : ℚ) / (Nat.gcd 2 p : ℚ)

end

end A204455.P13181083839497115709

namespace A204455

/-- `∏{p}[n+1, #/gcd(2, #)]` -/
def P13181083839497115709.Spec : Prop :=
  ∀ n, P13181083839497115709.a n = (A204455 (n + 1) : ℚ)

end A204455

/-! ## A204455.P18123803800897388285

`∏{p}[n+1, #-val(#, 2)]`
-/

namespace A204455.P18123803800897388285
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), ((p : ℤ) - (SequenceMachineLib.valuation p 2 : ℤ))

end

end A204455.P18123803800897388285

namespace A204455

/-- `∏{p}[n+1, #-val(#, 2)]` -/
def P18123803800897388285.Spec : Prop :=
  ∀ n, P18123803800897388285.a n = A204455 (n + 1)

end A204455

/-! ## A204455.P5499424202893347799

`∏{p}[n+1, #-C(2, #)]`
-/

namespace A204455.P5499424202893347799
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), ((p : ℤ) - (Nat.choose 2 p : ℤ))

end

end A204455.P5499424202893347799

namespace A204455

/-- `∏{p}[n+1, #-C(2, #)]` -/
def P5499424202893347799.Spec : Prop :=
  ∀ n, P5499424202893347799.a n = A204455 (n + 1)

end A204455

/-! ## A204455.P1139792887576290863

`∏{p}[n+1, #^(#%2)]`
-/

namespace A204455.P1139792887576290863
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), p ^ (p % 2)

end

end A204455.P1139792887576290863

namespace A204455

/-- `∏{p}[n+1, #^(#%2)]` -/
def P1139792887576290863.Spec : Prop :=
  ∀ n, (P1139792887576290863.a n : ℤ) = A204455 (n + 1)

end A204455

/-! ## A204455.P17279907947129300130

`∏{p}[n+1, #^and(1, #)]`
-/

namespace A204455.P17279907947129300130
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), p ^ Nat.land 1 p

end

end A204455.P17279907947129300130

namespace A204455

/-- `∏{p}[n+1, #^and(1, #)]` -/
def P17279907947129300130.Spec : Prop :=
  ∀ n, (P17279907947129300130.a n : ℤ) = A204455 (n + 1)

end A204455

/-! ## A204455.P2807708815412154528

`∏{p}[n+1, -or(1, -#)]`
-/

namespace A204455.P2807708815412154528
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (-Int.lor 1 (-(p : ℤ)))

end

end A204455.P2807708815412154528

namespace A204455

/-- `∏{p}[n+1, -or(1, -#)]` -/
def P2807708815412154528.Spec : Prop :=
  ∀ n, P2807708815412154528.a n = A204455 (n + 1)

end A204455

/-! ## A204455.P14623096018112678606

`floor(∏{p}[n+2+n, #]/2)`
-/

namespace A204455.P14623096018112678606
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) / 2⌋

end

end A204455.P14623096018112678606

namespace A204455

/-- `floor(∏{p}[n+2+n, #]/2)` -/
def P14623096018112678606.Spec : Prop :=
  ∀ n, P14623096018112678606.a n = A204455 (n + 1)

end A204455

/-! ## A204455.P10537818493814814001

`ceil(∏{p}[n+2+n, #]/2)`
-/

namespace A204455.P10537818493814814001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) / 2⌉

end

end A204455.P10537818493814814001

namespace A204455

/-- `ceil(∏{p}[n+2+n, #]/2)` -/
def P10537818493814814001.Spec : Prop :=
  ∀ n, P10537818493814814001.a n = A204455 (n + 1)

end A204455

/-! ## A204455.P4846920525418543275

`round(∏{p}[n+2+n, #]/2)`
-/

namespace A204455.P4846920525418543275
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) / 2)

end

end A204455.P4846920525418543275

namespace A204455

/-- `round(∏{p}[n+2+n, #]/2)` -/
def P4846920525418543275.Spec : Prop :=
  ∀ n, P4846920525418543275.a n = A204455 (n + 1)

end A204455

/-! ## A204455.P13286003598672659631

`A000265(∏{p}[n+1, #])`
-/

namespace A204455.P13286003598672659631
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A204455.P13286003598672659631

namespace A204455

/-- `A000265(∏{p}[n+1, #])` -/
def P13286003598672659631.Spec : Prop :=
  ∀ n, P13286003598672659631.a n = A204455 (n + 1)

end A204455

/-! ## A204455.P7164571592550712361

`∏{p}[n+1, A015126(#)]`
-/

namespace A204455.P7164571592550712361
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A015126 p

end

end A204455.P7164571592550712361

namespace A204455

/-- `∏{p}[n+1, A015126(#)]` -/
def P7164571592550712361.Spec : Prop :=
  ∀ n, P7164571592550712361.a n = A204455 (n + 1)

end A204455

/-! ## A204455.P12354702509884006188

`∏{p}[n+1, A015909(#)]`
-/

namespace A204455.P12354702509884006188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A015909 p

end

end A204455.P12354702509884006188

namespace A204455

/-- `∏{p}[n+1, A015909(#)]` -/
def P12354702509884006188.Spec : Prop :=
  ∀ n, P12354702509884006188.a n = A204455 (n + 1)

end A204455

/-! ## A204455.P18274088447923106922

`A026741(∏{p}[n+1, #])`
-/

namespace A204455.P18274088447923106922
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A204455.P18274088447923106922

namespace A204455

/-- `A026741(∏{p}[n+1, #])` -/
def P18274088447923106922.Spec : Prop :=
  ∀ n, P18274088447923106922.a n = A204455 (n + 1)

end A204455

/-! ## A204455.P4232807150735886322

`A040026(∏{p}[n+1, #])`
-/

namespace A204455.P4232807150735886322
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040026 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A204455.P4232807150735886322

namespace A204455

/-- `A040026(∏{p}[n+1, #])` -/
def P4232807150735886322.Spec : Prop :=
  ∀ n, P4232807150735886322.a n = A204455 (n + 1)

end A204455

/-!
# A204456: Coefficient array of numerator polynomials of the o.g.f.s for the sequence of odd numbers not divisible by a given prime.

The programs for A204456, there is no canonical definition to state claims against.
-/

/-! ## A204456.P3262287666194061985

`gcd(4, A278046(A006843(n+1)²))`
-/

namespace A204456.P3262287666194061985
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 4 (A278046 (A006843 (n + 1) ^ 2).toNat)

end

end A204456.P3262287666194061985

/-! ## A204456.P819894830088354169

`∏{e}[A006843(A006843(n+1)^5)², #]`
-/

namespace A204456.P819894830088354169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006843 (A006843 (n + 1) ^ 5).toNat ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A204456.P819894830088354169

/-! ## A204456.P11181699192323360732

`∑{d}[A006843(A006843(n+1)^5), A014673(#)]`
-/

namespace A204456.P11181699192323360732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006843 (A006843 (n + 1) ^ 5).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A014673 d

end

end A204456.P11181699192323360732

/-! ## A204456.P7626263749086644368

`∑{d}[A006843(A006843(n+1)^5), A014709(#)]`
-/

namespace A204456.P7626263749086644368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006843 (A006843 (n + 1) ^ 5).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A014709 d

end

end A204456.P7626263749086644368

/-! ## A204456.P1205574649445957194

`∑{d}[A006843(A006843(n+1)^5), A050363(#)]`
-/

namespace A204456.P1205574649445957194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006843 (A006843 (n + 1) ^ 5).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A050363 d

end

end A204456.P1205574649445957194

/-!
# A204457: Odd numbers not divisible by 13.

The programs for A204457, the canonical program `A204457.P16051878408785551884` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A204457 has offset 1).

The definition of A204457 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A204457.P16051878408785551884

`2*(n+1)+1+2*floor((n-6)/12)`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A204457

/-- `2*(n+1)+1+2*floor((n-6)/12)` -/
def P16051878408785551884.Spec : Prop :=
  ∀ n, P16051878408785551884.a n = A204457 (n + 1)

theorem P16051878408785551884.correct : P16051878408785551884.Spec := by
  intro n
  simp only [A204457, Nat.add_sub_cancel]

end A204457

/-! ## A204457.P7552475293316252598

`or(1, comp[7*n]+n)`
-/

namespace A204457.P7552475293316252598
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + n)

end

end A204457.P7552475293316252598

namespace A204457

/-- `or(1, comp[7*n]+n)` -/
def P7552475293316252598.Spec : Prop :=
  ∀ n, (P7552475293316252598.a n : ℤ) = A204457 (n + 1)

end A204457

/-! ## A204457.P16677642132690730172

`eq[gcd(26, n)+n, n+1]`
-/

namespace A204457.P16677642132690730172
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 26 n + n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A204457.P16677642132690730172

namespace A204457

/-- `eq[gcd(26, n)+n, n+1]` -/
def P16677642132690730172.Spec : Prop :=
  ∀ n, (P16677642132690730172.a n : ℤ) = A204457 (n + 1)

end A204457

/-! ## A204457.P16592347886503655207

`comp[12*n*n%2+n]`
-/

namespace A204457.P16592347886503655207
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12 * (n * (n % 2)) + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A204457.P16592347886503655207

namespace A204457

/-- `comp[12*n*n%2+n]` -/
def P16592347886503655207.Spec : Prop :=
  ∀ n, (P16592347886503655207.a n : ℤ) = A204457 (n + 1)

end A204457

/-! ## A204457.P8165499903386469691

`comp[3*n*4*and(1, n)+n]`
-/

namespace A204457.P8165499903386469691
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n * (4 * Nat.land 1 n) + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A204457.P8165499903386469691

namespace A204457

/-- `comp[3*n*4*and(1, n)+n]` -/
def P8165499903386469691.Spec : Prop :=
  ∀ n, (P8165499903386469691.a n : ℤ) = A204457 (n + 1)

end A204457

/-! ## A204457.P12608213548013335777

`∩[2*n+1, A113763(n+1)]`
-/

namespace A204457.P12608213548013335777
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113763 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A204457.P12608213548013335777

namespace A204457

/-- `∩[2*n+1, A113763(n+1)]` -/
def P12608213548013335777.Spec : Prop :=
  ∀ n, (P12608213548013335777.a n : ℤ) = A204457 (n + 1)

end A204457

/-! ## A204457.P10472934972013460072

`∩[A113763(n+1), A004273(n)]`
-/

namespace A204457.P10472934972013460072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113763 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A204457.P10472934972013460072

namespace A204457

/-- `∩[A113763(n+1), A004273(n)]` -/
def P10472934972013460072.Spec : Prop :=
  ∀ n, (P10472934972013460072.a n : ℤ) = A204457 (n + 1)

end A204457

/-! ## A204457.P7134653203974078717

`∩[A113763(n+1), A060747(n)]`
-/

namespace A204457.P7134653203974078717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113763 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A204457.P7134653203974078717

namespace A204457

/-- `∩[A113763(n+1), A060747(n)]` -/
def P7134653203974078717.Spec : Prop :=
  ∀ n, (P7134653203974078717.a n : ℤ) = A204457 (n + 1)

end A204457

/-! ## A204457.P14819237322665621808

`record[A106614(2*n+1)]`
-/

namespace A204457.P14819237322665621808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106614 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204457.P14819237322665621808

namespace A204457

/-- `record[A106614(2*n+1)]` -/
def P14819237322665621808.Spec : Prop :=
  ∀ n, P14819237322665621808.a n = A204457 (n + 1)

end A204457

/-! ## A204457.P9464957200758090151

`eq[n, A106614(A093178(n))]`
-/

namespace A204457.P9464957200758090151
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106614 (A093178 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A204457.P9464957200758090151

namespace A204457

/-- `eq[n, A106614(A093178(n))]` -/
def P9464957200758090151.Spec : Prop :=
  ∀ n, (P9464957200758090151.a n : ℤ) = A204457 (n + 1)

end A204457

/-! ## A204457.P11327814186661028138

`eq[n, A109613(A106614(n))]`
-/

namespace A204457.P11327814186661028138
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (A106614 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A204457.P11327814186661028138

namespace A204457

/-- `eq[n, A109613(A106614(n))]` -/
def P11327814186661028138.Spec : Prop :=
  ∀ n, (P11327814186661028138.a n : ℤ) = A204457 (n + 1)

end A204457

/-! ## A204457.P6659637939831529850

`eq[n, A106614(A215495(n))]`
-/

namespace A204457.P6659637939831529850
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106614 (A215495 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A204457.P6659637939831529850

namespace A204457

/-- `eq[n, A106614(A215495(n))]` -/
def P6659637939831529850.Spec : Prop :=
  ∀ n, (P6659637939831529850.a n : ℤ) = A204457 (n + 1)

end A204457

/-! ## A204457.P16683739558821555161

`eq[A106614(n), A225058(n)]`
-/

namespace A204457.P16683739558821555161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106614 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225058 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A204457.P16683739558821555161

namespace A204457

/-- `eq[A106614(n), A225058(n)]` -/
def P16683739558821555161.Spec : Prop :=
  ∀ n, (P16683739558821555161.a n : ℤ) = A204457 (n + 1)

end A204457

/-! ## A204457.P3334555362195060298

`eq[A106614(n), A257088(n)]`
-/

namespace A204457.P3334555362195060298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106614 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257088 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A204457.P3334555362195060298

namespace A204457

/-- `eq[A106614(n), A257088(n)]` -/
def P3334555362195060298.Spec : Prop :=
  ∀ n, (P3334555362195060298.a n : ℤ) = A204457 (n + 1)

end A204457

/-! ## A204457.P4167925363820049959

`eq[A106614(n), A257143(n)]`
-/

namespace A204457.P4167925363820049959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106614 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257143 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A204457.P4167925363820049959

namespace A204457

/-- `eq[A106614(n), A257143(n)]` -/
def P4167925363820049959.Spec : Prop :=
  ∀ n, (P4167925363820049959.a n : ℤ) = A204457 (n + 1)

end A204457

/-! ## A204457.P14778411452324706350

`eq[A106614(n), A261671(n)]`
-/

namespace A204457.P14778411452324706350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106614 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261671 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A204457.P14778411452324706350

namespace A204457

/-- `eq[A106614(n), A261671(n)]` -/
def P14778411452324706350.Spec : Prop :=
  ∀ n, (P14778411452324706350.a n : ℤ) = A204457 (n + 1)

end A204457

/-! ## A204457.P9562715185274789074

`eq[n, A106614(A263426(n))]`
-/

namespace A204457.P9562715185274789074
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106614 (A263426 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A204457.P9562715185274789074

namespace A204457

/-- `eq[n, A106614(A263426(n))]` -/
def P9562715185274789074.Spec : Prop :=
  ∀ n, (P9562715185274789074.a n : ℤ) = A204457 (n + 1)

end A204457

/-! ## A204457.P14680741215217845853

`eq[n, A106614(A290561(n))]`
-/

namespace A204457.P14680741215217845853
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106614 (A290561 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A204457.P14680741215217845853

namespace A204457

/-- `eq[n, A106614(A290561(n))]` -/
def P14680741215217845853.Spec : Prop :=
  ∀ n, (P14680741215217845853.a n : ℤ) = A204457 (n + 1)

end A204457

/-! ## A204457.P2606043282089518491

`eq[A106614(n), A290562(n)]`
-/

namespace A204457.P2606043282089518491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106614 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290562 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A204457.P2606043282089518491

namespace A204457

/-- `eq[A106614(n), A290562(n)]` -/
def P2606043282089518491.Spec : Prop :=
  ∀ n, (P2606043282089518491.a n : ℤ) = A204457 (n + 1)

end A204457

/-!
# A204458: Odd numbers not divisible by 17.

The programs for A204458, the canonical program `A204458.P15825106209734417521` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A204458 has offset 1).

The definition of A204458 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A204458.P15825106209734417521

`2*(n+1)+1+2*floor((n-8)/16)`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A204458

/-- `2*(n+1)+1+2*floor((n-8)/16)` -/
def P15825106209734417521.Spec : Prop :=
  ∀ n, P15825106209734417521.a n = A204458 (n + 1)

theorem P15825106209734417521.correct : P15825106209734417521.Spec := by
  intro n
  simp only [A204458, Nat.add_sub_cancel]

end A204458

/-! ## A204458.P2298783447072006244

`record[lcm(17, or(1, n))/17]`
-/

namespace A204458.P2298783447072006244
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 17 (Nat.lor 1 n) : ℚ) / 17

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204458.P2298783447072006244

namespace A204458

/-- `record[lcm(17, or(1, n))/17]` -/
def P2298783447072006244.Spec : Prop :=
  ∀ n, P2298783447072006244.a n = (A204458 (n + 1) : ℚ)

end A204458

/-! ## A204458.P9489370363690717273

`record[lcm(34, n+1)/34]`
-/

namespace A204458.P9489370363690717273
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 34 (n + 1) : ℚ) / 34

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204458.P9489370363690717273

namespace A204458

/-- `record[lcm(34, n+1)/34]` -/
def P9489370363690717273.Spec : Prop :=
  ∀ n, P9489370363690717273.a n = (A204458 (n + 1) : ℚ)

end A204458

/-! ## A204458.P17642711622631230047

`or(1, comp[9*n]+n)`
-/

namespace A204458.P17642711622631230047
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + n)

end

end A204458.P17642711622631230047

namespace A204458

/-- `or(1, comp[9*n]+n)` -/
def P17642711622631230047.Spec : Prop :=
  ∀ n, (P17642711622631230047.a n : ℤ) = A204458 (n + 1)

end A204458

/-! ## A204458.P9689587789029057231

`comp[n*17^and(1, n)]`
-/

namespace A204458.P9689587789029057231
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * 17 ^ Nat.land 1 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A204458.P9689587789029057231

namespace A204458

/-- `comp[n*17^and(1, n)]` -/
def P9689587789029057231.Spec : Prop :=
  ∀ n, (P9689587789029057231.a n : ℤ) = A204458 (n + 1)

end A204458

/-! ## A204458.P8532356165304226171

`record[(n+1)/gcd(34, n+1)]`
-/

namespace A204458.P8532356165304226171
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Nat.gcd 34 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204458.P8532356165304226171

namespace A204458

/-- `record[(n+1)/gcd(34, n+1)]` -/
def P8532356165304226171.Spec : Prop :=
  ∀ n, P8532356165304226171.a n = (A204458 (n + 1) : ℚ)

end A204458

/-! ## A204458.P4623977988971966

`∩[2*n+1, A160543(n+1)]`
-/

namespace A204458.P4623977988971966
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160543 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A204458.P4623977988971966

namespace A204458

/-- `∩[2*n+1, A160543(n+1)]` -/
def P4623977988971966.Spec : Prop :=
  ∀ n, (P4623977988971966.a n : ℤ) = A204458 (n + 1)

end A204458

/-! ## A204458.P3391465098440224480

`∩[A160543(n+1), A004273(n)]`
-/

namespace A204458.P3391465098440224480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160543 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A204458.P3391465098440224480

namespace A204458

/-- `∩[A160543(n+1), A004273(n)]` -/
def P3391465098440224480.Spec : Prop :=
  ∀ n, (P3391465098440224480.a n : ℤ) = A204458 (n + 1)

end A204458

/-! ## A204458.P7270995937468644747

`∩[A160543(n+1), A060747(n)]`
-/

namespace A204458.P7270995937468644747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160543 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A204458.P7270995937468644747

namespace A204458

/-- `∩[A160543(n+1), A060747(n)]` -/
def P7270995937468644747.Spec : Prop :=
  ∀ n, (P7270995937468644747.a n : ℤ) = A204458 (n + 1)

end A204458

/-! ## A204458.P15356279321668700283

`record[A106618(2*n+1)]`
-/

namespace A204458.P15356279321668700283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106618 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204458.P15356279321668700283

namespace A204458

/-- `record[A106618(2*n+1)]` -/
def P15356279321668700283.Spec : Prop :=
  ∀ n, P15356279321668700283.a n = A204458 (n + 1)

end A204458

/-! ## A204458.P4111322848032885829

`lt[or(1, n), A106618(n)+1]`
-/

namespace A204458.P4111322848032885829
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106618 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A204458.P4111322848032885829

namespace A204458

/-- `lt[or(1, n), A106618(n)+1]` -/
def P4111322848032885829.Spec : Prop :=
  ∀ n, (P4111322848032885829.a n : ℤ) = A204458 (n + 1)

end A204458

/-! ## A204458.P12974984513454139126

`eq[n, A106618(A093178(n))]`
-/

namespace A204458.P12974984513454139126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106618 (A093178 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A204458.P12974984513454139126

namespace A204458

/-- `eq[n, A106618(A093178(n))]` -/
def P12974984513454139126.Spec : Prop :=
  ∀ n, (P12974984513454139126.a n : ℤ) = A204458 (n + 1)

end A204458

/-! ## A204458.P11005110016548097355

`eq[n, A109613(A106618(n))]`
-/

namespace A204458.P11005110016548097355
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (A106618 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A204458.P11005110016548097355

namespace A204458

/-- `eq[n, A109613(A106618(n))]` -/
def P11005110016548097355.Spec : Prop :=
  ∀ n, (P11005110016548097355.a n : ℤ) = A204458 (n + 1)

end A204458

/-! ## A204458.P17600304749921021496

`eq[n, A106618(A215495(n))]`
-/

namespace A204458.P17600304749921021496
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106618 (A215495 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A204458.P17600304749921021496

namespace A204458

/-- `eq[n, A106618(A215495(n))]` -/
def P17600304749921021496.Spec : Prop :=
  ∀ n, (P17600304749921021496.a n : ℤ) = A204458 (n + 1)

end A204458

/-! ## A204458.P13756218488499428702

`eq[A106618(n), A225058(n)]`
-/

namespace A204458.P13756218488499428702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106618 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225058 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A204458.P13756218488499428702

namespace A204458

/-- `eq[A106618(n), A225058(n)]` -/
def P13756218488499428702.Spec : Prop :=
  ∀ n, (P13756218488499428702.a n : ℤ) = A204458 (n + 1)

end A204458

/-! ## A204458.P5715517542740416342

`eq[A106618(n), A257088(n)]`
-/

namespace A204458.P5715517542740416342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106618 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257088 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A204458.P5715517542740416342

namespace A204458

/-- `eq[A106618(n), A257088(n)]` -/
def P5715517542740416342.Spec : Prop :=
  ∀ n, (P5715517542740416342.a n : ℤ) = A204458 (n + 1)

end A204458

/-! ## A204458.P13524792175056255717

`eq[A106618(n), A257143(n)]`
-/

namespace A204458.P13524792175056255717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106618 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257143 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A204458.P13524792175056255717

namespace A204458

/-- `eq[A106618(n), A257143(n)]` -/
def P13524792175056255717.Spec : Prop :=
  ∀ n, (P13524792175056255717.a n : ℤ) = A204458 (n + 1)

end A204458

/-! ## A204458.P13808538777317927610

`eq[A106618(n), A261671(n)]`
-/

namespace A204458.P13808538777317927610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106618 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261671 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A204458.P13808538777317927610

namespace A204458

/-- `eq[A106618(n), A261671(n)]` -/
def P13808538777317927610.Spec : Prop :=
  ∀ n, (P13808538777317927610.a n : ℤ) = A204458 (n + 1)

end A204458

/-! ## A204458.P18119764693680805969

`eq[A106618(n), A263426(n)]`
-/

namespace A204458.P18119764693680805969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106618 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263426 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A204458.P18119764693680805969

namespace A204458

/-- `eq[A106618(n), A263426(n)]` -/
def P18119764693680805969.Spec : Prop :=
  ∀ n, (P18119764693680805969.a n : ℤ) = A204458 (n + 1)

end A204458

/-!
# A204459: Square array A(n,k), n>=0, k>=0, read by antidiagonals: A(n,k) is the number of k-element subsets that can be chosen from {1,2,...,k*n} having element sum k*(k*n+1)/2.

The programs for A204459, there is no canonical definition to state claims against.
-/

/-! ## A204459.P2489574101525264547

`∑{e}[A059929(A275281(n)), #]`
-/

namespace A204459.P2489574101525264547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059929 (A275281 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A204459.P2489574101525264547

/-! ## A204459.P14927772404360191167

`and(A041641(n), A326584(A288972(n)))`
-/

namespace A204459.P14927772404360191167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A041641 n) (A326584 (A288972 n).toNat)

end

end A204459.P14927772404360191167

/-! ## A204459.P7887837208342470172

`and(A089900(n), A326584(A288972(n)))`
-/

namespace A204459.P7887837208342470172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A089900 n) (A326584 (A288972 n).toNat)

end

end A204459.P7887837208342470172

/-! ## A204459.P10884159858456281440

`A022290(A271592(n+1)^A000188(n+1))`
-/

namespace A204459.P10884159858456281440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022290 (SequenceMachineLib.roundAway ((A271592 (n + 1) : ℚ) ^ (A000188 (n + 1) : ℤ))).toNat

end

end A204459.P10884159858456281440

/-! ## A204459.P1195671215352819200

`A002033(2^A275281(n))%(2^A275281(n))`
-/

namespace A204459.P1195671215352819200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002033 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A275281 n : ℤ))).toNat) (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A275281 n : ℤ)))

end

end A204459.P1195671215352819200

/-!
# A204460: Number of 2*n-element subsets that can be chosen from {1,2,...,8*n} having element sum n*(8*n+1).

The programs for A204460, there is no canonical definition to state claims against.
-/

/-! ## A204460.P11531466765579904060

`record[A204459(A145018(n+1))]`
-/

namespace A204460.P11531466765579904060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204459 (A145018 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204460.P11531466765579904060

/-! ## A204460.P3490651880323850938

`record[A204459(A000124(n)+3)]`
-/

namespace A204460.P3490651880323850938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204459 (A000124 n + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204460.P3490651880323850938

/-! ## A204460.P6768142082863935085

`record[A204459(A000217(n)+4)]`
-/

namespace A204460.P6768142082863935085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204459 (A000217 n + 4).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204460.P6768142082863935085

/-! ## A204460.P6930336953445097848

`record[A204459(A167614(n+1)+1)]`
-/

namespace A204460.P6930336953445097848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204459 (A167614 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204460.P6930336953445097848

/-! ## A204460.P14315238561060426045

`record[A204459(A166136(n+1)-2)]`
-/

namespace A204460.P14315238561060426045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204459 (A166136 (n + 1) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204460.P14315238561060426045

/-!
# A204461: Number of n-element subsets that can be chosen from {1,2,...,5*n} having element sum n*(5*n+1)/2.

The programs for A204461, there is no canonical definition to state claims against.
-/

/-! ## A204461.P6706990987048402518

`A204459(C(n+7, 2)-n-1)`
-/

namespace A204461.P6706990987048402518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204459 ((Nat.choose (n + 7) 2 : ℤ) - (n : ℤ) - 1).toNat

end

end A204461.P6706990987048402518

/-! ## A204461.P1469554909096702263

`A204459(A000124(n+5)+4)`
-/

namespace A204461.P1469554909096702263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204459 (A000124 (n + 5) + 4).toNat

end

end A204461.P1469554909096702263

/-! ## A204461.P11791499982701961021

`A204459(A000096(n+4)+6)`
-/

namespace A204461.P11791499982701961021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204459 (A000096 (n + 4) + 6).toNat

end

end A204461.P11791499982701961021

/-! ## A204461.P4686899284577402467

`A204459(A000217(n+5)+5)`
-/

namespace A204461.P4686899284577402467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204459 (A000217 (n + 5) + 5).toNat

end

end A204461.P4686899284577402467

/-! ## A204461.P209131786996226646

`A204459(Δ[A023545(n+1)]+9)`
-/

namespace A204461.P209131786996226646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204459 (f1 (n + 1) - f1 n + 9).toNat

end

end A204461.P209131786996226646

/-!
# A204462: Number of 2*n-element subsets that can be chosen from {1,2,...,12*n} having element sum n*(12*n+1).

The programs for A204462, there is no canonical definition to state claims against.
-/

/-! ## A204462.P16988871657560850884

`record[Δ[A204459(A166136(n+1))]]`
-/

namespace A204462.P16988871657560850884
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204459 (A166136 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204462.P16988871657560850884

/-! ## A204462.P12050927621223680329

`record[A204459(A166136(n+1))/A010691(n)]`
-/

namespace A204462.P12050927621223680329
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204459 (A166136 (n + 1)).toNat : ℚ) / (A010691 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204462.P12050927621223680329

/-! ## A204462.P2026132811622693639

`record[A204459(A166136(n+1))/A006519(n+1)]`
-/

namespace A204462.P2026132811622693639
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204459 (A166136 (n + 1)).toNat : ℚ) / (A006519 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204462.P2026132811622693639

/-!
# A204463: Number of n-element subsets that can be chosen from {1,2,...,7*n} having element sum n*(7*n+1)/2.

The programs for A204463, there is no canonical definition to state claims against.
-/

/-! ## A204463.P10343949696863696866

`A204459(eq[7, A002262(n)])`
-/

namespace A204463.P10343949696863696866
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204459 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A204463.P10343949696863696866

/-! ## A204463.P18117568133085010049

`A204459(A000124(n+7)+6)`
-/

namespace A204463.P18117568133085010049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204459 (A000124 (n + 7) + 6).toNat

end

end A204463.P18117568133085010049

/-! ## A204463.P1198221571246802841

`A204459(A000096(n+6)+8)`
-/

namespace A204463.P1198221571246802841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204459 (A000096 (n + 6) + 8).toNat

end

end A204463.P1198221571246802841

/-! ## A204463.P18055765720200340108

`A204459(A000217(n+7)+7)`
-/

namespace A204463.P18055765720200340108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204459 (A000217 (n + 7) + 7).toNat

end

end A204463.P18055765720200340108

/-! ## A204463.P1902851749770784093

`A204459(eq[8, A002260(n+1)])`
-/

namespace A204463.P1902851749770784093
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204459 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A204463.P1902851749770784093

/-!
# A204464: Number of 2*n-element subsets that can be chosen from {1,2,...,16*n} having element sum n*(16*n+1).

The programs for A204464, there is no canonical definition to state claims against.
-/

/-! ## A204464.P13330937117505510649

`A204459(eq[9, A140756(n+1)])`
-/

namespace A204464.P13330937117505510649
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140756 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204459 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A204464.P13330937117505510649

/-! ## A204464.P11405967584440516625

`record[A204459(A000124(n+8)+7)]`
-/

namespace A204464.P11405967584440516625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204459 (A000124 (n + 8) + 7).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204464.P11405967584440516625

/-!
# A204465: Number of n-element subsets that can be chosen from {1,2,...,9*n} having element sum n*(9*n+1)/2.

The programs for A204465, there is no canonical definition to state claims against.
-/

/-! ## A204465.P8733556513208907213

`A204459(eq[9, A002262(n)])`
-/

namespace A204465.P8733556513208907213
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204459 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A204465.P8733556513208907213

/-! ## A204465.P1315644170105904507

`A204459(eq[9, A191532(n)])`
-/

namespace A204465.P1315644170105904507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191532 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204459 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A204465.P1315644170105904507

/-! ## A204465.P2742818550084039076

`A204459(eq[9, A144328(n+1)])`
-/

namespace A204465.P2742818550084039076
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204459 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A204465.P2742818550084039076

/-! ## A204465.P3086008593707857046

`A204459(eq[10, A002260(n+1)])`
-/

namespace A204465.P3086008593707857046
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204459 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A204465.P3086008593707857046

/-! ## A204465.P2026486511765082055

`A204459(eq[10, A134868(n+1)])`
-/

namespace A204465.P2026486511765082055
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204459 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A204465.P2026486511765082055

/-!
# A204466: Number of 2*n-element subsets that can be chosen from {1,2,...,20*n} having element sum n*(20*n+1).

The programs for A204466, there is no canonical definition to state claims against.
-/

/-! ## A204466.P16865594678639891083

`record[A204459(eq[10, A002262(n)])]`
-/

namespace A204466.P16865594678639891083
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204459 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204466.P16865594678639891083

/-!
# A204467: Number of 3-element subsets that can be chosen from {1,2,...,6*n+3} having element sum 9*n+6.

The programs for A204467, the canonical program `A204467.P10719625214843246429` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A204467 has offset 0).

The definition of A204467 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A204467.P10719625214843246429

`1+floor((3+9/2*n)*n)`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A204467

/-- `1+floor((3+9/2*n)*n)` -/
def P10719625214843246429.Spec : Prop :=
  ∀ n, P10719625214843246429.a n = A204467 n

theorem P10719625214843246429.correct : P10719625214843246429.Spec := by
  intro n
  simp only [A204467]

end A204467

/-! ## A204467.P2997386840804880223

`∑[a(n-2)+18]` with `a(0)=1, a(1)=7, a(2)=17`
-/

namespace A204467.P2997386840804880223
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 7, 17] fun n f1 =>
  f1 (n - 2) + 18

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A204467.P2997386840804880223

namespace A204467

/-- `∑[a(n-2)+18]` -/
def P2997386840804880223.Spec : Prop :=
  ∀ n, (P2997386840804880223.a n : ℤ) = A204467 n

end A204467

/-! ## A204467.P12387220217619901476

`∑[∑[floor(a(n-2))]]` with `a(0)=1, a(1)=6, a(2)=10, a(3)=8`

`floor` is left out, it is the identity on integers.
-/

namespace A204467.P12387220217619901476
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 6, 10, 8] fun n f2 =>
  f2 (n - 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A204467.P12387220217619901476

namespace A204467

/-- `∑[∑[floor(a(n-2))]]` -/
def P12387220217619901476.Spec : Prop :=
  ∀ n, (P12387220217619901476.a n : ℤ) = A204467 n

end A204467

/-! ## A204467.P7473390908912895263

`round(A016778(n)/2)`
-/

namespace A204467.P7473390908912895263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A016778 n : ℚ) / 2)

end

end A204467.P7473390908912895263

namespace A204467

/-- `round(A016778(n)/2)` -/
def P7473390908912895263.Spec : Prop :=
  ∀ n, P7473390908912895263.a n = A204467 n

end A204467

/-! ## A204467.P2938654979733701916

`floor(A081267(n)-n/2)`
-/

namespace A204467.P2938654979733701916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A081267 n : ℚ) - (n : ℚ) / 2⌋

end

end A204467.P2938654979733701916

namespace A204467

/-- `floor(A081267(n)-n/2)` -/
def P2938654979733701916.Spec : Prop :=
  ∀ n, P2938654979733701916.a n = A204467 n

end A204467

/-! ## A204467.P244041990692439078

`sqrt(A212893(3*n))`
-/

namespace A204467.P244041990692439078
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A212893 (3 * n) : ℝ)

end

end A204467.P244041990692439078

namespace A204467

/-- `sqrt(A212893(3*n))` -/
def P244041990692439078.Spec : Prop :=
  ∀ n, P244041990692439078.a n = (A204467 n : ℝ)

end A204467

/-! ## A204467.P2011601067136730125

`A087327(3*n+1)`
-/

namespace A204467.P2011601067136730125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087327 (3 * n + 1)

end

end A204467.P2011601067136730125

namespace A204467

/-- `A087327(3*n+1)` -/
def P2011601067136730125.Spec : Prop :=
  ∀ n, P2011601067136730125.a n = A204467 n

end A204467

/-! ## A204467.P3366683800565595563

`A000982(3*n+1)`
-/

namespace A204467.P3366683800565595563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000982 (3 * n + 1)

end

end A204467.P3366683800565595563

namespace A204467

/-- `A000982(3*n+1)` -/
def P3366683800565595563.Spec : Prop :=
  ∀ n, P3366683800565595563.a n = A204467 n

end A204467

/-! ## A204467.P16013626279812041620

`A030978(3*n+1)`
-/

namespace A204467.P16013626279812041620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030978 (3 * n + 1)

end

end A204467.P16013626279812041620

namespace A204467

/-- `A030978(3*n+1)` -/
def P16013626279812041620.Spec : Prop :=
  ∀ n, P16013626279812041620.a n = A204467 n

end A204467

/-! ## A204467.P13086865325739412534

`A008818(6*n)`
-/

namespace A204467.P13086865325739412534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008818 (6 * n)

end

end A204467.P13086865325739412534

namespace A204467

/-- `A008818(6*n)` -/
def P13086865325739412534.Spec : Prop :=
  ∀ n, P13086865325739412534.a n = A204467 n

end A204467

/-! ## A204467.P581419143408687920

`A001971(A016933(n))`
-/

namespace A204467.P581419143408687920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001971 (A016933 n).toNat

end

end A204467.P581419143408687920

namespace A204467

/-- `A001971(A016933(n))` -/
def P581419143408687920.Spec : Prop :=
  ∀ n, P581419143408687920.a n = A204467 n

end A204467

/-! ## A204467.P8989619383918024504

`A166515(A016921(n))`
-/

namespace A204467.P8989619383918024504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166515 (A016921 n).toNat

end

end A204467.P8989619383918024504

namespace A204467

/-- `A166515(A016921(n))` -/
def P8989619383918024504.Spec : Prop :=
  ∀ n, P8989619383918024504.a n = A204467 n

end A204467

/-! ## A204467.P13128343586987332053

`A389413(A016957(n))`
-/

namespace A204467.P13128343586987332053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389413 (A016957 n).toNat

end

end A204467.P13128343586987332053

namespace A204467

/-- `A389413(A016957(n))` -/
def P13128343586987332053.Spec : Prop :=
  ∀ n, P13128343586987332053.a n = A204467 n

end A204467

/-! ## A204467.P11755602402294884800

`A001971(2*A016777(n))`
-/

namespace A204467.P11755602402294884800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001971 (2 * A016777 n).toNat

end

end A204467.P11755602402294884800

namespace A204467

/-- `A001971(2*A016777(n))` -/
def P11755602402294884800.Spec : Prop :=
  ∀ n, P11755602402294884800.a n = A204467 n

end A204467

/-!
# A204468: Number of 4-element subsets that can be chosen from {1,2,...,4*n} having element sum 8*n+2.

The programs for A204468, the canonical program `A204468.P927918885716742926` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A204468 has offset 0).

The definition of A204468 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A204468.P927918885716742926

`1/9*(2*A102283(n)+n*(16*n²-18*n+9))`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A204468

/-- `1/9*(2*A102283(n)+n*(16*n²-18*n+9))` -/
def P927918885716742926.Spec : Prop :=
  ∀ n, P927918885716742926.a n = (A204468 n : ℚ)

end A204468

/-! ## A204468.P4215659375035373000

`A001973(record[A022998(n)])*A057427(n)`
-/

namespace A204468.P4215659375035373000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022998 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001973 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat * A057427 n

end

end A204468.P4215659375035373000

namespace A204468

/-- `A001973(record[A022998(n)])*A057427(n)` -/
def P4215659375035373000.Spec : Prop :=
  ∀ n, P4215659375035373000.a n = A204468 n

end A204468

/-! ## A204468.P5901075070498722359

`A062890(record[lcm(4, n)])`
-/

namespace A204468.P5901075070498722359
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 4 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062890 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A204468.P5901075070498722359

namespace A204468

/-- `A062890(record[lcm(4, n)])` -/
def P5901075070498722359.Spec : Prop :=
  ∀ n, P5901075070498722359.a n = A204468 n

end A204468

/-! ## A204468.P8419606194996513309

`A062890(2*floor(abs(4*n-ϕ)))`
-/

namespace A204468.P8419606194996513309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062890 (2 * ⌊|(4 * n : ℝ) - Real.goldenRatio|⌋).toNat

end

end A204468.P8419606194996513309

namespace A204468

/-- `A062890(2*floor(abs(4*n-ϕ)))` -/
def P8419606194996513309.Spec : Prop :=
  ∀ n, P8419606194996513309.a n = A204468 n

end A204468

/-! ## A204468.P7526067134084756064

`A309715(A086570(n))+n`
-/

namespace A204468.P7526067134084756064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309715 (A086570 n).toNat + (n : ℤ)

end

end A204468.P7526067134084756064

namespace A204468

/-- `A309715(A086570(n))+n` -/
def P7526067134084756064.Spec : Prop :=
  ∀ n, P7526067134084756064.a n = A204468 n

end A204468

/-! ## A204468.P9841784005247845133

`A001973(record[A022998(n)])*A002828(n²)`
-/

namespace A204468.P9841784005247845133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022998 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001973 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat * A002828 (n ^ 2)

end

end A204468.P9841784005247845133

namespace A204468

/-- `A001973(record[A022998(n)])*A002828(n²)` -/
def P9841784005247845133.Spec : Prop :=
  ∀ n, P9841784005247845133.a n = A204468 n

end A204468

/-! ## A204468.P11414460678188326952

`record[A204459(A052905(n))]`
-/

namespace A204468.P11414460678188326952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204459 (A052905 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204468.P11414460678188326952

namespace A204468

/-- `record[A204459(A052905(n))]` -/
def P11414460678188326952.Spec : Prop :=
  ∀ n, P11414460678188326952.a n = A204468 n

end A204468

/-! ## A204468.P2547879550739670278

`A204459(A052905(n+2))`
-/

namespace A204468.P2547879550739670278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204459 (A052905 (n + 2)).toNat

end

end A204468.P2547879550739670278

namespace A204468

/-- `A204459(A052905(n+2))` -/
def P2547879550739670278.Spec : Prop :=
  ∀ n, P2547879550739670278.a n = A204468 n

end A204468

/-! ## A204468.P12764556424305207824

`A204459(A000217(n+5)-5)`
-/

namespace A204468.P12764556424305207824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204459 (A000217 (n + 5) - 5).toNat

end

end A204468.P12764556424305207824

namespace A204468

/-- `A204459(A000217(n+5)-5)` -/
def P12764556424305207824.Spec : Prop :=
  ∀ n, P12764556424305207824.a n = A204468 n

end A204468

/-! ## A204468.P715686720589242785

`A204459(Δ[A023545(n+1)]-1)`
-/

namespace A204468.P715686720589242785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204459 (f1 (n + 1) - f1 n - 1).toNat

end

end A204468.P715686720589242785

namespace A204468

/-- `A204459(Δ[A023545(n+1)]-1)` -/
def P715686720589242785.Spec : Prop :=
  ∀ n, P715686720589242785.a n = A204468 n

end A204468

/-!
# A204469: Number of 5-element subsets that can be chosen from {1,2,...,10*n+5} having element sum 25*n+15.

The programs for A204469, there is no canonical definition to state claims against.
-/

/-! ## A204469.P4642128956466717096

`A001975(10*n)`
-/

namespace A204469.P4642128956466717096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001975 (10 * n)

end

end A204469.P4642128956466717096

/-! ## A204469.P17466413162556204666

`record[A001975(A195817(n))]`
-/

namespace A204469.P17466413162556204666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001975 (A195817 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204469.P17466413162556204666

/-! ## A204469.P7246293982779344144

`record[A001975(gcd(n, A050782(n)))]`
-/

namespace A204469.P7246293982779344144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001975 (Int.gcd (n : ℤ) (A050782 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204469.P7246293982779344144

/-! ## A204469.P12387377914639323414

`xor(1, xor(1, A001975(A008592(n))))`
-/

namespace A204469.P12387377914639323414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A001975 (A008592 n).toNat))

end

end A204469.P12387377914639323414

/-! ## A204469.P15367076412141900428

`record[A001975(A008706(A014681(n)))]`
-/

namespace A204469.P15367076412141900428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001975 (A008706 (A014681 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204469.P15367076412141900428

/-! ## A204469.P1362419323243272041

`record[A001975(A008706(A153733(n)))]`
-/

namespace A204469.P1362419323243272041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001975 (A008706 (A153733 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204469.P1362419323243272041

/-! ## A204469.P10652451233702382974

`gcd(A000038(n), A001975(A008592(n)))`
-/

namespace A204469.P10652451233702382974
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A001975 (A008592 n).toNat)

end

end A204469.P10652451233702382974

/-! ## A204469.P783332465478456166

`A001975(A008592(n))%A000040(n+2)²²`
-/

namespace A204469.P783332465478456166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001975 (A008592 n).toNat) ((A000040 (n + 2) ^ 2) ^ 2)

end

end A204469.P783332465478456166

/-! ## A204469.P3358961166491938029

`A001975(A008592(n))/A000108(n²%(n+1))`
-/

namespace A204469.P3358961166491938029
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001975 (A008592 n).toNat : ℚ) / (A000108 (n ^ 2 % (n + 1)) : ℚ)

end

end A204469.P3358961166491938029

/-! ## A204469.P1451392705540835393

`A001975(A008592(n))+C(3, n)%A007318(n)²`
-/

namespace A204469.P1451392705540835393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001975 (A008592 n).toNat + Int.tmod (Nat.choose 3 n : ℤ) (A007318 n ^ 2)

end

end A204469.P1451392705540835393

/-!
# A204470: Number of 6-element subsets that can be chosen from {1,2,...,6*n} having element sum 18*n+3.

The programs for A204470, there is no canonical definition to state claims against.
-/

/-! ## A204470.P1289575589461309919

`record[A204459(A155212(n)+1)]`
-/

namespace A204470.P1289575589461309919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204459 (A155212 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204470.P1289575589461309919

/-! ## A204470.P3305861590371624423

`A204459(A000096(n+6)-6)`
-/

namespace A204470.P3305861590371624423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204459 (A000096 (n + 6) - 6).toNat

end

end A204470.P3305861590371624423

/-! ## A204470.P1217953817242736620

`A204459(A000217(n+7)-7)`
-/

namespace A204470.P1217953817242736620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204459 (A000217 (n + 7) - 7).toNat

end

end A204470.P1217953817242736620

/-! ## A204470.P7317194781895139563

`A204459(A000124(n+7)-8)`
-/

namespace A204470.P7317194781895139563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204459 (A000124 (n + 7) - 8).toNat

end

end A204470.P7317194781895139563

/-! ## A204470.P12337557747005691134

`A204459(eq[7, A004736(n+1)])`
-/

namespace A204470.P12337557747005691134
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204459 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A204470.P12337557747005691134

/-! ## A204470.P5283767808076807997

`A204459(Δ[A101853(n+2)]+2)`
-/

namespace A204470.P5283767808076807997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101853 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204459 (f1 (n + 1) - f1 n + 2).toNat

end

end A204470.P5283767808076807997

/-! ## A204470.P5913842869544466515

`record[A204459(A052905(n+1)-2)]`
-/

namespace A204470.P5913842869544466515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204459 (A052905 (n + 1) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204470.P5913842869544466515

/-! ## A204470.P16066867986231835371

`A204459(A166136(n+2)+Δ[A166136(2*(n+1))])`
-/

namespace A204470.P16066867986231835371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166136 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204459 (A166136 (n + 2) + (f1 (n + 1) - f1 n)).toNat

end

end A204470.P16066867986231835371

/-!
# A204471: Number of 7-element subsets that can be chosen from {1,2,...,14*n+7} having element sum 49*n+28.

The programs for A204471, there is no canonical definition to state claims against.
-/

/-! ## A204471.P14411351748271397775

`A001979(14*n)`
-/

namespace A204471.P14411351748271397775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001979 (14 * n)

end

end A204471.P14411351748271397775

/-! ## A204471.P5459657558334043499

`record[A001979(A317314(n))]`
-/

namespace A204471.P5459657558334043499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001979 (A317314 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204471.P5459657558334043499

/-! ## A204471.P12228235027259463612

`record[A001979(A195159(and(2, n)+n))]`
-/

namespace A204471.P12228235027259463612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001979 (A195159 (Nat.land 2 n + n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204471.P12228235027259463612

/-! ## A204471.P872842041868485790

`record[A001979(A195159(A042948(n)))]`
-/

namespace A204471.P872842041868485790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001979 (A195159 (A042948 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204471.P872842041868485790

/-! ## A204471.P7205050114240077108

`record[A204459(A155212(n))]`
-/

namespace A204471.P7205050114240077108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204459 (A155212 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204471.P7205050114240077108

/-!
# A204472: Number of 8-element subsets that can be chosen from {1,2,...,8*n} having element sum 32*n+4.

The programs for A204472, there is no canonical definition to state claims against.
-/

/-! ## A204472.P2031419564242709564

`A204459(Δ[A111144(n)]+1)`
-/

namespace A204472.P2031419564242709564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111144 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204459 (f1 (n + 1) - f1 n + 1).toNat

end

end A204472.P2031419564242709564

/-! ## A204472.P13867133103218150180

`A204459(Δ[A101853(n+4)])`
-/

namespace A204472.P13867133103218150180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101853 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204459 (f1 (n + 1) - f1 n).toNat

end

end A204472.P13867133103218150180

/-! ## A204472.P12689333601854309985

`A204459(A000096(n+8)-8)`
-/

namespace A204472.P12689333601854309985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204459 (A000096 (n + 8) - 8).toNat

end

end A204472.P12689333601854309985

/-! ## A204472.P12279046951961202447

`A204459(A000217(n+9)-9)`
-/

namespace A204472.P12279046951961202447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204459 (A000217 (n + 9) - 9).toNat

end

end A204472.P12279046951961202447

/-! ## A204472.P4709538750953192219

`A204459(eq[9, A004736(n+1)])`
-/

namespace A204472.P4709538750953192219
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204459 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A204472.P4709538750953192219

/-! ## A204472.P18115978591330196857

`A204459(A000124(n+8)+n-1)`
-/

namespace A204472.P18115978591330196857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204459 (A000124 (n + 8) + (n : ℤ) - 1).toNat

end

end A204472.P18115978591330196857

/-!
# A204473: Number of 9-element subsets that can be chosen from {1,2,...,18*n+9} having element sum 81*n+45.

The programs for A204473, there is no canonical definition to state claims against.
-/

/-! ## A204473.P15280839280453567024

`record[A204459(Δ[A111144(n)])]`
-/

namespace A204473.P15280839280453567024
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111144 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204459 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204473.P15280839280453567024

/-!
# A204474: Number of 10-element subsets that can be chosen from {1,2,...,10*n} having element sum 50*n+5.

The programs for A204474, there is no canonical definition to state claims against.
-/

/-! ## A204474.P4951997184097059570

`A204459(eq[10, A025581(n)])`
-/

namespace A204474.P4951997184097059570
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204459 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A204474.P4951997184097059570

/-! ## A204474.P7118512942471127382

`A204459(eq[10, A195664(n)])`
-/

namespace A204474.P7118512942471127382
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204459 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A204474.P7118512942471127382

/-! ## A204474.P6430067451309361220

`A204459(eq[11, A193739(n)])`
-/

namespace A204474.P6430067451309361220
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204459 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A204474.P6430067451309361220

/-! ## A204474.P2086783161149330488

`A204459(A000124(n+11)-12)`
-/

namespace A204474.P2086783161149330488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204459 (A000124 (n + 11) - 12).toNat

end

end A204474.P2086783161149330488

/-! ## A204474.P16655652830762138685

`A204459(eq[11, A004736(n+1)])`
-/

namespace A204474.P16655652830762138685
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204459 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A204474.P16655652830762138685

/-! ## A204474.P13961757875339719801

`record[A204459(Δ[A111144(n)]-1)]`
-/

namespace A204474.P13961757875339719801
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111144 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204459 (f2 (n + 1) - f2 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204474.P13961757875339719801

/-!
# A204475: Number of (n+2)X3 0..3 arrays with every 3X3 subblock having three equal elements in a row horizontally, vertically or nw-to-se diagonally exactly three ways, and new values 0..3 introduced in row major order.

The programs for A204475, there is no canonical definition to state claims against.
-/

/-! ## A204475.P11343904529193555623

`A204483(∑[n]+1)`
-/

namespace A204475.P11343904529193555623
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204483 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A204475.P11343904529193555623

/-! ## A204475.P14679833977105653796

`record[A204483(A047216(n+1))]`
-/

namespace A204475.P14679833977105653796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204483 (A047216 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204475.P14679833977105653796

/-! ## A204475.P6484428354633832374

`record[A204483(A056534(n+1))]`
-/

namespace A204475.P6484428354633832374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204483 (A056534 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204475.P6484428354633832374

/-! ## A204475.P13808809907386718782

`record[A204483(A056536(n+1))]`
-/

namespace A204475.P13808809907386718782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204483 (A056536 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204475.P13808809907386718782

/-! ## A204475.P2201613479226366331

`record[A204483(A309559(2*n))]`
-/

namespace A204475.P2201613479226366331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204483 (A309559 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204475.P2201613479226366331

/-!
# A204476: Number of (n+2)X(n+2) 0..3 arrays with every 3X3 subblock having three equal elements in a row horizontally, vertically or nw-to-se diagonally exactly three ways, and new values 0..3 introduced in row major order.

The programs for A204476, there is no canonical definition to state claims against.
-/

/-! ## A204476.P4874770776131935055

`A204483(∑[4*n]+1)`
-/

namespace A204476.P4874770776131935055
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204483 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A204476.P4874770776131935055

/-! ## A204476.P3224412072347425145

`lcm(2, A204483(A001844(n)))`
-/

namespace A204476.P3224412072347425145
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A204483 (A001844 n).toNat)

end

end A204476.P3224412072347425145

/-! ## A204476.P10740366811371774093

`A204483(A001844(n))+A025437(n)`
-/

namespace A204476.P10740366811371774093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204483 (A001844 n).toNat + A025437 n

end

end A204476.P10740366811371774093

/-! ## A204476.P4043965636916030227

`A204483(A001844(n))+A178798(n)`
-/

namespace A204476.P4043965636916030227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204483 (A001844 n).toNat + A178798 n

end

end A204476.P4043965636916030227

/-! ## A204476.P1381465048471702209

`A204483(A001844(n))*A210964(n)`
-/

namespace A204476.P1381465048471702209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204483 (A001844 n).toNat * A210964 n

end

end A204476.P1381465048471702209

/-!
# A204477: Number of (n+2)X4 0..3 arrays with every 3X3 subblock having three equal elements in a row horizontally, vertically or nw-to-se diagonally exactly three ways, and new values 0..3 introduced in row major order.

The programs for A204477, there is no canonical definition to state claims against.
-/

/-! ## A204477.P12290003247984301966

`A204483(∑[n+1]+2)`
-/

namespace A204477.P12290003247984301966
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204483 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A204477.P12290003247984301966

/-! ## A204477.P17708555330599481243

`or(floor(acot(n)²), A204483(A000096(n+1)))`
-/

namespace A204477.P17708555330599481243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ⌊SequenceMachineLib.acot (n : ℝ) ^ 2⌋ (A204483 (A000096 (n + 1)).toNat)

end

end A204477.P17708555330599481243

/-! ## A204477.P2828552812765420818

`A204483(A000096(n+1))%A317287(n)`
-/

namespace A204477.P2828552812765420818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A204483 (A000096 (n + 1)).toNat) (A317287 (n + 14))

end

end A204477.P2828552812765420818

/-! ## A204477.P15446923699468813665

`or(A025437(n), A204483(A000096(n+1)))`
-/

namespace A204477.P15446923699468813665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A025437 n) (A204483 (A000096 (n + 1)).toNat)

end

end A204477.P15446923699468813665

/-! ## A204477.P11170952977536718508

`A027759(2*n+1)*A204483(A000096(n+1))`
-/

namespace A204477.P11170952977536718508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027759 (2 * n + 1) * A204483 (A000096 (n + 1)).toNat

end

end A204477.P11170952977536718508

/-!
# A204478: Number of (n+2) X 5 0..3 arrays with every 3 X 3 subblock having three equal elements in a row horizontally, vertically or nw-to-se diagonally exactly three ways, and new values 0..3 introduced in row major order.

The programs for A204478, there is no canonical definition to state claims against.
-/

/-! ## A204478.P18252884838502094370

`A204483(∑[n+2]+4)`
-/

namespace A204478.P18252884838502094370
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204483 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A204478.P18252884838502094370

/-! ## A204478.P3973436906936510827

`A204483(A167614(n+1))+char[21]`
-/

namespace A204478.P3973436906936510827
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  21

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204483 (A167614 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A204478.P3973436906936510827

/-! ## A204478.P6347019590602654159

`or(char[1], A204483(A025747(n)+5+n))`
-/

namespace A204478.P6347019590602654159
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A204483 (A025747 n + 5 + (n : ℤ)).toNat)

end

end A204478.P6347019590602654159

/-! ## A204478.P8725656007929782437

`gcd(A178798(n), A204483(A167614(n+1)))`
-/

namespace A204478.P8725656007929782437
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A178798 n) (A204483 (A167614 (n + 1)).toNat)

end

end A204478.P8725656007929782437

/-! ## A204478.P8360238899393427144

`A204483(A167614(n+1))%A204481(n+1)`
-/

namespace A204478.P8360238899393427144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A204483 (A167614 (n + 1)).toNat) (A204481 (n + 1))

end

end A204478.P8360238899393427144

/-!
# A204479: Number of (n+2)X6 0..3 arrays with every 3X3 subblock having three equal elements in a row horizontally, vertically or nw-to-se diagonally exactly three ways, and new values 0..3 introduced in row major order.

The programs for A204479, there is no canonical definition to state claims against.
-/

/-! ## A204479.P836408082808293676

`A204483(∑[n+3]+7)`
-/

namespace A204479.P836408082808293676
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204483 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A204479.P836408082808293676

/-! ## A204479.P17277703705684294621

`or(char[1], A204483(A167614(n+2)+1))`
-/

namespace A204479.P17277703705684294621
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A204483 (A167614 (n + 2) + 1).toNat)

end

end A204479.P17277703705684294621

/-! ## A204479.P9342919812208538232

`or(char[1], A204483(A027379(n+1)+7))`
-/

namespace A204479.P9342919812208538232
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A204483 (A027379 (n + 1) + 7).toNat)

end

end A204479.P9342919812208538232

/-! ## A204479.P4824478266989472627

`A204483(A027379(n+1)+7)%A000108(n+12)`
-/

namespace A204479.P4824478266989472627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A204483 (A027379 (n + 1) + 7).toNat) (A000108 (n + 12))

end

end A204479.P4824478266989472627

/-! ## A204479.P9118626415124387404

`A000041(C(2, n+2))*A204483(A167614(n+2)+1)`
-/

namespace A204479.P9118626415124387404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * A204483 (A167614 (n + 2) + 1).toNat

end

end A204479.P9118626415124387404

/-!
# A204480: Number of (n+2)X7 0..3 arrays with every 3X3 subblock having three equal elements in a row horizontally, vertically or nw-to-se diagonally exactly three ways, and new values 0..3 introduced in row major order.

The programs for A204480, there is no canonical definition to state claims against.
-/

/-! ## A204480.P16754082091053765037

`A204483(10-(∑[n-5]-n²))`
-/

namespace A204480.P16754082091053765037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204483 (10 - (∑ j ∈ Finset.range (n + 1), f1 j - (n ^ 2 : ℤ))).toNat

end

end A204480.P16754082091053765037

/-! ## A204480.P15900002846109097576

`abs(log2(1/2)*A204483(A000096(n+3)+6))`
-/

namespace A204480.P15900002846109097576
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  |Real.logb 2 ((1 : ℚ) / 2 : ℝ) * (A204483 (A000096 (n + 3) + 6).toNat : ℝ)|

end

end A204480.P15900002846109097576

/-! ## A204480.P16592152888344424401

`A204483(A155212(n)+13)+A178798(n)`
-/

namespace A204480.P16592152888344424401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204483 (A155212 n + 13).toNat + A178798 n

end

end A204480.P16592152888344424401

/-! ## A204480.P8809038806503983163

`lcm(A204483(A000096(n+3)+6), A246465(n))`
-/

namespace A204480.P8809038806503983163
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A204483 (A000096 (n + 3) + 6).toNat) (A246465 n)

end

end A204480.P8809038806503983163

/-! ## A204480.P432562896872585132

`A000005(gcd(n, n+1))*A204483(A000096(n+3)+6)`
-/

namespace A204480.P432562896872585132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Nat.gcd n (n + 1)) * A204483 (A000096 (n + 3) + 6).toNat

end

end A204480.P432562896872585132

/-!
# A204481: Number of (n+2)X8 0..3 arrays with every 3X3 subblock having three equal elements in a row horizontally, vertically or nw-to-se diagonally exactly three ways, and new values 0..3 introduced in row major order.

The programs for A204481, there is no canonical definition to state claims against.
-/

/-! ## A204481.P10524696333692856192

`A204483(Δ[A264443(n)]+10)`
-/

namespace A204481.P10524696333692856192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204483 (f1 (n + 1) - f1 n + 10).toNat

end

end A204481.P10524696333692856192

/-! ## A204481.P9070458877581713570

`A204483(A000124(n+5)+5)`
-/

namespace A204481.P9070458877581713570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204483 (A000124 (n + 5) + 5).toNat

end

end A204481.P9070458877581713570

/-! ## A204481.P5065516159876306060

`A204483(A000096(n+4)+7)`
-/

namespace A204481.P5065516159876306060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204483 (A000096 (n + 4) + 7).toNat

end

end A204481.P5065516159876306060

/-! ## A204481.P11342745040919630582

`A204483(A000217(n+5)+6)`
-/

namespace A204481.P11342745040919630582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204483 (A000217 (n + 5) + 6).toNat

end

end A204481.P11342745040919630582

/-! ## A204481.P13646192818583305012

`A204483(A046691(n+3)+10)`
-/

namespace A204481.P13646192818583305012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204483 (A046691 (n + 3) + 10).toNat

end

end A204481.P13646192818583305012

/-!
# A204482: Number of (n+2)X9 0..3 arrays with every 3X3 subblock having three equal elements in a row horizontally, vertically or nw-to-se diagonally exactly three ways, and new values 0..3 introduced in row major order.

The programs for A204482, there is no canonical definition to state claims against.
-/

/-! ## A204482.P13568163656781889947

`A204483(eq[11, A066657(n)])`
-/

namespace A204482.P13568163656781889947
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204483 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A204482.P13568163656781889947

/-! ## A204482.P10327312014861347965

`A204483(A000124(n+6)+6)`
-/

namespace A204482.P10327312014861347965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204483 (A000124 (n + 6) + 6).toNat

end

end A204482.P10327312014861347965

/-! ## A204482.P10227965590969360701

`A204483(A000096(n+5)+8)`
-/

namespace A204482.P10227965590969360701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204483 (A000096 (n + 5) + 8).toNat

end

end A204482.P10227965590969360701

/-! ## A204482.P9388050528898971333

`A204483(A000217(n+6)+7)`
-/

namespace A204482.P9388050528898971333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204483 (A000217 (n + 6) + 7).toNat

end

end A204482.P9388050528898971333

/-! ## A204482.P2845775500034251481

`A204483(A046691(n+4)+11)`
-/

namespace A204482.P2845775500034251481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204483 (A046691 (n + 4) + 11).toNat

end

end A204482.P2845775500034251481

/-!
# A204484: Number of (n+2)X(n+2) 0..1 arrays with every 3X3 subblock having three equal elements in a row horizontally, vertically or nw-to-se diagonally exactly one way, and new values 0..1 introduced in row major order.

The programs for A204484, there is no canonical definition to state claims against.
-/

/-! ## A204484.P7105416892512357564

`A204492(∑[4*n]+1)`
-/

namespace A204484.P7105416892512357564
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204492 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A204484.P7105416892512357564

/-! ## A204484.P12631791967223473824

`A204492(A001844(n))+char[18]`
-/

namespace A204484.P12631791967223473824
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204492 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A204484.P12631791967223473824

/-! ## A204484.P6217379910608587651

`record[A003982(n)*A204492(n+1)]`
-/

namespace A204484.P6217379910608587651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A204492 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204484.P6217379910608587651

/-! ## A204484.P14331823824811288245

`record[A204492(n+1)*A214505(n)]`
-/

namespace A204484.P14331823824811288245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204492 (n + 1) * A214505 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204484.P14331823824811288245

/-! ## A204484.P8332115131659641874

`record[A204492(A000982((n+1)/2^val(n+1, 2)))]`
-/

namespace A204484.P8332115131659641874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204492 (A000982 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204484.P8332115131659641874

/-!
# A204485: Number of (n+2) X 3 0..1 arrays with every 3 X 3 subblock having three equal elements in a row horizontally, vertically or nw-to-se diagonally exactly one way, and new values 0..1 introduced in row major order.

The programs for A204485, there is no canonical definition to state claims against.
-/

/-! ## A204485.P630282417422856731

`A204492(∑[n]+1)`
-/

namespace A204485.P630282417422856731
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204492 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A204485.P630282417422856731

/-! ## A204485.P8106385195917220747

`record[A204492(n+1)]`
-/

namespace A204485.P8106385195917220747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204492 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204485.P8106385195917220747

/-! ## A204485.P6633882785771493879

`or(char[7], A204492(A000124(n)))`
-/

namespace A204485.P6633882785771493879
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A204492 (A000124 n).toNat)

end

end A204485.P6633882785771493879

/-! ## A204485.P8296843880802659636

`A007318(∑[n])*A204492(A000124(n))`
-/

namespace A204485.P8296843880802659636
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A204492 (A000124 n).toNat

end

end A204485.P8296843880802659636

/-! ## A204485.P16591716391360620461

`A204492(A000124(n))+A000035(2*(n+1))`
-/

namespace A204485.P16591716391360620461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204492 (A000124 n).toNat + A000035 (2 * (n + 1))

end

end A204485.P16591716391360620461

/-!
# A204486: Number of (n+2) X 4 0..1 arrays with every 3 X 3 subblock having three equal elements in a row horizontally, vertically or nw-to-se diagonally exactly one way, and new values 0..1 introduced in row major order.

The programs for A204486, there is no canonical definition to state claims against.
-/

/-! ## A204486.P2954332737785421540

`A204492(∑[n+1]+2)`
-/

namespace A204486.P2954332737785421540
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204492 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A204486.P2954332737785421540

/-! ## A204486.P12491309678144026199

`record[A010054(n)*A204492(n+2)]`
-/

namespace A204486.P12491309678144026199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A204492 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204486.P12491309678144026199

/-! ## A204486.P5113062656468387820

`record[root(A204492(n+2), A059268(n))]`
-/

namespace A204486.P5113062656468387820
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A204492 (n + 2) : ℝ) ^ (1 / (A059268 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204486.P5113062656468387820

/-! ## A204486.P15261792810106216455

`record[gcd(A059365(n), A204492(n+2))]`
-/

namespace A204486.P15261792810106216455
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A059365 n) (A204492 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204486.P15261792810106216455

/-! ## A204486.P8274237525103028813

`record[A204492(gcd(n+2, A279416(n+1)))]`
-/

namespace A204486.P8274237525103028813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204492 (Int.gcd (n + 2 : ℤ) (A279416 (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204486.P8274237525103028813

/-!
# A204487: Number of (n+2)X5 0..1 arrays with every 3X3 subblock having three equal elements in a row horizontally, vertically or nw-to-se diagonally exactly one way, and new values 0..1 introduced in row major order.

The programs for A204487, there is no canonical definition to state claims against.
-/

/-! ## A204487.P10685818660372843283

`A204492(∑[n+2]+4)`
-/

namespace A204487.P10685818660372843283
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204492 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A204487.P10685818660372843283

/-! ## A204487.P13942007155426901016

`or(char[1], A204492(A046691(n)+7))`
-/

namespace A204487.P13942007155426901016
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A204492 (A046691 n + 7).toNat)

end

end A204487.P13942007155426901016

/-! ## A204487.P14449715075388207202

`abs(1-A204492(A167614(n+1)))+1`
-/

namespace A204487.P14449715075388207202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A204492 (A167614 (n + 1)).toNat| + 1

end

end A204487.P14449715075388207202

/-! ## A204487.P10393183680331601053

`or(char[1], A204492(A000217(n+2)+3))`
-/

namespace A204487.P10393183680331601053
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A204492 (A000217 (n + 2) + 3).toNat)

end

end A204487.P10393183680331601053

/-! ## A204487.P13865157620506610750

`A204492(A046691(n)+7)%A000032(xor(34, n))`
-/

namespace A204487.P13865157620506610750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A204492 (A046691 n + 7).toNat) (A000032 (Nat.xor 34 n))

end

end A204487.P13865157620506610750

/-!
# A204488: Number of (n+2)X6 0..1 arrays with every 3X3 subblock having three equal elements in a row horizontally, vertically or nw-to-se diagonally exactly one way, and new values 0..1 introduced in row major order.

The programs for A204488, there is no canonical definition to state claims against.
-/

/-! ## A204488.P8519109231961210722

`A204492(∑[n+3]+7)`
-/

namespace A204488.P8519109231961210722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204492 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A204488.P8519109231961210722

/-! ## A204488.P18269722253931512735

`A204492(A055999(n)+10)+char[48]`
-/

namespace A204488.P18269722253931512735
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  48

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204492 (A055999 n + 10).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A204488.P18269722253931512735

/-! ## A204488.P7357259439513576217

`A204492(A055999(n)+10)%A242852(3*n+2)`
-/

namespace A204488.P7357259439513576217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A204492 (A055999 n + 10).toNat) (A242852 (3 * n + 2))

end

end A204488.P7357259439513576217

/-! ## A204488.P14551865340750573504

`A014963(54*n+6)*A204492(A055999(n)+10)`
-/

namespace A204488.P14551865340750573504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (54 * n + 6) * A204492 (A055999 n + 10).toNat

end

end A204488.P14551865340750573504

/-! ## A204488.P17625215621622271542

`A000041(gcd(n, n+1))*A204492(A055999(n)+10)`
-/

namespace A204488.P17625215621622271542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.gcd n (n + 1)) * A204492 (A055999 n + 10).toNat

end

end A204488.P17625215621622271542

/-!
# A204489: Number of (n+2)X7 0..1 arrays with every 3X3 subblock having three equal elements in a row horizontally, vertically or nw-to-se diagonally exactly one way, and new values 0..1 introduced in row major order.

The programs for A204489, there is no canonical definition to state claims against.
-/

/-! ## A204489.P17083746230307689999

`A204492(∑[n+4]+11)`
-/

namespace A204489.P17083746230307689999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204492 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A204489.P17083746230307689999

/-! ## A204489.P13860520521170387623

`or(char[14], A204492(A034856(n+3)+7))`
-/

namespace A204489.P13860520521170387623
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A204492 (A034856 (n + 3) + 7).toNat)

end

end A204489.P13860520521170387623

/-! ## A204489.P249376383914423262

`or(A204492(A167499(n+3)), A316867(n))`
-/

namespace A204489.P249376383914423262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A204492 (A167499 (n + 3)).toNat) (A316867 n)

end

end A204489.P249376383914423262

/-! ## A204489.P7425014885748684574

`A204492(A167499(n+3))%A204490(n+1)`
-/

namespace A204489.P7425014885748684574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A204492 (A167499 (n + 3)).toNat) (A204490 (n + 1))

end

end A204489.P7425014885748684574

/-!
# A204490: Number of (n+2)X8 0..1 arrays with every 3X3 subblock having three equal elements in a row horizontally, vertically or nw-to-se diagonally exactly one way, and new values 0..1 introduced in row major order.

The programs for A204490, there is no canonical definition to state claims against.
-/

/-! ## A204490.P8049033969032613257

`A204492(A056115(n)+21)`
-/

namespace A204490.P8049033969032613257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204492 (A056115 n + 21).toNat

end

end A204490.P8049033969032613257

/-! ## A204490.P10042984240498120073

`A204492(A167499(n+4)+1)`
-/

namespace A204490.P10042984240498120073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204492 (A167499 (n + 4) + 1).toNat

end

end A204490.P10042984240498120073

/-! ## A204490.P5214704145901571119

`A204492(A000124(n+5)+5)`
-/

namespace A204490.P5214704145901571119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204492 (A000124 (n + 5) + 5).toNat

end

end A204490.P5214704145901571119

/-! ## A204490.P7753925035141233275

`A204492(A000096(n+4)+7)`
-/

namespace A204490.P7753925035141233275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204492 (A000096 (n + 4) + 7).toNat

end

end A204490.P7753925035141233275

/-! ## A204490.P6765588264809789035

`A204492(A000217(n+5)+6)`
-/

namespace A204490.P6765588264809789035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204492 (A000217 (n + 5) + 6).toNat

end

end A204490.P6765588264809789035

/-!
# A204491: Number of (n+2)X9 0..1 arrays with every 3X3 subblock having three equal elements in a row horizontally, vertically or nw-to-se diagonally exactly one way, and new values 0..1 introduced in row major order.

The programs for A204491, there is no canonical definition to state claims against.
-/

/-! ## A204491.P1398602019325890158

`A204492(A056119(n)+28)`
-/

namespace A204491.P1398602019325890158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204492 (A056119 n + 28).toNat

end

end A204491.P1398602019325890158

/-! ## A204491.P11439173760820842700

`A204492(A000124(n+6)+6)`
-/

namespace A204491.P11439173760820842700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204492 (A000124 (n + 6) + 6).toNat

end

end A204491.P11439173760820842700

/-! ## A204491.P10991798382020575008

`A204492(A000217(n+6)+7)`
-/

namespace A204491.P10991798382020575008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204492 (A000217 (n + 6) + 7).toNat

end

end A204491.P10991798382020575008

/-! ## A204491.P13230186895848303810

`A204492(A027379(n+4)+10)`
-/

namespace A204491.P13230186895848303810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204492 (A027379 (n + 4) + 10).toNat

end

end A204491.P13230186895848303810

/-! ## A204491.P4617036306953290086

`A204492(eq[8, A131818(n+1)])`
-/

namespace A204491.P4617036306953290086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204492 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A204491.P4617036306953290086

/-!
# A204493: Number of (n+2)X(n+2) 0..2 arrays with every 3X3 subblock having three strictly increasing elements in a row horizontally or vertically.

The programs for A204493, there is no canonical definition to state claims against.
-/

/-! ## A204493.P1167632794700407364

`A204501(∑[4*n]+1)`
-/

namespace A204493.P1167632794700407364
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204501 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A204493.P1167632794700407364

/-! ## A204493.P11151466321223498855

`or(1, A204501(A001844(n)))`
-/

namespace A204493.P11151466321223498855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A204501 (A001844 n).toNat)

end

end A204493.P11151466321223498855

/-! ## A204493.P2812882120238257097

`record[A003982(n)*A204501(n+1)]`
-/

namespace A204493.P2812882120238257097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A204501 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204493.P2812882120238257097

/-! ## A204493.P2372268615665284450

`A007318(∑[n])*A204501(A001844(n))`
-/

namespace A204493.P2372268615665284450
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A204501 (A001844 n).toNat

end

end A204493.P2372268615665284450

/-! ## A204493.P5681542134786934183

`ceil(1/A007318(n))*A204501(A001844(n))`
-/

namespace A204493.P5681542134786934183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈1 / (A007318 n : ℚ)⌉ * A204501 (A001844 n).toNat

end

end A204493.P5681542134786934183

/-!
# A204494: Number of (n+2)X3 0..2 arrays with every 3X3 subblock having three strictly increasing elements in a row horizontally or vertically.

The programs for A204494, there is no canonical definition to state claims against.
-/

/-! ## A204494.P3105231654947899533

`A204501(∑[n]+1)`
-/

namespace A204494.P3105231654947899533
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204501 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A204494.P3105231654947899533

/-! ## A204494.P15223728717667051840

`record[A204501(n+1)/A046817(n)]`
-/

namespace A204494.P15223728717667051840
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204501 (n + 1) : ℚ) / (A046817 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204494.P15223728717667051840

/-! ## A204494.P7599776635344254163

`record[A204501(n+1)/A077028(n)]`
-/

namespace A204494.P7599776635344254163
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204501 (n + 1) : ℚ) / (A077028 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204494.P7599776635344254163

/-! ## A204494.P10473203097048988543

`record[gcd(A002262(n), A204501(n+1))]`
-/

namespace A204494.P10473203097048988543
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A204501 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204494.P10473203097048988543

/-! ## A204494.P11291253055852247543

`record[A204501(n+1)/A144444(n+1)]`
-/

namespace A204494.P11291253055852247543
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204501 (n + 1) : ℚ) / (A144444 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204494.P11291253055852247543

/-!
# A204495: Number of (n+2)X4 0..2 arrays with every 3X3 subblock having three strictly increasing elements in a row horizontally or vertically.

The programs for A204495, there is no canonical definition to state claims against.
-/

/-! ## A204495.P9284245466017194937

`A204501(∑[n+1]+2)`
-/

namespace A204495.P9284245466017194937
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204501 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A204495.P9284245466017194937

/-! ## A204495.P12671863273581791068

`record[A023531(n)*A204501(n+3)]`
-/

namespace A204495.P12671863273581791068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n * A204501 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204495.P12671863273581791068

/-! ## A204495.P9069514714147461551

`record[gcd(A002262(n), A204501(n+2))]`
-/

namespace A204495.P9069514714147461551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A204501 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204495.P9069514714147461551

/-! ## A204495.P8362264830209331046

`record[gcd(A025581(n), A204501(n+3))]`
-/

namespace A204495.P8362264830209331046
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A025581 n) (A204501 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204495.P8362264830209331046

/-! ## A204495.P7375605796551677266

`A204501(A000096(n+1))+A185284(n)`
-/

namespace A204495.P7375605796551677266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204501 (A000096 (n + 1)).toNat + A185284 n

end

end A204495.P7375605796551677266

/-!
# A204496: Number of (n+2)X5 0..2 arrays with every 3X3 subblock having three strictly increasing elements in a row horizontally or vertically.

The programs for A204496, there is no canonical definition to state claims against.
-/

/-! ## A204496.P12357836018512863158

`A204501(A167614(n+1))`
-/

namespace A204496.P12357836018512863158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204501 (A167614 (n + 1)).toNat

end

end A204496.P12357836018512863158

/-! ## A204496.P17257829150261311438

`A204501(A373663(n+1))`
-/

namespace A204496.P17257829150261311438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204501 (A373663 (n + 1)).toNat

end

end A204496.P17257829150261311438

/-! ## A204496.P1131490028786622338

`A204501(A055998(n)+6)`
-/

namespace A204496.P1131490028786622338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204501 (A055998 n + 6).toNat

end

end A204496.P1131490028786622338

/-! ## A204496.P8984144458592130609

`A204501(A046691(n)+7)`
-/

namespace A204496.P8984144458592130609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204501 (A046691 n + 7).toNat

end

end A204496.P8984144458592130609

/-! ## A204496.P4567711196940182091

`A204501(A167499(n)+n)`
-/

namespace A204496.P4567711196940182091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204501 (A167499 n + (n : ℤ)).toNat

end

end A204496.P4567711196940182091

/-!
# A204497: Number of (n+2)X6 0..2 arrays with every 3X3 subblock having three strictly increasing elements in a row horizontally or vertically.

The programs for A204497, there is no canonical definition to state claims against.
-/

/-! ## A204497.P11931456441480317243

`A204501(A374004(n+1))`
-/

namespace A204497.P11931456441480317243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204501 (A374004 (n + 1)).toNat

end

end A204497.P11931456441480317243

/-! ## A204497.P2628948884357579191

`A204501(A141214(n)+7)`
-/

namespace A204497.P2628948884357579191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204501 (A141214 n + 7).toNat

end

end A204497.P2628948884357579191

/-! ## A204497.P15976680220672339955

`A204501(A052905(n)+9)`
-/

namespace A204497.P15976680220672339955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204501 (A052905 n + 9).toNat

end

end A204497.P15976680220672339955

/-! ## A204497.P4742768364167855907

`A204501(A055999(n)+10)`
-/

namespace A204497.P4742768364167855907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204501 (A055999 n + 10).toNat

end

end A204497.P4742768364167855907

/-! ## A204497.P16974412028641062947

`A204501(A167614(n+2)+1)`
-/

namespace A204497.P16974412028641062947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204501 (A167614 (n + 2) + 1).toNat

end

end A204497.P16974412028641062947

/-!
# A204498: Number of (n+2) X 7 0..2 arrays with every 3 X 3 subblock having three strictly increasing elements in a row horizontally or vertically.

The programs for A204498, there is no canonical definition to state claims against.
-/

/-! ## A204498.P16629490334928392665

`A204501(A374005(n+1))`
-/

namespace A204498.P16629490334928392665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204501 (A374005 (n + 1)).toNat

end

end A204498.P16629490334928392665

/-! ## A204498.P2500558469889361667

`A204501(A167499(n+3))`
-/

namespace A204498.P2500558469889361667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204501 (A167499 (n + 3)).toNat

end

end A204498.P2500558469889361667

/-! ## A204498.P1043207400655763090

`A204501(A000124(n+5)-(n+1))`
-/

namespace A204498.P1043207400655763090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204501 (A000124 (n + 5) - (n + 1 : ℤ)).toNat

end

end A204498.P1043207400655763090

/-! ## A204498.P7856137989447954966

`A204501(Δ[A023545(n+1)])`
-/

namespace A204498.P7856137989447954966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204501 (f1 (n + 1) - f1 n).toNat

end

end A204498.P7856137989447954966

/-! ## A204498.P7196859474480596225

`A204501(A141214(n+2)-1)`
-/

namespace A204498.P7196859474480596225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204501 (A141214 (n + 2) - 1).toNat

end

end A204498.P7196859474480596225

/-!
# A204499: Number of (n+2)X8 0..2 arrays with every 3X3 subblock having three strictly increasing elements in a row horizontally or vertically.

The programs for A204499, there is no canonical definition to state claims against.
-/

/-! ## A204499.P11246968837531110645

`A204501(A374007(n+1))`
-/

namespace A204499.P11246968837531110645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204501 (A374007 (n + 1)).toNat

end

end A204499.P11246968837531110645

/-! ## A204499.P1621086501777613271

`A204501(A166136(n+4))`
-/

namespace A204499.P1621086501777613271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204501 (A166136 (n + 4)).toNat

end

end A204499.P1621086501777613271

/-! ## A204499.P17212693450463295172

`A204501(A141214(n+2)+9)`
-/

namespace A204499.P17212693450463295172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204501 (A141214 (n + 2) + 9).toNat

end

end A204499.P17212693450463295172

/-! ## A204499.P3891947160765832962

`A204501(eq[3, A219347(n)])`
-/

namespace A204499.P3891947160765832962
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204501 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A204499.P3891947160765832962

/-! ## A204499.P15142124779742682802

`A204501(eq[5, A193592(n)])`
-/

namespace A204499.P15142124779742682802
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204501 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A204499.P15142124779742682802

