import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
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
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024

/-!
# A208400: Smallest integer k such that k*n+1 is a prime dividing (n^n)^2 + 1.

The programs for A208400, there is no canonical definition to state claims against.
-/

/-! ## A208400.P13163477280690135269

`floor(A208399(n+2)/(n+2))`
-/

namespace A208400.P13163477280690135269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A208399 (n + 2) : ℚ) / (n + 2 : ℚ)⌋

end

end A208400.P13163477280690135269

/-!
# A208401: Number of n X n 0..3 arrays with new values 0..3 introduced in row major order and no element equal to more than two of its immediate leftward or upward or right-upward antidiagonal neighbors.

The programs for A208401, there is no canonical definition to state claims against.
-/

/-! ## A208401.P5872034488991552110

`A208408((n+1)²+n²)`
-/

namespace A208401.P5872034488991552110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208408 ((n + 1) ^ 2 + n ^ 2)

end

end A208401.P5872034488991552110

/-!
# A208402: Number of n X 2 0..3 arrays with new values 0..3 introduced in row major order and no element equal to more than two of its immediate leftward or upward or right-upward antidiagonal neighbors.

The programs for A208402, there is no canonical definition to state claims against.
-/

/-! ## A208402.P5552957012776199862

`lcm(4^n+1, ∑[ceil(4^n/2)])`
-/

namespace A208402.P5552957012776199862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(4 ^ n : ℚ) / 2⌉

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (4 ^ n + 1 : ℤ) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A208402.P5552957012776199862

/-! ## A208402.P2547233953706747704

`21*a(n-1)-84*a(n-2)+64*a(n-3)` with `a(0)=2, a(1)=15, a(2)=187`
-/

namespace A208402.P2547233953706747704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 15, 187] fun n a =>
  21 * a (n - 1) - 84 * a (n - 2) + 64 * a (n - 3)

end

end A208402.P2547233953706747704

/-! ## A208402.P12352152775872007260

`A007581(Δ[n²])`
-/

namespace A208402.P12352152775872007260
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007581 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A208402.P12352152775872007260

/-! ## A208402.P3711766275163116115

`A124303(2*(n+1))`
-/

namespace A208402.P3711766275163116115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124303 (2 * (n + 1))

end

end A208402.P3711766275163116115

/-! ## A208402.P16795260091639932171

`A329908(4*n+2)`
-/

namespace A208402.P16795260091639932171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329908 (4 * n + 2)

end

end A208402.P16795260091639932171

/-! ## A208402.P14587708135431850469

`A076024(Δ[n²])+1`
-/

namespace A208402.P14587708135431850469
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076024 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1

end

end A208402.P14587708135431850469

/-! ## A208402.P12443875220595895888

`∑[A087440(2*n)]+1`
-/

namespace A208402.P12443875220595895888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087440 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A208402.P12443875220595895888

/-! ## A208402.P2888716140056900747

`or(2, A007581(2*n+1))`
-/

namespace A208402.P2888716140056900747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A007581 (2 * n + 1))

end

end A208402.P2888716140056900747

/-! ## A208402.P7868893558738920655

`A056505(3*(n+1)+n)`
-/

namespace A208402.P7868893558738920655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056505 (3 * (n + 1) + n)

end

end A208402.P7868893558738920655

/-! ## A208402.P17724096483076454531

`A007583(n)*A052539(n)`
-/

namespace A208402.P17724096483076454531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007583 n * A052539 n

end

end A208402.P17724096483076454531

/-!
# A208403: Number of n X 3 0..3 arrays with new values 0..3 introduced in row major order and no element equal to more than two of its immediate leftward or upward or right-upward antidiagonal neighbors.

The programs for A208403, there is no canonical definition to state claims against.
-/

/-! ## A208403.P6641600754081474909

`A208408(∑[n+3]+1)`
-/

namespace A208403.P6641600754081474909
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208408 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A208403.P6641600754081474909

/-!
# A208404: Number of n X 4 0..3 arrays with new values 0..3 introduced in row major order and no element equal to more than two of its immediate leftward or upward or right-upward antidiagonal neighbors.

The programs for A208404, there is no canonical definition to state claims against.
-/

/-! ## A208404.P11286755526002180684

`A208409(2*(n+1))`
-/

namespace A208404.P11286755526002180684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208409 (2 * (n + 1))

end

end A208404.P11286755526002180684

/-! ## A208404.P6301182288853657573

`record[A208409((n+1)/and(n+1, -(n+1))+1)]`
-/

namespace A208404.P6301182288853657573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208409 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ) + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208404.P6301182288853657573

/-! ## A208404.P2371966296149427781

`record[A208409(A000265(n+1)+1)]`
-/

namespace A208404.P2371966296149427781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208409 (A000265 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208404.P2371966296149427781

/-! ## A208404.P12392773839854900779

`A208408(A141214(n+1))`
-/

namespace A208404.P12392773839854900779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208408 (A141214 (n + 1)).toNat

end

end A208404.P12392773839854900779

/-! ## A208404.P1051050961091092110

`A208408(A155212(n)+5)`
-/

namespace A208404.P1051050961091092110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208408 (A155212 n + 5).toNat

end

end A208404.P1051050961091092110

/-!
# A208405: Number of nX5 0..3 arrays with new values 0..3 introduced in row major order and no element equal to more than two of its immediate leftward or upward or right-upward antidiagonal neighbors.

The programs for A208405, there is no canonical definition to state claims against.
-/

/-! ## A208405.P14166085146936753226

`A208408(Δ[A023545(n+1)])`
-/

namespace A208405.P14166085146936753226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208408 (f1 (n + 1) - f1 n).toNat

end

end A208405.P14166085146936753226

/-! ## A208405.P7147262558304781892

`A208408(A055999(n+2)+2)`
-/

namespace A208405.P7147262558304781892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208408 (A055999 (n + 2) + 2).toNat

end

end A208405.P7147262558304781892

/-! ## A208405.P3239245028416387742

`A208408(A000124(n+5)-5)`
-/

namespace A208405.P3239245028416387742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208408 (A000124 (n + 5) - 5).toNat

end

end A208405.P3239245028416387742

/-! ## A208405.P8429062950357577604

`A208408(eq[11, A091355(n+1)])`
-/

namespace A208405.P8429062950357577604
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091355 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208408 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208405.P8429062950357577604

/-! ## A208405.P11812325892586541970

`A208408(eq[A004736(n+1), A278290(n+1)])`
-/

namespace A208405.P11812325892586541970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278290 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208408 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A208405.P11812325892586541970

/-!
# A208408: T(n,k) is the number of n X k 0..3 arrays with new values 0..3 introduced in row major order and no element equal to more than two of its immediate leftward or upward or right-upward antidiagonal neighbors.

The programs for A208408, there is no canonical definition to state claims against.
-/

/-! ## A208408.P3519387398152884611

`A200801(n+1)+A122388(A018242(n))`
-/

namespace A208408.P3519387398152884611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200801 (n + 1) + A122388 (A018242 n).toNat

end

end A208408.P3519387398152884611

/-! ## A208408.P7832755666007018021

`A326016(A226452(n))+A200801(n+1)`
-/

namespace A208408.P7832755666007018021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326016 (A226452 n).toNat + A200801 (n + 1)

end

end A208408.P7832755666007018021

/-! ## A208408.P6187018226885484367

`or(A048962(A000088(n)), A200801(n+1))`
-/

namespace A208408.P6187018226885484367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A048962 (A000088 n).toNat) (A200801 (n + 1))

end

end A208408.P6187018226885484367

/-! ## A208408.P9964859559174734381

`or(A048962(A000088(n)), A208201(n+1))`
-/

namespace A208408.P9964859559174734381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A048962 (A000088 n).toNat) (A208201 (n + 1))

end

end A208408.P9964859559174734381

/-!
# A208409: Number of 2 X n 0..3 arrays with new values 0..3 introduced in row major order and no element equal to more than two of its immediate leftward or upward or right-upward antidiagonal neighbors.

The programs for A208409, there is no canonical definition to state claims against.
-/

/-! ## A208409.P4710032288137803796

`A208408(∑[n+1]+2)`
-/

namespace A208409.P4710032288137803796
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208408 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A208409.P4710032288137803796

/-! ## A208409.P15733588636047414416

`record[A010054(n)*A208408(n+2)]`
-/

namespace A208409.P15733588636047414416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A208408 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208409.P15733588636047414416

/-!
# A208410: Number of 3 X n 0..3 arrays with new values 0..3 introduced in row major order and no element equal to more than two of its immediate leftward or upward or right-upward antidiagonal neighbors.

The programs for A208410, there is no canonical definition to state claims against.
-/

/-! ## A208410.P9266186231360365414

`A208408(∑[n+2]+4)`
-/

namespace A208410.P9266186231360365414
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208408 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A208410.P9266186231360365414

/-! ## A208410.P5662499302149041451

`A208408(A167614(n+1))+A185294(n)`
-/

namespace A208410.P5662499302149041451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208408 (A167614 (n + 1)).toNat + A185294 n

end

end A208410.P5662499302149041451

/-! ## A208410.P842934592104042511

`A036225(n)*A208408(A167614(n+1))`
-/

namespace A208410.P842934592104042511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036225 n * A208408 (A167614 (n + 1)).toNat

end

end A208410.P842934592104042511

/-! ## A208410.P801392415900011902

`lcm(A033999(n), A208408(A167614(n+1)))`
-/

namespace A208410.P801392415900011902
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A208408 (A167614 (n + 1)).toNat)

end

end A208410.P801392415900011902

/-! ## A208410.P7071640905910670508

`A208408(A167614(n+1))*A239700(n+1)`
-/

namespace A208410.P7071640905910670508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208408 (A167614 (n + 1)).toNat * A239700 (n + 1)

end

end A208410.P7071640905910670508

/-!
# A208411: Number of 4 X n 0..3 arrays with new values 0..3 introduced in row major order and no element equal to more than two of its immediate leftward or upward or right-upward antidiagonal neighbors.

The programs for A208411, there is no canonical definition to state claims against.
-/

/-! ## A208411.P14996636478586205722

`A208408(A141214(n)+7)`
-/

namespace A208411.P14996636478586205722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208408 (A141214 n + 7).toNat

end

end A208411.P14996636478586205722

/-! ## A208411.P5459881848293910011

`A208408(A052905(n)+9)`
-/

namespace A208411.P5459881848293910011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208408 (A052905 n + 9).toNat

end

end A208411.P5459881848293910011

/-! ## A208411.P9329361613636782301

`A208408(A055999(n)+10)`
-/

namespace A208411.P9329361613636782301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208408 (A055999 n + 10).toNat

end

end A208411.P9329361613636782301

/-! ## A208411.P3830975135447176717

`A208408(A167614(n+2)+1)`
-/

namespace A208411.P3830975135447176717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208408 (A167614 (n + 2) + 1).toNat

end

end A208411.P3830975135447176717

/-! ## A208411.P963783718666172804

`A208408(A166136(n+2)-2)`
-/

namespace A208411.P963783718666172804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208408 (A166136 (n + 2) - 2).toNat

end

end A208411.P963783718666172804

/-!
# A208412: Number of 5Xn 0..3 arrays with new values 0..3 introduced in row major order and no element equal to more than two of its immediate leftward or upward or right-upward antidiagonal neighbors.

The programs for A208412, there is no canonical definition to state claims against.
-/

/-! ## A208412.P5624935880477443617

`A208408(A056000(n)+15)`
-/

namespace A208412.P5624935880477443617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208408 (A056000 n + 15).toNat

end

end A208412.P5624935880477443617

/-!
# A208415: Number of n X n 0..1 arrays avoiding 0 0 0 and 0 0 1 horizontally and 0 0 0 and 0 1 1 vertically.

The programs for A208415, there is no canonical definition to state claims against.
-/

/-! ## A208415.P1528765098298846975

`A208420((n+1)²+n²)`
-/

namespace A208415.P1528765098298846975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208420 ((n + 1) ^ 2 + n ^ 2)

end

end A208415.P1528765098298846975

/-! ## A208415.P2849486391279923968

`record[gcd(A003987(n), A208420(n+1))]`
-/

namespace A208415.P2849486391279923968
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003987 n) (A208420 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208415.P2849486391279923968

/-! ## A208415.P9988203323944855620

`record[root(A208420(n+1), A253146(n+1))]`
-/

namespace A208415.P9988203323944855620
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A208420 (n + 1) : ℝ) ^ (1 / (A253146 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208415.P9988203323944855620

/-! ## A208415.P11654300167912718692

`A208420(A001844(n))+A185284(n)`
-/

namespace A208415.P11654300167912718692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208420 (A001844 n).toNat + A185284 n

end

end A208415.P11654300167912718692

/-! ## A208415.P5848252092060332273

`A007318(∑[n])*A208420(A001844(n))`
-/

namespace A208415.P5848252092060332273
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A208420 (A001844 n).toNat

end

end A208415.P5848252092060332273

/-!
# A208416: Number of n X 4 0..1 arrays avoiding 0 0 0 and 0 0 1 horizontally and 0 0 0 and 0 1 1 vertically.

The programs for A208416, there is no canonical definition to state claims against.
-/

/-! ## A208416.P4164036988546354300

`A207025(n+1)/A207903(n+1)*A207905(n+1)`
-/

namespace A208416.P4164036988546354300
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207025 (n + 1) : ℚ) / (A207903 (n + 1) : ℚ) * (A207905 (n + 1) : ℚ)

end

end A208416.P4164036988546354300

/-! ## A208416.P5275541118698483851

`A207903(n+1)/A207904(n+1)*A207905(n+1)`
-/

namespace A208416.P5275541118698483851
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207903 (n + 1) : ℚ) / (A207904 (n + 1) : ℚ) * (A207905 (n + 1) : ℚ)

end

end A208416.P5275541118698483851

/-! ## A208416.P10954040758416286661

`sqrt(A207025(n+1))*sqrt(A207906(n+1))`
-/

namespace A208416.P10954040758416286661
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A207025 (n + 1) : ℝ) * Real.sqrt (A207906 (n + 1) : ℝ)

end

end A208416.P10954040758416286661

/-! ## A208416.P142823339902878667

`A207903(n+1)/A207905(n+1)*A207906(n+1)`
-/

namespace A208416.P142823339902878667
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207903 (n + 1) : ℚ) / (A207905 (n + 1) : ℚ) * (A207906 (n + 1) : ℚ)

end

end A208416.P142823339902878667

/-! ## A208416.P9268792019764599443

