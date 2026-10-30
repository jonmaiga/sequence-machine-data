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
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C038
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C044
import Seq.B000.C045
import Seq.B000.C046
import Seq.B000.C047
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
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
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
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A162400: a(n) = the largest square that when represented in binary is a substring within the binary representation of n.

The programs for A162400, there is no canonical definition to state claims against.
-/

/-! ## A162400.P8480058460367725093

`A162401(n+1)²`
-/

namespace A162400.P8480058460367725093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162401 (n + 1) ^ 2

end

end A162400.P8480058460367725093

/-! ## A162400.P7558376432680118702

`A162401(A000027(n+1))^2`
-/

namespace A162400.P7558376432680118702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162401 (A000027 (n + 1)).toNat ^ 2

end

end A162400.P7558376432680118702

/-! ## A162400.P16811467335063459900

`A162401(A162401(n+1)^2)^2`
-/

namespace A162400.P16811467335063459900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162401 (A162401 (n + 1) ^ 2).toNat ^ 2

end

end A162400.P16811467335063459900

/-! ## A162400.P6659232604326245318

`A162401(n+1)*A162401(n%(n+1)+1)`
-/

namespace A162400.P6659232604326245318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162401 (n + 1) * A162401 (n % (n + 1) + 1)

end

end A162400.P6659232604326245318

/-! ## A162400.P10118125858309709955

`A162401(n+1)^A001316(A001316(n))`
-/

namespace A162400.P10118125858309709955
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A162401 (n + 1) : ℚ) ^ (A001316 (A001316 n).toNat : ℤ)

end

end A162400.P10118125858309709955

/-! ## A162400.P17262909905661491627

`A162401(n+1)*A162401(A000027(n+1))`
-/

namespace A162400.P17262909905661491627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162401 (n + 1) * A162401 (A000027 (n + 1)).toNat

end

end A162400.P17262909905661491627

/-! ## A162400.P4449292254265376489

`A008833(A162401(n+1)*A162401(n+1))`
-/

namespace A162400.P4449292254265376489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008833 (A162401 (n + 1) * A162401 (n + 1)).toNat

end

end A162400.P4449292254265376489

/-! ## A162400.P10672714393972577264

`A053143(A162401(n+1)*A162401(n+1))`
-/

namespace A162400.P10672714393972577264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053143 (A162401 (n + 1) * A162401 (n + 1)).toNat

end

end A162400.P10672714393972577264

/-! ## A162400.P15810843710169239767

`A162401(n+1)*A162401(A162401(n+1)*A162401(n+1))`
-/

namespace A162400.P15810843710169239767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162401 (n + 1) * A162401 (A162401 (n + 1) * A162401 (n + 1)).toNat

end

end A162400.P15810843710169239767

/-! ## A162400.P15802849838830793610

`A100196(A162401(n+1)^3)`
-/

namespace A162400.P15802849838830793610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (A162401 (n + 1) ^ 3).toNat

end

end A162400.P15802849838830793610

/-! ## A162400.P11435259482034456907

`A162401(A162401(n+1)^4)`
-/

namespace A162400.P11435259482034456907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162401 (A162401 (n + 1) ^ 4).toNat

end

end A162400.P11435259482034456907

/-!
# A162401: a(n) is the largest integer whose square, when represented in binary, is a substring within the binary representation of n.

The programs for A162401, there is no canonical definition to state claims against.
-/

/-! ## A162401.P4412609407924513292

`sqrt(A162400(n+1))`
-/

namespace A162401.P4412609407924513292
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A162400 (n + 1) : ℝ)

end

end A162401.P4412609407924513292

/-! ## A162401.P187989145370266544

`A004526(2*root(A162400(n+1), 2))`
-/

namespace A162401.P187989145370266544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (SequenceMachineLib.roundAway (2 * (A162400 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))).toNat

end

end A162401.P187989145370266544

/-! ## A162401.P6012266824965906036

`A019554(A162400(2*n+1-n))`
-/

namespace A162401.P6012266824965906036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019554 (A162400 (2 * n + 1 - n)).toNat

end

end A162401.P6012266824965906036

/-! ## A162401.P5321276577384847291

`A000188(2*A162400(n+1))`
-/

namespace A162401.P5321276577384847291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (2 * A162400 (n + 1)).toNat

end

end A162401.P5321276577384847291

/-! ## A162401.P5227311037099818414

`A002262(2*A162400(n+1))`
-/

namespace A162401.P5227311037099818414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (2 * A162400 (n + 1)).toNat

end

end A162401.P5227311037099818414

/-! ## A162401.P15998206479484019961

`A019554(2*A162400(n+1))/2`
-/

namespace A162401.P15998206479484019961
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A019554 (2 * A162400 (n + 1)).toNat : ℚ) / 2

end

end A162401.P15998206479484019961

/-! ## A162401.P3673395058090332125

`A162400(lcm(2, n+1))-A056847(A162400(n+1))`
-/

namespace A162401.P3673395058090332125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162400 (Nat.lcm 2 (n + 1)) - A056847 (A162400 (n + 1)).toNat

end

end A162401.P3673395058090332125

/-! ## A162401.P14426210182274690847

`A019554(A162400(n+1)²)/A019554(A162400(n+1))`
-/

namespace A162401.P14426210182274690847
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A019554 (A162400 (n + 1) ^ 2).toNat : ℚ) / (A019554 (A162400 (n + 1)).toNat : ℚ)

end

end A162401.P14426210182274690847

/-!
# A162402: Number of reduced words of length n in the Weyl group D_40.

The programs for A162402, there is no canonical definition to state claims against.
-/

/-! ## A162402.P7940117913851325438

`∑[A185037(A005135(n))+A162168(n)]`
-/

namespace A162402.P7940117913851325438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185037 (A005135 n).toNat + A162168 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162402.P7940117913851325438

/-!
# A162404: a(1)=1. a(n) = a(n-1) + (the largest value among (a(1),a(2),...,a(n-1)) that when written in binary occurs as a substring in the binary representation of n).

The programs for A162404, there is no canonical definition to state claims against.
-/

/-! ## A162404.P15712630498548294200

`A162405(n)+a(n-1)` with `a(0)=1`
-/

namespace A162404.P15712630498548294200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A162405 n + a (n - 1)

end

end A162404.P15712630498548294200

/-! ## A162404.P8945576568771776952

`∑[A162405(floor(n*n/(n+1))+1)]`
-/

namespace A162404.P8945576568771776952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162405 (⌊(n : ℚ) * ((n : ℚ) / (n + 1 : ℚ))⌋ + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162404.P8945576568771776952

/-! ## A162404.P8038122894467574943

`∑[A162405(n+1)]+1-A162405(n+1)`
-/

namespace A162404.P8038122894467574943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162405 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A162405 (n + 1))

end

end A162404.P8038122894467574943

/-! ## A162404.P15159963652304163033

`record[A162405(n%3+1+n)]`
-/

namespace A162404.P15159963652304163033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162405 (n % 3 + 1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A162404.P15159963652304163033

/-! ## A162404.P12052115740683852840

`record[A162405(A065190(n+1))]`
-/

namespace A162404.P12052115740683852840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162405 (A065190 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A162404.P12052115740683852840

/-!
# A162405: First difference of A162404.

The programs for A162405, there is no canonical definition to state claims against.
-/

/-! ## A162405.P1941309016601213901

`A162404(n+2)-A162404(n+1)`
-/

namespace A162405.P1941309016601213901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162404 (n + 2) - A162404 (n + 1)

end

end A162405.P1941309016601213901

/-! ## A162405.P4358180559427828099

`Δ[A162404(n+1)]`
-/

namespace A162405.P4358180559427828099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162404 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A162405.P4358180559427828099

/-! ## A162405.P1184723670860144380

`abs(Δ[A162404(-xor(-1, n))])`
-/

namespace A162405.P1184723670860144380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162404 (-Int.xor (-1) (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A162405.P1184723670860144380

/-! ## A162405.P15700620054106638155

`Δ[record[A162404(A292266(n))]]`
-/

namespace A162405.P15700620054106638155
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162404 (A292266 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A162405.P15700620054106638155

/-! ## A162405.P3954939217573574985

`Δ[record[A162404(A328399(n))]]`
-/

namespace A162405.P3954939217573574985
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162404 (A328399 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A162405.P3954939217573574985

/-! ## A162405.P1968192544374962596

`A000027(Δ[A162404(-xor(n, -1))])`
-/

namespace A162405.P1968192544374962596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162404 (-Int.xor (n : ℤ) (-1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (n + 1) - f1 n).toNat

end

end A162405.P1968192544374962596

/-! ## A162405.P11199486415717271905

`Δ[record[A162404(A020986(n))]]`
-/

namespace A162405.P11199486415717271905
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162404 (A020986 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A162405.P11199486415717271905

/-!
# A162406: a(0)=1. a(n) = a(n-1) + (the largest value among (a(0),a(1),...a(n-1)) that when written in binary occurs as a substring in the binary representation of n).

The programs for A162406, there is no canonical definition to state claims against.
-/

/-! ## A162406.P2560296240642135247

`∑[A162407(floor(n*sin(8)))]`
-/

namespace A162406.P2560296240642135247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162407 ⌊(n : ℝ) * Real.sin (8 : ℝ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162406.P2560296240642135247

/-! ## A162406.P11309541633257653720

`∑[A162407(floor(n-sin(n)²))]`
-/

namespace A162406.P11309541633257653720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162407 ⌊(n : ℝ) - Real.sin (n : ℝ) ^ 2⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162406.P11309541633257653720

/-! ## A162406.P415450114880832650

`∑[A162407(n-ceil(sin(n)²))]`
-/

namespace A162406.P415450114880832650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162407 ((n : ℤ) - ⌈Real.sin (n : ℝ) ^ 2⌉).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162406.P415450114880832650

/-! ## A162406.P13253568407681974202

`∑[A162407(floor(n²/(n+1)))]`
-/

namespace A162406.P13253568407681974202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162407 ⌊(n ^ 2 : ℚ) / (n + 1 : ℚ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162406.P13253568407681974202

/-! ## A162406.P593399347271658108

`A162407(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A162406.P593399347271658108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A162407 (n - 1) + a (n - 1)

end

end A162406.P593399347271658108

/-! ## A162406.P14835140407358285321

`∑[A162407(n)]+1-A162407(n)`
-/

namespace A162406.P14835140407358285321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162407 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A162407 n)

end

end A162406.P14835140407358285321

/-! ## A162406.P3673293750378488562

`∑[A162407(A028310(n))]-A162407(n)`
-/

namespace A162406.P3673293750378488562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162407 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A162407 n

end

end A162406.P3673293750378488562

/-! ## A162406.P3845636161755070167

`A008619(2*(∑[A162407(n)]-A162407(n)))`
-/

namespace A162406.P3845636161755070167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162407 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * (∑ j ∈ Finset.range (n + 1), f1 j - A162407 n)).toNat

end

end A162406.P3845636161755070167

/-!
# A162407: a(n) = A162406(n+1) - A162406(n).

The programs for A162407, there is no canonical definition to state claims against.
-/

/-! ## A162407.P2045719977282790632

`A162406(n+1)-A162406(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A162407.P2045719977282790632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162406 (n + 1) - A162406 n

end

end A162407.P2045719977282790632

/-! ## A162407.P3729901892383531913

`Δ[A162406(n)]`
-/

namespace A162407.P3729901892383531913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162406 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A162407.P3729901892383531913

/-! ## A162407.P16992843267877627841

`record[A162406(abs(1-n))]-A162406(n)`
-/

namespace A162407.P16992843267877627841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162406 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A162406 n

end

end A162407.P16992843267877627841

/-!
# A162409: Semiprimes of the form p*(k*p-1) where k > 1 (and p prime).

The programs for A162409, there is no canonical definition to state claims against.
-/

/-! ## A162409.P1220588987692979948

`record[A066048(A069059(n+1))]`
-/

namespace A162409.P1220588987692979948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066048 (A069059 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A162409.P1220588987692979948

/-! ## A162409.P447554219207730402

`record[A055615(A330397(n+1))]`
-/

namespace A162409.P447554219207730402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055615 (A330397 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A162409.P447554219207730402

/-! ## A162409.P2384903164815973788

`filter[A069059(n+1), A064911(#)]`
-/

namespace A162409.P2384903164815973788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069059 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A162409.P2384903164815973788

/-! ## A162409.P7833736301168416995

`filter[A069059(n+1), A101040(#)]`
-/

namespace A162409.P7833736301168416995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069059 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101040 (f1 j).toNat = 1) n)

end

end A162409.P7833736301168416995

/-! ## A162409.P10655721227928047765

`filter[A139799(n+1), A064911(#)]`
-/

namespace A162409.P10655721227928047765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139799 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A162409.P10655721227928047765

/-! ## A162409.P7017735891826895443

`filter[A069059(n+1), A280710(#)]`
-/

namespace A162409.P7017735891826895443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069059 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A280710 (f1 j).toNat = 1) n)

end

end A162409.P7017735891826895443

/-! ## A162409.P17575577179652598696

`filter[A330397(n+1), A064911(#)]`
-/

namespace A162409.P17575577179652598696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330397 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A162409.P17575577179652598696

/-! ## A162409.P5251353051908560055

`filter[A139799(n+1), A280710(#)]`
-/

namespace A162409.P5251353051908560055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139799 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A280710 (f1 j).toNat = 1) n)

end

end A162409.P5251353051908560055

/-! ## A162409.P4835515469058641927

`filter[A069059(n+1), A353471(#)]`
-/

namespace A162409.P4835515469058641927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069059 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353471 (f1 j).toNat = 1) n)

end

end A162409.P4835515469058641927

/-! ## A162409.P13652009292180417190

`filter[A069059(n+1), A353788(#)]`
-/

namespace A162409.P13652009292180417190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069059 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353788 (f1 j).toNat = 1) n)

end

end A162409.P13652009292180417190

/-!
# A162410: Numbers n such that 10*n + 3 and 10*n + 7 are prime.

The programs for A162410, the canonical program `A162410.P3316117402567756503` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A162410 has offset 1).

The definition of A162410 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A162410.P3316117402567756503

`floor(A289413(n+1)/10)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A162410

/-- `floor(A289413(n+1)/10)` -/
def P3316117402567756503.Spec : Prop :=
  ∀ n, P3316117402567756503.a n = A162410 (n + 1)

theorem P3316117402567756503.correct : P3316117402567756503.Spec := by
  intro n
  simp only [A162410, Nat.add_sub_cancel]

end A162410

/-! ## A162410.P1860987469461957793

`ceil(A289413(1+n)/10)-1`
-/

namespace A162410.P1860987469461957793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A289413 (1 + n) : ℚ) / 10⌉ - 1

end

end A162410.P1860987469461957793

namespace A162410

/-- `ceil(A289413(1+n)/10)-1` -/
def P1860987469461957793.Spec : Prop :=
  ∀ n, P1860987469461957793.a n = A162410 (n + 1)

end A162410

/-! ## A162410.P2547140965286649422

`round(A289413(n+1)/10*A057427(n))`
-/

namespace A162410.P2547140965286649422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A289413 (n + 1) : ℚ) / 10 * (A057427 n : ℚ))

end

end A162410.P2547140965286649422

namespace A162410

/-- `round(A289413(n+1)/10*A057427(n))` -/
def P2547140965286649422.Spec : Prop :=
  ∀ n, P2547140965286649422.a n = A162410 (n + 1)

end A162410

/-! ## A162410.P8781891928297710077

`floor(A076746(2*n+1)/10)`
-/

namespace A162410.P8781891928297710077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A076746 (2 * n + 1) : ℚ) / 10⌋

end

end A162410.P8781891928297710077

namespace A162410

/-- `floor(A076746(2*n+1)/10)` -/
def P8781891928297710077.Spec : Prop :=
  ∀ n, P8781891928297710077.a n = A162410 (n + 1)

end A162410

/-! ## A162410.P14470445583073395968

`floor(p?[A030431(n+1)+4]/10)`
-/

namespace A162410.P14470445583073395968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030431 (n + 1) + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / 10⌋

end

end A162410.P14470445583073395968

namespace A162410

/-- `floor(p?[A030431(n+1)+4]/10)` -/
def P14470445583073395968.Spec : Prop :=
  ∀ n, P14470445583073395968.a n = A162410 (n + 1)

end A162410

/-! ## A162410.P16591011670013234204

`∩[A102338(n+1), A102342(n+1)]`
-/

namespace A162410.P16591011670013234204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102338 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102342 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A162410.P16591011670013234204

namespace A162410

/-- `∩[A102338(n+1), A102342(n+1)]` -/
def P16591011670013234204.Spec : Prop :=
  ∀ n, (P16591011670013234204.a n : ℤ) = A162410 (n + 1)

end A162410

/-! ## A162410.P11423205303082856934

`∩[A024913(n+1), A024914(n+1)]-1`
-/

namespace A162410.P11423205303082856934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024913 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024914 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A162410.P11423205303082856934

namespace A162410

/-- `∩[A024913(n+1), A024914(n+1)]-1` -/
def P11423205303082856934.Spec : Prop :=
  ∀ n, P11423205303082856934.a n = A162410 (n + 1)

end A162410

/-! ## A162410.P15877455655913285079

`∩[A024914(n+1)-1, A102338(n+1)]`
-/

namespace A162410.P15877455655913285079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024914 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102338 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A162410.P15877455655913285079

namespace A162410

/-- `∩[A024914(n+1)-1, A102338(n+1)]` -/
def P15877455655913285079.Spec : Prop :=
  ∀ n, (P15877455655913285079.a n : ℤ) = A162410 (n + 1)

end A162410

/-! ## A162410.P15778349163723342426

`floor(record[A020639(A030432(n+1)-4)]/10)`
-/

namespace A162410.P15778349163723342426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A030432 (n + 1) - 4).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / 10⌋

end

end A162410.P15778349163723342426

namespace A162410

/-- `floor(record[A020639(A030432(n+1)-4)]/10)` -/
def P15778349163723342426.Spec : Prop :=
  ∀ n, P15778349163723342426.a n = A162410 (n + 1)

end A162410

/-! ## A162410.P4079716721314340903

`record[A108738(A047847(n+1)+4)-1]`
-/

namespace A162410.P4079716721314340903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108738 (A047847 (n + 1) + 4).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A162410.P4079716721314340903

namespace A162410

/-- `record[A108738(A047847(n+1)+4)-1]` -/
def P4079716721314340903.Spec : Prop :=
  ∀ n, P4079716721314340903.a n = A162410 (n + 1)

end A162410

/-! ## A162410.P12238155744804407551

`A057428(n+1)+record[A108738(A047847(n+1)+4)]`
-/

namespace A162410.P12238155744804407551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108738 (A047847 (n + 1) + 4).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A162410.P12238155744804407551

namespace A162410

/-- `A057428(n+1)+record[A108738(A047847(n+1)+4)]` -/
def P12238155744804407551.Spec : Prop :=
  ∀ n, P12238155744804407551.a n = A162410 (n + 1)

end A162410

/-!
# A162417: Find max {primes such that p < n^2, n = 2,3,...}, then the gap g(n) between that prime and its successor. This sequence is the sequence of differences {2n - g(n)}.

The programs for A162417, the canonical program `A162417.P3385297954225530343` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A162417 has offset 2).

The definition of A162417 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A058043, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A162417.P3385297954225530343

`2*(n+2)-A058043(n+2)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A162417

/-- `2*(n+2)-A058043(n+2)` -/
def P3385297954225530343.Spec : Prop :=
  ∀ n, P3385297954225530343.a n = A162417 (n + 2)

theorem P3385297954225530343.correct : P3385297954225530343.Spec := by
  intro n
  simp only [A162417, Nat.add_sub_cancel]

end A162417

/-! ## A162417.P5169878461165147894

`2*(n+2)-A000040(A000720((n+2)²)+1)+A000040(A000720((n+2)²))`
-/

namespace A162417.P5169878461165147894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 2) : ℤ) - A000040 (A000720 ((n + 2) ^ 2) + 1).toNat + A000040 (A000720 ((n + 2) ^ 2)).toNat

end

end A162417.P5169878461165147894

namespace A162417

/-- `2*(n+2)-A000040(A000720((n+2)²)+1)+A000040(A000720((n+2)²))` -/
def P5169878461165147894.Spec : Prop :=
  ∀ n, P5169878461165147894.a n = A162417 (n + 2)

end A162417

/-! ## A162417.P11008441583619910000

`n+4-A058043(n%comp[∑[n]]+2)+n`
-/

namespace A162417.P11008441583619910000
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 4 : ℤ) - A058043 (n % SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 2) + (n : ℤ)

end

end A162417.P11008441583619910000

namespace A162417

/-- `n+4-A058043(n%comp[∑[n]]+2)+n` -/
def P11008441583619910000.Spec : Prop :=
  ∀ n, P11008441583619910000.a n = A162417 (n + 2)

end A162417

/-! ## A162417.P1595530858240802310

`A005408(n)+3-A058043(n+2)`
-/

namespace A162417.P1595530858240802310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n + (3 - A058043 (n + 2))

end

end A162417.P1595530858240802310

namespace A162417

/-- `A005408(n)+3-A058043(n+2)` -/
def P1595530858240802310.Spec : Prop :=
  ∀ n, P1595530858240802310.a n = A162417 (n + 2)

theorem P1595530858240802310.correct : P1595530858240802310.Spec := by
  intro n
  simp only [A162417, Nat.add_sub_cancel, A162417.P1595530858240802310.a, A162417.P3385297954225530343.a, A005408, A005408.P17437947328870227736.a, A058043, A058043.P5464834808699039528.a, A053001, A053001.P15315627047163016254.a, A056928, A056928.P1059956196817698277.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000290, A000290.P12206242496348924484.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A053000, A053000.P7278427673394138104.a, A056927, A056927.P15198729554865341557.a, A013632, A013632.P6559946879985956067.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A162417

/-! ## A162417.P8459564149434925440

`A005843(n)+4-A058043(n+2)`
-/

namespace A162417.P8459564149434925440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + (4 - A058043 (n + 2))

end

end A162417.P8459564149434925440

namespace A162417

/-- `A005843(n)+4-A058043(n+2)` -/
def P8459564149434925440.Spec : Prop :=
  ∀ n, P8459564149434925440.a n = A162417 (n + 2)

theorem P8459564149434925440.correct : P8459564149434925440.Spec := by
  intro n
  simp only [A162417, Nat.add_sub_cancel, A162417.P8459564149434925440.a, A162417.P3385297954225530343.a, A005843, A005843.P3167286115683555970.a, A058043, A058043.P5464834808699039528.a, A053001, A053001.P15315627047163016254.a, A056928, A056928.P1059956196817698277.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000290, A000290.P12206242496348924484.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A053000, A053000.P7278427673394138104.a, A056927, A056927.P15198729554865341557.a, A013632, A013632.P6559946879985956067.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A162417

/-! ## A162417.P2739958598607199636

`record[A093178(n)]+3-A058043(n+2)`
-/

namespace A162417.P2739958598607199636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (3 - A058043 (n + 2))

end

end A162417.P2739958598607199636

namespace A162417

/-- `record[A093178(n)]+3-A058043(n+2)` -/
def P2739958598607199636.Spec : Prop :=
  ∀ n, P2739958598607199636.a n = A162417 (n + 2)

end A162417

/-! ## A162417.P7492014343584043425

`A004273(n+1)+3-A058043(n+2)`
-/

namespace A162417.P7492014343584043425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (n + 1) + (3 - A058043 (n + 2))

end

end A162417.P7492014343584043425

namespace A162417

/-- `A004273(n+1)+3-A058043(n+2)` -/
def P7492014343584043425.Spec : Prop :=
  ∀ n, P7492014343584043425.a n = A162417 (n + 2)

end A162417

/-! ## A162417.P17864480093643445492

`A004277(n+2-A058043(n+2)/2)`
-/

namespace A162417.P17864480093643445492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (SequenceMachineLib.roundAway ((n + 2 : ℚ) - (A058043 (n + 2) : ℚ) / 2)).toNat

end

end A162417.P17864480093643445492

namespace A162417

/-- `A004277(n+2-A058043(n+2)/2)` -/
def P17864480093643445492.Spec : Prop :=
  ∀ n, P17864480093643445492.a n = A162417 (n + 2)

end A162417

/-! ## A162417.P1244422174774166126

`Δ[A002522(n)]+3-A058043(n+2)`
-/

namespace A162417.P1244422174774166126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (3 - A058043 (n + 2))

end

end A162417.P1244422174774166126

namespace A162417

/-- `Δ[A002522(n)]+3-A058043(n+2)` -/
def P1244422174774166126.Spec : Prop :=
  ∀ n, P1244422174774166126.a n = A162417 (n + 2)

theorem P1244422174774166126.correct : P1244422174774166126.Spec := by
  intro n
  simp only [A162417, Nat.add_sub_cancel, A162417.P1244422174774166126.f1, A162417.P1244422174774166126.a, A162417.P3385297954225530343.a, A002522, A002522.P3778392011853271743.a, A058043, A058043.P5464834808699039528.a, A053001, A053001.P15315627047163016254.a, A056928, A056928.P1059956196817698277.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000290, A000290.P12206242496348924484.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A053000, A053000.P7278427673394138104.a, A056927, A056927.P15198729554865341557.a, A013632, A013632.P6559946879985956067.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A162417

/-! ## A162417.P6105500553181857088

`∑[2-Δ[A166597((n+1)²)]]`
-/

namespace A162417.P6105500553181857088
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166597 ((n + 1) ^ 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162417.P6105500553181857088

namespace A162417

/-- `∑[2-Δ[A166597((n+1)²)]]` -/
def P6105500553181857088.Spec : Prop :=
  ∀ n, P6105500553181857088.a n = A162417 (n + 2)

end A162417

/-! ## A162417.P5509662526541015424

`A004277(n+2)-A072680((n+2)²)`
-/

namespace A162417.P5509662526541015424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (n + 2) - A072680 ((n + 2) ^ 2)

end

end A162417.P5509662526541015424

namespace A162417

/-- `A004277(n+2)-A072680((n+2)²)` -/
def P5509662526541015424.Spec : Prop :=
  ∀ n, P5509662526541015424.a n = A162417 (n + 2)

end A162417

/-!
# A162418: Number of reduced words of length n in the Weyl group D_45.

The programs for A162418, there is no canonical definition to state claims against.
-/

/-! ## A162418.P7683547510370779253

`A162183(n)%A023875(A162189(n+1))`
-/

namespace A162418.P7683547510370779253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A162183 n) (A023875 (A162189 (n + 1)).toNat)

end

end A162418.P7683547510370779253

/-!
# A162419: a(n) = sigma(n)*|A002129(n)| where sigma(n) = A000203(n).

The programs for A162419, the canonical program `A162419.P3264768451038245981` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A162419 has offset 1).

The definition of A162419 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A162419.P3419197486533678255

`abs(∑{d}[n+1, (-1)^(#+1)*#])*∑{d}[n+1, #]`
-/

namespace A162419.P3419197486533678255
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ d ∈ Nat.divisors (f1 n), (-1) ^ (d + 1) * (d : ℤ)| * ((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℤ)

end

end A162419.P3419197486533678255

namespace A162419

/-- `abs(∑{d}[n+1, (-1)^(#+1)*#])*∑{d}[n+1, #]` -/
def P3419197486533678255.Spec : Prop :=
  ∀ n, P3419197486533678255.a n = A162419 (n + 1)

end A162419

/-! ## A162419.P3264768451038245981

`∑{d}[n+1, #]*A113184(n+1)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A162419

/-- `∑{d}[n+1, #]*A113184(n+1)` -/
def P3264768451038245981.Spec : Prop :=
  ∀ n, P3264768451038245981.a n = A162419 (n + 1)

theorem P3264768451038245981.correct : P3264768451038245981.Spec := by
  intro n
  simp only [A162419, Nat.add_sub_cancel]

end A162419

/-! ## A162419.P6417065946520187005

`abs(∑{d}[n+1, (-1)^(#+1)*#])*A000203(n+1)`
-/

namespace A162419.P6417065946520187005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ d ∈ Nat.divisors (f1 n), (-1) ^ (d + 1) * (d : ℤ)| * A000203 (n + 1)

end

end A162419.P6417065946520187005

namespace A162419

/-- `abs(∑{d}[n+1, (-1)^(#+1)*#])*A000203(n+1)` -/
def P6417065946520187005.Spec : Prop :=
  ∀ n, P6417065946520187005.a n = A162419 (n + 1)

end A162419

/-! ## A162419.P16251099030305028943

`A000203(n+1)*A113184(n+1)`
-/

namespace A162419.P16251099030305028943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) * A113184 (n + 1)

end

end A162419.P16251099030305028943

namespace A162419

/-- `A000203(n+1)*A113184(n+1)` -/
def P16251099030305028943.Spec : Prop :=
  ∀ n, P16251099030305028943.a n = A162419 (n + 1)

end A162419

/-! ## A162419.P12861327255657222178

`A002129(n+1)*A143348(n+1)`
-/

namespace A162419.P12861327255657222178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002129 (n + 1) * A143348 (n + 1)

end

end A162419.P12861327255657222178

namespace A162419

/-- `A002129(n+1)*A143348(n+1)` -/
def P12861327255657222178.Spec : Prop :=
  ∀ n, P12861327255657222178.a n = A162419 (n + 1)

end A162419

/-! ## A162419.P15775842888371326152

`A113184(n+1)*A245092(Δ[n²])`
-/

namespace A162419.P15775842888371326152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113184 (n + 1) * A245092 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A162419.P15775842888371326152

namespace A162419

/-- `A113184(n+1)*A245092(Δ[n²])` -/
def P15775842888371326152.Spec : Prop :=
  ∀ n, P15775842888371326152.a n = A162419 (n + 1)

end A162419

/-! ## A162419.P6429188349231312366

`abs(A000203(n+1)*A002129(n+1))`
-/

namespace A162419.P6429188349231312366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000203 (n + 1) * A002129 (n + 1)|

end

end A162419.P6429188349231312366

namespace A162419

/-- `abs(A000203(n+1)*A002129(n+1))` -/
def P6429188349231312366.Spec : Prop :=
  ∀ n, P6429188349231312366.a n = A162419 (n + 1)

end A162419

/-! ## A162419.P7820318344863657791

`sqrt(A072861(n+1))*A113184(n+1)`
-/

namespace A162419.P7820318344863657791
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A072861 (n + 1) : ℝ) * (A113184 (n + 1) : ℝ)

end

end A162419.P7820318344863657791

namespace A162419

/-- `sqrt(A072861(n+1))*A113184(n+1)` -/
def P7820318344863657791.Spec : Prop :=
  ∀ n, P7820318344863657791.a n = (A162419 (n + 1) : ℝ)

end A162419

/-! ## A162419.P16533189686046073495

`(A088580(n+1)-1)*A113184(n+1)`
-/

namespace A162419.P16533189686046073495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A088580 (n + 1) - 1) * A113184 (n + 1)

end

end A162419.P16533189686046073495

namespace A162419

/-- `(A088580(n+1)-1)*A113184(n+1)` -/
def P16533189686046073495.Spec : Prop :=
  ∀ n, P16533189686046073495.a n = A162419 (n + 1)

theorem P16533189686046073495.correct : P16533189686046073495.Spec := by
  intro n
  simp only [A162419, Nat.add_sub_cancel, A162419.P16533189686046073495.a, A162419.P3264768451038245981.f1, A162419.P3264768451038245981.a, A088580, A088580.P3089093194242277422.a, A113184, A113184.P201915956103544403.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A002129, A002129.P14132575705783117531.a, A000593, A000593.P10331878810394225172.f1, A000593.P10331878810394225172.a, A146076, A146076.P5513778411624192836.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A162419

/-! ## A162419.P6141248276739354123

`abs(A000593(n+1)²-A146076(n+1)²)`
-/

namespace A162419.P6141248276739354123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000593 (n + 1) ^ 2 - A146076 (n + 1) ^ 2|

end

end A162419.P6141248276739354123

namespace A162419

/-- `abs(A000593(n+1)²-A146076(n+1)²)` -/
def P6141248276739354123.Spec : Prop :=
  ∀ n, P6141248276739354123.a n = A162419 (n + 1)

end A162419

/-! ## A162419.P228704069701455779

`(A001065(n+1)+1+n)*A113184(n+1)`
-/

namespace A162419.P228704069701455779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001065 (n + 1) + 1 + (n : ℤ)) * A113184 (n + 1)

end

end A162419.P228704069701455779

namespace A162419

/-- `(A001065(n+1)+1+n)*A113184(n+1)` -/
def P228704069701455779.Spec : Prop :=
  ∀ n, P228704069701455779.a n = A162419 (n + 1)

theorem P228704069701455779.correct : P228704069701455779.Spec := by
  intro n
  simp only [A162419, Nat.add_sub_cancel, A162419.P228704069701455779.a, A162419.P3264768451038245981.f1, A162419.P3264768451038245981.a, A001065, A001065.P4097147489331274860.a, A113184, A113184.P201915956103544403.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A002129, A002129.P14132575705783117531.a, A000593, A000593.P10331878810394225172.f1, A000593.P10331878810394225172.a, A146076, A146076.P5513778411624192836.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A162419

/-! ## A162419.P5239566501174228584

`(A155085(n+1)-(n+1))*A113184(n+1)`
-/

namespace A162419.P5239566501174228584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A155085 (n + 1) - (n + 1 : ℤ)) * A113184 (n + 1)

end

end A162419.P5239566501174228584

namespace A162419

/-- `(A155085(n+1)-(n+1))*A113184(n+1)` -/
def P5239566501174228584.Spec : Prop :=
  ∀ n, P5239566501174228584.a n = A162419 (n + 1)

theorem P5239566501174228584.correct : P5239566501174228584.Spec := by
  intro n
  simp only [A162419, Nat.add_sub_cancel, A162419.P5239566501174228584.a, A162419.P3264768451038245981.f1, A162419.P3264768451038245981.a, A113184, A113184.P201915956103544403.a, A155085, A155085.P2440965829929837208.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A002129, A002129.P14132575705783117531.a, A000593, A000593.P10331878810394225172.f1, A000593.P10331878810394225172.a, A146076, A146076.P5513778411624192836.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A162419

/-! ## A162419.P117025334543369329

`A064987(n+1)/(n+1)*A113184(n+1)`
-/

namespace A162419.P117025334543369329
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064987 (n + 1) : ℚ) / (n + 1 : ℚ) * (A113184 (n + 1) : ℚ)

end

end A162419.P117025334543369329

namespace A162419

/-- `A064987(n+1)/(n+1)*A113184(n+1)` -/
def P117025334543369329.Spec : Prop :=
  ∀ n, P117025334543369329.a n = (A162419 (n + 1) : ℚ)

end A162419

/-! ## A162419.P9030357081886975907

`(A237588(n+1)+Δ[n²])*A113184(n+1)`
-/

namespace A162419.P9030357081886975907
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A237588 (n + 1) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))) * A113184 (n + 1)

end

end A162419.P9030357081886975907

namespace A162419

/-- `(A237588(n+1)+Δ[n²])*A113184(n+1)` -/
def P9030357081886975907.Spec : Prop :=
  ∀ n, P9030357081886975907.a n = A162419 (n + 1)

theorem P9030357081886975907.correct : P9030357081886975907.Spec := by
  intro n
  simp only [A162419, Nat.add_sub_cancel, A162419.P9030357081886975907.f1, A162419.P9030357081886975907.a, A162419.P3264768451038245981.f1, A162419.P3264768451038245981.a, A113184, A113184.P201915956103544403.a, A237588, A237588.P10590847318200798620.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A002129, A002129.P14132575705783117531.a, A000593, A000593.P10331878810394225172.f1, A000593.P10331878810394225172.a, A146076, A146076.P5513778411624192836.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A162419

/-! ## A162419.P3697024000297321410

`abs((A155085(n+1)-(n+1))*A002129(n+1))`
-/

namespace A162419.P3697024000297321410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(A155085 (n + 1) - (n + 1 : ℤ)) * A002129 (n + 1)|

end

end A162419.P3697024000297321410

namespace A162419

/-- `abs((A155085(n+1)-(n+1))*A002129(n+1))` -/
def P3697024000297321410.Spec : Prop :=
  ∀ n, P3697024000297321410.a n = A162419 (n + 1)

end A162419

/-! ## A162419.P14168160470674873858

`(2*(n+1)-A033879(n+1))*A113184(n+1)`
-/

namespace A162419.P14168160470674873858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * (n + 1) : ℤ) - A033879 (n + 1)) * A113184 (n + 1)

end

end A162419.P14168160470674873858

namespace A162419

/-- `(2*(n+1)-A033879(n+1))*A113184(n+1)` -/
def P14168160470674873858.Spec : Prop :=
  ∀ n, P14168160470674873858.a n = A162419 (n + 1)

theorem P14168160470674873858.correct : P14168160470674873858.Spec := by
  intro n
  simp only [A162419, Nat.add_sub_cancel, A162419.P14168160470674873858.a, A162419.P3264768451038245981.f1, A162419.P3264768451038245981.a, A033879, A033879.P5965131822542929609.a, A113184, A113184.P201915956103544403.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A002129, A002129.P14132575705783117531.a, A000593, A000593.P10331878810394225172.f1, A000593.P10331878810394225172.a, A146076, A146076.P5513778411624192836.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A162419

/-! ## A162419.P7550250178967326073

`(A048146(n+1)+A034448(n+1))*A113184(n+1)`
-/

namespace A162419.P7550250178967326073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A048146 (n + 1) + A034448 (n + 1)) * A113184 (n + 1)

end

end A162419.P7550250178967326073

namespace A162419

/-- `(A048146(n+1)+A034448(n+1))*A113184(n+1)` -/
def P7550250178967326073.Spec : Prop :=
  ∀ n, P7550250178967326073.a n = A162419 (n + 1)

theorem P7550250178967326073.correct : P7550250178967326073.Spec := by
  intro n
  simp only [A162419, Nat.add_sub_cancel, A162419.P7550250178967326073.a, A162419.P3264768451038245981.f1, A162419.P3264768451038245981.a, A034448, A034448.P11229265544409245030.f1, A034448.P11229265544409245030.a, A048146, A048146.P9985884013456677192.a, A113184, A113184.P201915956103544403.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A002129, A002129.P14132575705783117531.a, A254503, A254503.P16877197465467938331.a, A000593, A000593.P10331878810394225172.f1, A000593.P10331878810394225172.a, A002618, A002618.P8397693677428532773.a, A146076, A146076.P5513778411624192836.a, A384050, A384050.P7808103291810137926.a, A000010, A000010.P4673923239450215316.a, A055231, A055231.P8962300905713718501.a, A057521, A057521.P7284310941140114823.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A162419

/-! ## A162419.P10588224606591574065

`(A146076(n+1)+A000593(n+1))*A113184(n+1)`
-/

namespace A162419.P10588224606591574065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A146076 (n + 1) + A000593 (n + 1)) * A113184 (n + 1)

end

end A162419.P10588224606591574065

namespace A162419

/-- `(A146076(n+1)+A000593(n+1))*A113184(n+1)` -/
def P10588224606591574065.Spec : Prop :=
  ∀ n, P10588224606591574065.a n = A162419 (n + 1)

theorem P10588224606591574065.correct : P10588224606591574065.Spec := by
  intro n
  simp only [A162419, Nat.add_sub_cancel, A162419.P10588224606591574065.a, A162419.P3264768451038245981.f1, A162419.P3264768451038245981.a, A000593, A000593.P10331878810394225172.f1, A000593.P10331878810394225172.a, A113184, A113184.P201915956103544403.a, A146076, A146076.P5513778411624192836.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A002129, A002129.P14132575705783117531.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A162419

/-! ## A162419.P7338912099842795160

`(A324122(n+1)+A324121(n+1))*A113184(n+1)`
-/

namespace A162419.P7338912099842795160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A324122 (n + 1) + A324121 (n + 1)) * A113184 (n + 1)

end

end A162419.P7338912099842795160

namespace A162419

/-- `(A324122(n+1)+A324121(n+1))*A113184(n+1)` -/
def P7338912099842795160.Spec : Prop :=
  ∀ n, P7338912099842795160.a n = A162419 (n + 1)

theorem P7338912099842795160.correct : P7338912099842795160.Spec := by
  intro n
  simp only [A162419, Nat.add_sub_cancel, A162419.P7338912099842795160.a, A162419.P3264768451038245981.f1, A162419.P3264768451038245981.a, A113184, A113184.P201915956103544403.a, A324121, A324121.P5058798757553332466.a, A324122, A324122.P6437590254037711062.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A002129, A002129.P14132575705783117531.a, A038040, A038040.P16512896840577774730.a, A000005, A000005.P16091521709108585461.a, A000593, A000593.P10331878810394225172.f1, A000593.P10331878810394225172.a, A146076, A146076.P5513778411624192836.a, A032741, A032741.P7902726259890016945.f1, A032741.P7902726259890016945.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A162419

/-! ## A162419.P9127651298285409342

`(A325972(n+1)+A325971(n+1))*A113184(n+1)`
-/

namespace A162419.P9127651298285409342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A325972 (n + 1) + A325971 (n + 1)) * A113184 (n + 1)

end

end A162419.P9127651298285409342

namespace A162419

/-- `(A325972(n+1)+A325971(n+1))*A113184(n+1)` -/
def P9127651298285409342.Spec : Prop :=
  ∀ n, P9127651298285409342.a n = A162419 (n + 1)

end A162419

/-!
# A162420: G.f.: A(x) = exp( Sum_{n>=1} sigma(n)*|A002129(n)|*x^n/n ).

The programs for A162420, there is no canonical definition to state claims against.
-/

/-! ## A162420.P1030486772218600044

`A389619(A293329(n))`
-/

namespace A162420.P1030486772218600044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389619 (A293329 n).toNat

end

end A162420.P1030486772218600044

/-! ## A162420.P3139188114781579413

`A389619(A293354(n))`
-/

namespace A162420.P3139188114781579413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389619 (A293354 n).toNat

end

end A162420.P3139188114781579413

/-! ## A162420.P1162479710761538851

`xor(A238005(A154638(n)), A331569(n))`
-/

namespace A162420.P1162479710761538851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A238005 (A154638 n).toNat) (A331569 n)

end

end A162420.P1162479710761538851

/-! ## A162420.P6604488367701490668

`A000837(2*n)-A056966(A114121(n))`
-/

namespace A162420.P6604488367701490668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000837 (2 * n) - A056966 (A114121 n).toNat

end

end A162420.P6604488367701490668

/-!
# A162421: Numbers whose prime factors all have the same number of digits.

The programs for A162421, there is no canonical definition to state claims against.
-/

/-! ## A162421.P7805011947278976356