`sqrt(A207025(n+1)*A207906(n+1))`
-/

namespace A208416.P9268792019764599443
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A207025 (n + 1) * A207906 (n + 1) : ℝ)

end

end A208416.P9268792019764599443

/-!
# A208417: Number of nX5 0..1 arrays avoiding 0 0 0 and 0 0 1 horizontally and 0 0 0 and 0 1 1 vertically.

The programs for A208417, there is no canonical definition to state claims against.
-/

/-! ## A208417.P1689733676515416222

`A207903(n+1)/A207905(n+1)*A207907(n+1)`
-/

namespace A208417.P1689733676515416222
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207903 (n + 1) : ℚ) / (A207905 (n + 1) : ℚ) * (A207907 (n + 1) : ℚ)

end

end A208417.P1689733676515416222

/-! ## A208417.P14193685498079228495

`A208420(A046691(n+3))`
-/

namespace A208417.P14193685498079228495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208420 (A046691 (n + 3)).toNat

end

end A208417.P14193685498079228495

/-! ## A208417.P3333690306975289750

`A208420(Δ[A023545(n+1)])`
-/

namespace A208417.P3333690306975289750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208420 (f1 (n + 1) - f1 n).toNat

end

end A208417.P3333690306975289750

/-! ## A208417.P8096959701523181196

`A208420(A055999(n+2)+2)`
-/

namespace A208417.P8096959701523181196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208420 (A055999 (n + 2) + 2).toNat

end

end A208417.P8096959701523181196

/-! ## A208417.P16585653732324596824

`A208420(A000217(n+4)+n+1)`
-/

namespace A208417.P16585653732324596824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208420 (A000217 (n + 4) + (n + 1 : ℤ)).toNat

end

end A208417.P16585653732324596824

/-!
# A208418: Number of nX6 0..1 arrays avoiding 0 0 0 and 0 0 1 horizontally and 0 0 0 and 0 1 1 vertically.

The programs for A208418, there is no canonical definition to state claims against.
-/

/-! ## A208418.P13853600699086695634

`A208420(∑[n+6]+10)`
-/

namespace A208418.P13853600699086695634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208420 (∑ j ∈ Finset.range (n + 1), f1 j + 10)

end

end A208418.P13853600699086695634

/-! ## A208418.P2940886133902931349

`A208420(A052905(n+3))%A208029(n+4)`
-/

namespace A208418.P2940886133902931349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A208420 (A052905 (n + 3)).toNat) (A208029 (n + 4))

end

end A208418.P2940886133902931349

/-! ## A208418.P3479753346515972698

`A208420(A052905(n+3))+A000007(2*(n+1))`
-/

namespace A208418.P3479753346515972698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208420 (A052905 (n + 3)).toNat + A000007 (2 * (n + 1))

end

end A208418.P3479753346515972698

/-! ## A208418.P2803006155657610123

`A208420(A052905(n+3))+A132747(2*n+1)`
-/

namespace A208418.P2803006155657610123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208420 (A052905 (n + 3)).toNat + A132747 (2 * n + 1)

end

end A208418.P2803006155657610123

/-!
# A208419: Number of nX7 0..1 arrays avoiding 0 0 0 and 0 0 1 horizontally and 0 0 0 and 0 1 1 vertically.

The programs for A208419, there is no canonical definition to state claims against.
-/

/-! ## A208419.P5211614428089184464

`A208420(A055999(n+4))`
-/

namespace A208419.P5211614428089184464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208420 (A055999 (n + 4)).toNat

end

end A208419.P5211614428089184464

/-! ## A208419.P3050178717102400761

`A208420(A000124(n+7)-7)`
-/

namespace A208419.P3050178717102400761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208420 (A000124 (n + 7) - 7).toNat

end

end A208419.P3050178717102400761

/-! ## A208419.P11357779082790660391

`A208420(eq[7, A004736(n+1)]+1)`
-/

namespace A208419.P11357779082790660391
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208420 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A208419.P11357779082790660391

/-! ## A208419.P6291578803943907112

`A208420(A000217(n+6)+n+1)`
-/

namespace A208419.P6291578803943907112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208420 (A000217 (n + 6) + (n + 1 : ℤ)).toNat

end

end A208419.P6291578803943907112

/-! ## A208419.P13201607231895077937

`A208420(A027379(n+4)+n+4)`
-/

namespace A208419.P13201607231895077937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208420 (A027379 (n + 4) + (n + 4 : ℤ)).toNat

end

end A208419.P13201607231895077937

/-!
# A208420: T(n,k)=Number of nXk 0..1 arrays avoiding 0 0 0 and 0 0 1 horizontally and 0 0 0 and 0 1 1 vertically.

The programs for A208420, there is no canonical definition to state claims against.
-/

/-! ## A208420.P14705092364229747827

`A208028(n+1)-A210709(A067747(n+1))`
-/

namespace A208420.P14705092364229747827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208028 (n + 1) - A210709 (A067747 (n + 1)).toNat

end

end A208420.P14705092364229747827

/-! ## A208420.P5349353544250238570

`-or(-A208028(n+1), A210709(A048379(n)))`
-/

namespace A208420.P5349353544250238570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.lor (-A208028 (n + 1)) (A210709 (A048379 n).toNat)

end

end A208420.P5349353544250238570

/-! ## A208420.P8850659850006378288

`A208028(n+1)-A210709(n+11)`
-/

namespace A208420.P8850659850006378288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208028 (n + 1) - A210709 (n + 11)

end

end A208420.P8850659850006378288

/-!
# A208421: Number of 4 X n 0..1 arrays avoiding 0 0 0 and 0 0 1 horizontally and 0 0 0 and 0 1 1 vertically.

The programs for A208421, there is no canonical definition to state claims against.
-/

/-! ## A208421.P8206245429118276760

`A208420(A052905(n)+9)`
-/

namespace A208421.P8206245429118276760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208420 (A052905 n + 9).toNat

end

end A208421.P8206245429118276760

/-! ## A208421.P2038440334780870923

`A208420(A055999(n)+10)`
-/

namespace A208421.P2038440334780870923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208420 (A055999 n + 10).toNat

end

end A208421.P2038440334780870923

/-! ## A208421.P8416834774853559346

`A208420(A167614(n+2)+1)`
-/

namespace A208421.P8416834774853559346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208420 (A167614 (n + 2) + 1).toNat

end

end A208421.P8416834774853559346

/-! ## A208421.P15457849076877399062

`A208420(A166136(n+2)-2)`
-/

namespace A208421.P15457849076877399062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208420 (A166136 (n + 2) - 2).toNat

end

end A208421.P15457849076877399062

/-! ## A208421.P10894297495875744395

`A208420(A167487(n+2)-3)`
-/

namespace A208421.P10894297495875744395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208420 (A167487 (n + 2) - 3).toNat

end

end A208421.P10894297495875744395

/-!
# A208422: Number of 5Xn 0..1 arrays avoiding 0 0 0 and 0 0 1 horizontally and 0 0 0 and 0 1 1 vertically.

The programs for A208422, there is no canonical definition to state claims against.
-/

/-! ## A208422.P2375984017835936557

`A208420(A167499(n+3))`
-/

namespace A208422.P2375984017835936557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208420 (A167499 (n + 3)).toNat

end

end A208422.P2375984017835936557

/-! ## A208422.P2580586845703168609

`A208420(A155212(n)+13)`
-/

namespace A208422.P2580586845703168609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208420 (A155212 n + 13).toNat

end

end A208422.P2580586845703168609

/-! ## A208422.P13090966268554943070

`A208420(A133263(n+4)+3)`
-/

namespace A208422.P13090966268554943070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208420 (A133263 (n + 4) + 3).toNat

end

end A208422.P13090966268554943070

/-! ## A208422.P14667654833705213610

`A208420(A000217(n+4)+5)`
-/

namespace A208422.P14667654833705213610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208420 (A000217 (n + 4) + 5).toNat

end

end A208422.P14667654833705213610

/-! ## A208422.P1695658437337564737

`A208420(A166136(n+1)+A020739(n))`
-/

namespace A208422.P1695658437337564737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208420 (A166136 (n + 1) + A020739 n).toNat

end

end A208422.P1695658437337564737

/-!
# A208423: Number of 6Xn 0..1 arrays avoiding 0 0 0 and 0 0 1 horizontally and 0 0 0 and 0 1 1 vertically.

The programs for A208423, there is no canonical definition to state claims against.
-/

/-! ## A208423.P17746355884733222643

`A208420(A167487(n+4)-1)`
-/

namespace A208423.P17746355884733222643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208420 (A167487 (n + 4) - 1).toNat

end

end A208423.P17746355884733222643

/-! ## A208423.P13765421246154163355

`A208420(A000096(n+4)+7)`
-/

namespace A208423.P13765421246154163355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208420 (A000096 (n + 4) + 7).toNat

end

end A208423.P13765421246154163355

/-! ## A208423.P12853532777057864590

`A208420(A000217(n+5)+6)`
-/

namespace A208423.P12853532777057864590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208420 (A000217 (n + 5) + 6).toNat

end

end A208423.P12853532777057864590

/-! ## A208423.P13068103795443329266

`A208420(A046691(n+3)+10)`
-/

namespace A208423.P13068103795443329266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208420 (A046691 (n + 3) + 10).toNat

end

end A208423.P13068103795443329266

/-! ## A208423.P2551220932617519010

`A208420(eq[7, A004736(n+1)]-2*n)`
-/

namespace A208423.P2551220932617519010
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208420 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n - 2 * n)

end

end A208423.P2551220932617519010

/-!
# A208424: Number of 7Xn 0..1 arrays avoiding 0 0 0 and 0 0 1 horizontally and 0 0 0 and 0 1 1 vertically.

The programs for A208424, there is no canonical definition to state claims against.
-/

/-! ## A208424.P16382006377761657278

`A208420(A167487(n+5))`
-/

namespace A208424.P16382006377761657278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208420 (A167487 (n + 5)).toNat

end

end A208424.P16382006377761657278

/-! ## A208424.P12157748469145051240

`A208420(A167499(n+5)+2)`
-/

namespace A208424.P12157748469145051240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208420 (A167499 (n + 5) + 2).toNat

end

end A208424.P12157748469145051240

/-! ## A208424.P6944332358992242400

`A208420(A133263(n+6)+5)`
-/

namespace A208424.P6944332358992242400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208420 (A133263 (n + 6) + 5).toNat

end

end A208424.P6944332358992242400

/-! ## A208424.P5776138030462140907

`A208420(A000124(n+6)+6)`
-/

namespace A208424.P5776138030462140907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208420 (A000124 (n + 6) + 6).toNat

end

end A208424.P5776138030462140907

/-! ## A208424.P2063181078342415434

`A208420(A000217(n+6)+7)`
-/

namespace A208424.P2063181078342415434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208420 (A000217 (n + 6) + 7).toNat

end

end A208424.P2063181078342415434

/-!
# A208425: Expansion of Sum_{n>=0} (3*n)!/n!^3 * x^(2*n)/(1-x)^(3*n+1).

The programs for A208425, there is no canonical definition to state claims against.
-/

/-! ## A208425.P159057463584391045

`or(∑[A030187((4^n+6^n)/2)+(2^n-2)*n*2^(n-3)], A060058(n))`
-/

namespace A208425.P159057463584391045
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030187 (SequenceMachineLib.roundAway ((4 ^ n + 6 ^ n : ℚ) / 2)).toNat : ℚ) + ((2 ^ n : ℤ) - 2 : ℚ) * ((n : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 3 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)) (A060058 n)

end

end A208425.P159057463584391045

/-! ## A208425.P17538984082059601527

`A370103(n)-A370078(A135160(n))`
-/

namespace A208425.P17538984082059601527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370103 n - A370078 (A135160 n).toNat

end

end A208425.P17538984082059601527

/-!
# A208426: Expansion of Sum_{n>=0} (3*n)!/n!^3 * x^(2*n)/(1-3*x)^(3*n+1).

The programs for A208426, there is no canonical definition to state claims against.
-/

/-! ## A208426.P3451573723803998146

`A076934(9*(6*a(n-1)-8*a(n-2)))` with `a(0)=1, a(1)=3`
-/

namespace A208426.P3451573723803998146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A076934 (9 * (6 * a (n - 1) - 8 * a (n - 2))).toNat

end

end A208426.P3451573723803998146

/-!
# A208427: Number of n X n 0..2 arrays with new values 0..2 introduced in row major order and no element equal to any knight-move neighbor (colorings ignoring permutations of colors).

The programs for A208427, there is no canonical definition to state claims against.
-/

/-! ## A208427.P13455574844791649390

`A208434(∑[4*n]+1)`
-/

namespace A208427.P13455574844791649390
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208434 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A208427.P13455574844791649390

/-! ## A208427.P9461415312795198083

`record[gcd(A114327(n), A208434(n+1))]`
-/

namespace A208427.P9461415312795198083
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A208434 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208427.P9461415312795198083

/-! ## A208427.P1134627014018557802

`A208434(A001844(n))+A071955(n+1)`
-/

namespace A208427.P1134627014018557802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208434 (A001844 n).toNat + A071955 (n + 1)

end

end A208427.P1134627014018557802

/-! ## A208427.P11375178203702913061

`A285006(n+1)+A208434(A001844(n))`
-/

namespace A208427.P11375178203702913061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285006 (n + 1) + A208434 (A001844 n).toNat

end

end A208427.P11375178203702913061

/-! ## A208427.P1698866890820045016

`lcm(A071974(n+1), A208434(A001844(n)))`
-/

namespace A208427.P1698866890820045016
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A071974 (n + 1)) (A208434 (A001844 n).toNat)

end

end A208427.P1698866890820045016

/-!
# A208428: Number of n X 2 0..2 arrays with new values 0..2 introduced in row major order and no element equal to any knight-move neighbor (colorings ignoring permutations of colors).

The programs for A208428, the canonical program `A208428.P10418606377424192716` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A208428 has offset 1).

The definition of A208428 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A208428.P11204194758103946403

`ogf((2+6x-2x^2)/(1-4x))`
-/

namespace A208428.P11204194758103946403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 6, -2] [1, -4] n

end

end A208428.P11204194758103946403

namespace A208428

/-- `ogf((2+6x-2x^2)/(1-4x))` -/
def P11204194758103946403.Spec : Prop :=
  ∀ n, P11204194758103946403.a n = A208428 (n + 1)

end A208428

/-! ## A208428.P10418606377424192716

`4*a(n-1)` with `a(0)=2, a(1)=14, a(2)=54`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A208428

/-- `4*a(n-1)` -/
def P10418606377424192716.Spec : Prop :=
  ∀ n, (P10418606377424192716.a n : ℤ) = A208428 (n + 1)

theorem P10418606377424192716.correct : P10418606377424192716.Spec := by
  intro n
  simp only [A208428, Nat.add_sub_cancel]

end A208428

/-! ## A208428.P3470004569510361158

`Δ[2*round(9*4^(n-2))]`
-/

namespace A208428.P3470004569510361158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.roundAway (9 * (4 : ℚ) ^ ((n : ℤ) - 2 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A208428.P3470004569510361158

namespace A208428

/-- `Δ[2*round(9*4^(n-2))]` -/
def P3470004569510361158.Spec : Prop :=
  ∀ n, P3470004569510361158.a n = A208428 (n + 1)

end A208428

/-! ## A208428.P8790723494788657973

`2*Δ[A055841(n)]`
-/

namespace A208428.P8790723494788657973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055841 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n)

end

end A208428.P8790723494788657973

namespace A208428

/-- `2*Δ[A055841(n)]` -/
def P8790723494788657973.Spec : Prop :=
  ∀ n, P8790723494788657973.a n = A208428 (n + 1)

end A208428

/-! ## A208428.P13596054267535821585

`2*A056120(n+1)`
-/

namespace A208428.P13596054267535821585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A056120 (n + 1)

end

end A208428.P13596054267535821585

namespace A208428

/-- `2*A056120(n+1)` -/
def P13596054267535821585.Spec : Prop :=
  ∀ n, P13596054267535821585.a n = A208428 (n + 1)

end A208428

/-! ## A208428.P10946841253255595156

`record[A279634(n)]+A003945(n)²`
-/

namespace A208428.P10946841253255595156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279634 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + A003945 n ^ 2

end

end A208428.P10946841253255595156

namespace A208428

/-- `record[A279634(n)]+A003945(n)²` -/
def P10946841253255595156.Spec : Prop :=
  ∀ n, P10946841253255595156.a n = A208428 (n + 1)

end A208428

/-! ## A208428.P13347814599569467136

`A279634(2*n)+A003945(n)²`
-/

namespace A208428.P13347814599569467136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279634 (2 * n) + A003945 n ^ 2

end

end A208428.P13347814599569467136

namespace A208428

/-- `A279634(2*n)+A003945(n)²` -/
def P13347814599569467136.Spec : Prop :=
  ∀ n, P13347814599569467136.a n = A208428 (n + 1)

end A208428

/-! ## A208428.P14093399595499134620

`A132477(2*n)+A087009(2*n)`
-/

namespace A208428.P14093399595499134620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132477 (2 * n) + A087009 (2 * n)

end

end A208428.P14093399595499134620

namespace A208428

/-- `A132477(2*n)+A087009(2*n)` -/
def P14093399595499134620.Spec : Prop :=
  ∀ n, P14093399595499134620.a n = A208428 (n + 1)

end A208428

/-! ## A208428.P7172283666859288622

`A087009(2*n)+A082505(2*n+1)`
-/

namespace A208428.P7172283666859288622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087009 (2 * n) + A082505 (2 * n + 1)

end

end A208428.P7172283666859288622

namespace A208428

/-- `A087009(2*n)+A082505(2*n+1)` -/
def P7172283666859288622.Spec : Prop :=
  ∀ n, P7172283666859288622.a n = A208428 (n + 1)

end A208428

/-! ## A208428.P9567716111174055689

`A132477(2*n)+A098011(2*n+1)`
-/

namespace A208428.P9567716111174055689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132477 (2 * n) + A098011 (2 * n + 1)

end

end A208428.P9567716111174055689

namespace A208428

/-- `A132477(2*n)+A098011(2*n+1)` -/
def P9567716111174055689.Spec : Prop :=
  ∀ n, P9567716111174055689.a n = A208428 (n + 1)

end A208428

/-! ## A208428.P17469527146006844292

`xor(A007283(2*n), A098011(2*n+1))`
-/

namespace A208428.P17469527146006844292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A007283 (2 * n)) (A098011 (2 * n + 1))

end

end A208428.P17469527146006844292

namespace A208428

/-- `xor(A007283(2*n), A098011(2*n+1))` -/
def P17469527146006844292.Spec : Prop :=
  ∀ n, P17469527146006844292.a n = A208428 (n + 1)

end A208428

/-! ## A208428.P15704316863546987135

`A098011(2*n+1)+A082505(2*n+1)`
-/

namespace A208428.P15704316863546987135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098011 (2 * n + 1) + A082505 (2 * n + 1)

end

end A208428.P15704316863546987135

namespace A208428

/-- `A098011(2*n+1)+A082505(2*n+1)` -/
def P15704316863546987135.Spec : Prop :=
  ∀ n, P15704316863546987135.a n = A208428 (n + 1)

end A208428

/-! ## A208428.P7138377810700475896

`xor(A003945(2*n+1), A098011(2*n+1))`
-/

namespace A208428.P7138377810700475896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A003945 (2 * n + 1)) (A098011 (2 * n + 1))

end

end A208428.P7138377810700475896

namespace A208428

/-- `xor(A003945(2*n+1), A098011(2*n+1))` -/
def P7138377810700475896.Spec : Prop :=
  ∀ n, P7138377810700475896.a n = A208428 (n + 1)

end A208428

/-! ## A208428.P7231915178283071049

`xor(A042950(2*n+1), A098011(2*n+1))`
-/

namespace A208428.P7231915178283071049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A042950 (2 * n + 1)) (A098011 (2 * n + 1))

end

end A208428.P7231915178283071049

namespace A208428

/-- `xor(A042950(2*n+1), A098011(2*n+1))` -/
def P7231915178283071049.Spec : Prop :=
  ∀ n, P7231915178283071049.a n = A208428 (n + 1)

end A208428

/-! ## A208428.P16043481373818541718

`xor(A122756(A004275(n)), A164346(n))`
-/

namespace A208428.P16043481373818541718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A122756 (A004275 n).toNat) (A164346 n)

end

end A208428.P16043481373818541718

namespace A208428

/-- `xor(A122756(A004275(n)), A164346(n))` -/
def P16043481373818541718.Spec : Prop :=
  ∀ n, P16043481373818541718.a n = A208428 (n + 1)

end A208428

/-! ## A208428.P4194797242722635733

`xor(A111286(A004280(n+1)), A164346(n))`
-/

namespace A208428.P4194797242722635733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A111286 (A004280 (n + 1)).toNat) (A164346 n)

end

end A208428.P4194797242722635733

namespace A208428

/-- `xor(A111286(A004280(n+1)), A164346(n))` -/
def P4194797242722635733.Spec : Prop :=
  ∀ n, P4194797242722635733.a n = A208428 (n + 1)

end A208428

/-! ## A208428.P6067851077636149467

`A055841(n+1)+A056120(n+1)-A055841(n)`
-/

namespace A208428.P6067851077636149467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055841 (n + 1) + (A056120 (n + 1) - A055841 n)

end

end A208428.P6067851077636149467

namespace A208428

/-- `A055841(n+1)+A056120(n+1)-A055841(n)` -/
def P6067851077636149467.Spec : Prop :=
  ∀ n, P6067851077636149467.a n = A208428 (n + 1)

end A208428

/-! ## A208428.P13795495957177554409

`A087009(2*n+1)+A007283(2*n)-A087009(2*n)`
-/

namespace A208428.P13795495957177554409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087009 (2 * n + 1) + (A007283 (2 * n) - A087009 (2 * n))

end

end A208428.P13795495957177554409

namespace A208428

/-- `A087009(2*n+1)+A007283(2*n)-A087009(2*n)` -/
def P13795495957177554409.Spec : Prop :=
  ∀ n, P13795495957177554409.a n = A208428 (n + 1)

end A208428

/-! ## A208428.P9590066637590337941

`A003945(2*n+1)+A087009(2*n+1)-A087009(2*n)`
-/

namespace A208428.P9590066637590337941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003945 (2 * n + 1) + (A087009 (2 * n + 1) - A087009 (2 * n))

end

end A208428.P9590066637590337941

namespace A208428

/-- `A003945(2*n+1)+A087009(2*n+1)-A087009(2*n)` -/
def P9590066637590337941.Spec : Prop :=
  ∀ n, P9590066637590337941.a n = A208428 (n + 1)

end A208428

/-!
# A208429: Number of nX3 0..2 arrays with new values 0..2 introduced in row major order and no element equal to any knight-move neighbor (colorings ignoring permutations of colors).

The programs for A208429, there is no canonical definition to state claims against.
-/

/-! ## A208429.P6631188141194470017

`A208434(∑[n+2]+4)`
-/

namespace A208429.P6631188141194470017
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208434 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A208429.P6631188141194470017

/-! ## A208429.P14587610822560580088

`A208434(A167614(n+1))+A025466(n)`
-/

namespace A208429.P14587610822560580088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208434 (A167614 (n + 1)).toNat + A025466 n

end

end A208429.P14587610822560580088

/-! ## A208429.P511160664836035008

`A208434(A167614(n+1))+A185284(n)`
-/

namespace A208429.P511160664836035008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208434 (A167614 (n + 1)).toNat + A185284 n

end

end A208429.P511160664836035008

/-! ## A208429.P13572689082795895993

`A015256(n)*A208434(A167614(n+1))`
-/

namespace A208429.P13572689082795895993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015256 n * A208434 (A167614 (n + 1)).toNat

end

end A208429.P13572689082795895993

/-! ## A208429.P11159524033255403771

`A063435(n)*A208434(A167614(n+1))`
-/

namespace A208429.P11159524033255403771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063435 n * A208434 (A167614 (n + 1)).toNat

end

end A208429.P11159524033255403771

/-!
# A208430: Number of nX4 0..2 arrays with new values 0..2 introduced in row major order and no element equal to any knight-move neighbor (colorings ignoring permutations of colors).

The programs for A208430, there is no canonical definition to state claims against.
-/

/-! ## A208430.P15518422272222898962

`A208434(A374004(n+1))`
-/

namespace A208430.P15518422272222898962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208434 (A374004 (n + 1)).toNat

end

end A208430.P15518422272222898962

/-! ## A208430.P14368163810174616184

`A208434(A141214(n)+7)`
-/

namespace A208430.P14368163810174616184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208434 (A141214 n + 7).toNat

end

end A208430.P14368163810174616184

/-! ## A208430.P2138012397085708098

`A208434(A052905(n)+9)`
-/

namespace A208430.P2138012397085708098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208434 (A052905 n + 9).toNat

end

end A208430.P2138012397085708098

/-! ## A208430.P16716595203049767503

`A208434(A167614(n+2)+1)`
-/

namespace A208430.P16716595203049767503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208434 (A167614 (n + 2) + 1).toNat

end

end A208430.P16716595203049767503

/-! ## A208430.P6265559858567176860

`A208434(eq[5, A131818(n+1)])`
-/

namespace A208430.P6265559858567176860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208434 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208430.P6265559858567176860

/-!
# A208431: Number of nX5 0..2 arrays with new values 0..2 introduced in row major order and no element equal to any knight-move neighbor (colorings ignoring permutations of colors).

The programs for A208431, there is no canonical definition to state claims against.
-/

/-! ## A208431.P8085965429517427407

`A208434(A374005(n+1))`
-/

namespace A208431.P8085965429517427407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208434 (A374005 (n + 1)).toNat

end

end A208431.P8085965429517427407

/-! ## A208431.P14274302216023664211

`A208434(A155212(n)+13)`
-/

namespace A208431.P14274302216023664211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208434 (A155212 n + 13).toNat

end

end A208431.P14274302216023664211

/-! ## A208431.P332560929453197656

`A208434(A000096(n+3)+6)`
-/

namespace A208431.P332560929453197656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208434 (A000096 (n + 3) + 6).toNat

end

end A208431.P332560929453197656

/-! ## A208431.P15400775831910169575

`A208434(A000217(n+4)+5)`
-/

namespace A208431.P15400775831910169575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208434 (A000217 (n + 4) + 5).toNat

end

end A208431.P15400775831910169575

/-! ## A208431.P8524657493383931713

`A208434(A055998(n+2)+8)`
-/

namespace A208431.P8524657493383931713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208434 (A055998 (n + 2) + 8).toNat

end

end A208431.P8524657493383931713

/-!
# A208432: Number of n X 6 0..2 arrays with new values 0..2 introduced in row major order and no element equal to any knight-move neighbor (colorings ignoring permutations of colors).

The programs for A208432, there is no canonical definition to state claims against.
-/

/-! ## A208432.P1542372305265121954

`A208434(A374007(n+1))`
-/

namespace A208432.P1542372305265121954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208434 (A374007 (n + 1)).toNat

end

end A208432.P1542372305265121954

/-! ## A208432.P12323739723148399579

`A208434(eq[7, A131818(n+1)])`
-/

namespace A208432.P12323739723148399579
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208434 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208432.P12323739723148399579

/-! ## A208432.P2773746274140517514

`A208434(eq[3, A219347(n)])`
-/

namespace A208432.P2773746274140517514
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208434 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208432.P2773746274140517514

/-! ## A208432.P1943393976546807412

`A208434(eq[5, A193592(n)])`
-/

namespace A208432.P1943393976546807412
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208434 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208432.P1943393976546807412

/-! ## A208432.P7753197508861395790

`A208434(eq[6, A200370(n+1)])`
-/

namespace A208432.P7753197508861395790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208434 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208432.P7753197508861395790

/-!
# A208433: Number of nX7 0..2 arrays with new values 0..2 introduced in row major order and no element equal to any knight-move neighbor (colorings ignoring permutations of colors).

The programs for A208433, there is no canonical definition to state claims against.
-/

/-! ## A208433.P11821467453366260015

`A208434(A374008(n+1))`
-/

namespace A208433.P11821467453366260015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208434 (A374008 (n + 1)).toNat

end

end A208433.P11821467453366260015

/-! ## A208433.P7304148258079360067

`A208434(eq[8, A131818(n+1)])`
-/

namespace A208433.P7304148258079360067
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208434 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208433.P7304148258079360067

/-! ## A208433.P15035024198908311866

`A208434(eq[4, A219347(n)])`
-/

namespace A208433.P15035024198908311866
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208434 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208433.P15035024198908311866

/-! ## A208433.P763182745357553793

`A208434(eq[6, A193592(n)])`
-/

namespace A208433.P763182745357553793
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208434 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208433.P763182745357553793