`∪[A000040(n+1), A199009(n+1)]`
-/

namespace A162421.P7805011947278976356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199009 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A162421.P7805011947278976356

/-! ## A162421.P4899414361773434809

`∪[A000430(n+1), A199009(n+1)]`
-/

namespace A162421.P4899414361773434809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199009 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A162421.P4899414361773434809

/-! ## A162421.P10878199539740116641

`∪[A009087(n+1), A199009(n+1)]`
-/

namespace A162421.P10878199539740116641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199009 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A162421.P10878199539740116641

/-! ## A162421.P3234501602581383868

`∪[A050376(n+1), A199009(n+1)]`
-/

namespace A162421.P3234501602581383868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050376 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199009 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A162421.P3234501602581383868

/-! ## A162421.P17853996054432248103

`record[A056926(A199009(n+1))]`
-/

namespace A162421.P17853996054432248103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (A199009 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A162421.P17853996054432248103

/-!
# A162422: Numbers with at least 2 different numbers of digits among their prime factors.

The programs for A162422, there is no canonical definition to state claims against.
-/

/-! ## A162422.P17157640310701162292

`comp[A162421(n+1)-2]+2`
-/

namespace A162422.P17157640310701162292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162421 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2

end

end A162422.P17157640310701162292

/-!
# A162423: Primes whose decimal expansion has the form XYYYX, for nonzero numbers X and Y, where Y is a single digit.

The programs for A162423, there is no canonical definition to state claims against.
-/

/-! ## A162423.P3203906013020857458

`A006530(A056728(n+16))`
-/

namespace A162423.P3203906013020857458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A056728 (n + 16)).toNat

end

end A162423.P3203906013020857458

/-! ## A162423.P18153540584444383180

`A056728(A047842(n+1)+5)`
-/

namespace A162423.P18153540584444383180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056728 (A047842 (n + 1) + 5).toNat

end

end A162423.P18153540584444383180

/-! ## A162423.P4294597905974478940

`p?[A056728(n+1)%A059758(n+1)]`
-/

namespace A162423.P4294597905974478940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056728 (n + 1)) (A059758 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A162423.P4294597905974478940

/-! ## A162423.P16055513707165208397

`A000027(∩[A050786(n+1), A056728(n+1)])`
-/

namespace A162423.P16055513707165208397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050786 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056728 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A162423.P16055513707165208397

/-!
# A162424: Square table defined by T(n,k) = Sum_{m=k(k+1)/2..k(k+1)/2+k} [x^m] S(x)^n for n>=1, k>=0, where S(x) = Sum_{n>=0} x^((n+1)(n+2)/2-1), as read by antidiagonals.

The programs for A162424, there is no canonical definition to state claims against.
-/

/-! ## A162424.P10200484970922918915

`A117297(A347621(n))+A014473(n+1)`
-/

namespace A162424.P10200484970922918915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117297 (A347621 n).toNat + A014473 (n + 1)

end

end A162424.P10200484970922918915

/-! ## A162424.P1821969375857651940

`A022818(n+2)-A121373(A352263(2*n+5))`
-/

namespace A162424.P1821969375857651940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022818 (n + 2) - A121373 (A352263 (2 * n + 5)).toNat

end

end A162424.P1821969375857651940

/-! ## A162424.P17858027357990851814

`A022818(n+2)-A010054(A326910(3*n+4))`
-/

namespace A162424.P17858027357990851814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022818 (n + 2) - A010054 (A326910 (3 * n + 4)).toNat

end

end A162424.P17858027357990851814

/-! ## A162424.P9764191959564697008

`A185238(A073303(n))+A007318(n+1)`
-/

namespace A162424.P9764191959564697008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185238 (A073303 n).toNat + A007318 (n + 1)

end

end A162424.P9764191959564697008

/-! ## A162424.P18112776726065738491

`A186747(A123125(n))+A007318(n+1)`
-/

namespace A162424.P18112776726065738491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186747 (A123125 n).toNat + A007318 (n + 1)

end

end A162424.P18112776726065738491

/-!
# A162425: Row 2 of table A162424.

The programs for A162425, there is no canonical definition to state claims against.
-/

/-! ## A162425.P6360364172324155289

`A001651(n+1)-A263087(A136683(2*n+5)+1+n)`
-/

namespace A162425.P6360364172324155289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (n + 1) - A263087 (A136683 (2 * n + 5) + 1 + (n : ℤ)).toNat

end

end A162425.P6360364172324155289

/-!
# A162426: Row 3 of table A162424.

The programs for A162426, there is no canonical definition to state claims against.
-/

/-! ## A162426.P5277658991980056404

`A162424(∑[n+3])`
-/

namespace A162426.P5277658991980056404
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162424 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A162426.P5277658991980056404

/-! ## A162426.P5602399293599964079

`A162424(A141214(n))%98`
-/

namespace A162426.P5602399293599964079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A162424 (A141214 n).toNat) 98

end

end A162426.P5602399293599964079

/-! ## A162426.P1207491845837817153

`or(char[1], A162424(A027379(n+1)))`
-/

namespace A162426.P1207491845837817153
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A162424 (A027379 (n + 1)).toNat)

end

end A162426.P1207491845837817153

/-! ## A162426.P3659313757679146470

`record[gcd(A162424(n+1), A191530(n))]`
-/

namespace A162426.P3659313757679146470
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A162424 (n + 1)) (A191530 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A162426.P3659313757679146470

/-! ## A162426.P14002416541525303289

`A162424(A141214(n))+A064459(n)`
-/

namespace A162426.P14002416541525303289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162424 (A141214 n).toNat + A064459 n

end

end A162426.P14002416541525303289

/-!
# A162427: Row 4 of table A162424.

The programs for A162427, there is no canonical definition to state claims against.
-/

/-! ## A162427.P10787237028464145583

`A162424(∑[n+3]+n+3)`
-/

namespace A162427.P10787237028464145583
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162424 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A162427.P10787237028464145583

/-! ## A162427.P7637115482175742767

`A162424(A046691(n+2))+A061858(n)`
-/

namespace A162427.P7637115482175742767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162424 (A046691 (n + 2)).toNat + A061858 n

end

end A162427.P7637115482175742767

/-! ## A162427.P12967339637470142270

`A162424(A046691(n+2))*A227690(n)`
-/

namespace A162427.P12967339637470142270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162424 (A046691 (n + 2)).toNat * A227690 n

end

end A162427.P12967339637470142270

/-!
# A162428: Antidiagonal sums of table A162424.

The programs for A162428, there is no canonical definition to state claims against.
-/

/-! ## A162428.P16048966033854332655

`A401118(A124497(n+1))`
-/

namespace A162428.P16048966033854332655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401118 (A124497 (n + 1)).toNat

end

end A162428.P16048966033854332655

/-! ## A162428.P16808564801435747839

`A005041(A005387(n)+n)`
-/

namespace A162428.P16808564801435747839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005041 (A005387 n + (n : ℤ)).toNat

end

end A162428.P16808564801435747839

/-! ## A162428.P14304025263054822856

`A001462(A149667(n)+n)`
-/

namespace A162428.P14304025263054822856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A149667 n + (n : ℤ)).toNat

end

end A162428.P14304025263054822856

/-! ## A162428.P14441210134655336941

`A001462(A276086(n)+A015523(n))`
-/

namespace A162428.P14441210134655336941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A276086 n + A015523 n).toNat

end

end A162428.P14441210134655336941

/-!
# A162429: Main diagonal of table A162424.

The programs for A162429, there is no canonical definition to state claims against.
-/

/-! ## A162429.P14954893656706617766

`A162424((n+1)*floor(2/acot(n)))`
-/

namespace A162429.P14954893656706617766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162424 ((n + 1 : ℤ) * ⌊2 / SequenceMachineLib.acot (n : ℝ)⌋).toNat

end

end A162429.P14954893656706617766

/-! ## A162429.P16605345699070573802

`A162424(A301059(n))`
-/

namespace A162429.P16605345699070573802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162424 (A301059 n).toNat

end

end A162429.P16605345699070573802

/-!
# A162430: Square table defined by T(n,k) = Sum_{m=k(k+1)/2..k(k+1)/2+k} [x^m] S(x)^n for n>=1, k>=0, where S(x) = Sum_{n>=0} x^(n(n+1)/2), as read by antidiagonals.

The programs for A162430, there is no canonical definition to state claims against.
-/

/-! ## A162430.P12181971525420918542

`A195310(2*A250118(n+1))`
-/

namespace A162430.P12181971525420918542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195310 (2 * A250118 (n + 1)).toNat

end

end A162430.P12181971525420918542

/-! ## A162430.P18296962703537117182

`A359674(2*(A250118(n+1)+1))`
-/

namespace A162430.P18296962703537117182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359674 (2 * (A250118 (n + 1) + 1)).toNat

end

end A162430.P18296962703537117182

/-! ## A162430.P14032690223164293374

`A055898(n)-A186747(A114188(n))`
-/

namespace A162430.P14032690223164293374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055898 n - A186747 (A114188 n).toNat

end

end A162430.P14032690223164293374

/-! ## A162430.P9679044205611012068

`A145904(n)-A186747(A114188(n))`
-/

namespace A162430.P9679044205611012068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145904 n - A186747 (A114188 n).toNat

end

end A162430.P9679044205611012068

/-! ## A162430.P6700879569073132936

`or(A064459(n), A103297(A108625(n)))`
-/

namespace A162430.P6700879569073132936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A064459 n) (A103297 (A108625 n).toNat)

end

end A162430.P6700879569073132936

/-!
# A162431: Row 2 of table A162430.

The programs for A162431, the canonical program `A162431.P9371492357285459952` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A162431 has offset 0).

The definition of A162431 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 255 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A162431.P9371492357285459952

`A002265(Δ[A053415(Δ[n²])])`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A162431

/-- `A002265(Δ[A053415(Δ[n²])])` -/
def P9371492357285459952.Spec : Prop :=
  ∀ n, P9371492357285459952.a n = A162431 n

theorem P9371492357285459952.correct : P9371492357285459952.Spec := by
  intro n
  simp only [A162431]

end A162431

/-! ## A162431.P15697338901109497332

`A054576(Δ[A053415(Δ[n²])])`
-/

namespace A162431.P15697338901109497332
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053415 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054576 (f1 (n + 1) - f1 n).toNat

end

end A162431.P15697338901109497332

namespace A162431

/-- `A054576(Δ[A053415(Δ[n²])])` -/
def P15697338901109497332.Spec : Prop :=
  ∀ n, P15697338901109497332.a n = A162431 n

end A162431

/-! ## A162431.P9472901144773222327

`A110657(Δ[A053415(Δ[n²])])`
-/

namespace A162431.P9472901144773222327
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053415 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110657 (f1 (n + 1) - f1 n).toNat

end

end A162431.P9472901144773222327

namespace A162431

/-- `A110657(Δ[A053415(Δ[n²])])` -/
def P9472901144773222327.Spec : Prop :=
  ∀ n, P9472901144773222327.a n = A162431 n

end A162431

/-! ## A162431.P11205355424744973975

`Δ[A053415(A317107(n+1))/4]`
-/

namespace A162431.P11205355424744973975
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053415 (A317107 (n + 1)).toNat : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A162431.P11205355424744973975

namespace A162431

/-- `Δ[A053415(A317107(n+1))/4]` -/
def P11205355424744973975.Spec : Prop :=
  ∀ n, P11205355424744973975.a n = (A162431 n : ℚ)

end A162431

/-! ## A162431.P12323376191900831220

`A110654(Δ[A053415(2*n+1)/2])`
-/

namespace A162431.P12323376191900831220
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053415 (2 * n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (SequenceMachineLib.roundAway (f1 (n + 1) - f1 n)).toNat

end

end A162431.P12323376191900831220

namespace A162431

/-- `A110654(Δ[A053415(2*n+1)/2])` -/
def P12323376191900831220.Spec : Prop :=
  ∀ n, P12323376191900831220.a n = A162431 n

end A162431

/-! ## A162431.P9772400720519867402

`A110654(A110654(Δ[A053415(2*n+1)]))`
-/

namespace A162431.P9772400720519867402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053415 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A110654 (f1 (n + 1) - f1 n).toNat).toNat

end

end A162431.P9772400720519867402

namespace A162431

/-- `A110654(A110654(Δ[A053415(2*n+1)]))` -/
def P9772400720519867402.Spec : Prop :=
  ∀ n, P9772400720519867402.a n = A162431 n

end A162431

/-! ## A162431.P1994765125955909294

`Δ[A349609(Δ[n²])]`
-/

namespace A162431.P1994765125955909294
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349609 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A162431.P1994765125955909294

namespace A162431

/-- `Δ[A349609(Δ[n²])]` -/
def P1994765125955909294.Spec : Prop :=
  ∀ n, P1994765125955909294.a n = A162431 n

end A162431

/-! ## A162431.P770133271028068009

`Δ[A002265(A053415(2*n+1))]`
-/

namespace A162431.P770133271028068009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A053415 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A162431.P770133271028068009

namespace A162431

/-- `Δ[A002265(A053415(2*n+1))]` -/
def P770133271028068009.Spec : Prop :=
  ∀ n, P770133271028068009.a n = A162431 n

end A162431

/-!
# A162432: Row 3 of table A162430.

The programs for A162432, there is no canonical definition to state claims against.
-/

/-! ## A162432.P4635656145732143193

`Δ[A349610(Δ[n²])]`
-/

namespace A162432.P4635656145732143193
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349610 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A162432.P4635656145732143193

/-! ## A162432.P10259746888500803951

`abs(Δ[A349610(2*n+1)])`
-/

namespace A162432.P10259746888500803951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349610 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A162432.P10259746888500803951

/-! ## A162432.P12256765187808983874

`Δ[record[A349610(A000265(n+1))]]`
-/

namespace A162432.P12256765187808983874
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349610 (A000265 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A162432.P12256765187808983874

/-! ## A162432.P13334126020250043840

`A349610(2*n+3)-A349610(2*n+1)`
-/

namespace A162432.P13334126020250043840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349610 (2 * n + 3) - A349610 (2 * n + 1)

end

end A162432.P13334126020250043840

/-! ## A162432.P15119685447467268032

`Δ[A053596(2*n+1)/8]`
-/

namespace A162432.P15119685447467268032
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053596 (2 * n + 1) : ℚ) / 8

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A162432.P15119685447467268032

/-! ## A162432.P13421890934170740974

`Δ[record[A053596(A093178(n+2))/8]]`
-/

namespace A162432.P13421890934170740974
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053596 (A093178 (n + 2)).toNat : ℚ) / 8

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A162432.P13421890934170740974

/-! ## A162432.P14693446651474086625

`Δ[floor(A053596(A093178(n+1+n))/8)]`
-/

namespace A162432.P14693446651474086625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A053596 (A093178 (n + 1 + n)).toNat : ℚ) / 8⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A162432.P14693446651474086625

/-!
# A162433: Row 4 of table A162430.

The programs for A162433, there is no canonical definition to state claims against.
-/

/-! ## A162433.P13699195588038869022

`Δ[A349611(Δ[n²])]`
-/

namespace A162433.P13699195588038869022
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349611 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A162433.P13699195588038869022

/-! ## A162433.P17138211507551531630

`A162430(A027379(n+2))`
-/

namespace A162433.P17138211507551531630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162430 (A027379 (n + 2)).toNat

end

end A162433.P17138211507551531630

/-! ## A162433.P8549156061772888115

`A162430(A055998(n+2))`
-/

namespace A162433.P8549156061772888115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162430 (A055998 (n + 2)).toNat

end

end A162433.P8549156061772888115

/-! ## A162433.P7978119171199504785

`A162430(A052905(n+1)+2)`
-/

namespace A162433.P7978119171199504785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162430 (A052905 (n + 1) + 2).toNat

end

end A162433.P7978119171199504785

/-! ## A162433.P14259890762496221426

`A162430(A167614(n+1)+2*n+1)`
-/

namespace A162433.P14259890762496221426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162430 (A167614 (n + 1) + (2 * n + 1 : ℤ)).toNat

end

end A162433.P14259890762496221426

/-!
# A162434: Antidiagonal sums of table A162430.

The programs for A162434, there is no canonical definition to state claims against.
-/

/-! ## A162434.P14964626864901560362

`Δ[A226190(∑[A037245(n+1)])]`
-/

namespace A162434.P14964626864901560362
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037245 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226190 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A162434.P14964626864901560362

/-! ## A162434.P17500202987210003036

`A157271(floor(A011782(n)+exp(n)))`
-/

namespace A162434.P17500202987210003036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 ⌊(A011782 n : ℝ) + Real.exp (n : ℝ)⌋.toNat

end

end A162434.P17500202987210003036

/-! ## A162434.P8693036730261348550

`A003178(A286311(n))+A001787(n)`
-/

namespace A162434.P8693036730261348550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003178 (A286311 n).toNat + A001787 n

end

end A162434.P8693036730261348550

/-!
# A162435: Main diagonal of table A162430.

The programs for A162435, there is no canonical definition to state claims against.
-/

/-! ## A162435.P7294704223007308783

`A162430((n+1)²+n²)`
-/

namespace A162435.P7294704223007308783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162430 ((n + 1) ^ 2 + n ^ 2)

end

end A162435.P7294704223007308783

/-! ## A162435.P11349151258272229925

`record[A003982(2*n)*A162430(2*n+1)]`
-/

namespace A162435.P11349151258272229925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 (2 * n) * A162430 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A162435.P11349151258272229925

/-! ## A162435.P7644289134271236510

`or(A000007(n), A162430(A001844(n)))`
-/

namespace A162435.P7644289134271236510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A162430 (A001844 n).toNat)

end

end A162435.P7644289134271236510

/-! ## A162435.P6346158951587903929

`A162430(A001844(n))+A000007(n+1)`
-/

namespace A162435.P6346158951587903929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162430 (A001844 n).toNat + A000007 (n + 1)

end

end A162435.P6346158951587903929

/-! ## A162435.P17224440371459878405

`A001222(A007918(n))*A162430(A001844(n))`
-/

namespace A162435.P17224440371459878405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A007918 n).toNat * A162430 (A001844 n).toNat

end

end A162435.P17224440371459878405

/-!
# A162437: a(1)=1, a(2)=2. Take terms a(n-1) and a(n-2), then convert to binary. Concatenate them, with either binary a(n-1) on the left and a(n-2) on the right, or with a(n-1) on the right and a(n-2) on the left such that the value of the resulting binary number is minimized. a(n) = the decimal equivalent of the resulting binary number.

The programs for A162437, there is no canonical definition to state claims against.
-/

/-! ## A162437.P16504179685699755866

`A059893(A162438(n+1))`
-/

namespace A162437.P16504179685699755866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059893 (A162438 (n + 1)).toNat

end

end A162437.P16504179685699755866

/-!
# A162438: a(1)=1, a(2)=2. Take terms a(n-1) and a(n-2), then convert to binary. Concatenate them, with either binary a(n-1) on the left and a(n-2) on the right, or with a(n-1) on the right and a(n-2) on the left such that the value of the resulting binary number is maximized. a(n) = the decimal equivalent of the resulting binary number.

The programs for A162438, there is no canonical definition to state claims against.
-/

/-! ## A162438.P5232650801471347266

`A367795(A094968(n))`
-/

namespace A162438.P5232650801471347266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367795 (A094968 n).toNat

end

end A162438.P5232650801471347266

/-! ## A162438.P11417614266962885891

`A080541(A162437(n+1))`
-/

namespace A162438.P11417614266962885891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080541 (A162437 (n + 1)).toNat

end

end A162438.P11417614266962885891

/-!
# A162439: Write down the binary representation of n. Partition the string which is this binary representation by placing a '+' just left of every 1. Add the resulting base 2 numbers. a(n) = decimal equivalent of this sum.

The programs for A162439, the canonical program `A162439.P3597326897349511420` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A162439 has offset 1).

The definition of A162439 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A162439.P3597326897349511420

`A160467(n+1)+a(A140106(n+1))` with `a(0)=1`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A162439

/-- `A160467(n+1)+a(A140106(n+1))` -/
def P3597326897349511420.Spec : Prop :=
  ∀ n, P3597326897349511420.a n = A162439 (n + 1)

theorem P3597326897349511420.correct : P3597326897349511420.Spec := by
  intro n
  simp only [A162439, Nat.add_sub_cancel]

end A162439

/-! ## A162439.P10685757794327948439

`A048675(A333219(n+2))`
-/

namespace A162439.P10685757794327948439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048675 (A333219 (n + 2)).toNat

end

end A162439.P10685757794327948439

namespace A162439

/-- `A048675(A333219(n+2))` -/
def P10685757794327948439.Spec : Prop :=
  ∀ n, P10685757794327948439.a n = A162439 (n + 1)

end A162439

/-! ## A162439.P11834142385084963311

`∑{digits}[A275536(1+n), A011782(#)]`
-/

namespace A162439.P11834142385084963311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275536 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A011782 x).sum

end

end A162439.P11834142385084963311

namespace A162439

/-- `∑{digits}[A275536(1+n), A011782(#)]` -/
def P11834142385084963311.Spec : Prop :=
  ∀ n, P11834142385084963311.a n = A162439 (n + 1)

end A162439

/-! ## A162439.P3330185276502649944

`∑{digits}[A275536(n+1), A131577(#)]`
-/

namespace A162439.P3330185276502649944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275536 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A131577 x).sum

end

end A162439.P3330185276502649944

namespace A162439

/-- `∑{digits}[A275536(n+1), A131577(#)]` -/
def P3330185276502649944.Spec : Prop :=
  ∀ n, P3330185276502649944.a n = A162439 (n + 1)

end A162439

/-! ## A162439.P3068419606454820602

`∑{digits}[A275536(n+1), A258800(#)]`
-/

namespace A162439.P3068419606454820602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275536 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A258800 x).sum

end

end A162439.P3068419606454820602

namespace A162439

/-- `∑{digits}[A275536(n+1), A258800(#)]` -/
def P3068419606454820602.Spec : Prop :=
  ∀ n, P3068419606454820602.a n = A162439 (n + 1)

end A162439

/-! ## A162439.P13587508008086712048

`∑{digits}[A275536(n+1), A274866(#)]`
-/

namespace A162439.P13587508008086712048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275536 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A274866 x).sum

end

end A162439.P13587508008086712048

namespace A162439

/-- `∑{digits}[A275536(n+1), A274866(#)]` -/
def P13587508008086712048.Spec : Prop :=
  ∀ n, P13587508008086712048.a n = A162439 (n + 1)

end A162439

/-! ## A162439.P10993446758147263526

`∑{e}[A057335(n+1), A011782(#)]`
-/

namespace A162439.P10993446758147263526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057335 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A011782 (Nat.factorization (f1 n).natAbs p)

end

end A162439.P10993446758147263526

namespace A162439

/-- `∑{e}[A057335(n+1), A011782(#)]` -/
def P10993446758147263526.Spec : Prop :=
  ∀ n, P10993446758147263526.a n = A162439 (n + 1)

end A162439

/-! ## A162439.P6200349912164990016

`∑{e}[A057335(n+1), A000079(#-1)]`
-/

namespace A162439.P6200349912164990016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057335 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000079 (Nat.factorization (f1 n).natAbs p - 1)

end

end A162439.P6200349912164990016

namespace A162439

/-- `∑{e}[A057335(n+1), A000079(#-1)]` -/
def P6200349912164990016.Spec : Prop :=
  ∀ n, P6200349912164990016.a n = A162439 (n + 1)

end A162439

/-! ## A162439.P3539910765840614918

`A275729(A060125(A225901(A059590(n+1))))`
-/

namespace A162439.P3539910765840614918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275729 (A060125 (A225901 (A059590 (n + 1)).toNat).toNat).toNat

end

end A162439.P3539910765840614918

namespace A162439

/-- `A275729(A060125(A225901(A059590(n+1))))` -/
def P3539910765840614918.Spec : Prop :=
  ∀ n, P3539910765840614918.a n = A162439 (n + 1)

end A162439

/-! ## A162439.P951418205981869048

`floor(log2(A328282(n+1)))+1`
-/

namespace A162439.P951418205981869048
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A328282 (n + 1)).toNat + 1

end

end A162439.P951418205981869048

namespace A162439

/-- `floor(log2(A328282(n+1)))+1` -/
def P951418205981869048.Spec : Prop :=
  ∀ n, (P951418205981869048.a n : ℤ) = A162439 (n + 1)

end A162439

/-!
# A162440: The pg(n) sequence that is associated with the Eta triangle A160464.

The programs for A162440, there is no canonical definition to state claims against.
-/

/-! ## A162440.P405464411598478768

`(n+1)!²*A062383(n+1)`
-/

namespace A162440.P405464411598478768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) ^ 2 : ℤ) * A062383 (n + 1)

end

end A162440.P405464411598478768

/-! ## A162440.P18303238742819733453

`∏[(n+1)²*A297382(n+1)]`
-/

namespace A162440.P18303238742819733453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * A297382 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A162440.P18303238742819733453

/-! ## A162440.P13351148036323991522

`∏[(char[A000225(n)]+1)*(n+1)²]`
-/

namespace A162440.P13351148036323991522
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1) * (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A162440.P13351148036323991522

/-! ## A162440.P3001869343430071879

`∏[(n+1)²*A014963(2*(n+1))]`
-/

namespace A162440.P3001869343430071879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * A014963 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A162440.P3001869343430071879

/-! ## A162440.P6601288958417644438

`A000142(n+1)²*A062383(n+1)`
-/

namespace A162440.P6601288958417644438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (n + 1) ^ 2 * A062383 (n + 1)

end

end A162440.P6601288958417644438

/-!
# A162441: Numerators of the column sums of the EG1 matrix coefficients.

The programs for A162441, the canonical program `A162441.P13110107035018514604` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A162441 has offset 2).

The definition of A162441 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A162441.P848870344287505346

`(2*n+3)*A052468(n+1)`
-/

namespace A162441.P848870344287505346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 3 : ℤ) * A052468 (n + 1)

end

end A162441.P848870344287505346

namespace A162441

/-- `(2*n+3)*A052468(n+1)` -/
def P848870344287505346.Spec : Prop :=
  ∀ n, P848870344287505346.a n = A162441 (n + 2)

end A162441

/-! ## A162441.P14119195019766977048

`A052468(n+1)*A144396(n+1)`
-/

namespace A162441.P14119195019766977048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052468 (n + 1) * A144396 (n + 1)

end

end A162441.P14119195019766977048

namespace A162441

/-- `A052468(n+1)*A144396(n+1)` -/
def P14119195019766977048.Spec : Prop :=
  ∀ n, P14119195019766977048.a n = A162441 (n + 2)

end A162441

/-! ## A162441.P15432376639445939815

`A052468(n+1)*A060747(n+2)`
-/

namespace A162441.P15432376639445939815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052468 (n + 1) * A060747 (n + 2)

end

end A162441.P15432376639445939815

namespace A162441

/-- `A052468(n+1)*A060747(n+2)` -/
def P15432376639445939815.Spec : Prop :=
  ∀ n, P15432376639445939815.a n = A162441 (n + 2)

end A162441

/-! ## A162441.P7146399646969184961

`A052468(n+1)*A317439(n+2)`
-/

namespace A162441.P7146399646969184961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052468 (n + 1) * A317439 (n + 2)

end

end A162441.P7146399646969184961

namespace A162441

/-- `A052468(n+1)*A317439(n+2)` -/
def P7146399646969184961.Spec : Prop :=
  ∀ n, P7146399646969184961.a n = A162441 (n + 2)

end A162441

/-! ## A162441.P13110107035018514604

`lcm(n+1, A001790(n+1))/(n+1)*A144396(n+1)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A162441

/-- `lcm(n+1, A001790(n+1))/(n+1)*A144396(n+1)` -/
def P13110107035018514604.Spec : Prop :=
  ∀ n, P13110107035018514604.a n = (A162441 (n + 2) : ℚ)

end A162441

/-! ## A162441.P14528149604787667520

`gcd(A001803(n), A201058(n+1))*A144396(n+1)`
-/

namespace A162441.P14528149604787667520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A001803 n) (A201058 (n + 1)) : ℤ) * A144396 (n + 1)

end

end A162441.P14528149604787667520

namespace A162441

/-- `gcd(A001803(n), A201058(n+1))*A144396(n+1)` -/
def P14528149604787667520.Spec : Prop :=
  ∀ n, P14528149604787667520.a n = A162441 (n + 2)

end A162441

/-!
# A162442: Denominators of the column sums of the EG1 matrix coefficients.

The programs for A162442, there is no canonical definition to state claims against.
-/

/-! ## A162442.P8457086089762248268

`A052469(n+1)/2`
-/

namespace A162442.P8457086089762248268
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052469 (n + 1) : ℚ) / 2

end

end A162442.P8457086089762248268

/-! ## A162442.P2348335219139397916

`A028233(n+1)*A046161(A032555(n+1))`
-/

namespace A162442.P2348335219139397916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028233 (n + 1) * A046161 (A032555 (n + 1)).toNat

end

end A162442.P2348335219139397916

/-! ## A162442.P7719579509717375533

`A028233(n+1)*A046161(A032559(n+1))`
-/

namespace A162442.P7719579509717375533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028233 (n + 1) * A046161 (A032559 (n + 1)).toNat

end

end A162442.P7719579509717375533

/-! ## A162442.P6541649878181427081

`A034684(n+1)*A046161(A032555(n+1))`
-/

namespace A162442.P6541649878181427081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034684 (n + 1) * A046161 (A032555 (n + 1)).toNat

end

end A162442.P6541649878181427081

/-! ## A162442.P9268130502036507307

`A034684(n+1)*A046161(A032559(n+1))`
-/

namespace A162442.P9268130502036507307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034684 (n + 1) * A046161 (A032559 (n + 1)).toNat

end

end A162442.P9268130502036507307

/-!
# A162444: Denominators of the BG1[ -5,n] coefficients of the BG1 matrix.

The programs for A162444, there is no canonical definition to state claims against.
-/

/-! ## A162444.P18338804294674880436

`gcd(A055786(n), A166406(A071721(n)))`
-/

namespace A162444.P18338804294674880436
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A055786 n) (A166406 (A071721 n).toNat)

end

end A162444.P18338804294674880436

/-! ## A162444.P8482684154289017781

`A055786(n)%A008864(A005326(n+1))`
-/

namespace A162444.P8482684154289017781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A055786 n) (A008864 (A005326 (n + 1)).toNat)

end

end A162444.P8482684154289017781

/-! ## A162444.P6877089383838755897

`A000265(A056616(n))/A028234(6*n+5)`
-/

namespace A162444.P6877089383838755897
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000265 (A056616 n).toNat : ℚ) / (A028234 (6 * n + 5) : ℚ)

end

end A162444.P6877089383838755897

/-! ## A162444.P7065286657438705725

`A000265(A143581(n+1))%A008864(A005326(n+1))`
-/

namespace A162444.P7065286657438705725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000265 (A143581 (n + 1)).toNat) (A008864 (A005326 (n + 1)).toNat)

end

end A162444.P7065286657438705725

/-! ## A162444.P1746636935749363989

`(A056616(n)/A060632(2*n))%A008864(A005326(n+1))`
-/

namespace A162444.P1746636935749363989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A056616 n : ℚ) / (A060632 (2 * n) : ℚ))) (A008864 (A005326 (n + 1)).toNat)

end

end A162444.P1746636935749363989

/-!
# A162445: A sequence related to the Beta function.

The programs for A162445, there is no canonical definition to state claims against.
-/

/-! ## A162445.P6245701005312695402

`A053005(n)/4`
-/

namespace A162445.P6245701005312695402
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053005 n : ℚ) / 4

end

end A162445.P6245701005312695402

/-! ## A162445.P4960284393395934279

`A050971(Δ[n²])`
-/

namespace A162445.P4960284393395934279
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050971 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A162445.P4960284393395934279

/-! ## A162445.P7742312990490749041

`4^n*A046977(n)`
-/

namespace A162445.P7742312990490749041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℤ) * A046977 n

end

end A162445.P7742312990490749041

/-! ## A162445.P7203532720925316748

`A068205(2*n+1)/4`
-/

namespace A162445.P7203532720925316748
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A068205 (2 * n + 1) : ℚ) / 4

end

end A162445.P7203532720925316748

/-! ## A162445.P10388519813262588205

`lcm(round(sqrt(n²+1)), A050971(2*n+1))`
-/

namespace A162445.P10388519813262588205
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))) (A050971 (2 * n + 1))

end

end A162445.P10388519813262588205

/-!
# A162452: Number of reduced words of length n in the Weyl group D_46.

The programs for A162452, there is no canonical definition to state claims against.
-/

/-! ## A162452.P17514308316281569834

`∑[A162183(n)+A046765(A040159(3*n+1))]`
-/

namespace A162452.P17514308316281569834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162183 n + A046765 (A040159 (3 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162452.P17514308316281569834

/-!
# A162453: Plane partition triangle, row sums = A000219; derived from the Euler transform of [1, 2, 3, ...].

The programs for A162453, there is no canonical definition to state claims against.
-/

/-! ## A162453.P15127704128768488500

`A338117(A347811(n))+A110582(n)`
-/

namespace A162453.P15127704128768488500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338117 (A347811 n).toNat + A110582 n

end

end A162453.P15127704128768488500

/-! ## A162453.P10565339928809137497

`A007305((2-char[∑[n]])^A253026(n+2))`
-/

namespace A162453.P10565339928809137497
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007305 (SequenceMachineLib.roundAway ((2 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) : ℚ) ^ (A253026 (n + 2) : ℤ))).toNat

end

end A162453.P10565339928809137497

/-! ## A162453.P14967269097795765507

`A285573(A059268(n)*A257565(n))`
-/

namespace A162453.P14967269097795765507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285573 (A059268 n * A257565 n).toNat

end

end A162453.P14967269097795765507

/-! ## A162453.P8281670576759648261

`A285573(lcm(A059268(n), A257565(n)))`
-/

namespace A162453.P8281670576759648261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285573 (Int.lcm (A059268 n) (A257565 n))

end

end A162453.P8281670576759648261

/-! ## A162453.P14426536606198447922

`A172467(n+1)+A124764(A039755(n))`
-/

namespace A162453.P14426536606198447922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172467 (n + 1) + A124764 (A039755 n).toNat

end

end A162453.P14426536606198447922

/-!
# A162455: Primes of the form (n!)^2 + (n!) + 1.

The programs for A162455, there is no canonical definition to state claims against.
-/

/-! ## A162455.P1242045782414952968

`A002061(A000142(A051856(n+2))+1)`
-/

namespace A162455.P1242045782414952968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002061 (A000142 (A051856 (n + 2)).toNat + 1).toNat

end

end A162455.P1242045782414952968

/-!
# A162457: Numbers whose prime factors when sorted and stacked fill an equilateral triangle.

The programs for A162457, there is no canonical definition to state claims against.
-/

/-! ## A162457.P10154119236600392634

`eq[A000670(A001222(n+1)), A076649(n+1)]+1`
-/

namespace A162457.P10154119236600392634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000670 (A001222 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076649 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A162457.P10154119236600392634

/-! ## A162457.P494818741761702638

`eq[A006532(A001055(n+1)), A076649(n+1)]+1`
-/

namespace A162457.P494818741761702638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006532 (A001055 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076649 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A162457.P494818741761702638

/-! ## A162457.P9826310367326986260

`eq[A076649(A014683(3*(n+1))), A124316(n+1)]+1`
-/

namespace A162457.P9826310367326986260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076649 (A014683 (3 * (n + 1))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124316 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A162457.P9826310367326986260

/-! ## A162457.P14879374175006308415

`record[A007947(A335650(n+1))]`
-/

namespace A162457.P14879374175006308415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A335650 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A162457.P14879374175006308415

/-! ## A162457.P778556067401103033

`filter[A335650(n+1), A000190(#)]`
-/

namespace A162457.P778556067401103033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335650 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000190 (f1 j).toNat = 1) n)

end

end A162457.P778556067401103033

/-!
# A162459: A002321*A000079.

The programs for A162459, the canonical program `A162459.P12002494023824943082` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A162459 has offset 1).

The definition of A162459 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002321, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A162459.P12002494023824943082