/-! ## A208433.P15616042093962736484

`A208434(A000096(n+6)-5)`
-/

namespace A208433.P15616042093962736484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208434 (A000096 (n + 6) - 5).toNat

end

end A208433.P15616042093962736484

/-!
# A208434: T(n,k)=Number of nXk 0..2 arrays with new values 0..2 introduced in row major order and no element equal to any knight-move neighbor (colorings ignoring permutations of colors).

The programs for A208434, there is no canonical definition to state claims against.
-/

/-! ## A208434.P3124638165102030545

`A275352(A072170(A062399(n))+n)`
-/

namespace A208434.P3124638165102030545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275352 (A072170 (A062399 n).toNat + (n : ℤ)).toNat

end

end A208434.P3124638165102030545

/-! ## A208434.P2669042907093668796

`A275352(A219347(A062399(n))+n)`
-/

namespace A208434.P2669042907093668796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275352 (A219347 (A062399 n).toNat + (n : ℤ)).toNat

end

end A208434.P2669042907093668796

/-! ## A208434.P17875371913759157600

`A275352(A072170(n)+A004916(n+1))`
-/

namespace A208434.P17875371913759157600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275352 (A072170 n + A004916 (n + 1)).toNat

end

end A208434.P17875371913759157600

/-! ## A208434.P8850932353679970844

`A275352(A073753(n+1)+A062399(n))`
-/

namespace A208434.P8850932353679970844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275352 (A073753 (n + 1) + A062399 n).toNat

end

end A208434.P8850932353679970844

/-! ## A208434.P7857956393111099979

`A275352(A219347(n)+A004916(n+1))`
-/

namespace A208434.P7857956393111099979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275352 (A219347 n + A004916 (n + 1)).toNat

end

end A208434.P7857956393111099979

/-!
# A208435: Expansion of x * f(x) * f(-x^12)^3 * psi(x^3) / psi(x^2) in powers of x where psi(), f() are Ramanujan theta functions.

The programs for A208435, there is no canonical definition to state claims against.
-/

/-! ## A208435.P2226540056874938011

`A062157(n)*A208457(n)`
-/

namespace A208435.P2226540056874938011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 n * A208457 n

end

end A208435.P2226540056874938011

/-! ## A208435.P13570364675585181193

`A131729(n)*A208457(n)`
-/

namespace A208435.P13570364675585181193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131729 n * A208457 n

end

end A208435.P13570364675585181193

/-! ## A208435.P14641573338808215121

`A165326(n)*A208457(n)`
-/

namespace A208435.P14641573338808215121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165326 n * A208457 n

end

end A208435.P14641573338808215121

/-! ## A208435.P5627634556420998177

`(A010702(n)-A010702(n+1))*A208457(n)`
-/

namespace A208435.P5627634556420998177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A010702 n - A010702 (n + 1)) * A208457 n

end

end A208435.P5627634556420998177

/-! ## A208435.P11374471586174579903

`A208457(n)/A062157(n+2)`
-/

namespace A208435.P11374471586174579903
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208457 n : ℚ) / (A062157 (n + 2) : ℚ)

end

end A208435.P11374471586174579903

/-! ## A208435.P2409772163991597373

`Δ[A059169(n+1)]*A208457(n)`
-/

namespace A208435.P2409772163991597373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059169 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A208457 n

end

end A208435.P2409772163991597373

/-! ## A208435.P4160189735152408480

`(A131738(n+1)+A131738(n))*A208457(n)`
-/

namespace A208435.P4160189735152408480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A131738 (n + 1) + A131738 n) * A208457 n

end

end A208435.P4160189735152408480

/-! ## A208435.P16195162537799722165

`A098098(n+1)/A258831(n+1)*A208457(n)`
-/

namespace A208435.P16195162537799722165
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098098 (n + 1) : ℚ) / (A258831 (n + 1) : ℚ) * (A208457 n : ℚ)

end

end A208435.P16195162537799722165

/-!
# A208436: Indices of maximal gaps between consecutive nontrivial zeros of the Riemann zeta function.

The programs for A208436, there is no canonical definition to state claims against.
-/

/-! ## A208436.P15930451035945396141

`∩[A329823(n+1), A356930(n+1)]`
-/

namespace A208436.P15930451035945396141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329823 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356930 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A208436.P15930451035945396141

/-!
# A208438: Number of n X n 0..2 arrays with no element equal the average of immediate neighbors vertically above and horizontally left of it.

The programs for A208438, there is no canonical definition to state claims against.
-/

/-! ## A208438.P4772961048825540221

`A208445((n+1)²+n²)`
-/

namespace A208438.P4772961048825540221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208445 ((n + 1) ^ 2 + n ^ 2)

end

end A208438.P4772961048825540221

/-!
# A208439: Number of n X 2 0..2 arrays with no element equal the average of immediate neighbors vertically above and horizontally left of it.

The programs for A208439, there is no canonical definition to state claims against.
-/

/-! ## A208439.P7475591373395679382

`A208445(∑[n+1]+2)`
-/

namespace A208439.P7475591373395679382
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208445 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A208439.P7475591373395679382

/-! ## A208439.P13358457165234127033

`record[A208445(A014683(n+1)+A004736(n+1))]`
-/

namespace A208439.P13358457165234127033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208445 (A014683 (n + 1) + A004736 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208439.P13358457165234127033

/-! ## A208439.P14313712497269734831

`record[A208445(Δ[A003453(n+5)])]`
-/

namespace A208439.P14313712497269734831
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208445 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208439.P14313712497269734831

/-! ## A208439.P2476428577652361739

`record[root(A208445(n+2), A208447(n+3))]`
-/

namespace A208439.P2476428577652361739
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A208445 (n + 2) : ℝ) ^ (1 / (A208447 (n + 3) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208439.P2476428577652361739

/-!
# A208440: Number of nX3 0..2 arrays with no element equal the average of immediate neighbors vertically above and horizontally left of it.

The programs for A208440, there is no canonical definition to state claims against.
-/

/-! ## A208440.P245711166063946384

`A208445(∑[n+2]+4)`
-/

namespace A208440.P245711166063946384
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208445 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A208440.P245711166063946384

/-! ## A208440.P4250195789261473662

`lcm(2, A208445(A167614(n+1)))`
-/

namespace A208440.P4250195789261473662
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A208445 (A167614 (n + 1)).toNat)

end

end A208440.P4250195789261473662

/-! ## A208440.P17778728865622299574

`A208445(A167614(n+1))+A178798(n)`
-/

namespace A208440.P17778728865622299574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208445 (A167614 (n + 1)).toNat + A178798 n

end

end A208440.P17778728865622299574

/-! ## A208440.P13529166738303509448

`A208445(A167614(n+1))+A185284(n)`
-/

namespace A208440.P13529166738303509448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208445 (A167614 (n + 1)).toNat + A185284 n

end

end A208440.P13529166738303509448

/-! ## A208440.P17180389715038714973

`A208445(A167614(n+1))%A208441(n+1)`
-/

namespace A208440.P17180389715038714973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A208445 (A167614 (n + 1)).toNat) (A208441 (n + 1))

end

end A208440.P17180389715038714973

/-!
# A208441: Number of nX4 0..2 arrays with no element equal the average of immediate neighbors vertically above and horizontally left of it.

The programs for A208441, there is no canonical definition to state claims against.
-/

/-! ## A208441.P12002232686094063433

`A208445(A374004(n+1))`
-/

namespace A208441.P12002232686094063433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208445 (A374004 (n + 1)).toNat

end

end A208441.P12002232686094063433

/-! ## A208441.P3657348764155528017

`A208445(A141214(n)+7)`
-/

namespace A208441.P3657348764155528017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208445 (A141214 n + 7).toNat

end

end A208441.P3657348764155528017

/-! ## A208441.P11659803847315224425

`A208445(A055999(n)+10)`
-/

namespace A208441.P11659803847315224425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208445 (A055999 n + 10).toNat

end

end A208441.P11659803847315224425

/-! ## A208441.P5117614022344345080

`A208445(Δ[A006503(n)]+7)`
-/

namespace A208441.P5117614022344345080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006503 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208445 (f1 (n + 1) - f1 n + 7).toNat

end

end A208441.P5117614022344345080

/-! ## A208441.P10778641922744989859

`A208445(A167614(n+2)+1)`
-/

namespace A208441.P10778641922744989859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208445 (A167614 (n + 2) + 1).toNat

end

end A208441.P10778641922744989859

/-!
# A208442: Number of n X 5 0..2 arrays with no element equal the average of immediate neighbors vertically above and horizontally left of it.

The programs for A208442, there is no canonical definition to state claims against.
-/

/-! ## A208442.P8229519251729741950

`A208445(A374005(n+1))`
-/

namespace A208442.P8229519251729741950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208445 (A374005 (n + 1)).toNat

end

end A208442.P8229519251729741950

/-! ## A208442.P10735038131696884399

`A208445(eq[6, A131818(n+1)])`
-/

namespace A208442.P10735038131696884399
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208445 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208442.P10735038131696884399

/-! ## A208442.P10516175274239904889

`A208445(eq[2, A092921(n)])`
-/

namespace A208442.P10516175274239904889
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208445 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208442.P10516175274239904889

/-! ## A208442.P8859054291160403700

`A208445(eq[4, A193592(n)])`
-/

namespace A208442.P8859054291160403700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208445 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208442.P8859054291160403700

/-! ## A208442.P12064459363717345140

`A208445(Δ[A023545(n+1)])`
-/

namespace A208442.P12064459363717345140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208445 (f1 (n + 1) - f1 n).toNat

end

end A208442.P12064459363717345140

/-!
# A208443: Number of nX6 0..2 arrays with no element equal the average of immediate neighbors vertically above and horizontally left of it.

The programs for A208443, there is no canonical definition to state claims against.
-/

/-! ## A208443.P7853986205971787015

`A208445(A374007(n+1))`
-/

namespace A208443.P7853986205971787015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208445 (A374007 (n + 1)).toNat

end

end A208443.P7853986205971787015

/-! ## A208443.P12274053582703007991

`A208445(eq[7, A131818(n+1)])`
-/

namespace A208443.P12274053582703007991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208445 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208443.P12274053582703007991

/-! ## A208443.P17727958001696429276

`A208445(A052905(n+3))`
-/

namespace A208443.P17727958001696429276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208445 (A052905 (n + 3)).toNat

end

end A208443.P17727958001696429276

/-! ## A208443.P6082053683374921264

`A208445(eq[5, A193592(n)])`
-/

namespace A208443.P6082053683374921264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208445 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208443.P6082053683374921264

/-! ## A208443.P11698075937816740210

`A208445(eq[8, A258709(n)])`
-/

namespace A208443.P11698075937816740210
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208445 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208443.P11698075937816740210

/-!
# A208444: Number of nX7 0..2 arrays with no element equal the average of immediate neighbors vertically above and horizontally left of it.

The programs for A208444, there is no canonical definition to state claims against.
-/

/-! ## A208444.P5207478893846747890

`A208445(A374008(n+1))`
-/

namespace A208444.P5207478893846747890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208445 (A374008 (n + 1)).toNat

end

end A208444.P5207478893846747890

/-! ## A208444.P9252944181502018440

`A208445(eq[8, A131818(n+1)])`
-/

namespace A208444.P9252944181502018440
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208445 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208444.P9252944181502018440

/-! ## A208444.P2829741998846694690

`A208445(eq[7, A200370(n+1)])`
-/

namespace A208444.P2829741998846694690
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208445 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208444.P2829741998846694690

/-!
# A208445: T(n,k)=Number of nXk 0..2 arrays with no element equal the average of immediate neighbors vertically above and horizontally left of it.

The programs for A208445, there is no canonical definition to state claims against.
-/

/-! ## A208445.P7556581478044813741

`A326848(A297073(n+1))+A218372(n+1)`
-/

namespace A208445.P7556581478044813741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326848 (A297073 (n + 1)).toNat + A218372 (n + 1)

end

end A208445.P7556581478044813741

/-!
# A208447: Sum of the k-th powers of the numbers of standard Young tableaux over all partitions of n; square array A(n,k), n>=0, k>=0, read by antidiagonals.

The programs for A208447, there is no canonical definition to state claims against.
-/

/-! ## A208447.P9551487935879063417

`gcd(A187829(A215204(n)), A249624(n+1))`
-/

namespace A208447.P9551487935879063417
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A187829 (A215204 n).toNat) (A249624 (n + 1))

end

end A208447.P9551487935879063417

/-! ## A208447.P7484946035963312431

`A235963(∏{e}[A304330(n), #])`
-/

namespace A208447.P7484946035963312431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304330 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235963 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A208447.P7484946035963312431

/-! ## A208447.P3187172002173217294

`A257006(A135722(n))`
-/

namespace A208447.P3187172002173217294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257006 (A135722 n).toNat

end

end A208447.P3187172002173217294

/-! ## A208447.P19509224067980887

`A056924(A156953(n))+1`
-/

namespace A208447.P19509224067980887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056924 (A156953 n).toNat + 1

end

end A208447.P19509224067980887

/-! ## A208447.P12882514878904608192

`A296658(A209760(n+1))`
-/

namespace A208447.P12882514878904608192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296658 (A209760 (n + 1)).toNat

end

end A208447.P12882514878904608192

/-!
# A208448: Greatest common divisors of consecutive floor-factorial numbers (A010786).

The programs for A208448, there is no canonical definition to state claims against.
-/

/-! ## A208448.P2161763149424268528

`gcd(A010786(n+2), A010786(n+1))`
-/

namespace A208448.P2161763149424268528
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A010786 (n + 2)) (A010786 (n + 1))

end

end A208448.P2161763149424268528

/-! ## A208448.P2750619701370381248

`A007955(n+2)/A208449(n+1)*A076891(n+2)`
-/

namespace A208448.P2750619701370381248
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007955 (n + 2) : ℚ) / (A208449 (n + 1) : ℚ) * (A076891 (n + 2) : ℚ)

end

end A208448.P2750619701370381248

/-! ## A208448.P647229715962160537

`A010786(n+1)/A208450(n+1)`
-/

namespace A208448.P647229715962160537
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010786 (n + 1) : ℚ) / (A208450 (n + 1) : ℚ)

end

end A208448.P647229715962160537

/-! ## A208448.P11266964738009007473

`∏{d}[n+1, #]*A076891(n+1)/A208450(n+1)`
-/

namespace A208448.P11266964738009007473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∏ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) * A076891 (n + 1) : ℚ) / (A208450 (n + 1) : ℚ)

end

end A208448.P11266964738009007473

/-! ## A208448.P13769127327768321570

`sqrt(n+1)^A000005(n+1)*A076891(n+1)/A208450(n+1)`
-/

namespace A208448.P13769127327768321570
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (n + 1 : ℝ) ^ (A000005 (n + 1) : ℤ) * (A076891 (n + 1) : ℝ) / (A208450 (n + 1) : ℝ)

end

end A208448.P13769127327768321570

/-! ## A208448.P3991756686482513617

`A010786(n+2)/A208449(n+1)`
-/

namespace A208448.P3991756686482513617
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010786 (n + 2) : ℚ) / (A208449 (n + 1) : ℚ)

end

end A208448.P3991756686482513617

/-!
# A208449: Numerator of A010786(n+1) / A010786(n).

The programs for A208449, the canonical program `A208449.P536335789057244037` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A208449 has offset 1).

The definition of A208449 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A377484, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A208449.P536335789057244037

`A007955(n+2)/gcd(A007955(n+2), A377484(n+2))`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A208449

/-- `A007955(n+2)/gcd(A007955(n+2), A377484(n+2))` -/
def P536335789057244037.Spec : Prop :=
  ∀ n, P536335789057244037.a n = (A208449 (n + 1) : ℚ)

end A208449

/-! ## A208449.P5945458014391508360

`A010786(n+2)/A208448(n+1)`
-/

namespace A208449.P5945458014391508360
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010786 (n + 2) : ℚ) / (A208448 (n + 1) : ℚ)

end

end A208449.P5945458014391508360

namespace A208449

/-- `A010786(n+2)/A208448(n+1)` -/
def P5945458014391508360.Spec : Prop :=
  ∀ n, P5945458014391508360.a n = (A208449 (n + 1) : ℚ)

end A208449

/-! ## A208449.P13425466677414262444

`A208450(n+1)/A377484(n+2)*A007955(n+2)`
-/

namespace A208449.P13425466677414262444
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208450 (n + 1) : ℚ) / (A377484 (n + 2) : ℚ) * (A007955 (n + 2) : ℚ)

end

end A208449.P13425466677414262444

namespace A208449

/-- `A208450(n+1)/A377484(n+2)*A007955(n+2)` -/
def P13425466677414262444.Spec : Prop :=
  ∀ n, P13425466677414262444.a n = (A208449 (n + 1) : ℚ)

end A208449

/-! ## A208449.P16326447075871463875

`ratio[A208448(n+1)]*A208450(n+2)`
-/

namespace A208449.P16326447075871463875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208448 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ) * (A208450 (n + 2) : ℚ)

end

end A208449.P16326447075871463875

namespace A208449

/-- `ratio[A208448(n+1)]*A208450(n+2)` -/
def P16326447075871463875.Spec : Prop :=
  ∀ n, P16326447075871463875.a n = (A208449 (n + 1) : ℚ)

end A208449

/-! ## A208449.P4766497094637808690

`A208448(n+2)/A208448(n+1)*A208450(n+2)`
-/

namespace A208449.P4766497094637808690
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208448 (n + 2) : ℚ) / (A208448 (n + 1) : ℚ) * (A208450 (n + 2) : ℚ)

end

end A208449.P4766497094637808690

namespace A208449

/-- `A208448(n+2)/A208448(n+1)*A208450(n+2)` -/
def P4766497094637808690.Spec : Prop :=
  ∀ n, P4766497094637808690.a n = (A208449 (n + 1) : ℚ)

end A208449

/-! ## A208449.P18164719475022765950

`ratio[A010786(n+1)]*A208450(n+1)`
-/

namespace A208449.P18164719475022765950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010786 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ) * (A208450 (n + 1) : ℚ)

end

end A208449.P18164719475022765950

namespace A208449

/-- `ratio[A010786(n+1)]*A208450(n+1)` -/
def P18164719475022765950.Spec : Prop :=
  ∀ n, P18164719475022765950.a n = (A208449 (n + 1) : ℚ)

end A208449

/-! ## A208449.P3293866965914865015

`A208450(n+1)/A010786(n+1)*A010786(n+2)`
-/

namespace A208449.P3293866965914865015
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208450 (n + 1) : ℚ) / (A010786 (n + 1) : ℚ) * (A010786 (n + 2) : ℚ)

end

end A208449.P3293866965914865015

namespace A208449

/-- `A208450(n+1)/A010786(n+1)*A010786(n+2)` -/
def P3293866965914865015.Spec : Prop :=
  ∀ n, P3293866965914865015.a n = (A208449 (n + 1) : ℚ)

end A208449

/-!
# A208450: Denominator of A010786(n+1) / A010786(n).

The programs for A208450, the canonical program `A208450.P18341200880370467894` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A208450 has offset 1).

The definition of A208450 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A377484, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A208450.P18341200880370467894

`A377484(n+2)/gcd(A007955(n+2), A377484(n+2))`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A208450

/-- `A377484(n+2)/gcd(A007955(n+2), A377484(n+2))` -/
def P18341200880370467894.Spec : Prop :=
  ∀ n, P18341200880370467894.a n = (A208450 (n + 1) : ℚ)

end A208450

/-! ## A208450.P14270735493107359842

`A010786(n+1)/A208448(n+1)`
-/

namespace A208450.P14270735493107359842
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010786 (n + 1) : ℚ) / (A208448 (n + 1) : ℚ)

end

end A208450.P14270735493107359842

namespace A208450

/-- `A010786(n+1)/A208448(n+1)` -/
def P14270735493107359842.Spec : Prop :=
  ∀ n, P14270735493107359842.a n = (A208450 (n + 1) : ℚ)

end A208450

/-! ## A208450.P16808095512539578833

`A208449(n+1)/A007955(n+2)*A377484(n+2)`
-/

namespace A208450.P16808095512539578833
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208449 (n + 1) : ℚ) / (A007955 (n + 2) : ℚ) * (A377484 (n + 2) : ℚ)

end

end A208450.P16808095512539578833

namespace A208450

/-- `A208449(n+1)/A007955(n+2)*A377484(n+2)` -/
def P16808095512539578833.Spec : Prop :=
  ∀ n, P16808095512539578833.a n = (A208450 (n + 1) : ℚ)

end A208450

/-! ## A208450.P16418841925276092885

`∏{d}[n+1, #]*A076891(n+1)/A208448(n+1)`
-/

namespace A208450.P16418841925276092885
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∏ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) * A076891 (n + 1) : ℚ) / (A208448 (n + 1) : ℚ)

end

end A208450.P16418841925276092885

namespace A208450

/-- `∏{d}[n+1, #]*A076891(n+1)/A208448(n+1)` -/
def P16418841925276092885.Spec : Prop :=
  ∀ n, P16418841925276092885.a n = (A208450 (n + 1) : ℚ)

end A208450

/-! ## A208450.P9736265028534838918

`sqrt(n+1)^A000005(n+1)*A076891(n+1)/A208448(n+1)`
-/

namespace A208450.P9736265028534838918
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (n + 1 : ℝ) ^ (A000005 (n + 1) : ℤ) * (A076891 (n + 1) : ℝ) / (A208448 (n + 1) : ℝ)

end

end A208450.P9736265028534838918

namespace A208450

/-- `sqrt(n+1)^A000005(n+1)*A076891(n+1)/A208448(n+1)` -/
def P9736265028534838918.Spec : Prop :=
  ∀ n, P9736265028534838918.a n = (A208450 (n + 1) : ℝ)

end A208450

/-! ## A208450.P2289518340495740154

`A208449(n+1)/ratio[A010786(n+1)]`
-/

namespace A208450.P2289518340495740154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010786 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208449 (n + 1) : ℚ) / ((f1 (n + 1) : ℚ) / (f1 n : ℚ))

end

end A208450.P2289518340495740154

namespace A208450

/-- `A208449(n+1)/ratio[A010786(n+1)]` -/
def P2289518340495740154.Spec : Prop :=
  ∀ n, P2289518340495740154.a n = (A208450 (n + 1) : ℚ)

end A208450

/-! ## A208450.P11179766479530854794

`A010786(n+1)/A010786(n+2)*A208449(n+1)`
-/

namespace A208450.P11179766479530854794
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010786 (n + 1) : ℚ) / (A010786 (n + 2) : ℚ) * (A208449 (n + 1) : ℚ)

end

end A208450.P11179766479530854794

namespace A208450

/-- `A010786(n+1)/A010786(n+2)*A208449(n+1)` -/
def P11179766479530854794.Spec : Prop :=
  ∀ n, P11179766479530854794.a n = (A208450 (n + 1) : ℚ)

end A208450

/-!
# A208451: Expansion of phi(q) * phi(-q)^3 in powers of q where phi() is a Ramanujan theta function.

The programs for A208451, there is no canonical definition to state claims against.
-/

/-! ## A208451.P8354904144252023255

`(-1)^n*A207541(n)`
-/

namespace A208451.P8354904144252023255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A207541 n

end

end A208451.P8354904144252023255

/-! ## A208451.P7813493829171288600

`A207541(n)*A209615(A120880(n))`
-/

namespace A208451.P7813493829171288600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207541 n * A209615 (A120880 n).toNat

end

end A208451.P7813493829171288600

/-! ## A208451.P11076087287377532888

`A098098(n)*A207541(n)/A258831(n)`
-/

namespace A208451.P11076087287377532888
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098098 n * A207541 n : ℚ) / (A258831 n : ℚ)

end

end A208451.P11076087287377532888

/-! ## A208451.P11763183768619045532

`A207541(n)*A332823(A000040(n+1))`
-/

namespace A208451.P11763183768619045532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207541 n * A332823 (A000040 (n + 1)).toNat

end

end A208451.P11763183768619045532

/-! ## A208451.P4269319609534237258

`A207541(n)*A209615(2*n+1)`
-/

namespace A208451.P4269319609534237258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207541 n * A209615 (2 * n + 1)

end

end A208451.P4269319609534237258

/-!
# A208452: Meandric numbers for a river crossing up to 6 parallel roads at n points.

The programs for A208452, there is no canonical definition to state claims against.
-/

/-! ## A208452.P5775049126146699785

`A380367(A052905(n+3)-1)`
-/

namespace A208452.P5775049126146699785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380367 (A052905 (n + 3) - 1).toNat

end

end A208452.P5775049126146699785

/-! ## A208452.P12710392164770186553

`A210567(n)-A102681(A001040(n))`
-/

namespace A208452.P12710392164770186553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210567 n - A102681 (A001040 n).toNat

end

end A208452.P12710392164770186553

/-! ## A208452.P8826164996469905502

`A210478(n)-A151755(A001629(n))`
-/

namespace A208452.P8826164996469905502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210478 n - A151755 (A001629 n).toNat

end

end A208452.P8826164996469905502

/-! ## A208452.P11199057753238046189

`A209656(n)-A211225(A000143(n))`
-/

namespace A208452.P11199057753238046189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209656 n - A211225 (A000143 n).toNat

end

end A208452.P11199057753238046189

/-!
# A208453: Meandric numbers for a river crossing up to 7 parallel roads at n points.

The programs for A208453, there is no canonical definition to state claims against.
-/

/-! ## A208453.P7929845041235935763

`A210478(n)-A086075(A034899(n))`
-/

namespace A208453.P7929845041235935763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210478 n - A086075 (A034899 n).toNat

end

end A208453.P7929845041235935763

/-! ## A208453.P7581848862043390132

`A209621(n)-A239950(A165877(n))`
-/

namespace A208453.P7581848862043390132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209621 n - A239950 (A165877 n).toNat

end

end A208453.P7581848862043390132

/-! ## A208453.P12784605344571561246

`A209707(n)-A081227(A000704(n+1))`
-/

namespace A208453.P12784605344571561246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209707 n - A081227 (A000704 (n + 1)).toNat

end

end A208453.P12784605344571561246

/-! ## A208453.P3072553813219498266

`A210344(A227549(n+1))-A326452(n)`
-/

namespace A208453.P3072553813219498266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210344 (A227549 (n + 1)).toNat - A326452 n

end

end A208453.P3072553813219498266

/-! ## A208453.P17132183280523841225

`A210592(n)-A305830(A283920(n+1))`
-/

namespace A208453.P17132183280523841225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210592 n - A305830 (A283920 (n + 1)).toNat

end

end A208453.P17132183280523841225

/-!
# A208454: Number of nondegenerate noncongruent tetrahedra with integer edge lengths and total edge length n.

The programs for A208454, there is no canonical definition to state claims against.
-/

/-! ## A208454.P5623668853725063974

`A371070(n+6)+A358773(A124696(n))`
-/

namespace A208454.P5623668853725063974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371070 (n + 6) + A358773 (A124696 n).toNat

end

end A208454.P5623668853725063974

/-!
# A208455: Primes p such that (p+k)/(k+1) is a prime number for k=1,...,5.

The programs for A208455, there is no canonical definition to state claims against.
-/

/-! ## A208455.P7940762551620180265

`∩[A204592(n+1), A350769(n+1)]`
-/

namespace A208455.P7940762551620180265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204592 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350769 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A208455.P7940762551620180265

/-! ## A208455.P1791935841797111835

`∩[A071368(n+1), A204592(n+1)]`
-/

namespace A208455.P1791935841797111835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071368 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204592 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A208455.P1791935841797111835

/-!
# A208456: Numbers n such that prime(n) <= 2^(prime(n+1)-prime(n)) < prime(n+1).

The programs for A208456, there is no canonical definition to state claims against.
-/

/-! ## A208456.P2045478185498918612

`A007053(A070689(n+1))`
-/

namespace A208456.P2045478185498918612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007053 (A070689 (n + 1)).toNat

end

end A208456.P2045478185498918612

/-! ## A208456.P7433025338906046439

`A007053(A068868(n+1)-1)`
-/

namespace A208456.P7433025338906046439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007053 (A068868 (n + 1) - 1).toNat

end

end A208456.P7433025338906046439

/-! ## A208456.P4566552778834712642

`A007053(A127435(n+1)-1)`
-/

namespace A208456.P4566552778834712642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007053 (A127435 (n + 1) - 1).toNat

end

end A208456.P4566552778834712642

/-!
# A208457: Expansion of x * f(-x) * f(-x^12)^3 * psi(-x^3) / psi(x^2) in powers of x where psi(), f() are Ramanujan theta functions.

The programs for A208457, there is no canonical definition to state claims against.
-/

/-! ## A208457.P8672708206663698675

`A062157(n)*A208435(n)`
-/