`2^n*A002321(n+1)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A162459

/-- `2^n*A002321(n+1)` -/
def P12002494023824943082.Spec : Prop :=
  ∀ n, P12002494023824943082.a n = A162459 (n + 1)

theorem P12002494023824943082.correct : P12002494023824943082.Spec := by
  intro n
  simp only [A162459, Nat.add_sub_cancel]

end A162459

/-! ## A162459.P1539945372166516635

`2^n*∑[∏{e}[n+1, -floor(1/#)]]`
-/

namespace A162459.P1539945372166516635
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (-⌊1 / (Nat.factorization (f2 n) p : ℚ)⌋)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A162459.P1539945372166516635

namespace A162459

/-- `2^n*∑[∏{e}[n+1, -floor(1/#)]]` -/
def P1539945372166516635.Spec : Prop :=
  ∀ n, P1539945372166516635.a n = A162459 (n + 1)

end A162459

/-! ## A162459.P7524188792414864752

`2^n*∑[A008683(n+1)]`
-/

namespace A162459.P7524188792414864752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A162459.P7524188792414864752

namespace A162459

/-- `2^n*∑[A008683(n+1)]` -/
def P7524188792414864752.Spec : Prop :=
  ∀ n, P7524188792414864752.a n = A162459 (n + 1)

end A162459

/-! ## A162459.P7588901355673584917

`∑[∏{e}[n+1, -floor(1/#)]]*A000079(n)`
-/

namespace A162459.P7588901355673584917
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (-⌊1 / (Nat.factorization (f2 n) p : ℚ)⌋)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000079 n

end

end A162459.P7588901355673584917

namespace A162459

/-- `∑[∏{e}[n+1, -floor(1/#)]]*A000079(n)` -/
def P7588901355673584917.Spec : Prop :=
  ∀ n, P7588901355673584917.a n = A162459 (n + 1)

theorem P7588901355673584917.correct : P7588901355673584917.Spec := by
  intro n
  simp only [A162459, Nat.add_sub_cancel, A162459.P7588901355673584917.f2, A162459.P7588901355673584917.f1, A162459.P7588901355673584917.a, A162459.P12002494023824943082.a, A000079, A000079.P10855139691139572931.a, A002321, A002321.P7713085837087473323.f2, A002321.P7713085837087473323.f1, A002321.P7713085837087473323.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A162459

/-! ## A162459.P4231380513156372453

`A002321(n+1)*A186949(n)`
-/

namespace A162459.P4231380513156372453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002321 (n + 1) * A186949 n

end

end A162459.P4231380513156372453

namespace A162459

/-- `A002321(n+1)*A186949(n)` -/
def P4231380513156372453.Spec : Prop :=
  ∀ n, P4231380513156372453.a n = A162459 (n + 1)

end A162459

/-! ## A162459.P3764987910543751552

`∑[A008683(n+1)]*A000079(n)`
-/

namespace A162459.P3764987910543751552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000079 n

end

end A162459.P3764987910543751552

namespace A162459

/-- `∑[A008683(n+1)]*A000079(n)` -/
def P3764987910543751552.Spec : Prop :=
  ∀ n, P3764987910543751552.a n = A162459 (n + 1)

theorem P3764987910543751552.correct : P3764987910543751552.Spec := by
  intro n
  simp only [A162459, Nat.add_sub_cancel, A162459.P3764987910543751552.f1, A162459.P3764987910543751552.a, A162459.P12002494023824943082.a, A000079, A000079.P10855139691139572931.a, A002321, A002321.P7713085837087473323.f2, A002321.P7713085837087473323.f1, A002321.P7713085837087473323.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A162459

/-! ## A162459.P11778035998787624503

`∑[A008683(n+1)]*A186949(n)`
-/

namespace A162459.P11778035998787624503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A186949 n

end

end A162459.P11778035998787624503

namespace A162459

/-- `∑[A008683(n+1)]*A186949(n)` -/
def P11778035998787624503.Spec : Prop :=
  ∀ n, P11778035998787624503.a n = A162459 (n + 1)

end A162459

/-! ## A162459.P983368866514214989

`A002321(n+1)*A011782(n+1)`
-/

namespace A162459.P983368866514214989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002321 (n + 1) * A011782 (n + 1)

end

end A162459.P983368866514214989

namespace A162459

/-- `A002321(n+1)*A011782(n+1)` -/
def P983368866514214989.Spec : Prop :=
  ∀ n, P983368866514214989.a n = A162459 (n + 1)

end A162459

/-! ## A162459.P16408633939563739786

`A002321(n+1)*A166444(n+2)`
-/

namespace A162459.P16408633939563739786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002321 (n + 1) * A166444 (n + 2)

end

end A162459.P16408633939563739786

namespace A162459

/-- `A002321(n+1)*A166444(n+2)` -/
def P16408633939563739786.Spec : Prop :=
  ∀ n, P16408633939563739786.a n = A162459 (n + 1)

end A162459

/-! ## A162459.P15859061742742583964

`A002321(n+1)*A016116(2*n)`
-/

namespace A162459.P15859061742742583964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002321 (n + 1) * A016116 (2 * n)

end

end A162459.P15859061742742583964

namespace A162459

/-- `A002321(n+1)*A016116(2*n)` -/
def P15859061742742583964.Spec : Prop :=
  ∀ n, P15859061742742583964.a n = A162459 (n + 1)

end A162459

/-! ## A162459.P4281948124962176137

`∑[A008683(n+1)]*∑[A011782(n)]`
-/

namespace A162459.P4281948124962176137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A162459.P4281948124962176137

namespace A162459

/-- `∑[A008683(n+1)]*∑[A011782(n)]` -/
def P4281948124962176137.Spec : Prop :=
  ∀ n, P4281948124962176137.a n = A162459 (n + 1)

end A162459

/-! ## A162459.P17015963957513916887

`(1-∑[A157658(n+1)])*A000079(n)`
-/

namespace A162459.P17015963957513916887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157658 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - ∑ j ∈ Finset.range (n + 1), f1 j) * A000079 n

end

end A162459.P17015963957513916887

namespace A162459

/-- `(1-∑[A157658(n+1)])*A000079(n)` -/
def P17015963957513916887.Spec : Prop :=
  ∀ n, P17015963957513916887.a n = A162459 (n + 1)

end A162459

/-! ## A162459.P17634743654507743529

`A002321(n+1)*A117303(2*n+1)`
-/

namespace A162459.P17634743654507743529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002321 (n + 1) * A117303 (2 * n + 1)

end

end A162459.P17634743654507743529

namespace A162459

/-- `A002321(n+1)*A117303(2*n+1)` -/
def P17634743654507743529.Spec : Prop :=
  ∀ n, P17634743654507743529.a n = A162459 (n + 1)

end A162459

/-! ## A162459.P2960442204795705460

`A002321(n+1)+A000225(n)*A002321(n+1)`
-/

namespace A162459.P2960442204795705460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002321 (n + 1) + A000225 n * A002321 (n + 1)

end

end A162459.P2960442204795705460

namespace A162459

/-- `A002321(n+1)+A000225(n)*A002321(n+1)` -/
def P2960442204795705460.Spec : Prop :=
  ∀ n, P2960442204795705460.a n = A162459 (n + 1)

theorem P2960442204795705460.correct : P2960442204795705460.Spec := by
  intro n
  simp only [A162459, Nat.add_sub_cancel, A162459.P2960442204795705460.a, A162459.P12002494023824943082.a, A000225, A000225.P6535533121115206393.a, A002321, A002321.P7713085837087473323.f2, A002321.P7713085837087473323.f1, A002321.P7713085837087473323.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A162459

/-! ## A162459.P6503316790684407361

`∑[A008683(n+1)]*Δ[A000051(n)]`
-/

namespace A162459.P6503316790684407361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (f2 (n + 1) - f2 n)

end

end A162459.P6503316790684407361

namespace A162459

/-- `∑[A008683(n+1)]*Δ[A000051(n)]` -/
def P6503316790684407361.Spec : Prop :=
  ∀ n, P6503316790684407361.a n = A162459 (n + 1)

theorem P6503316790684407361.correct : P6503316790684407361.Spec := by
  intro n
  simp only [A162459, Nat.add_sub_cancel, A162459.P6503316790684407361.f1, A162459.P6503316790684407361.f2, A162459.P6503316790684407361.a, A162459.P12002494023824943082.a, A000051, A000051.P14067217022188782580.a, A002321, A002321.P7713085837087473323.f2, A002321.P7713085837087473323.f1, A002321.P7713085837087473323.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A162459

/-! ## A162459.P13458636731548630621

`∑[A008683(n+1)]*Δ[A000225(n)]`
-/

namespace A162459.P13458636731548630621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (f2 (n + 1) - f2 n)

end

end A162459.P13458636731548630621

namespace A162459

/-- `∑[A008683(n+1)]*Δ[A000225(n)]` -/
def P13458636731548630621.Spec : Prop :=
  ∀ n, P13458636731548630621.a n = A162459 (n + 1)

theorem P13458636731548630621.correct : P13458636731548630621.Spec := by
  intro n
  simp only [A162459, Nat.add_sub_cancel, A162459.P13458636731548630621.f1, A162459.P13458636731548630621.f2, A162459.P13458636731548630621.a, A162459.P12002494023824943082.a, A000225, A000225.P6535533121115206393.a, A002321, A002321.P7713085837087473323.f2, A002321.P7713085837087473323.f1, A002321.P7713085837087473323.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A162459

/-! ## A162459.P5091075571078351363

`∑[A008683(n+1)]*A078840(∑[n])`
-/

namespace A162459.P5091075571078351363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A078840 (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A162459.P5091075571078351363

namespace A162459

/-- `∑[A008683(n+1)]*A078840(∑[n])` -/
def P5091075571078351363.Spec : Prop :=
  ∀ n, P5091075571078351363.a n = A162459 (n + 1)

end A162459

/-! ## A162459.P10672256122546977368

`∑[A008683(n+1)]*A055248(∑[n])`
-/

namespace A162459.P10672256122546977368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A055248 (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A162459.P10672256122546977368

namespace A162459

/-- `∑[A008683(n+1)]*A055248(∑[n])` -/
def P10672256122546977368.Spec : Prop :=
  ∀ n, P10672256122546977368.a n = A162459 (n + 1)

end A162459

/-! ## A162459.P8105369463397466548

`∑[A008683(n+1)]*A130321(∑[n])`
-/

namespace A162459.P8105369463397466548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A130321 (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A162459.P8105369463397466548

namespace A162459

/-- `∑[A008683(n+1)]*A130321(∑[n])` -/
def P8105369463397466548.Spec : Prop :=
  ∀ n, P8105369463397466548.a n = A162459 (n + 1)

end A162459

/-! ## A162459.P9448981213828649497

`2^n*∑[A307445((n+1)²)]`
-/

namespace A162459.P9448981213828649497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307445 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A162459.P9448981213828649497

namespace A162459

/-- `2^n*∑[A307445((n+1)²)]` -/
def P9448981213828649497.Spec : Prop :=
  ∀ n, P9448981213828649497.a n = A162459 (n + 1)

end A162459

/-!
# A162460: First differences of A161762.

The programs for A162460, the canonical program `A162460.P10000288728209566238` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A162460 has offset 1).

The definition of A162460 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A162460.P7518732950594329257

`ogf((2x-4x^2-x^3+x^4)/(1-3x-x^2+5x^3+x^4-x^5))`
-/

namespace A162460.P7518732950594329257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, -4, -1, 1] [1, -3, -1, 5, 1, -1] n

end

end A162460.P7518732950594329257

namespace A162460

/-- `ogf((2x-4x^2-x^3+x^4)/(1-3x-x^2+5x^3+x^4-x^5))` -/
def P7518732950594329257.Spec : Prop :=
  ∀ n, P7518732950594329257.a n = A162460 (n + 1)

end A162460

/-! ## A162460.P10000288728209566238

`3*a(n-1)+a(n-2)-5*a(n-3)-a(n-4)+a(n-5)` with `a(0)=0, a(1)=2, a(2)=2, a(3)=7, a(4)=14`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A162460

/-- `3*a(n-1)+a(n-2)-5*a(n-3)-a(n-4)+a(n-5)` -/
def P10000288728209566238.Spec : Prop :=
  ∀ n, P10000288728209566238.a n = A162460 (n + 1)

theorem P10000288728209566238.correct : P10000288728209566238.Spec := by
  intro n
  simp only [A162460, Nat.add_sub_cancel]

end A162460

/-! ## A162460.P3018407896131917498

`A161762(n+2)-A161762(n+1)`
-/

namespace A162460.P3018407896131917498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161762 (n + 2) - A161762 (n + 1)

end

end A162460.P3018407896131917498

namespace A162460

/-- `A161762(n+2)-A161762(n+1)` -/
def P3018407896131917498.Spec : Prop :=
  ∀ n, P3018407896131917498.a n = A162460 (n + 1)

end A162460

/-! ## A162460.P9459650556909127178

`Δ[A161762(n+1)]`
-/

namespace A162460.P9459650556909127178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161762 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A162460.P9459650556909127178

namespace A162460

/-- `Δ[A161762(n+1)]` -/
def P9459650556909127178.Spec : Prop :=
  ∀ n, P9459650556909127178.a n = A162460 (n + 1)

end A162460

/-! ## A162460.P17829047024878684971

`A005207(n+1)-a(n-1)` with `a(0)=0`
-/

namespace A162460.P17829047024878684971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A005207 (n + 1) - a (n - 1)

end

end A162460.P17829047024878684971

namespace A162460

/-- `A005207(n+1)-a(n-1)` -/
def P17829047024878684971.Spec : Prop :=
  ∀ n, P17829047024878684971.a n = A162460 (n + 1)

end A162460

/-! ## A162460.P5610736039843164290

`A001224(2*n)-a(n-1)` with `a(0)=0`
-/

namespace A162460.P5610736039843164290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A001224 (2 * n) - a (n - 1)

end

end A162460.P5610736039843164290

namespace A162460

/-- `A001224(2*n)-a(n-1)` -/
def P5610736039843164290.Spec : Prop :=
  ∀ n, P5610736039843164290.a n = A162460 (n + 1)

end A162460

/-! ## A162460.P2171202953127214167

`Δ[a(n-1)+a(n-2)+A000045(n-1)²]` with `a(0)=1, a(1)=1`
-/

namespace A162460.P2171202953127214167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 (n - 1) + (f1 (n - 2) + A000045 (n - 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A162460.P2171202953127214167

namespace A162460

/-- `Δ[a(n-1)+a(n-2)+A000045(n-1)²]` -/
def P2171202953127214167.Spec : Prop :=
  ∀ n, P2171202953127214167.a n = A162460 (n + 1)

end A162460

/-! ## A162460.P688895003142335959

`A175395(n)-A056014(n)`
-/

namespace A162460.P688895003142335959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175395 n - A056014 n

end

end A162460.P688895003142335959

namespace A162460

/-- `A175395(n)-A056014(n)` -/
def P688895003142335959.Spec : Prop :=
  ∀ n, P688895003142335959.a n = A162460 (n + 1)

end A162460

/-! ## A162460.P1489315622218330324

`A229912(n)-A059512(n)`
-/

namespace A162460.P1489315622218330324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229912 n - A059512 n

end

end A162460.P1489315622218330324

namespace A162460

/-- `A229912(n)-A059512(n)` -/
def P1489315622218330324.Spec : Prop :=
  ∀ n, P1489315622218330324.a n = A162460 (n + 1)

end A162460

/-! ## A162460.P12207152998083569621

`A033192(n+1)-A033999(n)`
-/

namespace A162460.P12207152998083569621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033192 (n + 1) - A033999 n

end

end A162460.P12207152998083569621

namespace A162460

/-- `A033192(n+1)-A033999(n)` -/
def P12207152998083569621.Spec : Prop :=
  ∀ n, P12207152998083569621.a n = A162460 (n + 1)

end A162460

/-! ## A162460.P40558399274815161

`2*A007598(n)-A056014(n)`
-/

namespace A162460.P40558399274815161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007598 n - A056014 n

end

end A162460.P40558399274815161

namespace A162460

/-- `2*A007598(n)-A056014(n)` -/
def P40558399274815161.Spec : Prop :=
  ∀ n, P40558399274815161.a n = A162460 (n + 1)

end A162460

/-! ## A162460.P8075282297084397775

`Δ[∑[A033192(n)]-A000034(n)]`
-/

namespace A162460.P8075282297084397775
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033192 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A000034 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A162460.P8075282297084397775

namespace A162460

/-- `Δ[∑[A033192(n)]-A000034(n)]` -/
def P8075282297084397775.Spec : Prop :=
  ∀ n, P8075282297084397775.a n = A162460 (n + 1)

end A162460

/-! ## A162460.P15197306491731626130

`2*A000045(n)²-A056014(n)`
-/

namespace A162460.P15197306491731626130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000045 n ^ 2 - A056014 n

end

end A162460.P15197306491731626130

namespace A162460

/-- `2*A000045(n)²-A056014(n)` -/
def P15197306491731626130.Spec : Prop :=
  ∀ n, P15197306491731626130.a n = A162460 (n + 1)

end A162460

/-! ## A162460.P222004359036278535

`A033999(n+1)+A033192(n+1)`
-/

namespace A162460.P222004359036278535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (n + 1) + A033192 (n + 1)

end

end A162460.P222004359036278535

namespace A162460

/-- `A033999(n+1)+A033192(n+1)` -/
def P222004359036278535.Spec : Prop :=
  ∀ n, P222004359036278535.a n = A162460 (n + 1)

end A162460

/-! ## A162460.P10844840137770456898

`A033192(n+1)+A033192(n)-a(n-1)` with `a(0)=0`
-/

namespace A162460.P10844840137770456898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A033192 (n + 1) + A033192 n - a (n - 1)

end

end A162460.P10844840137770456898

namespace A162460

/-- `A033192(n+1)+A033192(n)-a(n-1)` -/
def P10844840137770456898.Spec : Prop :=
  ∀ n, P10844840137770456898.a n = A162460 (n + 1)

end A162460

/-! ## A162460.P10508535234243994244

`Δ[A000045(n)+Δ[A033192(n)]]`
-/

namespace A162460.P10508535234243994244
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033192 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A162460.P10508535234243994244

namespace A162460

/-- `Δ[A000045(n)+Δ[A033192(n)]]` -/
def P10508535234243994244.Spec : Prop :=
  ∀ n, P10508535234243994244.a n = A162460 (n + 1)

end A162460

/-! ## A162460.P12945921164274176862

`A000045(n)+Δ[Δ[A191797(n)]]`
-/

namespace A162460.P12945921164274176862
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191797 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + (f1 (n + 1) - f1 n)

end

end A162460.P12945921164274176862

namespace A162460

/-- `A000045(n)+Δ[Δ[A191797(n)]]` -/
def P12945921164274176862.Spec : Prop :=
  ∀ n, P12945921164274176862.a n = A162460 (n + 1)

end A162460

/-! ## A162460.P2583204332205268821

`A121646(n+1)+A051450(n+1)`
-/

namespace A162460.P2583204332205268821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121646 (n + 1) + A051450 (n + 1)

end

end A162460.P2583204332205268821

namespace A162460

/-- `A121646(n+1)+A051450(n+1)` -/
def P2583204332205268821.Spec : Prop :=
  ∀ n, P2583204332205268821.a n = A162460 (n + 1)

end A162460

/-! ## A162460.P8840380451239655512

`A051450(n+1)-A226205(n+1)`
-/

namespace A162460.P8840380451239655512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051450 (n + 1) - A226205 (n + 1)

end

end A162460.P8840380451239655512

namespace A162460

/-- `A051450(n+1)-A226205(n+1)` -/
def P8840380451239655512.Spec : Prop :=
  ∀ n, P8840380451239655512.a n = A162460 (n + 1)

end A162460

/-! ## A162460.P16100927281395474175

`Δ[A000071(n+1)+Δ[A191797(n)]]`
-/

namespace A162460.P16100927281395474175
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191797 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 1) + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A162460.P16100927281395474175

namespace A162460

/-- `Δ[A000071(n+1)+Δ[A191797(n)]]` -/
def P16100927281395474175.Spec : Prop :=
  ∀ n, P16100927281395474175.a n = A162460 (n + 1)

end A162460

/-!
# A162462: Sum of all numbers from n to sigma(n).

The programs for A162462, the canonical program `A162462.P8340308467305916758` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A162462 has offset 1).

The definition of A162462 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A162462.P8340308467305916758

`A000217(A000203(n+1))-A000217(n)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A162462

/-- `A000217(A000203(n+1))-A000217(n)` -/
def P8340308467305916758.Spec : Prop :=
  ∀ n, P8340308467305916758.a n = A162462 (n + 1)

theorem P8340308467305916758.correct : P8340308467305916758.Spec := by
  intro n
  simp only [A162462, Nat.add_sub_cancel]

end A162462

/-! ## A162462.P5111422769016364424

`∑{#}[A000203(n+1)-(n+1), #+n+1]`
-/

namespace A162462.P5111422769016364424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - (n + 1 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, (k + (n + 1))

end

end A162462.P5111422769016364424

namespace A162462

/-- `∑{#}[A000203(n+1)-(n+1), #+n+1]` -/
def P5111422769016364424.Spec : Prop :=
  ∀ n, (P5111422769016364424.a n : ℤ) = A162462 (n + 1)

end A162462

/-! ## A162462.P2751360490380167174

`C(∑{d}[n+1, #]+1, 2)-∑[n]`
-/

namespace A162462.P2751360490380167174
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (∑ d ∈ Nat.divisors (f1 n), d + 1) 2 : ℤ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A162462.P2751360490380167174

namespace A162462

/-- `C(∑{d}[n+1, #]+1, 2)-∑[n]` -/
def P2751360490380167174.Spec : Prop :=
  ∀ n, P2751360490380167174.a n = A162462 (n + 1)

end A162462

/-! ## A162462.P3137715859910249484

`C(∑{d}[n+1, #]+1, 2)-C(n, 2)-n`
-/

namespace A162462.P3137715859910249484
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (∑ d ∈ Nat.divisors (f1 n), d + 1) 2 : ℤ) - (Nat.choose n 2 : ℤ) - (n : ℤ)

end

end A162462.P3137715859910249484

namespace A162462

/-- `C(∑{d}[n+1, #]+1, 2)-C(n, 2)-n` -/
def P3137715859910249484.Spec : Prop :=
  ∀ n, P3137715859910249484.a n = A162462 (n + 1)

end A162462

/-! ## A162462.P6791431549929336940

`A184387(n+1)-∑[n]`
-/

namespace A162462.P6791431549929336940
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184387 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A162462.P6791431549929336940

namespace A162462

/-- `A184387(n+1)-∑[n]` -/
def P6791431549929336940.Spec : Prop :=
  ∀ n, P6791431549929336940.a n = A162462 (n + 1)

end A162462

/-! ## A162462.P9149435589147432497

`C(A088580(n+1), 2)-∑[n]`
-/

namespace A162462.P9149435589147432497
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A088580 (n + 1)).toNat 2 : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A162462.P9149435589147432497

namespace A162462

/-- `C(A088580(n+1), 2)-∑[n]` -/
def P9149435589147432497.Spec : Prop :=
  ∀ n, P9149435589147432497.a n = A162462 (n + 1)

end A162462

/-! ## A162462.P1731210291052069608

`floor(A258774(n+1)/2-∑[n])`
-/

namespace A162462.P1731210291052069608
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A258774 (n + 1) : ℚ) / 2 - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)⌋

end

end A162462.P1731210291052069608

namespace A162462

/-- `floor(A258774(n+1)/2-∑[n])` -/
def P1731210291052069608.Spec : Prop :=
  ∀ n, P1731210291052069608.a n = A162462 (n + 1)

end A162462

/-! ## A162462.P17184929725858815298

`A000217(∑{d}[n+1, #])-∑[n]`
-/

namespace A162462.P17184929725858815298
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (∑ d ∈ Nat.divisors (f1 n), d) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A162462.P17184929725858815298

namespace A162462

/-- `A000217(∑{d}[n+1, #])-∑[n]` -/
def P17184929725858815298.Spec : Prop :=
  ∀ n, P17184929725858815298.a n = A162462 (n + 1)

end A162462

/-! ## A162462.P9340106673511931016

`A000217(∑[A340793(n+1)])-A000217(n)`
-/

namespace A162462.P9340106673511931016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340793 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - A000217 n

end

end A162462.P9340106673511931016

namespace A162462

/-- `A000217(∑[A340793(n+1)])-A000217(n)` -/
def P9340106673511931016.Spec : Prop :=
  ∀ n, P9340106673511931016.a n = A162462 (n + 1)

end A162462

/-! ## A162462.P6694365683370398397

`A000124(∑{d}[n+1, #])-(∑[n]+1)`
-/

namespace A162462.P6694365683370398397
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (∑ d ∈ Nat.divisors (f1 n), d) - ((∑ j ∈ Finset.range (n + 1), f2 j + 1 : ℕ) : ℤ)

end

end A162462.P6694365683370398397

namespace A162462

/-- `A000124(∑{d}[n+1, #])-(∑[n]+1)` -/
def P6694365683370398397.Spec : Prop :=
  ∀ n, P6694365683370398397.a n = A162462 (n + 1)

end A162462

/-! ## A162462.P9765788536549765253

`A000124(A000203(n+1))-A000124(n)`
-/

namespace A162462.P9765788536549765253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (A000203 (n + 1)).toNat - A000124 n

end

end A162462.P9765788536549765253

namespace A162462

/-- `A000124(A000203(n+1))-A000124(n)` -/
def P9765788536549765253.Spec : Prop :=
  ∀ n, P9765788536549765253.a n = A162462 (n + 1)

end A162462

/-! ## A162462.P8295185836833354905

`∑{#}[∑{d}[n+1, #], #]-∑[n]`
-/

namespace A162462.P8295185836833354905
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), d

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ k ∈ Finset.range (f1 n + 1), k : ℕ) : ℤ) - ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ)

end

end A162462.P8295185836833354905

namespace A162462

/-- `∑{#}[∑{d}[n+1, #], #]-∑[n]` -/
def P8295185836833354905.Spec : Prop :=
  ∀ n, P8295185836833354905.a n = A162462 (n + 1)

end A162462

/-! ## A162462.P8990711764182324289

`abs(∑{#}[∑{d}[n+1, #], #]-C(n+1, 2))`
-/

namespace A162462.P8990711764182324289
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((∑ k ∈ Finset.range (f1 n + 1), k : ℕ) : ℤ) - (Nat.choose (n + 1) 2 : ℤ)|

end

end A162462.P8990711764182324289

namespace A162462

/-- `abs(∑{#}[∑{d}[n+1, #], #]-C(n+1, 2))` -/
def P8990711764182324289.Spec : Prop :=
  ∀ n, P8990711764182324289.a n = A162462 (n + 1)

end A162462

/-!
# A162464: Numbers n which are concatenations n=x//y such that x^2+y^3 is a multiple of n.

The programs for A162464, there is no canonical definition to state claims against.
-/

/-! ## A162464.P6289172810757437213

`A250120(eq[2, A198197(n+2)])`
-/

namespace A162464.P6289172810757437213
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198197 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A162464.P6289172810757437213

/-!
# A162465: Numbers k = x//y which are a concatenation of x and y such that x^3 + y^3 is a multiple of k.

The programs for A162465, there is no canonical definition to state claims against.
-/

/-! ## A162465.P10566074339463944363

`A260747(A029727(n+1))+A000700(n)`
-/

namespace A162465.P10566074339463944363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260747 (A029727 (n + 1)).toNat + A000700 n

end

end A162465.P10566074339463944363

/-!
# A162466: a(n) = 12*a(n-2) for n > 2; a(1) = 1, a(2) = 8.

The programs for A162466, the canonical program `A162466.P7582877315409122985` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A162466 has offset 1).

The definition of A162466 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `12*a(n-2)` (program `A162466.P7582877315409122985`, by `A162466.P7582877315409122985.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A162466.P4688966963489015020

`ogf((1+8x)/(1-12x^2))`
-/

namespace A162466.P4688966963489015020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 8] [1, 0, -12] n

end

end A162466.P4688966963489015020

namespace A162466

/-- `ogf((1+8x)/(1-12x^2))` -/
def P4688966963489015020.Spec : Prop :=
  ∀ n, P4688966963489015020.a n = A162466 (n + 1)

end A162466

/-! ## A162466.P7582877315409122985

`12*a(n-2)` with `a(0)=1, a(1)=8`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A162466

/-- `12*a(n-2)` -/
def P7582877315409122985.Spec : Prop :=
  ∀ n, (P7582877315409122985.a n : ℤ) = A162466 (n + 1)

theorem P7582877315409122985.correct : P7582877315409122985.Spec := by
  intro n
  simp only [A162466, Nat.add_sub_cancel]

end A162466

/-! ## A162466.P17824297209684658304

`2^n*A074324(n+1)`
-/

namespace A162466.P17824297209684658304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A074324 (n + 1)

end

end A162466.P17824297209684658304

namespace A162466

/-- `2^n*A074324(n+1)` -/
def P17824297209684658304.Spec : Prop :=
  ∀ n, P17824297209684658304.a n = A162466 (n + 1)

end A162466

/-! ## A162466.P4704295798014702504

`∏[12/a(n-1)]` with `a(0)=1, a(1)=8`
-/

namespace A162466.P4704295798014702504
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 8] fun n f1 =>
  12 / f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A162466.P4704295798014702504

namespace A162466

/-- `∏[12/a(n-1)]` -/
def P4704295798014702504.Spec : Prop :=
  ∀ n, P4704295798014702504.a n = (A162466 (n + 1) : ℚ)

end A162466

/-! ## A162466.P6617203173427902851

`a(n-2)/(1/3-1/4)` with `a(0)=1, a(1)=8`
-/

namespace A162466.P6617203173427902851
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 8] fun n a =>
  a (n - 2) / ((1 : ℚ) / 3 - (1 : ℚ) / 4)

end

end A162466.P6617203173427902851

namespace A162466

/-- `a(n-2)/(1/3-1/4)` -/
def P6617203173427902851.Spec : Prop :=
  ∀ n, P6617203173427902851.a n = (A162466 (n + 1) : ℚ)

end A162466

/-! ## A162466.P8849903139853283372

`2^n*A166552(n+1)`
-/

namespace A162466.P8849903139853283372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A166552 (n + 1)

end

end A162466.P8849903139853283372

namespace A162466

/-- `2^n*A166552(n+1)` -/
def P8849903139853283372.Spec : Prop :=
  ∀ n, P8849903139853283372.a n = A162466 (n + 1)

end A162466

/-! ## A162466.P10858418991057325604

`gcd(2, n+1)²*A176710(n)`
-/

namespace A162466.P10858418991057325604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 (n + 1) ^ 2 : ℤ) * A176710 n

end

end A162466.P10858418991057325604

namespace A162466

/-- `gcd(2, n+1)²*A176710(n)` -/
def P10858418991057325604.Spec : Prop :=
  ∀ n, P10858418991057325604.a n = A162466 (n + 1)

end A162466

/-! ## A162466.P6370495837789776978

`A038754(n)*A056450(n)`
-/

namespace A162466.P6370495837789776978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038754 n * A056450 n

end

end A162466.P6370495837789776978

namespace A162466

/-- `A038754(n)*A056450(n)` -/
def P6370495837789776978.Spec : Prop :=
  ∀ n, P6370495837789776978.a n = A162466 (n + 1)

end A162466

/-! ## A162466.P11846760691150666555

`A026549(n)*A143095(n)`
-/

namespace A162466.P11846760691150666555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026549 n * A143095 n

end

end A162466.P11846760691150666555

namespace A162466

/-- `A026549(n)*A143095(n)` -/
def P11846760691150666555.Spec : Prop :=
  ∀ n, P11846760691150666555.a n = A162466 (n + 1)

end A162466

/-! ## A162466.P792614774963494013

`A010685(n)*A176710(n)`
-/

namespace A162466.P792614774963494013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010685 n * A176710 n

end

end A162466.P792614774963494013

namespace A162466

/-- `A010685(n)*A176710(n)` -/
def P792614774963494013.Spec : Prop :=
  ∀ n, P792614774963494013.a n = A162466 (n + 1)

end A162466

/-! ## A162466.P12463835052851519262

`A000034(n)*A282023(n)`
-/

namespace A162466.P12463835052851519262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A282023 n

end

end A162466.P12463835052851519262

namespace A162466

/-- `A000034(n)*A282023(n)` -/
def P12463835052851519262.Spec : Prop :=
  ∀ n, P12463835052851519262.a n = A162466 (n + 1)

end A162466

/-! ## A162466.P381864843041447312

`A060546(n)²*A038754(n)`
-/

namespace A162466.P381864843041447312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060546 n ^ 2 * A038754 n

end

end A162466.P381864843041447312

namespace A162466

/-- `A060546(n)²*A038754(n)` -/
def P381864843041447312.Spec : Prop :=
  ∀ n, P381864843041447312.a n = A162466 (n + 1)

end A162466

/-! ## A162466.P15674276222999090104

`A135530(n+1)*A026549(n)`
-/

namespace A162466.P15674276222999090104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135530 (n + 1) * A026549 n

end

end A162466.P15674276222999090104

namespace A162466

/-- `A135530(n+1)*A026549(n)` -/
def P15674276222999090104.Spec : Prop :=
  ∀ n, P15674276222999090104.a n = A162466 (n + 1)

end A162466

/-! ## A162466.P5819250449433783903

`A060546(n)*A164532(n+1)`
-/

namespace A162466.P5819250449433783903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060546 n * A164532 (n + 1)

end

end A162466.P5819250449433783903

namespace A162466

/-- `A060546(n)*A164532(n+1)` -/
def P5819250449433783903.Spec : Prop :=
  ∀ n, P5819250449433783903.a n = A162466 (n + 1)

end A162466

/-! ## A162466.P16828612264185351510

`Δ[A027383(n)]²*A038754(n)`
-/

namespace A162466.P16828612264185351510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027383 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2 * A038754 n

end

end A162466.P16828612264185351510

namespace A162466

/-- `Δ[A027383(n)]²*A038754(n)` -/
def P16828612264185351510.Spec : Prop :=
  ∀ n, P16828612264185351510.a n = A162466 (n + 1)

end A162466

/-! ## A162466.P13267674832767325045

`∏[A000034(n)²]*A038754(n)`
-/

namespace A162466.P13267674832767325045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A038754 n

end

end A162466.P13267674832767325045

namespace A162466

/-- `∏[A000034(n)²]*A038754(n)` -/
def P13267674832767325045.Spec : Prop :=
  ∀ n, P13267674832767325045.a n = A162466 (n + 1)

end A162466

/-! ## A162466.P4656092019852766789

`A016116(n+1)²*A038754(n)`
-/

namespace A162466.P4656092019852766789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (n + 1) ^ 2 * A038754 n

end

end A162466.P4656092019852766789

namespace A162466

/-- `A016116(n+1)²*A038754(n)` -/
def P4656092019852766789.Spec : Prop :=
  ∀ n, P4656092019852766789.a n = A162466 (n + 1)

end A162466

/-! ## A162466.P13574097824003518412

`A182522(n+1)*A213173(n+1)`
-/

namespace A162466.P13574097824003518412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182522 (n + 1) * A213173 (n + 1)

end

end A162466.P13574097824003518412

namespace A162466

/-- `A182522(n+1)*A213173(n+1)` -/
def P13574097824003518412.Spec : Prop :=
  ∀ n, P13574097824003518412.a n = A162466 (n + 1)

end A162466

/-! ## A162466.P1177158489732511072

`A016116(n+1)²*A182522(n+1)`
-/

namespace A162466.P1177158489732511072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (n + 1) ^ 2 * A182522 (n + 1)

end

end A162466.P1177158489732511072

namespace A162466

/-- `A016116(n+1)²*A182522(n+1)` -/
def P1177158489732511072.Spec : Prop :=
  ∀ n, P1177158489732511072.a n = A162466 (n + 1)

end A162466

/-!
# A162467: Numbers k such that the sum of all proper substrings of their decimal representation equals the reverse of k.

The programs for A162467, there is no canonical definition to state claims against.
-/

/-! ## A162467.P4108966108125558763

`A261423(n)^A212389(n)!*A124367(A212389(n))`
-/

namespace A162467.P4108966108125558763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261423 n ^ Nat.factorial (A212389 n).toNat * A124367 (A212389 n).toNat

end

end A162467.P4108966108125558763

/-!
# A162468: Integers n such that A000009(n) (the number of partitions of n into distinct parts) == 1 (mod n).

The programs for A162468, there is no canonical definition to state claims against.
-/

/-! ## A162468.P7688947310906958031

`eq[1, A333147(n)%A004277(n)]`
-/

namespace A162468.P7688947310906958031
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A333147 n) (A004277 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A162468.P7688947310906958031

/-! ## A162468.P216414823337377030

`eq[n, A028310(gcd(n, A111133(n)))]`
-/

namespace A162468.P216414823337377030
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (Int.gcd (n : ℤ) (A111133 n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A162468.P216414823337377030

/-! ## A162468.P10175027947133778024

`eq[1, A000009(n)%A060000(n+1)]`
-/

namespace A162468.P10175027947133778024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000009 n) (A060000 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A162468.P10175027947133778024

/-!
# A162469: Number of reduced words of length n in the Weyl group D_49.

The programs for A162469, there is no canonical definition to state claims against.
-/

/-! ## A162469.P6170357716803976552

`∑[A162461(n)%A098724(2*n+9)]`
-/

namespace A162469.P6170357716803976552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A162461 n) (A098724 (2 * n + 9))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162469.P6170357716803976552

/-!
# A162471: Prime divisors of {n^2+n+1} which do not occur in A002383.

The programs for A162471, there is no canonical definition to state claims against.
-/

/-! ## A162471.P15953666726348071312

`p?[∑[6-Δ[A010815(n)]]]`
-/

namespace A162471.P15953666726348071312
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 - (f3 (n + 1) - f3 n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A162471.P15953666726348071312

/-! ## A162471.P4171354230616021496

`p?[∑[6-Δ[A121373(n)]]]`
-/

namespace A162471.P4171354230616021496
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121373 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 - (f3 (n + 1) - f3 n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A162471.P4171354230616021496

/-! ## A162471.P17566203127790803907

`p?[A007706(n)²+6*n]`
-/

namespace A162471.P17566203127790803907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007706 n ^ 2 + (6 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A162471.P17566203127790803907

/-! ## A162471.P18387923090154722065

`p?[3*n+1-A089806(n)]`
-/

namespace A162471.P18387923090154722065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n + 1 : ℤ) - A089806 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A162471.P18387923090154722065

/-! ## A162471.P13223219253317132334

`p?[3*n+1-A274719(n)]`
-/

namespace A162471.P13223219253317132334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n + 1 : ℤ) - A274719 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A162471.P13223219253317132334

/-! ## A162471.P13877898977663197024

`filter[A002476(n+1), A267773(#)]`
-/

namespace A162471.P13877898977663197024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267773 (f1 j).toNat = 1) n)

end

end A162471.P13877898977663197024

/-! ## A162471.P5343494033858135237

`filter[A007645(n+1), A267773(#)]`
-/

namespace A162471.P5343494033858135237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267773 (f1 j).toNat = 1) n)