namespace A208457.P8672708206663698675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 n * A208435 n

end

end A208457.P8672708206663698675

/-! ## A208457.P9748270303550737176

`A131729(n)*A208435(n)`
-/

namespace A208457.P9748270303550737176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131729 n * A208435 n

end

end A208457.P9748270303550737176

/-! ## A208457.P78885167320398020

`A165326(n)*A208435(n)`
-/

namespace A208457.P78885167320398020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165326 n * A208435 n

end

end A208457.P78885167320398020

/-! ## A208457.P1977342632286050862

`(A014681(n)-n)*A208435(n)`
-/

namespace A208457.P1977342632286050862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014681 n - (n : ℤ)) * A208435 n

end

end A208457.P1977342632286050862

/-! ## A208457.P3268308899584445151

`Δ[A285869(n)]*A208435(n)`
-/

namespace A208457.P3268308899584445151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285869 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A208435 n

end

end A208457.P3268308899584445151

/-! ## A208457.P11635821319817261208

`A208435(n)/A062157(n+2)`
-/

namespace A208457.P11635821319817261208
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208435 n : ℚ) / (A062157 (n + 2) : ℚ)

end

end A208457.P11635821319817261208

/-! ## A208457.P3270808751365755198

`Δ[A059169(n+1)]*A208435(n)`
-/

namespace A208457.P3270808751365755198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059169 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A208435 n

end

end A208457.P3270808751365755198

/-! ## A208457.P12717806559049262312

`A098098(n+1)/A258831(n+1)*A208435(n)`
-/

namespace A208457.P12717806559049262312
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098098 (n + 1) : ℚ) / (A258831 (n + 1) : ℚ) * (A208435 n : ℚ)

end

end A208457.P12717806559049262312

/-! ## A208457.P3635598618146561856

`A208435(n)*A309873(A008706(n)-n)`
-/

namespace A208457.P3635598618146561856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208435 n * A309873 (A008706 n - (n : ℤ)).toNat

end

end A208457.P3635598618146561856

/-! ## A208457.P12785592401779435272

`A208435(n)*A309873(A008706(n))`
-/

namespace A208457.P12785592401779435272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208435 n * A309873 (A008706 n).toNat

end

end A208457.P12785592401779435272

/-!
# A208458: Digits of the Golden Ratio (1+(Sqrt[5]-1)/2) read in decimal as if written in hexadecimal.

The programs for A208458, there is no canonical definition to state claims against.
-/

/-! ## A208458.P14144279231338081116

`A001622(n)+16*a(n-1)` with `a(0)=1`
-/

namespace A208458.P14144279231338081116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A001622 (n + 1) + 16 * a (n - 1)

end

end A208458.P14144279231338081116

/-!
# A208459: Triangle T_x = T(n,k) given by (0, 1/x, 1-1/x, 0, 0, 0, 0, 0, 0, 0, ...) DELTA (x, 1/x-1, -1/x, 0, 0, 0, 0, 0, 0, 0, ...) where DELTA is the operator defined in A084938, for x = 0.

The programs for A208459, there is no canonical definition to state claims against.
-/

/-! ## A208459.P11376467149640307390

`A066099(A335997(n))-A287170(n+1)`
-/

namespace A208459.P11376467149640307390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066099 (A335997 n).toNat - A287170 (n + 1)

end

end A208459.P11376467149640307390

/-! ## A208459.P16762241758904538029

`A072785(n)+A056594(A059931(n+1))`
-/

namespace A208459.P16762241758904538029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072785 n + A056594 (A059931 (n + 1)).toNat

end

end A208459.P16762241758904538029

/-! ## A208459.P14126673583614077727

`Δ[A184720(n+1)]^∑[n*∑[n]]`
-/

namespace A208459.P14126673583614077727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184720 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ j ∈ Finset.range (n + 1), f3 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A208459.P14126673583614077727

/-! ## A208459.P3366952198224900954

`Δ[A184848(n+1)]^∑{d}[n, #*n²]`
-/

namespace A208459.P3366952198224900954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184848 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ (∑ d ∈ Nat.divisors (f2 n), d * n ^ 2)

end

end A208459.P3366952198224900954

/-! ## A208459.P15632883190812675787

`Δ[A184848(n+1)]^A112595(n+1)`
-/

namespace A208459.P15632883190812675787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184848 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) ^ (A112595 (n + 1) : ℤ)

end

end A208459.P15632883190812675787

/-!
# A208460: Triangle read by rows: T(n,k) = n minus the k-th proper divisor of n.

The programs for A208460, the canonical program `A208460.P13240887097619534066` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A208460 has offset 2).

The definition of A208460 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 585 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A208460.P12506513506016157359

`A004736(eq[n+1, A286101(n+1)]+1)`
-/

namespace A208460.P12506513506016157359
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286101 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A208460.P12506513506016157359

namespace A208460

/-- `A004736(eq[n+1, A286101(n+1)]+1)` -/
def P12506513506016157359.Spec : Prop :=
  ∀ n, P12506513506016157359.a n = A208460 (n + 2)

end A208460

/-! ## A208460.P13240887097619534066