end

end A162471.P5343494033858135237

/-! ## A162471.P1432275283898135570

`filter[A045331(n+2), A267773(#)]`
-/

namespace A162471.P1432275283898135570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045331 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267773 (f1 j).toNat = 1) n)

end

end A162471.P1432275283898135570

/-! ## A162471.P6842885531183905214

`filter[A045375(n+2), A267773(#)]`
-/

namespace A162471.P6842885531183905214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045375 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267773 (f1 j).toNat = 1) n)

end

end A162471.P6842885531183905214

/-! ## A162471.P10763328638212924342

`filter[A123365(n+2), A267773(#)]`
-/

namespace A162471.P10763328638212924342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123365 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267773 (f1 j).toNat = 1) n)

end

end A162471.P10763328638212924342

/-!
# A162472: Rewrite n in binary with each digit occurring n times (see example). a(n) is the decimal equivalent.

The programs for A162472, there is no canonical definition to state claims against.
-/

/-! ## A162472.P7878589856013487191

`record[A115872(∑[A001159(n+1)])]`
-/

namespace A162472.P7878589856013487191
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001159 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115872 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A162472.P7878589856013487191

/-!
# A162473: Write n in binary n times and concatenate (see example). a(n) is the decimal equivalent.

The programs for A162473, the canonical program `A162473.P16076520480502830895` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A162473 has offset 1).

The definition of A162473 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A162473.P16076520480502830895

`(n+1)*(2^(A070939(n+1)*(n+1))-1)/(2^A070939(n+1)-1)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A162473

/-- `(n+1)*(2^(A070939(n+1)*(n+1))-1)/(2^A070939(n+1)-1)` -/
def P16076520480502830895.Spec : Prop :=
  ∀ n, P16076520480502830895.a n = (A162473 (n + 1) : ℚ)

end A162473

/-!
# A162474: Let b(n,p(k)) be the exponent raising the k-th prime in the prime-factorization of n. (b(n,p(k)) may equal 0.) Write each b down in order and in binary (and exponent of zero is written as '0') with b(n,2) on the right and b(n,P) on the left, where P is the largest prime dividing n. Concatenate to form one binary number. a(n) is the decimal equivalent.

The programs for A162474, there is no canonical definition to state claims against.
-/

/-! ## A162474.P8901326610049713773

`A048675(n+1)+A014082(A130599(n))`
-/

namespace A162474.P8901326610049713773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048675 (n + 1) + A014082 (A130599 n).toNat

end

end A162474.P8901326610049713773

/-! ## A162474.P5810629819961668690

`A048675(n+1)+A048105(A325545(n))`
-/

namespace A162474.P5810629819961668690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048675 (n + 1) + A048105 (A325545 n).toNat

end

end A162474.P5810629819961668690

/-! ## A162474.P6072824839660436718

`A348326(A089170(n))+A048675(n+1)`
-/

namespace A162474.P6072824839660436718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348326 (A089170 n).toNat + A048675 (n + 1)

end

end A162474.P6072824839660436718

/-! ## A162474.P10402999175569379024

`C(A048675(n+1), A071625(A291660(n)))`
-/

namespace A162474.P10402999175569379024
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A048675 (n + 1)).toNat (A071625 (A291660 n).toNat).toNat

end

end A162474.P10402999175569379024

/-! ## A162474.P14035955398214015099

`C(A048675(n+1), A336137(A098743(n)))`
-/

namespace A162474.P14035955398214015099
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A048675 (n + 1)).toNat (A336137 (A098743 n).toNat).toNat

end

end A162474.P14035955398214015099

/-!
# A162475: Expansion of c(x/(1-x)^4), c(x) the g.f. of A000108.

The programs for A162475, there is no canonical definition to state claims against.
-/

/-! ## A162475.P6436701293758541476

`A109497(A034494(n))-A000129(n)`
-/

namespace A162475.P6436701293758541476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109497 (A034494 n).toNat - A000129 n

end

end A162475.P6436701293758541476

/-! ## A162475.P10668764729700533233

`or(A116939(n), A185676(A001105(n)))`
-/

namespace A162475.P10668764729700533233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A116939 n) (A185676 (A001105 n).toNat)

end

end A162475.P10668764729700533233

/-!
# A162476: Expansion of (1/(1-x))*c(x/(1-x)^4), c(x) the g.f. of A000108.

The programs for A162476, the canonical program `A162476.P4078253600115411418` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A162476 has offset 0).

The definition of A162476 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A162476.P4604503464754195649

`∑[A162475(n)]`
-/

namespace A162476.P4604503464754195649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162475 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162476.P4604503464754195649

namespace A162476

/-- `∑[A162475(n)]` -/
def P4604503464754195649.Spec : Prop :=
  ∀ n, P4604503464754195649.a n = A162476 n

end A162476

/-! ## A162476.P4078253600115411418

`∑{#}[n, C(n, #)*A360076(#)]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A162476

/-- `∑{#}[n, C(n, #)*A360076(#)]` -/
def P4078253600115411418.Spec : Prop :=
  ∀ n, P4078253600115411418.a n = A162476 n

theorem P4078253600115411418.correct : P4078253600115411418.Spec := by
  intro n
  simp only [A162476]

end A162476

/-! ## A162476.P12493916309818286252

`A162475(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A162476.P12493916309818286252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A162475 n + a (A023443 n).toNat

end

end A162476.P12493916309818286252

namespace A162476

/-- `A162475(n)+a(A023443(n))` -/
def P12493916309818286252.Spec : Prop :=
  ∀ n, P12493916309818286252.a n = A162476 n

end A162476

/-! ## A162476.P12680354145776395174

`A162475(n)+a(A000027(n+3)-4)` with `a(0)=1`
-/

namespace A162476.P12680354145776395174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A162475 n + a (A000027 (n + 3) - 4).toNat

end

end A162476.P12680354145776395174

namespace A162476

/-- `A162475(n)+a(A000027(n+3)-4)` -/
def P12680354145776395174.Spec : Prop :=
  ∀ n, P12680354145776395174.a n = A162476 n

end A162476

/-! ## A162476.P12216541279796027898

`Δ[A162477(n)]-A162475(n+1)`
-/

namespace A162476.P12216541279796027898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162477 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A162475 (n + 1)

end

end A162476.P12216541279796027898

namespace A162476

/-- `Δ[A162477(n)]-A162475(n+1)` -/
def P12216541279796027898.Spec : Prop :=
  ∀ n, P12216541279796027898.a n = A162476 n

end A162476

/-! ## A162476.P12528552643041738163

`Δ[A162477(n)-A162475(n)]-A162475(n)`
-/

namespace A162476.P12528552643041738163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162477 n - A162475 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A162475 n

end

end A162476.P12528552643041738163

namespace A162476

/-- `Δ[A162477(n)-A162475(n)]-A162475(n)` -/
def P12528552643041738163.Spec : Prop :=
  ∀ n, P12528552643041738163.a n = A162476 n

end A162476

/-!
# A162477: Expansion of (1/(1-x)^2)*c(x/(1-x)^4) where c(x) is the g.f. of A000108.

The programs for A162477, the canonical program `A162477.P3849172480684157353` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A162477 has offset 0).

The definition of A162477 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A162477.P3849172480684157353

`∑[A162476(n)]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A162477

/-- `∑[A162476(n)]` -/
def P3849172480684157353.Spec : Prop :=
  ∀ n, P3849172480684157353.a n = A162477 n

theorem P3849172480684157353.correct : P3849172480684157353.Spec := by
  intro n
  simp only [A162477]

end A162477

/-! ## A162477.P4465105410159292122

`∑[∑[A162475(n)]]`
-/

namespace A162477.P4465105410159292122
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162475 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162477.P4465105410159292122

namespace A162477

/-- `∑[∑[A162475(n)]]` -/
def P4465105410159292122.Spec : Prop :=
  ∀ n, P4465105410159292122.a n = A162477 n

end A162477

/-! ## A162477.P5137265435024872862

`∑{#}[n, C(n, #)*A366236(#)]`
-/

namespace A162477.P5137265435024872862
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A366236 k

end

end A162477.P5137265435024872862

namespace A162477

/-- `∑{#}[n, C(n, #)*A366236(#)]` -/
def P5137265435024872862.Spec : Prop :=
  ∀ n, P5137265435024872862.a n = A162477 n

end A162477

/-! ## A162477.P8406865000389061422

`A162476(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A162477.P8406865000389061422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A162476 n + a (A023443 n).toNat

end

end A162477.P8406865000389061422

namespace A162477

/-- `A162476(n)+a(A023443(n))` -/
def P8406865000389061422.Spec : Prop :=
  ∀ n, P8406865000389061422.a n = A162477 n

end A162477

/-!
# A162478: Expansion of 1/sqrt(1-4x/(1-x)^4).

The programs for A162478, there is no canonical definition to state claims against.
-/

/-! ## A162478.P16437640719220259870

`floor(sqrt(∑{d}[(-(5*n))^n+n, #]))`
-/

namespace A162478.P16437640719220259870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-(5 * n : ℤ)) ^ n + (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A162478.P16437640719220259870

/-!
# A162479: Expansion of 1/((1-x)*sqrt(1-4x/(1-x)^4)).

The programs for A162479, the canonical program `A162479.P14436640511860134659` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A162479 has offset 0).

The definition of A162479 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 118 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A162479.P14525349609856945604

`∑[A162478(n)]`
-/

namespace A162479.P14525349609856945604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162478 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162479.P14525349609856945604

namespace A162479

/-- `∑[A162478(n)]` -/
def P14525349609856945604.Spec : Prop :=
  ∀ n, P14525349609856945604.a n = A162479 n

end A162479

/-! ## A162479.P14436640511860134659

`∑{#}[n, C(n, #)*A361812(#)]`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A162479

/-- `∑{#}[n, C(n, #)*A361812(#)]` -/
def P14436640511860134659.Spec : Prop :=
  ∀ n, P14436640511860134659.a n = A162479 n

theorem P14436640511860134659.correct : P14436640511860134659.Spec := by
  intro n
  simp only [A162479]

end A162479

/-! ## A162479.P14753326339238675819

`A162478(n)-(A000038(n)-a(n-1))` with `a(0)=1`
-/

namespace A162479.P14753326339238675819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A162478 n - (A000038 n - a (n - 1))

end

end A162479.P14753326339238675819

namespace A162479

/-- `A162478(n)-(A000038(n)-a(n-1))` -/
def P14753326339238675819.Spec : Prop :=
  ∀ n, P14753326339238675819.a n = A162479 n

end A162479

/-! ## A162479.P16193082624914709124

`A162478(n)+a(n%A038817(n+1)-1)` with `a(0)=1`
-/

namespace A162479.P16193082624914709124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A162478 n + a (Int.tmod (n : ℤ) (A038817 (n + 1)) - 1).toNat

end

end A162479.P16193082624914709124

namespace A162479

/-- `A162478(n)+a(n%A038817(n+1)-1)` -/
def P16193082624914709124.Spec : Prop :=
  ∀ n, P16193082624914709124.a n = A162479 n

end A162479

/-! ## A162479.P397257131383046328

`Δ[A162480(n)]-A162478(n+1)`
-/

namespace A162479.P397257131383046328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162480 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A162478 (n + 1)

end

end A162479.P397257131383046328

namespace A162479

/-- `Δ[A162480(n)]-A162478(n+1)` -/
def P397257131383046328.Spec : Prop :=
  ∀ n, P397257131383046328.a n = A162479 n

end A162479

/-! ## A162479.P7275456778278950564

`Δ[A162480(n)-A162478(n)]-A162478(n)`
-/

namespace A162479.P7275456778278950564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162480 n - A162478 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A162478 n

end

end A162479.P7275456778278950564

namespace A162479

/-- `Δ[A162480(n)-A162478(n)]-A162478(n)` -/
def P7275456778278950564.Spec : Prop :=
  ∀ n, P7275456778278950564.a n = A162479 n

end A162479

/-! ## A162479.P2786505650387632510

`a(n-1)+A162478(n)*A241578(A190906(n))` with `a(0)=1`
-/

namespace A162479.P2786505650387632510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A162478 n * A241578 (A190906 n).toNat

end

end A162479.P2786505650387632510

namespace A162479

/-- `a(n-1)+A162478(n)*A241578(A190906(n))` -/
def P2786505650387632510.Spec : Prop :=
  ∀ n, P2786505650387632510.a n = A162479 n

end A162479

/-!
# A162480: Expansion of 1/((1-x)^2*sqrt(1-4x/(1-x)^4)).

The programs for A162480, the canonical program `A162480.P7808283658248207308` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A162480 has offset 0).

The definition of A162480 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 118 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A162480.P7808283658248207308

`∑[A162479(n)]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A162480

/-- `∑[A162479(n)]` -/
def P7808283658248207308.Spec : Prop :=
  ∀ n, P7808283658248207308.a n = A162480 n

theorem P7808283658248207308.correct : P7808283658248207308.Spec := by
  intro n
  simp only [A162480]

end A162480

/-! ## A162480.P15406655014584735535

`∑[∑[A162478(n)]]`
-/

namespace A162480.P15406655014584735535
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162478 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162480.P15406655014584735535

namespace A162480

/-- `∑[∑[A162478(n)]]` -/
def P15406655014584735535.Spec : Prop :=
  ∀ n, P15406655014584735535.a n = A162480 n

end A162480

/-! ## A162480.P7477245971463823535

`A162479(n)+a(A140106(2*n))` with `a(0)=1`
-/

namespace A162480.P7477245971463823535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A162479 n + a (A140106 (2 * n)).toNat

end

end A162480.P7477245971463823535

namespace A162480

/-- `A162479(n)+a(A140106(2*n))` -/
def P7477245971463823535.Spec : Prop :=
  ∀ n, P7477245971463823535.a n = A162480 n

end A162480

/-! ## A162480.P9766024026036625155

`A162479(n)+a(A000007(n)-1+n)` with `a(0)=1`
-/

namespace A162480.P9766024026036625155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A162479 n + a (A000007 n - 1 + (n : ℤ)).toNat

end

end A162480.P9766024026036625155

namespace A162480

/-- `A162479(n)+a(A000007(n)-1+n)` -/
def P9766024026036625155.Spec : Prop :=
  ∀ n, P9766024026036625155.a n = A162480 n

end A162480

/-! ## A162480.P14959103591882086819

`A162479(n)+a(2*n-(A005408(n)-n))` with `a(0)=1`
-/

namespace A162480.P14959103591882086819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A162479 n + a ((2 * n : ℤ) - (A005408 n - (n : ℤ))).toNat

end

end A162480.P14959103591882086819

namespace A162480

/-- `A162479(n)+a(2*n-(A005408(n)-n))` -/
def P14959103591882086819.Spec : Prop :=
  ∀ n, P14959103591882086819.a n = A162480 n

end A162480

/-!
# A162481: Expansion of (1/(1-x)^3)*c(x/(1-x)^3), c(x) the g.f. of A000108.

The programs for A162481, the canonical program `A162481.P12030903701989967033` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A162481 has offset 0).

The definition of A162481 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 127 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A162481.P12030903701989967033

`∑[A258973(n)]`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A162481

/-- `∑[A258973(n)]` -/
def P12030903701989967033.Spec : Prop :=
  ∀ n, P12030903701989967033.a n = A162481 n

theorem P12030903701989967033.correct : P12030903701989967033.Spec := by
  intro n
  simp only [A162481]

end A162481

/-! ## A162481.P2801682931292987083

`∑[∑[A360102(n)]]`
-/

namespace A162481.P2801682931292987083
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360102 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162481.P2801682931292987083

namespace A162481

/-- `∑[∑[A360102(n)]]` -/
def P2801682931292987083.Spec : Prop :=
  ∀ n, P2801682931292987083.a n = A162481 n

end A162481

/-! ## A162481.P8676917785176401636

`∑[∑[∑[A360100(n)]]]`
-/

namespace A162481.P8676917785176401636
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360100 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162481.P8676917785176401636

namespace A162481

/-- `∑[∑[∑[A360100(n)]]]` -/
def P8676917785176401636.Spec : Prop :=
  ∀ n, P8676917785176401636.a n = A162481 n

end A162481

/-! ## A162481.P17722041011598990870

`∑{#}[n, C(n, #)*A366694(#)]`
-/

namespace A162481.P17722041011598990870
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A366694 k

end

end A162481.P17722041011598990870

namespace A162481

/-- `∑{#}[n, C(n, #)*A366694(#)]` -/
def P17722041011598990870.Spec : Prop :=
  ∀ n, P17722041011598990870.a n = A162481 n

end A162481

/-! ## A162481.P17850850003065471960

`A258973(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A162481.P17850850003065471960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A258973 n + a (A023443 n).toNat

end

end A162481.P17850850003065471960

namespace A162481

/-- `A258973(n)+a(A023443(n))` -/
def P17850850003065471960.Spec : Prop :=
  ∀ n, P17850850003065471960.a n = A162481 n

end A162481

/-! ## A162481.P5335064947704274101

`A258973(n)+a(A004273(n)-n)` with `a(0)=1`
-/

namespace A162481.P5335064947704274101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A258973 n + a (A004273 n - (n : ℤ)).toNat

end

end A162481.P5335064947704274101

namespace A162481

/-- `A258973(n)+a(A004273(n)-n)` -/
def P5335064947704274101.Spec : Prop :=
  ∀ n, P5335064947704274101.a n = A162481 n

end A162481

/-! ## A162481.P9779257042059656906

`a(n-1)+A258973(n)+A000007(n)` with `a(0)=1`
-/

namespace A162481.P9779257042059656906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A258973 n + A000007 n)

end

end A162481.P9779257042059656906

namespace A162481

/-- `a(n-1)+A258973(n)+A000007(n)` -/
def P9779257042059656906.Spec : Prop :=
  ∀ n, P9779257042059656906.a n = A162481 n

end A162481

/-!
# A162482: Expansion of (1/(1-x)^3)*M(x/(1-x)^3), M(x) the g.f. of Motzkin numbers A001006.

The programs for A162482, there is no canonical definition to state claims against.
-/

/-! ## A162482.P14173261385469908608

`A229301(∑[A115178(2*(n+1))+n])`
-/

namespace A162482.P14173261385469908608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115178 (2 * (n + 1)) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229301 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A162482.P14173261385469908608

/-! ## A162482.P14537750104916841889

`A333233(n+2)-A333212(A191702(n+1))`
-/

namespace A162482.P14537750104916841889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333233 (n + 2) - A333212 (A191702 (n + 1)).toNat

end

end A162482.P14537750104916841889

/-!
# A162483: a(n) is the number of perfect matchings of an edge-labeled 2 X (2n+1) Mobius grid graph.

The programs for A162483, the canonical program `A162483.P3733548346826831576` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A162483 has offset 0).

The definition of A162483 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A162483.P14839110808637592691

`ogf((3-6x+x^2)/(1-4x+4x^2-x^3))`
-/

namespace A162483.P14839110808637592691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -6, 1] [1, -4, 4, -1] n

end

end A162483.P14839110808637592691

namespace A162483

/-- `ogf((3-6x+x^2)/(1-4x+4x^2-x^3))` -/
def P14839110808637592691.Spec : Prop :=
  ∀ n, P14839110808637592691.a n = A162483 n

end A162483

/-! ## A162483.P3733548346826831576

`4*a(n-1)-4*a(n-2)+a(n-3)` with `a(0)=3, a(1)=6, a(2)=13`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A162483

/-- `4*a(n-1)-4*a(n-2)+a(n-3)` -/
def P3733548346826831576.Spec : Prop :=
  ∀ n, P3733548346826831576.a n = A162483 n

theorem P3733548346826831576.correct : P3733548346826831576.Spec := by
  intro n
  simp only [A162483]

end A162483

/-! ## A162483.P2227493776491128640

`A000032(2*n+1)+2`
-/

namespace A162483.P2227493776491128640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (2 * n + 1) + 2

end

end A162483.P2227493776491128640

namespace A162483

/-- `A000032(2*n+1)+2` -/
def P2227493776491128640.Spec : Prop :=
  ∀ n, P2227493776491128640.a n = A162483 n

end A162483

/-! ## A162483.P12601665107950143905

`2+A000045(2*n)+A000045(2*n+2)`
-/

namespace A162483.P12601665107950143905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 + A000045 (2 * n) + A000045 (2 * n + 2)

end

end A162483.P12601665107950143905

namespace A162483

/-- `2+A000045(2*n)+A000045(2*n+2)` -/
def P12601665107950143905.Spec : Prop :=
  ∀ n, P12601665107950143905.a n = A162483 n

end A162483

/-! ## A162483.P14653473945343737442

`Δ[floor((ϕ^n)²)]+2`
-/

namespace A162483.P14653473945343737442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Real.goldenRatio ^ n) ^ 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 2

end

end A162483.P14653473945343737442

namespace A162483

/-- `Δ[floor((ϕ^n)²)]+2` -/
def P14653473945343737442.Spec : Prop :=
  ∀ n, P14653473945343737442.a n = A162483 n

end A162483

/-! ## A162483.P6423112023393815600

`∑[ogf((3-6x+x^2)/(1-3x+x^2))]`
-/

namespace A162483.P6423112023393815600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -6, 1] [1, -3, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162483.P6423112023393815600

namespace A162483

/-- `∑[ogf((3-6x+x^2)/(1-3x+x^2))]` -/
def P6423112023393815600.Spec : Prop :=
  ∀ n, P6423112023393815600.a n = A162483 n

end A162483

/-! ## A162483.P13737197692749006490

`∑[floor(ϕ²*a(n-1))]` with `a(0)=3, a(1)=3`
-/

namespace A162483.P13737197692749006490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 3] fun n f1 =>
  ⌊Real.goldenRatio ^ 2 * (f1 (n - 1) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162483.P13737197692749006490

namespace A162483

/-- `∑[floor(ϕ²*a(n-1))]` -/
def P13737197692749006490.Spec : Prop :=
  ∀ n, P13737197692749006490.a n = A162483 n

end A162483

/-! ## A162483.P5256018825265719107

`ceil(a(n-1)+ϕ^(2*n))` with `a(0)=3`
-/

namespace A162483.P5256018825265719107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  ⌈(a (n - 1) : ℝ) + Real.goldenRatio ^ (2 * n)⌉

end

end A162483.P5256018825265719107

namespace A162483

/-- `ceil(a(n-1)+ϕ^(2*n))` -/
def P5256018825265719107.Spec : Prop :=
  ∀ n, P5256018825265719107.a n = A162483 n

end A162483

/-! ## A162483.P7349209278768340805

`round(a(n-1)+ϕ^(2*n))` with `a(0)=3`
-/

namespace A162483.P7349209278768340805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  SequenceMachineLib.roundAway ((a (n - 1) : ℝ) + Real.goldenRatio ^ (2 * n))

end

end A162483.P7349209278768340805

namespace A162483

/-- `round(a(n-1)+ϕ^(2*n))` -/
def P7349209278768340805.Spec : Prop :=
  ∀ n, P7349209278768340805.a n = A162483 n

end A162483

/-! ## A162483.P8765962449813999098

`∑[3*a(n-1)-a(n-2)]` with `a(0)=3, a(1)=3, a(2)=7`
-/

namespace A162483.P8765962449813999098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 3, 7] fun n f1 =>
  3 * f1 (n - 1) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162483.P8765962449813999098

namespace A162483

/-- `∑[3*a(n-1)-a(n-2)]` -/
def P8765962449813999098.Spec : Prop :=
  ∀ n, P8765962449813999098.a n = A162483 n

end A162483

/-! ## A162483.P12445709621908269611

`A000211(Δ[n²])`
-/

namespace A162483.P12445709621908269611
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000211 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A162483.P12445709621908269611

namespace A162483

/-- `A000211(Δ[n²])` -/
def P12445709621908269611.Spec : Prop :=
  ∀ n, P12445709621908269611.a n = A162483 n

end A162483

/-! ## A162483.P8963096730897849565

`A020878(Δ[n²])`
-/

namespace A162483.P8963096730897849565
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020878 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A162483.P8963096730897849565

namespace A162483

/-- `A020878(Δ[n²])` -/
def P8963096730897849565.Spec : Prop :=
  ∀ n, P8963096730897849565.a n = A162483 n

end A162483

/-! ## A162483.P16523252214541844677

`record[A075193(n)+2]`
-/

namespace A162483.P16523252214541844677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075193 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A162483.P16523252214541844677

namespace A162483

/-- `record[A075193(n)+2]` -/
def P16523252214541844677.Spec : Prop :=
  ∀ n, P16523252214541844677.a n = A162483 n

end A162483

/-! ## A162483.P16355152980797090736

`record[A154699(n)+2]`
-/

namespace A162483.P16355152980797090736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154699 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A162483.P16355152980797090736

namespace A162483

/-- `record[A154699(n)+2]` -/
def P16355152980797090736.Spec : Prop :=
  ∀ n, P16355152980797090736.a n = A162483 n

end A162483

/-! ## A162483.P12709007868429763893

`record[∑[A061084(n+3)]]`
-/

namespace A162483.P12709007868429763893
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061084 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A162483.P12709007868429763893

namespace A162483

/-- `record[∑[A061084(n+3)]]` -/
def P12709007868429763893.Spec : Prop :=
  ∀ n, P12709007868429763893.a n = A162483 n

end A162483

/-! ## A162483.P16926847832527872107

`∑[A001610(abs(1-2*n))+1]`
-/

namespace A162483.P16926847832527872107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001610 |1 - (2 * n : ℤ)|.toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162483.P16926847832527872107

namespace A162483

/-- `∑[A001610(abs(1-2*n))+1]` -/
def P16926847832527872107.Spec : Prop :=
  ∀ n, P16926847832527872107.a n = A162483 n

end A162483

/-! ## A162483.P5125723356654620109

`∑[A000032(abs(1-n)+1+n)]`
-/

namespace A162483.P5125723356654620109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (|1 - (n : ℤ)| + 1 + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162483.P5125723356654620109

namespace A162483

/-- `∑[A000032(abs(1-n)+1+n)]` -/
def P5125723356654620109.Spec : Prop :=
  ∀ n, P5125723356654620109.a n = A162483 n

end A162483

/-! ## A162483.P2469473011860078633

`2*A000211(2*n+1)/A020639(2*(n+1))`
-/

namespace A162483.P2469473011860078633
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A000211 (2 * n + 1) : ℚ) / (A020639 (2 * (n + 1)) : ℚ)

end

end A162483.P2469473011860078633

namespace A162483

/-- `2*A000211(2*n+1)/A020639(2*(n+1))` -/
def P2469473011860078633.Spec : Prop :=
  ∀ n, P2469473011860078633.a n = (A162483 n : ℚ)

end A162483

/-! ## A162483.P16986920797791757668

`A000211(2*n+1)*A204992(A006519(2*(n+1)))`
-/

namespace A162483.P16986920797791757668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000211 (2 * n + 1) * A204992 (A006519 (2 * (n + 1))).toNat

end

end A162483.P16986920797791757668

namespace A162483

/-- `A000211(2*n+1)*A204992(A006519(2*(n+1)))` -/
def P16986920797791757668.Spec : Prop :=
  ∀ n, P16986920797791757668.a n = A162483 n

end A162483

/-! ## A162483.P13309571936264614625

`root(A000211(2*n+1)², 2)`
-/

namespace A162483.P13309571936264614625
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A000211 (2 * n + 1) ^ 2 : ℝ) ^ (1 / (2 : ℝ))

end

end A162483.P13309571936264614625

namespace A162483

/-- `root(A000211(2*n+1)², 2)` -/
def P13309571936264614625.Spec : Prop :=
  ∀ n, P13309571936264614625.a n = (A162483 n : ℝ)

end A162483

/-!
# A162484: a(1) = 2, a(2) = 8; a(n) = 2 a(n - 1) + a(n - 2) - 4*(n mod 2).

The programs for A162484, the canonical program `A162484.P11588823021271864825` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A162484 has offset 1).

The definition of A162484 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)+a(n-2)-4*(n+1)%2` (program `A162484.P11588823021271864825`, by `A162484.P11588823021271864825.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A162484.P17111733955479285085

`ogf((2+4x-6x^2-4x^3)/(1-2x-2x^2+2x^3+x^4))`
-/

namespace A162484.P17111733955479285085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 4, -6, -4] [1, -2, -2, 2, 1] n

end

end A162484.P17111733955479285085

namespace A162484

/-- `ogf((2+4x-6x^2-4x^3)/(1-2x-2x^2+2x^3+x^4))` -/
def P17111733955479285085.Spec : Prop :=
  ∀ n, P17111733955479285085.a n = A162484 (n + 1)

end A162484

/-! ## A162484.P11588823021271864825

`2*a(n-1)+a(n-2)-4*(n+1)%2` with `a(0)=2, a(1)=8`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A162484

/-- `2*a(n-1)+a(n-2)-4*(n+1)%2` -/
def P11588823021271864825.Spec : Prop :=
  ∀ n, P11588823021271864825.a n = A162484 (n + 1)

theorem P11588823021271864825.correct : P11588823021271864825.Spec := by
  intro n
  simp only [A162484, Nat.add_sub_cancel]

end A162484

/-! ## A162484.P6475677406619513476

`2*a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)` with `a(0)=2, a(1)=8, a(2)=14, a(3)=36`
-/

namespace A162484.P6475677406619513476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 8, 14, 36] fun n a =>
  2 * a (n - 1) + 2 * a (n - 2) - 2 * a (n - 3) - a (n - 4)

end

end A162484.P6475677406619513476

namespace A162484

/-- `2*a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)` -/
def P6475677406619513476.Spec : Prop :=
  ∀ n, P6475677406619513476.a n = A162484 (n + 1)

end A162484

/-! ## A162484.P500266900547880558

`2*A100828(n)`
-/

namespace A162484.P500266900547880558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A100828 n

end

end A162484.P500266900547880558

namespace A162484

/-- `2*A100828(n)` -/
def P500266900547880558.Spec : Prop :=
  ∀ n, P500266900547880558.a n = A162484 (n + 1)

end A162484

/-! ## A162484.P7230311842704474899

`1-(-1)^n+(1-sqrt(2))^(1+n)+(1+sqrt(2))^(1+n)`
-/

namespace A162484.P7230311842704474899
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (1 - (-1) ^ n : ℝ) + (1 - Real.sqrt (2 : ℝ)) ^ (1 + n) + (1 + Real.sqrt (2 : ℝ)) ^ (1 + n)

end

end A162484.P7230311842704474899

namespace A162484

/-- `1-(-1)^n+(1-sqrt(2))^(1+n)+(1+sqrt(2))^(1+n)` -/
def P7230311842704474899.Spec : Prop :=
  ∀ n, P7230311842704474899.a n = (A162484 (n + 1) : ℝ)

end A162484

/-! ## A162484.P11306531542125081597

`∑[abs(Δ[A051927(n)])]`
-/

namespace A162484.P11306531542125081597
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051927 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162484.P11306531542125081597

namespace A162484

/-- `∑[abs(Δ[A051927(n)])]` -/
def P11306531542125081597.Spec : Prop :=
  ∀ n, P11306531542125081597.a n = A162484 (n + 1)

end A162484

/-! ## A162484.P10513905223648173917

`xor(1, A051927(n+1)+2)`
-/

namespace A162484.P10513905223648173917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A051927 (n + 1) + 2)

end

end A162484.P10513905223648173917

namespace A162484

/-- `xor(1, A051927(n+1)+2)` -/
def P10513905223648173917.Spec : Prop :=
  ∀ n, P10513905223648173917.a n = A162484 (n + 1)

end A162484

/-! ## A162484.P8732767991523522836

`2*(A078057(n)+A000035(n))`
-/

namespace A162484.P8732767991523522836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A078057 n + A000035 n)

end

end A162484.P8732767991523522836

namespace A162484

/-- `2*(A078057(n)+A000035(n))` -/
def P8732767991523522836.Spec : Prop :=
  ∀ n, P8732767991523522836.a n = A162484 (n + 1)

end A162484

/-! ## A162484.P9211397757665901650

`2*(A113224(n)+A010673(n))`
-/

namespace A162484.P9211397757665901650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A113224 n + A010673 n)

end

end A162484.P9211397757665901650

namespace A162484

/-- `2*(A113224(n)+A010673(n))` -/
def P9211397757665901650.Spec : Prop :=
  ∀ n, P9211397757665901650.a n = A162484 (n + 1)

end A162484

/-! ## A162484.P6263395305031176139

`2*(A113282(n)-A101455(n))`
-/

namespace A162484.P6263395305031176139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A113282 n - A101455 n)

end

end A162484.P6263395305031176139

namespace A162484

/-- `2*(A113282(n)-A101455(n))` -/
def P6263395305031176139.Spec : Prop :=
  ∀ n, P6263395305031176139.a n = A162484 (n + 1)

end A162484

/-! ## A162484.P9533178611188165188

`2*(A182780(n)-A059841(n))`
-/

namespace A162484.P9533178611188165188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A182780 n - A059841 n)

end

end A162484.P9533178611188165188

namespace A162484

/-- `2*(A182780(n)-A059841(n))` -/
def P9533178611188165188.Spec : Prop :=
  ∀ n, P9533178611188165188.a n = A162484 (n + 1)

end A162484

/-! ## A162484.P17400479478840580378

`2*xor(A109718(n), A113282(n))`
-/

namespace A162484.P17400479478840580378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * Int.xor (A109718 n) (A113282 n)

end

end A162484.P17400479478840580378

namespace A162484

/-- `2*xor(A109718(n), A113282(n))` -/
def P17400479478840580378.Spec : Prop :=
  ∀ n, P17400479478840580378.a n = A162484 (n + 1)

end A162484

/-! ## A162484.P11715812932042937610

`2*(A078057(n)+Δ[A004526(n)])`
-/

namespace A162484.P11715812932042937610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A078057 n + (f1 (n + 1) - f1 n))

end

end A162484.P11715812932042937610

namespace A162484

/-- `2*(A078057(n)+Δ[A004526(n)])` -/
def P11715812932042937610.Spec : Prop :=
  ∀ n, P11715812932042937610.a n = A162484 (n + 1)

end A162484

/-! ## A162484.P6214329607903405774

`2*(A078057(n)+Δ[A008619(n)])`
-/

namespace A162484.P6214329607903405774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A078057 n + (f1 (n + 1) - f1 n))

end

end A162484.P6214329607903405774

namespace A162484

/-- `2*(A078057(n)+Δ[A008619(n)])` -/
def P6214329607903405774.Spec : Prop :=
  ∀ n, P6214329607903405774.a n = A162484 (n + 1)

end A162484

/-! ## A162484.P9651374990686774474

`2*(A097075(n+1)+A024537(n))`
-/

namespace A162484.P9651374990686774474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A097075 (n + 1) + A024537 n)

end

end A162484.P9651374990686774474

namespace A162484

/-- `2*(A097075(n+1)+A024537(n))` -/
def P9651374990686774474.Spec : Prop :=
  ∀ n, P9651374990686774474.a n = A162484 (n + 1)

end A162484

/-! ## A162484.P2961369146098462161

`2*(A133953(n+1)-A042963(n+1))`
-/

namespace A162484.P2961369146098462161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A133953 (n + 1) - A042963 (n + 1))

end

end A162484.P2961369146098462161

namespace A162484

/-- `2*(A133953(n+1)-A042963(n+1))` -/
def P2961369146098462161.Spec : Prop :=
  ∀ n, P2961369146098462161.a n = A162484 (n + 1)

end A162484

/-! ## A162484.P15291863624330457547

`2*(A228797(n+1)-A327767(n+1))`
-/

namespace A162484.P15291863624330457547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A228797 (n + 1) - A327767 (n + 1))

end

end A162484.P15291863624330457547

namespace A162484

/-- `2*(A228797(n+1)-A327767(n+1))` -/
def P15291863624330457547.Spec : Prop :=
  ∀ n, P15291863624330457547.a n = A162484 (n + 1)

end A162484

/-! ## A162484.P824458497980156884

`2*(A260394(4*n+1)+A082766(2*(n+1)))`
-/

namespace A162484.P824458497980156884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A260394 (4 * n + 1) + A082766 (2 * (n + 1)))

end

end A162484.P824458497980156884

namespace A162484

/-- `2*(A260394(4*n+1)+A082766(2*(n+1)))` -/
def P824458497980156884.Spec : Prop :=
  ∀ n, P824458497980156884.a n = A162484 (n + 1)

end A162484

/-! ## A162484.P10298840838652337860

`2*(A000129(n+1)+A000129(n)+A000035(n))`
-/

namespace A162484.P10298840838652337860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A000129 (n + 1) + (A000129 n + A000035 n))

end

end A162484.P10298840838652337860

namespace A162484

/-- `2*(A000129(n+1)+A000129(n)+A000035(n))` -/
def P10298840838652337860.Spec : Prop :=
  ∀ n, P10298840838652337860.a n = A162484 (n + 1)

end A162484

/-! ## A162484.P10556885130320999018

`2/A000079(n)*A110046(n)`
-/

namespace A162484.P10556885130320999018
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A000079 n : ℚ) * (A110046 n : ℚ)

end

end A162484.P10556885130320999018

namespace A162484

/-- `2/A000079(n)*A110046(n)` -/
def P10556885130320999018.Spec : Prop :=
  ∀ n, P10556885130320999018.a n = (A162484 (n + 1) : ℚ)

end A162484

/-!
# A162485: a(1)=4, a(2)=6; for n > 2, a(n) = 2*a(n-1) + a(n-2) - 4*((n-1) mod 2).

The programs for A162485, the canonical program `A162485.P1479255256026310993` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A162485 has offset 1).

The definition of A162485 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)+a(n-2)-4*n%2` (program `A162485.P1479255256026310993`, by `A162485.P1479255256026310993.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A162485.P12342401142893284055

`ogf((4-2x-4x^2-2x^3)/(1-2x-2x^2+2x^3+x^4))`
-/

namespace A162485.P12342401142893284055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, -2, -4, -2] [1, -2, -2, 2, 1] n

end

end A162485.P12342401142893284055

namespace A162485

/-- `ogf((4-2x-4x^2-2x^3)/(1-2x-2x^2+2x^3+x^4))` -/
def P12342401142893284055.Spec : Prop :=
  ∀ n, P12342401142893284055.a n = A162485 (n + 1)

end A162485

/-! ## A162485.P1479255256026310993

`2*a(n-1)+a(n-2)-4*n%2` with `a(0)=4, a(1)=6`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A162485

/-- `2*a(n-1)+a(n-2)-4*n%2` -/
def P1479255256026310993.Spec : Prop :=
  ∀ n, P1479255256026310993.a n = A162485 (n + 1)

theorem P1479255256026310993.correct : P1479255256026310993.Spec := by
  intro n
  simp only [A162485, Nat.add_sub_cancel]

end A162485

/-! ## A162485.P2751942674058220469

`A002203(n+1)+1-(-1)^(n+1)`
-/

namespace A162485.P2751942674058220469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002203 (n + 1) + 1 - (-1) ^ (n + 1)

end

end A162485.P2751942674058220469

namespace A162485

/-- `A002203(n+1)+1-(-1)^(n+1)` -/
def P2751942674058220469.Spec : Prop :=
  ∀ n, P2751942674058220469.a n = A162485 (n + 1)

end A162485

/-! ## A162485.P9590207128864890149

`A182143(n+1)+1`
-/

namespace A162485.P9590207128864890149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182143 (n + 1) + 1

end

end A162485.P9590207128864890149

namespace A162485

/-- `A182143(n+1)+1` -/
def P9590207128864890149.Spec : Prop :=
  ∀ n, P9590207128864890149.a n = A162485 (n + 1)

end A162485

/-! ## A162485.P13800601751416779474

`A129744(n+1)+2`
-/

namespace A162485.P13800601751416779474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129744 (n + 1) + 2

end

end A162485.P13800601751416779474

namespace A162485

/-- `A129744(n+1)+2` -/
def P13800601751416779474.Spec : Prop :=
  ∀ n, P13800601751416779474.a n = A162485 (n + 1)

end A162485

/-! ## A162485.P5094947517655032161

`2*(A113224(n)+1)`
-/

namespace A162485.P5094947517655032161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A113224 n + 1)

end

end A162485.P5094947517655032161

namespace A162485

/-- `2*(A113224(n)+1)` -/
def P5094947517655032161.Spec : Prop :=
  ∀ n, P5094947517655032161.a n = A162485 (n + 1)

end A162485

/-! ## A162485.P5437389883564783693

`or(1, A080039(n+1))+1`
-/

namespace A162485.P5437389883564783693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A080039 (n + 1)) + 1

end

end A162485.P5437389883564783693

namespace A162485

/-- `or(1, A080039(n+1))+1` -/
def P5437389883564783693.Spec : Prop :=
  ∀ n, P5437389883564783693.a n = A162485 (n + 1)

end A162485

/-! ## A162485.P15736290447015397314

`xor(2, A051927(n+1))+1`
-/

namespace A162485.P15736290447015397314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (A051927 (n + 1)) + 1

end

end A162485.P15736290447015397314

namespace A162485

/-- `xor(2, A051927(n+1))+1` -/
def P15736290447015397314.Spec : Prop :=
  ∀ n, P15736290447015397314.a n = A162485 (n + 1)

end A162485

/-! ## A162485.P2165295179557822640

`A124696(n+1)+(-1)^n`
-/

namespace A162485.P2165295179557822640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124696 (n + 1) + (-1) ^ n

end

end A162485.P2165295179557822640

namespace A162485

/-- `A124696(n+1)+(-1)^n` -/
def P2165295179557822640.Spec : Prop :=
  ∀ n, P2165295179557822640.a n = A162485 (n + 1)

end A162485

/-! ## A162485.P3156428536822924662

`A114647(n)+A048654(n)`
-/

namespace A162485.P3156428536822924662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114647 n + A048654 n

end

end A162485.P3156428536822924662

namespace A162485

/-- `A114647(n)+A048654(n)` -/
def P3156428536822924662.Spec : Prop :=
  ∀ n, P3156428536822924662.a n = A162485 (n + 1)

end A162485

/-! ## A162485.P4532465771918815327

`A228797(n+1)+A182780(n)`
-/

namespace A162485.P4532465771918815327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228797 (n + 1) + A182780 n

end

end A162485.P4532465771918815327

namespace A162485

/-- `A228797(n+1)+A182780(n)` -/
def P4532465771918815327.Spec : Prop :=
  ∀ n, P4532465771918815327.a n = A162485 (n + 1)

end A162485

/-! ## A162485.P6591782144116118789

`A099430(n)+A175658(n)+2`
-/

namespace A162485.P6591782144116118789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099430 n + (A175658 n + 2)

end

end A162485.P6591782144116118789

namespace A162485

/-- `A099430(n)+A175658(n)+2` -/
def P6591782144116118789.Spec : Prop :=
  ∀ n, P6591782144116118789.a n = A162485 (n + 1)

end A162485

/-! ## A162485.P6965669443378798441

`2*(A078057(n)+A059841(n))`
-/

namespace A162485.P6965669443378798441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A078057 n + A059841 n)

end

end A162485.P6965669443378798441

namespace A162485

/-- `2*(A078057(n)+A059841(n))` -/
def P6965669443378798441.Spec : Prop :=
  ∀ n, P6965669443378798441.a n = A162485 (n + 1)

end A162485

/-! ## A162485.P16924961692576959328

`2*A182780(n)-A010673(n)`
-/

namespace A162485.P16924961692576959328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A182780 n - A010673 n

end

end A162485.P16924961692576959328

namespace A162485

/-- `2*A182780(n)-A010673(n)` -/
def P16924961692576959328.Spec : Prop :=
  ∀ n, P16924961692576959328.a n = A162485 (n + 1)

end A162485

/-! ## A162485.P6219040667578325474

`A010673(n+1)+A002203(n+1)`
-/

namespace A162485.P6219040667578325474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010673 (n + 1) + A002203 (n + 1)

end

end A162485.P6219040667578325474

namespace A162485

/-- `A010673(n+1)+A002203(n+1)` -/
def P6219040667578325474.Spec : Prop :=
  ∀ n, P6219040667578325474.a n = A162485 (n + 1)

end A162485

/-! ## A162485.P13066841953203587193

`A080039(n+1)+A000034(n+1)`
-/

namespace A162485.P13066841953203587193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080039 (n + 1) + A000034 (n + 1)

end

end A162485.P13066841953203587193

namespace A162485

/-- `A080039(n+1)+A000034(n+1)` -/
def P13066841953203587193.Spec : Prop :=
  ∀ n, P13066841953203587193.a n = A162485 (n + 1)

end A162485

/-! ## A162485.P10346940849935866934

`A162484(n+1)+2-A010675(n)`
-/

namespace A162485.P10346940849935866934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162484 (n + 1) + (2 - A010675 n)

end

end A162485.P10346940849935866934

namespace A162485

/-- `A162484(n+1)+2-A010675(n)` -/
def P10346940849935866934.Spec : Prop :=
  ∀ n, P10346940849935866934.a n = A162485 (n + 1)

end A162485

/-! ## A162485.P17771583127838909730

`A010673(n)+2*A228797(n+1)`
-/

namespace A162485.P17771583127838909730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010673 n + 2 * A228797 (n + 1)

end

end A162485.P17771583127838909730

namespace A162485

/-- `A010673(n)+2*A228797(n+1)` -/
def P17771583127838909730.Spec : Prop :=
  ∀ n, P17771583127838909730.a n = A162485 (n + 1)

end A162485

/-! ## A162485.P11859002353704001843

`A000035(n+1)+A080039(n+1)+1`
-/

namespace A162485.P11859002353704001843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (n + 1) + (A080039 (n + 1) + 1)

end

end A162485.P11859002353704001843

namespace A162485

/-- `A000035(n+1)+A080039(n+1)+1` -/
def P11859002353704001843.Spec : Prop :=
  ∀ n, P11859002353704001843.a n = A162485 (n + 1)

end A162485

/-! ## A162485.P15026290604839970093

`A002203(n+1)+A100828(n+1)-A113224(n+1)`
-/

namespace A162485.P15026290604839970093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002203 (n + 1) + (A100828 (n + 1) - A113224 (n + 1))

end

end A162485.P15026290604839970093

namespace A162485

/-- `A002203(n+1)+A100828(n+1)-A113224(n+1)` -/
def P15026290604839970093.Spec : Prop :=
  ∀ n, P15026290604839970093.a n = A162485 (n + 1)

end A162485

/-!
# A162488: Numbers x such that x^y + y^x is prime, for some y>1, y<x.

The programs for A162488, there is no canonical definition to state claims against.
-/

/-! ## A162488.P5274061431879549805

`lt[0, A300477(n+2)]+2`
-/

namespace A162488.P5274061431879549805
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300477 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2

end

end A162488.P5274061431879549805

/-! ## A162488.P2579952111670481958

`A173928(n+3)+A162489(n+1)`
-/

namespace A162488.P2579952111670481958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173928 (n + 3) + A162489 (n + 1)

end

end A162488.P2579952111670481958

/-! ## A162488.P10569115690622400747

`comp[A160044(n+1)]`
-/

namespace A162488.P10569115690622400747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160044 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A162488.P10569115690622400747

/-!
# A162489: Least y such that x^y + y^x is prime, for x = A162488(n).

The programs for A162489, there is no canonical definition to state claims against.
-/

/-! ## A162489.P12061782947219058283

`A162488(n+1)-A173928(n+3)`
-/

namespace A162489.P12061782947219058283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162488 (n + 1) - A173928 (n + 3)

end

end A162489.P12061782947219058283

/-!
# A162490: Least prime of the form x^y+y^x with x = A162488(n) > y > 1.

The programs for A162490, there is no canonical definition to state claims against.
-/

/-! ## A162490.P7139104960468890378

`A094133(∪[A126094(n+1), A000051(n)])`
-/

namespace A162490.P7139104960468890378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126094 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094133 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A162490.P7139104960468890378

/-!
# A162491: Least prime dividing 2^n+3.

The programs for A162491, there is no canonical definition to state claims against.
-/

/-! ## A162491.P3850819240588718134

`A020639(∏{p}[2^n+3, #])`
-/

namespace A162491.P3850819240588718134
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A162491.P3850819240588718134

/-! ## A162491.P464528785896935899

`A020639(2^n+3)`
-/

namespace A162491.P464528785896935899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (2 ^ n + 3)

end

end A162491.P464528785896935899

/-! ## A162491.P1380717886412773650

`A374196(2^n+3)`
-/

namespace A162491.P1380717886412773650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374196 (2 ^ n + 3)

end

end A162491.P1380717886412773650

/-! ## A162491.P12459251433356901583

`and(-1, A020639(A062709(n)))`
-/

namespace A162491.P12459251433356901583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A020639 (A062709 n).toNat)

end

end A162491.P12459251433356901583

/-!
# A162492: Number of reduced words of length n in the Weyl group D_50.

The programs for A162492, there is no canonical definition to state claims against.
-/

/-! ## A162492.P3576922474682026047

`∑[A162469(A001222(2^n))]`
-/

namespace A162492.P3576922474682026047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162469 (A001222 (2 ^ n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162492.P3576922474682026047

/-!
# A162493: Number of reduced words of length n in the Weyl group E_7 on 7 generators and order 2903040.

The programs for A162493, there is no canonical definition to state claims against.
-/

/-! ## A162493.P13308196414408569320

`A005585(A032555(n+1))-A000579(n)`
-/

namespace A162493.P13308196414408569320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005585 (A032555 (n + 1)).toNat - A000579 n

end

end A162493.P13308196414408569320

/-!
# A162494: Number of reduced words of length n in the Weyl group E_8 on 8 generators and order 696729600.

The programs for A162494, there is no canonical definition to state claims against.
-/

/-! ## A162494.P9220082209567751382

`A062157(A291114(n))+A040977(n)`
-/

namespace A162494.P9220082209567751382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (A291114 n).toNat + A040977 n

end

end A162494.P9220082209567751382

/-!
# A162495: Number of reduced words of length n in the icosahedral reflection group [3,5] of order 120.

The programs for A162495, the canonical program `A162495.P6153459889601340098` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A162495 has offset 0).

The definition of A162495 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A162495.P6153459889601340098

`ogf((1-x^2-x^6+x^8-x^10+x^12+x^16-x^18)/(1-3x+3x^2-x^3))`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A162495

/-- `ogf((1-x^2-x^6+x^8-x^10+x^12+x^16-x^18)/(1-3x+3x^2-x^3))` -/
def P6153459889601340098.Spec : Prop :=
  ∀ n, P6153459889601340098.a n = A162495 n

theorem P6153459889601340098.correct : P6153459889601340098.Spec := by
  intro n
  simp only [A162495]

end A162495

/-!
# A162496: Number of reduced words of length n in the reflection group [3,4,3] of order 1152.

The programs for A162496, there is no canonical definition to state claims against.
-/

/-! ## A162496.P8912926051296293625

`A004737(A100134(n)+A047928(n+2))`
-/

namespace A162496.P8912926051296293625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004737 (A100134 n + A047928 (n + 2)).toNat

end

end A162496.P8912926051296293625

/-!
# A162497: Number of reduced words of length n in the reflection group [3,3,5] of order 14400.

The programs for A162497, there is no canonical definition to state claims against.
-/

/-! ## A162497.P17425673995268138519

`∑[A167976(4*n+1)-2*n]`
-/

namespace A162497.P17425673995268138519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167976 (4 * n + 1) - (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162497.P17425673995268138519

/-!
# A162498: Triangle read by rows: T(n, k) = Sum_{j=0..k} (-1)^j*binomial(n, j)*(k + 1 - j)^(n - 1).

The programs for A162498, there is no canonical definition to state claims against.
-/

/-! ## A162498.P3974028555969360678

`abs(A055325(n+1))`
-/

namespace A162498.P3974028555969360678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A055325 (n + 1)|

end

end A162498.P3974028555969360678

/-! ## A162498.P10445105169077321071

`A055325(n+1)*A097807(n)`
-/

namespace A162498.P10445105169077321071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055325 (n + 1) * A097807 n

end

end A162498.P10445105169077321071

/-! ## A162498.P9797772803770414481

`gcd(A000038(n), A055325(n+1))`
-/

namespace A162498.P9797772803770414481
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A055325 (n + 1))

end

end A162498.P9797772803770414481

/-! ## A162498.P10143121804384354191

`lcm(A020985(n), A055325(n+1))`
-/

namespace A162498.P10143121804384354191
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A055325 (n + 1))

end

end A162498.P10143121804384354191

/-! ## A162498.P7117868138535231125

`A033999(A025581(n))*A055325(n+1)`
-/

namespace A162498.P7117868138535231125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A025581 n).toNat * A055325 (n + 1)

end

end A162498.P7117868138535231125