`A004736(eq[A002260(n+1), A003989(n+1)]+1)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A208460

/-- `A004736(eq[A002260(n+1), A003989(n+1)]+1)` -/
def P13240887097619534066.Spec : Prop :=
  ∀ n, P13240887097619534066.a n = A208460 (n + 2)

theorem P13240887097619534066.correct : P13240887097619534066.Spec := by
  intro n
  simp only [A208460, Nat.add_sub_cancel]

end A208460

/-! ## A208460.P2006641650184034299

`A003990(eq[A003990(n+1), A004736(n+1)]+1)`
-/

namespace A208460.P2006641650184034299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003990 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003990 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A208460.P2006641650184034299

namespace A208460

/-- `A003990(eq[A003990(n+1), A004736(n+1)]+1)` -/
def P2006641650184034299.Spec : Prop :=
  ∀ n, P2006641650184034299.a n = A208460 (n + 2)

end A208460

/-! ## A208460.P4103180456502615932

`A004736(eq[A004736(n+1), A123229(n+1)]+1)`
-/

namespace A208460.P4103180456502615932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123229 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A208460.P4103180456502615932

namespace A208460

/-- `A004736(eq[A004736(n+1), A123229(n+1)]+1)` -/
def P4103180456502615932.Spec : Prop :=
  ∀ n, P4103180456502615932.a n = A208460 (n + 2)

end A208460

/-! ## A208460.P17252808893576281716

`A004736(eq[A048158(n+1)+1, A002260(n+1)]+1)`
-/

namespace A208460.P17252808893576281716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048158 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A208460.P17252808893576281716

namespace A208460

/-- `A004736(eq[A048158(n+1)+1, A002260(n+1)]+1)` -/
def P17252808893576281716.Spec : Prop :=
  ∀ n, P17252808893576281716.a n = A208460 (n + 2)

end A208460

/-! ## A208460.P18407912915258208884

`A004736(eq[0, A004736(n+1)%A002260(n+1)]+1)`
-/

namespace A208460.P18407912915258208884
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004736 (n + 1)) (A002260 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A208460.P18407912915258208884

namespace A208460

/-- `A004736(eq[0, A004736(n+1)%A002260(n+1)]+1)` -/
def P18407912915258208884.Spec : Prop :=
  ∀ n, P18407912915258208884.a n = A208460 (n + 2)

end A208460

/-! ## A208460.P6640416420753525670

`A003990(record[1-A051173(n+1)+n]+1)`
-/

namespace A208460.P6640416420753525670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A051173 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003990 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1).toNat

end

end A208460.P6640416420753525670

namespace A208460

/-- `A003990(record[1-A051173(n+1)+n]+1)` -/
def P6640416420753525670.Spec : Prop :=
  ∀ n, P6640416420753525670.a n = A208460 (n + 2)

end A208460

/-! ## A208460.P10967691579550989723

`A004736(record[(n*A127446(n+1))%(n+1)]+1)`
-/

namespace A208460.P10967691579550989723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) * A127446 (n + 1)) (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1).toNat

end

end A208460.P10967691579550989723

namespace A208460

/-- `A004736(record[(n*A127446(n+1))%(n+1)]+1)` -/
def P10967691579550989723.Spec : Prop :=
  ∀ n, P10967691579550989723.a n = A208460 (n + 2)

end A208460

/-! ## A208460.P14225587074950244890

`A004736(lt[A054525(n+1), A054523(n+1)]+2)`
-/

namespace A208460.P14225587074950244890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054525 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054523 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 2)

end

end A208460.P14225587074950244890

namespace A208460

/-- `A004736(lt[A054525(n+1), A054523(n+1)]+2)` -/
def P14225587074950244890.Spec : Prop :=
  ∀ n, P14225587074950244890.a n = A208460 (n + 2)

end A208460

/-! ## A208460.P322993416674098626

`A025581(eq[A002262(n+1), A176346(n)])`
-/

namespace A208460.P322993416674098626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176346 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A208460.P322993416674098626

namespace A208460

/-- `A025581(eq[A002262(n+1), A176346(n)])` -/
def P322993416674098626.Spec : Prop :=
  ∀ n, P322993416674098626.a n = A208460 (n + 2)

end A208460

/-!
# A208461: 

The programs for A208461, there is no canonical definition to state claims against.
-/

/-! ## A208461.P11387275546394670761

`A208466(∑[4*n]+1)`
-/

namespace A208461.P11387275546394670761
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208466 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A208461.P11387275546394670761

/-!
# A208462: Number of nX3 nonnegative integer arrays with new values 0 upwards introduced in row major order and no element equal to more than two of its immediate leftward or upward or right-upward antidiagonal neighbors.

The programs for A208462, there is no canonical definition to state claims against.
-/

/-! ## A208462.P18055337402430839565

`A208466(∑[n+3]+1)`
-/

namespace A208462.P18055337402430839565
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208466 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A208462.P18055337402430839565

/-! ## A208462.P8632503492998661022

`char[A208457(n)]*A208466(A034856(n+2))`
-/

namespace A208462.P8632503492998661022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208457 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A208466 (A034856 (n + 2)).toNat

end

end A208462.P8632503492998661022

/-! ## A208462.P6436565516841234777

`char[A208459(n)]*A208466(A034856(n+2))`
-/

namespace A208462.P6436565516841234777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208459 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A208466 (A034856 (n + 2)).toNat

end

end A208462.P6436565516841234777

/-!
# A208463: Number of n X 4 nonnegative integer arrays with new values 0 upwards introduced in row major order and no element equal to more than two of its immediate leftward or upward or right-upward antidiagonal neighbors.

The programs for A208463, there is no canonical definition to state claims against.
-/

/-! ## A208463.P4966477272845309421

`A208467(2*(n+1))`
-/

namespace A208463.P4966477272845309421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208467 (2 * (n + 1))

end

end A208463.P4966477272845309421

/-! ## A208463.P11096882879070097802

`A208466(A141214(n+1))`
-/

namespace A208463.P11096882879070097802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208466 (A141214 (n + 1)).toNat

end

end A208463.P11096882879070097802

/-! ## A208463.P1769489018013704417

`A208466(A000096(n+3)-2)`
-/

namespace A208463.P1769489018013704417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208466 (A000096 (n + 3) - 2).toNat

end

end A208463.P1769489018013704417

/-!
# A208464: 

The programs for A208464, there is no canonical definition to state claims against.
-/

/-! ## A208464.P3443689022461941200

`A208466(eq[2, A092921(n)])`
-/

namespace A208464.P3443689022461941200
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208466 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A208464.P3443689022461941200

/-! ## A208464.P1830871490377678369

`A208466(Δ[A023545(n+1)])`
-/

namespace A208464.P1830871490377678369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208466 (f1 (n + 1) - f1 n).toNat

end

end A208464.P1830871490377678369

/-!
# A208465: 

The programs for A208465, there is no canonical definition to state claims against.
-/

/-! ## A208465.P2751460592820407604

`A208466(A027379(n+4)-2)`
-/

namespace A208465.P2751460592820407604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208466 (A027379 (n + 4) - 2).toNat

end

end A208465.P2751460592820407604

/-!
# A208466: T(n,k) is the number of n X k nonnegative integer arrays with new values 0 upwards introduced in row major order and no element equal to more than two of its immediate leftward or upward or right-upward antidiagonal neighbors.

The programs for A208466, there is no canonical definition to state claims against.
-/

/-! ## A208466.P681902454888730256

`A198528(n+1)+A185063((3-n)²)`
-/

namespace A208466.P681902454888730256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198528 (n + 1) + A185063 ((3 - (n : ℤ)) ^ 2).toNat

end

end A208466.P681902454888730256

/-! ## A208466.P16736153024141868325

`A330994(A001006(∑[1/a(n-4)]))` with `a(0)=1, a(1)=1, a(2)=0, a(3)=1, a(4)=1, a(5)=-1, a(6)=1`
-/

namespace A208466.P16736153024141868325
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 1, 0, 1, 1, -1, 1] fun n f1 =>
  1 / f1 (n - 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330994 (A001006 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat).toNat

end

end A208466.P16736153024141868325

/-! ## A208466.P10492648411246490002

`A096443(A089732(n)*A108284(n+1))`
-/

namespace A208466.P10492648411246490002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096443 (A089732 n * A108284 (n + 1)).toNat

end

end A208466.P10492648411246490002

/-! ## A208466.P7874814324029820454

`A241087(A324410(n+1))+A200801(n+1)`
-/

namespace A208466.P7874814324029820454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241087 (A324410 (n + 1)).toNat + A200801 (n + 1)

end

end A208466.P7874814324029820454

/-!
# A208467: Number of 2Xn nonnegative integer arrays with new values 0 upwards introduced in row major order and no element equal to more than two of its immediate leftward or upward or right-upward antidiagonal neighbors.

The programs for A208467, there is no canonical definition to state claims against.
-/

/-! ## A208467.P9009215983450342157

`A208466(∑[n+1]+2)`
-/

namespace A208467.P9009215983450342157
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208466 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A208467.P9009215983450342157

/-! ## A208467.P10582702673171036717

`record[A181650(n)*A208466(n+3)]`
-/

namespace A208467.P10582702673171036717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181650 n * A208466 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208467.P10582702673171036717

/-!
# A208468: Number of 3Xn nonnegative integer arrays with new values 0 upwards introduced in row major order and no element equal to more than two of its immediate leftward or upward or right-upward antidiagonal neighbors.

The programs for A208468, there is no canonical definition to state claims against.
-/

/-! ## A208468.P7800276710428232382

`A208466(∑[n+2]+4)`
-/

namespace A208468.P7800276710428232382
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208466 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A208468.P7800276710428232382

/-! ## A208468.P2860191457524865826

`A208466(A167614(n+1))*A250261(n)`
-/

namespace A208468.P2860191457524865826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208466 (A167614 (n + 1)).toNat * A250261 n

end

end A208468.P2860191457524865826

/-! ## A208468.P17669130475367043160

`lcm(A208466(A167614(n+1)), A283983(n))`
-/

namespace A208468.P17669130475367043160
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A208466 (A167614 (n + 1)).toNat) (A283983 n)

end

end A208468.P17669130475367043160

/-! ## A208468.P8839021302109928900

`or(A067898(n), A208466(A167614(n+1)))`
-/

namespace A208468.P8839021302109928900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A067898 n) (A208466 (A167614 (n + 1)).toNat)

end

end A208468.P8839021302109928900

/-! ## A208468.P10267407122671846783

`A208466(A167614(n+1))+A091888(n+2)`
-/

namespace A208468.P10267407122671846783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208466 (A167614 (n + 1)).toNat + A091888 (n + 2)

end

end A208468.P10267407122671846783

/-!
# A208469: Number of 4Xn nonnegative integer arrays with new values 0 upwards introduced in row major order and no element equal to more than two of its immediate leftward or upward or right-upward antidiagonal neighbors.

The programs for A208469, there is no canonical definition to state claims against.
-/

/-! ## A208469.P11836116681654593659

`A208466(A052905(n)+9)`
-/

namespace A208469.P11836116681654593659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208466 (A052905 n + 9).toNat

end

end A208469.P11836116681654593659

/-! ## A208469.P11075434758651015232

`A208466(A055999(n)+10)`
-/

namespace A208469.P11075434758651015232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208466 (A055999 n + 10).toNat

end

end A208469.P11075434758651015232

/-! ## A208469.P10765782658928826796

`A208466(A167614(n+2)+1)`
-/

namespace A208469.P10765782658928826796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208466 (A167614 (n + 2) + 1).toNat

end

end A208469.P10765782658928826796

/-!
# A208471: 

The programs for A208471, there is no canonical definition to state claims against.
-/

/-! ## A208471.P11350131352562196540

`A208466(A000124(n+6)-(n+1))`
-/

namespace A208471.P11350131352562196540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208466 (A000124 (n + 6) - (n + 1 : ℤ)).toNat

end

end A208471.P11350131352562196540

/-!
# A208473: Central coefficients of triangle A185384.

The programs for A208473, there is no canonical definition to state claims against.
-/

/-! ## A208473.P10084337486771320801

`C(2*n, n)*A000045(3*n+1)`
-/

namespace A208473.P10084337486771320801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * n) n : ℤ) * A000045 (3 * n + 1)

end

end A208473.P10084337486771320801

/-! ## A208473.P4992573883729897314

`C(2*n, n)*Δ[A000045(3*n)/2]`
-/

namespace A208473.P4992573883729897314
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 (3 * n) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * n) n : ℚ) * (f1 (n + 1) - f1 n)

end

end A208473.P4992573883729897314

/-! ## A208473.P14873298213120616781

`A000984(n)*A033887(n)`
-/

namespace A208473.P14873298213120616781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n * A033887 n

end

end A208473.P14873298213120616781

/-! ## A208473.P2921114754814674336

`A122070(∑[4*n])`
-/

namespace A208473.P2921114754814674336
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122070 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A208473.P2921114754814674336

/-! ## A208473.P18202524169373019130

`A185384(∑[4*n])`
-/

namespace A208473.P18202524169373019130
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185384 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A208473.P18202524169373019130

/-!
# A208474: Sum of the sizes of the Durfee squares of all partitions of n that do not contain 1 as a part, but with a(1) = 1.

The programs for A208474, there is no canonical definition to state claims against.
-/

/-! ## A208474.P3365393146653779334

`Δ[A115995(n)]`
-/

namespace A208474.P3365393146653779334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115995 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A208474.P3365393146653779334

/-! ## A208474.P3169002418181262360

`A115995(n+1)-A115995(n)`
-/

namespace A208474.P3169002418181262360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115995 (n + 1) - A115995 n

end

end A208474.P3169002418181262360

/-! ## A208474.P3012551573024894163

`Δ[A006128(n)-A114089(A028310(n))]`
-/

namespace A208474.P3012551573024894163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006128 n - A114089 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A208474.P3012551573024894163

/-! ## A208474.P5418456934522006079

`record[A115995(A051274(n))]-A115995(n)`
-/

namespace A208474.P5418456934522006079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115995 (A051274 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A115995 n

end

end A208474.P5418456934522006079

/-! ## A208474.P16157387312490974899

`A307409(n+1)+A101872(ceil(3^(n-1)))`
-/

namespace A208474.P16157387312490974899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307409 (n + 1) + A101872 ⌈(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat

end

end A208474.P16157387312490974899

/-!
# A208478: Triangle read by rows: T(n,k) = number of partitions of n with positive k-th rank.

The programs for A208478, there is no canonical definition to state claims against.
-/

/-! ## A208478.P8586752663933422423

`A108037(A158841(n+1)%A007966((n+1)²))`
-/

namespace A208478.P8586752663933422423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108037 (Int.tmod (A158841 (n + 1)) (A007966 ((n + 1) ^ 2))).toNat

end

end A208478.P8586752663933422423

/-! ## A208478.P8575519095976838812

`gcd(A075158(n), A194447(A308094(n+1)))`
-/

namespace A208478.P8575519095976838812
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A075158 n) (A194447 (A308094 (n + 1)).toNat)

end

end A208478.P8575519095976838812

/-! ## A208478.P15822256070191484017

`A070548(A223491(n+1))%A100083(n+1)`
-/

namespace A208478.P15822256070191484017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070548 (A223491 (n + 1)).toNat) (A100083 (n + 1))

end

end A208478.P15822256070191484017

/-! ## A208478.P7799537825721904057

`A070548(A346088(n+1))%A100083(n+1)`
-/

namespace A208478.P7799537825721904057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070548 (A346088 (n + 1)).toNat) (A100083 (n + 1))

end

end A208478.P7799537825721904057

/-! ## A208478.P8498762839149187025

`A000700(A346088(n+1)+A323239(A289370(n)))`
-/

namespace A208478.P8498762839149187025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 (A346088 (n + 1) + A323239 (A289370 n).toNat).toNat

end

end A208478.P8498762839149187025

/-!
# A208479: Total sum of the numbers of partitions with positive k-th ranks of all partitions of n.

The programs for A208479, there is no canonical definition to state claims against.
-/

/-! ## A208479.P15245515595634726982

`A000196(xor(A259596(n), A261451(n)))`
-/

namespace A208479.P15245515595634726982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (Int.xor (A259596 n) (A261451 n)).toNat

end

end A208479.P15245515595634726982

/-! ## A208479.P5235427247721534780

`A036026(2*(n+1))-A103921(A000110(n))`
-/

namespace A208479.P5235427247721534780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036026 (2 * (n + 1)) - A103921 (A000110 n).toNat

end

end A208479.P5235427247721534780

/-!
# A208480: Number of representations of n as m_1/1 + m_2/2 + ... + m_n/n where m_i are nonnegative integers.

The programs for A208480, there is no canonical definition to state claims against.
-/

/-! ## A208480.P13316981833922755280

`A240594(A008169(n))`
-/

namespace A208480.P13316981833922755280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240594 (A008169 n).toNat

end

end A208480.P13316981833922755280

/-!
# A208481: Diagonal sums of triangle A185384.

The programs for A208481, the canonical program `A208481.P15168360570091873687` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A208481 has offset 0).

The definition of A208481 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A208481.P15168360570091873687

`3*a(n-1)+a(n-3)+a(n-4)` with `a(0)=1, a(1)=2, a(2)=6, a(3)=19`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A208481

/-- `3*a(n-1)+a(n-3)+a(n-4)` -/
def P15168360570091873687.Spec : Prop :=
  ∀ n, (P15168360570091873687.a n : ℤ) = A208481 n

theorem P15168360570091873687.correct : P15168360570091873687.Spec := by
  intro n
  simp only [A208481]

end A208481

/-! ## A208481.P12982107092433885237

`ogf((-1+x)/(-1+3x+x^3+x^4))`
-/

namespace A208481.P12982107092433885237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1] [1, -3, 0, -1, -1] n

end

end A208481.P12982107092433885237

namespace A208481

/-- `ogf((-1+x)/(-1+3x+x^3+x^4))` -/
def P12982107092433885237.Spec : Prop :=
  ∀ n, P12982107092433885237.a n = A208481 n

end A208481

/-! ## A208481.P12172854925379065413

`A192905(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A208481.P12172854925379065413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A192905 (n + 1) - a (n - 1)

end

end A208481.P12172854925379065413

namespace A208481

/-- `A192905(n+1)-a(n-1)` -/
def P12172854925379065413.Spec : Prop :=
  ∀ n, P12172854925379065413.a n = A208481 n

end A208481

/-! ## A208481.P5305453909580385623

`A192907(n)+A192906(n)`
-/

namespace A208481.P5305453909580385623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192907 n + A192906 n

end

end A208481.P5305453909580385623

namespace A208481

/-- `A192907(n)+A192906(n)` -/
def P5305453909580385623.Spec : Prop :=
  ∀ n, P5305453909580385623.a n = A208481 n

end A208481

/-! ## A208481.P3327410243657978407

`∑[A192905(n)+A192904(n)]`
-/

namespace A208481.P3327410243657978407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192905 n + A192904 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A208481.P3327410243657978407

namespace A208481

/-- `∑[A192905(n)+A192904(n)]` -/
def P3327410243657978407.Spec : Prop :=
  ∀ n, P3327410243657978407.a n = A208481 n

end A208481

/-! ## A208481.P478841307977477626

`A192906(n)+∑[A192905(n)]`
-/

namespace A208481.P478841307977477626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192905 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192906 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A208481.P478841307977477626

namespace A208481

/-- `A192906(n)+∑[A192905(n)]` -/
def P478841307977477626.Spec : Prop :=
  ∀ n, P478841307977477626.a n = A208481 n

end A208481

/-! ## A208481.P242391975133053838

`A192907(n)+∑[A192904(n)]`
-/

namespace A208481.P242391975133053838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192904 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192907 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A208481.P242391975133053838

namespace A208481

/-- `A192907(n)+∑[A192904(n)]` -/
def P242391975133053838.Spec : Prop :=
  ∀ n, P242391975133053838.a n = A208481 n

end A208481

/-! ## A208481.P14853574705882160882

`∑[A192906(n)]+A192909(n)-1`
-/

namespace A208481.P14853574705882160882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192906 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A192909 n - 1)

end

end A208481.P14853574705882160882

namespace A208481

/-- `∑[A192906(n)]+A192909(n)-1` -/
def P14853574705882160882.Spec : Prop :=
  ∀ n, P14853574705882160882.a n = A208481 n

end A208481

/-! ## A208481.P9504985811860538484

`A192907(n+1)-Δ[A192909(n)]`
-/

namespace A208481.P9504985811860538484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192909 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192907 (n + 1) - (f1 (n + 1) - f1 n)

end

end A208481.P9504985811860538484

namespace A208481

/-- `A192907(n+1)-Δ[A192909(n)]` -/
def P9504985811860538484.Spec : Prop :=
  ∀ n, P9504985811860538484.a n = A208481 n

end A208481

/-! ## A208481.P4622949258033928306

`Δ[Δ[A192909(n)/2]]`
-/

namespace A208481.P4622949258033928306
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A192909 n : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A208481.P4622949258033928306

namespace A208481

/-- `Δ[Δ[A192909(n)/2]]` -/
def P4622949258033928306.Spec : Prop :=
  ∀ n, P4622949258033928306.a n = (A208481 n : ℚ)

end A208481

/-!
# A208482: Triangle read by rows: T(n,k) = sum of positive k-th ranks of all partitions of n.

The programs for A208482, there is no canonical definition to state claims against.
-/

/-! ## A208482.P2076475540272297808

`gcd(A083920(A187829(n+1)), A140101(n))`
-/

namespace A208482.P2076475540272297808
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A083920 (A187829 (n + 1)).toNat) (A140101 n)

end

end A208482.P2076475540272297808

/-! ## A208482.P484646557095529512

`gcd(A271439(A187829(n+1)), A323224(n))`
-/

namespace A208482.P484646557095529512
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A271439 (A187829 (n + 1)).toNat) (A323224 n)

end

end A208482.P484646557095529512

/-! ## A208482.P1501295295117883030

`A325678(gcd(A048516(n+1), A101951(n+1)))`
-/

namespace A208482.P1501295295117883030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325678 (Int.gcd (A048516 (n + 1)) (A101951 (n + 1)))

end

end A208482.P1501295295117883030

/-! ## A208482.P10909047919966722438

`gcd(A083920(A077168(n)), A140101(n))`
-/

namespace A208482.P10909047919966722438
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A083920 (A077168 n).toNat) (A140101 n)

end

end A208482.P10909047919966722438

/-! ## A208482.P4961588664707948626

`gcd(A271439(A077168(n)), A323224(n))`
-/

namespace A208482.P4961588664707948626
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A271439 (A077168 n).toNat) (A323224 n)

end

end A208482.P4961588664707948626

/-!
# A208483: Total sum of the sums of all positive k-th ranks of all partitions of n.

The programs for A208483, there is no canonical definition to state claims against.
-/

/-! ## A208483.P12232182411542539613

`A066186(n+1)-A218904(n+1)`
-/

namespace A208483.P12232182411542539613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066186 (n + 1) - A218904 (n + 1)

end

end A208483.P12232182411542539613

/-! ## A208483.P15910412572515673459

`record[A206561(n+1)]-A218904(n+1)`
-/

namespace A208483.P15910412572515673459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206561 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A218904 (n + 1)

end

end A208483.P15910412572515673459

/-! ## A208483.P6982683851506941144

`A157966(A060482(n+2)+1)-1`
-/

namespace A208483.P6982683851506941144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157966 (A060482 (n + 2) + 1).toNat - 1

end

end A208483.P6982683851506941144

/-! ## A208483.P4207014175541230773

`A077285(n+1)-A353742(A077285(n))`
-/

namespace A208483.P4207014175541230773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077285 (n + 1) - A353742 (A077285 n).toNat

end

end A208483.P4207014175541230773

/-! ## A208483.P3805969177124847597

`A003056(A154149(n+1))-A093875(n+1)`
-/

namespace A208483.P3805969177124847597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A154149 (n + 1)).toNat - A093875 (n + 1)

end

end A208483.P3805969177124847597

/-!
# A208484: 

The programs for A208484, there is no canonical definition to state claims against.
-/

/-! ## A208484.P13058030957704822990

`A208492((n+1)²+n²)`
-/

namespace A208484.P13058030957704822990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208492 ((n + 1) ^ 2 + n ^ 2)

end

end A208484.P13058030957704822990

/-!
# A208485: Number of (n+1) X 2 0..3 arrays with the number of clockwise edge increases in every 2 X 2 subblock equal to the number of counterclockwise edge increases.

The programs for A208485, there is no canonical definition to state claims against.
-/

/-! ## A208485.P7604400959257917392

`A208492(∑[n]+1)`
-/

namespace A208485.P7604400959257917392
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208492 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A208485.P7604400959257917392

/-! ## A208485.P11474390886674970218

`lcm(2, A208492(A000124(n)))`
-/

namespace A208485.P11474390886674970218
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A208492 (A000124 n).toNat)

end

end A208485.P11474390886674970218

/-! ## A208485.P3078256296639671060

`record[root(A208492(n+1), A114188(n))]`
-/

namespace A208485.P3078256296639671060
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A208492 (n + 1) : ℝ) ^ (1 / (A114188 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208485.P3078256296639671060

/-! ## A208485.P6376474490205681218

`record[root(A208492(n+1), A177970(n))]`
-/

namespace A208485.P6376474490205681218
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A208492 (n + 1) : ℝ) ^ (1 / (A177970 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208485.P6376474490205681218

/-! ## A208485.P8579898240594156343

`record[root(A208492(n+1), A177976(n+1))]`
-/

namespace A208485.P8579898240594156343
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A208492 (n + 1) : ℝ) ^ (1 / (A177976 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208485.P8579898240594156343

/-!
# A208486: Number of (n+1) X 3 0..3 arrays with the number of clockwise edge increases in every 2 X 2 subblock equal to the number of counterclockwise edge increases.

The programs for A208486, there is no canonical definition to state claims against.
-/

/-! ## A208486.P14652080027590605156

`A208492(∑[n+1]+2)`
-/

namespace A208486.P14652080027590605156
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208492 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A208486.P14652080027590605156

/-! ## A208486.P3742118713268532760

`record[gcd(A208492(n+2), A213177(n))]`
-/

namespace A208486.P3742118713268532760
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A208492 (n + 2)) (A213177 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208486.P3742118713268532760

/-! ## A208486.P16284871287560145955

`lcm(2, A208492(A167614(n+1)-4))`
-/

namespace A208486.P16284871287560145955
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A208492 (A167614 (n + 1) - 4).toNat)

end

end A208486.P16284871287560145955

/-! ## A208486.P510947925520885537

`record[root(A208492(n+2), A114188(n+2))]`
-/

namespace A208486.P510947925520885537
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A208492 (n + 2) : ℝ) ^ (1 / (A114188 (n + 2) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208486.P510947925520885537

/-! ## A208486.P12992194631570210478

`record[root(A208492(n+2), A177976(n+3))]`
-/

namespace A208486.P12992194631570210478
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A208492 (n + 2) : ℝ) ^ (1 / (A177976 (n + 3) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208486.P12992194631570210478

/-!
# A208487: Number of (n+1) X 4 0..3 arrays with the number of clockwise edge increases in every 2 X 2 subblock equal to the number of counterclockwise edge increases.

The programs for A208487, there is no canonical definition to state claims against.
-/

/-! ## A208487.P1905099327090316866

`A208492(∑[n+2]+4)`
-/

namespace A208487.P1905099327090316866
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208492 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A208487.P1905099327090316866

/-! ## A208487.P13622305421426055575

`lcm(2, A208492(A167614(n+1)))`
-/

namespace A208487.P13622305421426055575
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A208492 (A167614 (n + 1)).toNat)

end

end A208487.P13622305421426055575

/-! ## A208487.P9892973252416338437

`A208492(A167614(n+1))*A284562(n)`
-/

namespace A208487.P9892973252416338437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208492 (A167614 (n + 1)).toNat * A284562 n

end

end A208487.P9892973252416338437

/-!
# A208488: Number of (n+1) X 5 0..3 arrays with the number of clockwise edge increases in every 2 X 2 subblock equal to the number of counterclockwise edge increases.

The programs for A208488, there is no canonical definition to state claims against.
-/

/-! ## A208488.P16530323447894382601

`A208492(2*(n+2)+∑[n+1]+5)`
-/

namespace A208488.P16530323447894382601
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208492 (2 * (n + 2) + (∑ j ∈ Finset.range (n + 1), f1 j + 5))

end

end A208488.P16530323447894382601

/-!
# A208494: Least integer m>1 such that those k! mod m with k=1,...,n are pairwise distinct.

The programs for A208494, there is no canonical definition to state claims against.
-/

/-! ## A208494.P10019295854730137301

`A273064(2-A178489(n)+n)`
-/

namespace A208494.P10019295854730137301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273064 (2 - A178489 n + (n : ℤ)).toNat

end

end A208494.P10019295854730137301

/-! ## A208494.P7901363534494794331

`A273064(2-(A178489(n)-n))`
-/

namespace A208494.P7901363534494794331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273064 (2 - (A178489 n - (n : ℤ))).toNat

end

end A208494.P7901363534494794331

/-! ## A208494.P6673326866566864347

`A273064(A233583(n+2)-A323510(n+2))`
-/

namespace A208494.P6673326866566864347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273064 (A233583 (n + 2) - A323510 (n + 2)).toNat

end

end A208494.P6673326866566864347

/-! ## A208494.P4976271000871932300

`A273064(ceil(acot(n)+n))`
-/

namespace A208494.P4976271000871932300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273064 ⌈SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌉.toNat

end

end A208494.P4976271000871932300

/-! ## A208494.P12644921553478811650

`floor(A273064(n+1)+acot(n))`
-/

namespace A208494.P12644921553478811650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A273064 (n + 1) : ℝ) + SequenceMachineLib.acot (n : ℝ)⌋

end

end A208494.P12644921553478811650

/-! ## A208494.P9244613513293136046

`A273064(round(sqrt(n²+1))+1)`
-/

namespace A208494.P9244613513293136046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273064 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ)) + 1).toNat

end

end A208494.P9244613513293136046

/-! ## A208494.P1399897151380351152

`A254667(A273064(n+1))`
-/

namespace A208494.P1399897151380351152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254667 (A273064 (n + 1)).toNat

end

end A208494.P1399897151380351152

/-! ## A208494.P9876195000571265628

`A273064(n+1)+A000007(n)`
-/

namespace A208494.P9876195000571265628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273064 (n + 1) + A000007 n

end

end A208494.P9876195000571265628

/-! ## A208494.P12511739999788393855

`A273064(n+1)+A151878(n)`
-/

namespace A208494.P12511739999788393855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273064 (n + 1) + A151878 n

end

end A208494.P12511739999788393855

/-! ## A208494.P11341511128859388145

`A273064(n+1)+A151909(n)`
-/

namespace A208494.P11341511128859388145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273064 (n + 1) + A151909 n

end

end A208494.P11341511128859388145

/-!
# A208495: Number of n X n 0..1 arrays avoiding 0 0 0 and 0 0 1 horizontally and 0 1 0 and 1 1 1 vertically.

The programs for A208495, there is no canonical definition to state claims against.
-/

/-! ## A208495.P11116162469322296059

`A208501(∑[4*n]+1)`
-/

namespace A208495.P11116162469322296059
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208501 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A208495.P11116162469322296059

/-! ## A208495.P5931826762385176051

`lcm(2, A208501(A001844(n)))`
-/

namespace A208495.P5931826762385176051
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A208501 (A001844 n).toNat)

end

end A208495.P5931826762385176051

/-! ## A208495.P18042458514252697420

`record[A208501(n*A003982(n)+1)]`
-/

namespace A208495.P18042458514252697420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208501 ((n : ℤ) * A003982 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208495.P18042458514252697420

/-! ## A208495.P1412560650423194697

`record[gcd(A114327(n), A208501(n+1))]`
-/

namespace A208495.P1412560650423194697
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A208501 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A208495.P1412560650423194697

/-! ## A208495.P3823093397564117748

`A208501(A001844(n))+A185284(n)`
-/

namespace A208495.P3823093397564117748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208501 (A001844 n).toNat + A185284 n

end

end A208495.P3823093397564117748

/-!
# A208496: Number of n X 3 0..1 arrays avoiding 0 0 0 and 0 0 1 horizontally and 0 1 0 and 1 1 1 vertically.

The programs for A208496, there is no canonical definition to state claims against.
-/

/-! ## A208496.P1679646700169692263

`sqrt(A207170(n+1))*sqrt(A209220(n+1))`
-/

namespace A208496.P1679646700169692263
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A207170 (n + 1) : ℝ) * Real.sqrt (A209220 (n + 1) : ℝ)

end

end A208496.P1679646700169692263

/-! ## A208496.P9390324446100153160

`sqrt(A207170(n+1)*A209220(n+1))`
-/

namespace A208496.P9390324446100153160
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A207170 (n + 1) * A209220 (n + 1) : ℝ)

end

end A208496.P9390324446100153160

/-! ## A208496.P18309775840443969078

`A208501(∑[n+3]+1)`
-/

namespace A208496.P18309775840443969078
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208501 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A208496.P18309775840443969078

/-! ## A208496.P17963720038388021123

`lcm(2, A208501(A034856(n+2)))`
-/

namespace A208496.P17963720038388021123
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A208501 (A034856 (n + 2)).toNat)

end

end A208496.P17963720038388021123

/-! ## A208496.P7122216780495874652

`A208501(A034856(n+2))+A000007(n+1)`
-/

namespace A208496.P7122216780495874652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208501 (A034856 (n + 2)).toNat + A000007 (n + 1)

end

end A208496.P7122216780495874652

/-!
# A208497: Number of nX4 0..1 arrays avoiding 0 0 0 and 0 0 1 horizontally and 0 1 0 and 1 1 1 vertically.

The programs for A208497, there is no canonical definition to state claims against.
-/

/-! ## A208497.P5494037069957253078

`A208496(n+1)/A209220(n+1)*A209221(n+1)`
-/

namespace A208497.P5494037069957253078
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208496 (n + 1) : ℚ) / (A209220 (n + 1) : ℚ) * (A209221 (n + 1) : ℚ)

end

end A208497.P5494037069957253078

/-! ## A208497.P16202440199942778987

`A208496(n+1)/A209221(n+1)*A209222(n+1)`
-/

namespace A208497.P16202440199942778987
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208496 (n + 1) : ℚ) / (A209221 (n + 1) : ℚ) * (A209222 (n + 1) : ℚ)

end

end A208497.P16202440199942778987

/-! ## A208497.P7235223814721387907

`A207170(n+1)/A208496(n+1)*A209221(n+1)`
-/

namespace A208497.P7235223814721387907
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207170 (n + 1) : ℚ) / (A208496 (n + 1) : ℚ) * (A209221 (n + 1) : ℚ)

end

end A208497.P7235223814721387907

/-! ## A208497.P2042959727241873997

`A208501(A027379(n+2))`
-/

namespace A208497.P2042959727241873997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208501 (A027379 (n + 2)).toNat

end

end A208497.P2042959727241873997

/-! ## A208497.P16314377397398944203

`A208501(A055998(n+2))`
-/

namespace A208497.P16314377397398944203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208501 (A055998 (n + 2)).toNat

end

end A208497.P16314377397398944203

/-!
# A208498: Number of nX5 0..1 arrays avoiding 0 0 0 and 0 0 1 horizontally and 0 1 0 and 1 1 1 vertically.

The programs for A208498, there is no canonical definition to state claims against.
-/

/-! ## A208498.P1630219716944251430

`A208496(n+1)/A209221(n+1)*A209223(n+1)`
-/

namespace A208498.P1630219716944251430
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208496 (n + 1) : ℚ) / (A209221 (n + 1) : ℚ) * (A209223 (n + 1) : ℚ)

end

end A208498.P1630219716944251430

/-! ## A208498.P6258846741990131663

`A208501(Δ[A264443(n)])`
-/

namespace A208498.P6258846741990131663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208501 (f1 (n + 1) - f1 n).toNat

end

end A208498.P6258846741990131663

/-! ## A208498.P7482175777728797487

`A208501(Δ[A023545(n+1)])`
-/

namespace A208498.P7482175777728797487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208501 (f1 (n + 1) - f1 n).toNat

end

end A208498.P7482175777728797487

/-! ## A208498.P14075243556013758435

`A208501(A052905(n+2)+1)`
-/

namespace A208498.P14075243556013758435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208501 (A052905 (n + 2) + 1).toNat

end

end A208498.P14075243556013758435

/-! ## A208498.P15913217430549100897

`A208501(A000096(n+4)-3)`
-/

namespace A208498.P15913217430549100897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208501 (A000096 (n + 4) - 3).toNat

end

end A208498.P15913217430549100897

/-!
# A208499: Number of nX6 0..1 arrays avoiding 0 0 0 and 0 0 1 horizontally and 0 1 0 and 1 1 1 vertically.

The programs for A208499, there is no canonical definition to state claims against.
-/

/-! ## A208499.P4270208208076108939

`A208501(A052905(n+3))`
-/

namespace A208499.P4270208208076108939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208501 (A052905 (n + 3)).toNat

end

end A208499.P4270208208076108939

/-! ## A208499.P6852482709709079331

`A208501(A000124(n+6)-6)`
-/

namespace A208499.P6852482709709079331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208501 (A000124 (n + 6) - 6).toNat

end

end A208499.P6852482709709079331

/-! ## A208499.P8933952756635127338

`A208501(Δ[A023551(n+1)]+1)`
-/

namespace A208499.P8933952756635127338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208501 (f1 (n + 1) - f1 n + 1).toNat

end

end A208499.P8933952756635127338

/-! ## A208499.P16126371577937100790

`A208501(Δ[A264443(n+1)]-1)`
-/

namespace A208499.P16126371577937100790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208501 (f1 (n + 1) - f1 n - 1).toNat

end

end A208499.P16126371577937100790

/-! ## A208499.P6708502254908084114

`A208501(Δ[A023545(n+2)]-1)`
-/

namespace A208499.P6708502254908084114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208501 (f1 (n + 1) - f1 n - 1).toNat

end

end A208499.P6708502254908084114

