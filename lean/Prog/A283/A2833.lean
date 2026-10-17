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
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
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
# A283300: Primes p such that p^2 divides Bell(p) - 2.

The programs for A283300, there is no canonical definition to state claims against.
-/

/-! ## A283300.P16855701155641800894

`p?[floor(sqrt(A150831(n)))]`
-/

namespace A283300.P16855701155641800894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A150831 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A283300.P16855701155641800894

/-!
# A283301: Numerators of coefficients at even powers in Taylor series expansion of log(x/sin(x)).

The programs for A283301, there is no canonical definition to state claims against.
-/

/-! ## A283301.P749078548507429363

`A098087(A042963(n+2)-2)-floor(acot(n))`
-/

namespace A283301.P749078548507429363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098087 (A042963 (n + 2) - 2).toNat - ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A283301.P749078548507429363

/-! ## A283301.P9239891923963586204

`A098087(comp[or(2, n)-1])+A027641(2*n+1)`
-/

namespace A283301.P9239891923963586204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 2 n : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098087 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) + A027641 (2 * n + 1)

end

end A283301.P9239891923963586204

/-! ## A283301.P17633759981469297117

`A000040(n+1)%2*A098087(A042963(n+2)-2)`
-/

namespace A283301.P17633759981469297117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) 2 * A098087 (A042963 (n + 2) - 2).toNat

end

end A283301.P17633759981469297117

/-! ## A283301.P13523563805486214135

`floor(A098087(A042963(n+2)-2)/A014963(4*n+2))`
-/

namespace A283301.P13523563805486214135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A098087 (A042963 (n + 2) - 2).toNat : ℚ) / (A014963 (4 * n + 2) : ℚ)⌋

end

end A283301.P13523563805486214135

/-! ## A283301.P10591370400842723674

`gcd(A000367(n)*A138772(n+1), A046990(n))`
-/

namespace A283301.P10591370400842723674
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000367 n * A138772 (n + 1)) (A046990 n)

end

end A283301.P10591370400842723674

/-!
# A283302: Maximum number of pairs of primes (p,q) such that p < q <= prime(n) and p + q = constant.

The programs for A283302, there is no canonical definition to state claims against.
-/

/-! ## A283302.P816921433045195058

`A071996(∑[A000188(A052955(n))])`
-/

namespace A283302.P816921433045195058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A052955 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071996 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A283302.P816921433045195058

/-! ## A283302.P326017534815850744

`A071996(comp[A250583(n+1)-A015484(n)]+1)`
-/

namespace A283302.P326017534815850744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250583 (n + 1) - A015484 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071996 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A283302.P326017534815850744

/-! ## A283302.P6485018309461494389

`∑[A267423(A051162(A136101(n)))]`
-/

namespace A283302.P6485018309461494389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267423 (A051162 (A136101 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A283302.P6485018309461494389

/-! ## A283302.P7070137167717692218

`A071996(∑[A327659(A001263(n+1))])`
-/

namespace A283302.P7070137167717692218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327659 (A001263 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071996 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A283302.P7070137167717692218

/-! ## A283302.P2099516468926681364

`A071996(record[A104717(A280496(n+1))])`
-/

namespace A283302.P2099516468926681364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104717 (A280496 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071996 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A283302.P2099516468926681364

/-!
# A283303: List points (x,y) having integer coordinates with x >= y >= 0, sorted first by x^2+y^2 and in case of a tie, by x-coordinate. Sequence gives x-coordinates.

The programs for A283303, there is no canonical definition to state claims against.
-/

/-! ## A283303.P8209772203244023687

`A178487(lcm(A001057(n), A059993(n)))`
-/

namespace A283303.P8209772203244023687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178487 (Int.lcm (A001057 n) (A059993 n))

end

end A283303.P8209772203244023687

/-! ## A283303.P12304513910009162070

`xor(A025455(A036600(n)), A280079(n+1))`
-/

namespace A283303.P12304513910009162070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A025455 (A036600 n).toNat) (A280079 (n + 1))

end

end A283303.P12304513910009162070

/-! ## A283303.P6016628791656454829

`A024317(3*n+2)-A055641(A228576(3*n+2))`
-/

namespace A283303.P6016628791656454829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024317 (3 * n + 2) - A055641 (A228576 (3 * n + 2)).toNat

end

end A283303.P6016628791656454829

/-! ## A283303.P331935451529349497

`A007302(A128588(n+1)-A104120(n+2))`
-/

namespace A283303.P331935451529349497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007302 (A128588 (n + 1) - A104120 (n + 2)).toNat

end

end A283303.P331935451529349497

/-! ## A283303.P18325537308244569183

`A001221(lcm(A037031(n+1), A055980(n+1)))`
-/

namespace A283303.P18325537308244569183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.lcm (A037031 (n + 1)) (A055980 (n + 1)))

end

end A283303.P18325537308244569183

/-!
# A283304: List points (x,y) having integer coordinates with x >= y >= 0, sorted first by x^2+y^2 and in case of a tie, by x-coordinate. Sequence gives y-coordinates.

The programs for A283304, there is no canonical definition to state claims against.
-/

/-! ## A283304.P12336324102598744076

`A051010(∑[A108263(n)!])`
-/

namespace A283304.P12336324102598744076
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A108263 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051010 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A283304.P12336324102598744076

/-! ## A283304.P16248911138051825585

`A357977(A000032(n))%A003056(n+1)`
-/

namespace A283304.P16248911138051825585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A357977 (A000032 n).toNat) (A003056 (n + 1))

end

end A283304.P16248911138051825585

/-! ## A283304.P11795632365859477629

`A108731(or(A209970(n), A260628(n+1)))`
-/

namespace A283304.P11795632365859477629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108731 (Int.lor (A209970 n) (A260628 (n + 1))).toNat

end

end A283304.P11795632365859477629

/-! ## A283304.P17662539234164517383

`A231719(A000079(n+3)%A064307(2*(n+2)))`
-/

namespace A283304.P17662539234164517383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231719 (Int.tmod (A000079 (n + 3)) (A064307 (2 * (n + 2)))).toNat

end

end A283304.P17662539234164517383

/-! ## A283304.P9645654631945806087

`A280317(A043318(n+1))`
-/

namespace A283304.P9645654631945806087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280317 (A043318 (n + 1)).toNat

end

end A283304.P9645654631945806087

/-!
# A283305: List points (x,y) having integer coordinates with x >= 0, y >= 0, sorted first by x^2+y^2 and in case of a tie, by x-coordinate. Sequence gives x-coordinates.

The programs for A283305, there is no canonical definition to state claims against.
-/

/-! ## A283305.P10787905364165868252

`round(acot(n+1)*A305260(n))`
-/

namespace A283305.P10787905364165868252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot (n + 1 : ℝ) * (A305260 n : ℝ))

end

end A283305.P10787905364165868252

/-! ## A283305.P15759131428577903611

`floor(A305260(n)/A233583(n+1))`
-/

namespace A283305.P15759131428577903611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A305260 n : ℚ) / (A233583 (n + 1) : ℚ)⌋

end

end A283305.P15759131428577903611

/-! ## A283305.P4710735562490087200

`floor(A305260(n)/(A289207(n)+2))`
-/

namespace A283305.P4710735562490087200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A305260 n : ℚ) / (A289207 n + 2 : ℚ)⌋

end

end A283305.P4710735562490087200

/-! ## A283305.P14168231038811691497

`round(A305260(n)/A080782(n+1))`
-/

namespace A283305.P14168231038811691497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A305260 n : ℚ) / (A080782 (n + 1) : ℚ))

end

end A283305.P14168231038811691497

/-! ## A283305.P17643994412578360136

`round(A305260(n)/A113646(n+1))`
-/

namespace A283305.P17643994412578360136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A305260 n : ℚ) / (A113646 (n + 1) : ℚ))

end

end A283305.P17643994412578360136

/-! ## A283305.P9185033650106655489

`ceil((A305260(n)-A283306(n+1))/(n+1))`
-/

namespace A283305.P9185033650106655489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A305260 n - A283306 (n + 1) : ℚ) / (n + 1 : ℚ)⌉

end

end A283305.P9185033650106655489

/-! ## A283305.P6001332291830348968

`floor(A305260(n)/A052938(A004275(n)))`
-/

namespace A283305.P6001332291830348968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A305260 n : ℚ) / (A052938 (A004275 n).toNat : ℚ)⌋

end

end A283305.P6001332291830348968

/-! ## A283305.P11910650876186958546

`(A305260(n)-A283306(n+1))/A028310(n)`
-/

namespace A283305.P11910650876186958546
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A305260 n - A283306 (n + 1) : ℚ) / (A028310 n : ℚ)

end

end A283305.P11910650876186958546

/-! ## A283305.P13899103187104718028

`(A305260(n)-A283306(n+1))/A233583(n+1)`
-/

namespace A283305.P13899103187104718028
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A305260 n - A283306 (n + 1) : ℚ) / (A233583 (n + 1) : ℚ)

end

end A283305.P13899103187104718028

/-! ## A283305.P18166793962483675932

`(A305260(n)-A283306(n+1))/(A000007(n)+n)`
-/

namespace A283305.P18166793962483675932
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A305260 n - A283306 (n + 1) : ℚ) / (A000007 n + (n : ℤ) : ℚ)

end

end A283305.P18166793962483675932

/-!
# A283306: List points (x,y) having integer coordinates with x >= 0, y >= 0, sorted first by x^2+y^2 and in case of a tie, by x-coordinate. Sequence gives y-coordinates.

The programs for A283306, there is no canonical definition to state claims against.
-/

/-! ## A283306.P17776861232000134521

`A305260(n)%round(acot(n)+n)`
-/

namespace A283306.P17776861232000134521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A305260 n) (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ)))

end

end A283306.P17776861232000134521

/-! ## A283306.P5184567359031802436

`A305260(n)%A233583(n+1)`
-/

namespace A283306.P5184567359031802436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A305260 n) (A233583 (n + 1))

end

end A283306.P5184567359031802436

/-! ## A283306.P4696194477783425207

`A305260(n)-n*A283305(n+1)`
-/

namespace A283306.P4696194477783425207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305260 n - (n : ℤ) * A283305 (n + 1)

end

end A283306.P4696194477783425207

/-! ## A283306.P4866253500440254564

`A305260(2*n-n)%(A289207(n)+2)`
-/

namespace A283306.P4866253500440254564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A305260 (2 * n - n)) (A289207 n + 2)

end

end A283306.P4866253500440254564

/-! ## A283306.P7258454291057190926

`A305260(n)%A052938(A004275(n))`
-/

namespace A283306.P7258454291057190926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A305260 n) (A052938 (A004275 n).toNat)

end

end A283306.P7258454291057190926

/-! ## A283306.P4308012163900757764

`(A305260(n)+A283305(n+1))%A000027(n+1)`
-/

namespace A283306.P4308012163900757764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A305260 n + A283305 (n + 1)) (A000027 (n + 1))

end

end A283306.P4308012163900757764

/-!
# A283307: List points (x,y) having integer coordinates, sorted first by x^2+y^2 and in case of ties, by x-coordinate and then by y-coordinate. Sequence gives x-coordinates.

The programs for A283307, there is no canonical definition to state claims against.
-/

/-! ## A283307.P17729523466848178445

`A342563(eq[0, A342561(n)])`
-/

namespace A283307.P17729523466848178445
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342561 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342563 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283307.P17729523466848178445

/-! ## A283307.P6187842608860377466

`A342563(eq[0, A342562(n)])`
-/

namespace A283307.P6187842608860377466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342562 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342563 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283307.P6187842608860377466

/-! ## A283307.P11971555444545374991

`A342563(lt[A342561(n)², 1])`
-/

namespace A283307.P11971555444545374991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342561 n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342563 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A283307.P11971555444545374991

/-! ## A283307.P16333636828797931830

`A342563(lt[A342562(n)², 1])`
-/

namespace A283307.P16333636828797931830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342562 n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342563 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A283307.P16333636828797931830

/-! ## A283307.P4387070413140325216

`A342563(lt[1, acot(A342561(n))])`
-/

namespace A283307.P4387070413140325216
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (A342561 n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342563 (SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n)

end

end A283307.P4387070413140325216

/-! ## A283307.P7216108062608029062

`A342563(lt[1, acot(A342562(n))])`
-/

namespace A283307.P7216108062608029062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (A342562 n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342563 (SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n)

end

end A283307.P7216108062608029062

/-! ## A283307.P1288848293680223689

`A342563(record[gcd(n, A342561(n))])`
-/

namespace A283307.P1288848293680223689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A342561 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342563 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A283307.P1288848293680223689

/-!
# A283308: List points (x,y) having integer coordinates, sorted first by x^2+y^2 and in case of ties, by x-coordinate and then by y-coordinate. Sequence gives y-coordinates.

The programs for A283308, there is no canonical definition to state claims against.
-/

/-! ## A283308.P4455507429942749652

`A342561(eq[-1, A342562(n)])`
-/

namespace A283308.P4455507429942749652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342562 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342561 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A283308.P4455507429942749652

/-! ## A283308.P7708007341651754680

`-A343632(eq[0, A343631(n)])`
-/

namespace A283308.P7708007341651754680
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343631 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A343632 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283308.P7708007341651754680

/-! ## A283308.P17927342212191701707

`A342561(eq[-1, A343632(n)])`
-/

namespace A283308.P17927342212191701707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343632 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342561 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A283308.P17927342212191701707

/-! ## A283308.P10911995431752493881

`A343631(eq[-1, A343632(n)])`
-/

namespace A283308.P10911995431752493881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343632 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343631 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A283308.P10911995431752493881

/-! ## A283308.P16352661419970179163

`Δ[A358377(3*n+5)%3]`
-/

namespace A283308.P16352661419970179163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A358377 (3 * n + 5)) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A283308.P16352661419970179163

/-!
# A283312: a(n) = smallest missing positive number, unless a(n-1) was a prime in which case a(n) = 2*a(n-1).

The programs for A283312, there is no canonical definition to state claims against.
-/

/-! ## A283312.P13299904640537094821

`A338357(n)+a(n-1)` with `a(0)=1`
-/

namespace A283312.P13299904640537094821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A338357 n + a (n - 1)

end

end A283312.P13299904640537094821

/-! ## A283312.P13188522767007194148

`∑[A338357(A028310(n))]`
-/

namespace A283312.P13188522767007194148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338357 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A283312.P13188522767007194148

/-! ## A283312.P1079547174658072461

`∑[A338357(A004275(n+1)-n)]`
-/

namespace A283312.P1079547174658072461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338357 (A004275 (n + 1) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A283312.P1079547174658072461

/-! ## A283312.P6956634310058787823

`∑[A338357(n+1)]+1-A338357(n+1)`
-/

namespace A283312.P6956634310058787823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338357 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A338357 (n + 1))

end

end A283312.P6956634310058787823

/-! ## A283312.P10380486701819907288

`∑[A338357(A008619(A004275(n)))]`
-/

namespace A283312.P10380486701819907288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338357 (A008619 (A004275 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A283312.P10380486701819907288

/-! ## A283312.P9612708472673751064

`∑[A338357(A065033(A004273(n)))]`
-/

namespace A283312.P9612708472673751064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338357 (A065033 (A004273 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A283312.P9612708472673751064

/-! ## A283312.P8587742324962662135

`∑[A338357(A065033(2*n))]`
-/

namespace A283312.P8587742324962662135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338357 (A065033 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A283312.P8587742324962662135

/-! ## A283312.P6523706175220600863

`∑[A338357(A338643(A000124(n)))]`
-/

namespace A283312.P6523706175220600863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338357 (A338643 (A000124 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A283312.P6523706175220600863

/-!
# A283313: Smallest missing number after A283312(n) has been found.

The programs for A283313, there is no canonical definition to state claims against.
-/

/-! ## A283313.P4881337841807459996

`A283312(floor(A283312(n+2)/a(n-1)+n)+1)` with `a(0)=2`
-/

namespace A283313.P4881337841807459996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A283312 (⌊(A283312 (n + 2) : ℚ) / (a (n - 1) : ℚ) + (n : ℚ)⌋ + 1).toNat

end

end A283313.P4881337841807459996

/-! ## A283313.P13491110263710934197

`A281354(n+1)+Δ[A102683(A000579(n))]`
-/

namespace A283313.P13491110263710934197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102683 (A000579 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281354 (n + 1) + (f1 (n + 1) - f1 n)

end

end A283313.P13491110263710934197

/-!
# A283314: Total number of knots (prime or composite) with <= n crossings.

The programs for A283314, there is no canonical definition to state claims against.
-/

/-! ## A283314.P14063212634023840718

`∑[A086825(n)]`
-/

namespace A283314.P14063212634023840718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086825 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A283314.P14063212634023840718

/-! ## A283314.P9575983623753254543

`A283315(n)+1`
-/

namespace A283314.P9575983623753254543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283315 n + 1

end

end A283314.P9575983623753254543

/-! ## A283314.P17299157888921153267

`ceil(A358513(n)/5)`
-/

namespace A283314.P17299157888921153267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A358513 n : ℚ) / 5⌉

end

end A283314.P17299157888921153267

/-! ## A283314.P13029156366066600348

`round(A104508(n)/12)+1`
-/

namespace A283314.P13029156366066600348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A104508 n : ℚ) / 12) + 1

end

end A283314.P13029156366066600348

/-!
# A283315: Total number of nontrivial knots (prime or composite) with <= n crossings.

The programs for A283315, there is no canonical definition to state claims against.
-/

/-! ## A283315.P1009163106054199672

`A283314(n)-1`
-/

namespace A283315.P1009163106054199672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283314 n - 1

end

end A283315.P1009163106054199672

/-! ## A283315.P8619288337726380405

`floor(A089324(n)/3)`
-/

namespace A283315.P8619288337726380405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A089324 n : ℚ) / 3⌋

end

end A283315.P8619288337726380405

/-! ## A283315.P12912165942735840847

`∑[A086825(n)]-1`
-/

namespace A283315.P12912165942735840847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086825 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A283315.P12912165942735840847

/-! ## A283315.P8037082035394378838

`round(A104508(n)/12)`
-/

namespace A283315.P8037082035394378838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A104508 n : ℚ) / 12)

end

end A283315.P8037082035394378838

/-! ## A283315.P12508342507006430695

`round(root(A215789(n+1), ϕ))-1`
-/

namespace A283315.P12508342507006430695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A215789 (n + 1) : ℝ) ^ (1 / Real.goldenRatio)) - 1

end

end A283315.P12508342507006430695

/-!
# A283316: Image of 0 under repeated applications of the morphism 0 -> 0,0,0,1, 1 -> 1,1,1,0.

The programs for A283316, the canonical program `A283316.P17339832045397034403` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A283316 has offset 1).

The definition of A283316 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A283316.P17339832045397034403

`A160383(n)%2`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A283316

/-- `A160383(n)%2` -/
def P17339832045397034403.Spec : Prop :=
  ∀ n, P17339832045397034403.a n = A283316 (n + 1)

theorem P17339832045397034403.correct : P17339832045397034403.Spec := by
  intro n
  simp only [A283316, Nat.add_sub_cancel]

end A283316

/-! ## A283316.P185476694286730933

`val(A338854(n), 3)%2`
-/

namespace A283316.P185476694286730933
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A338854 n).toNat 3 % 2

end

end A283316.P185476694286730933

namespace A283316

/-- `val(A338854(n), 3)%2` -/
def P185476694286730933.Spec : Prop :=
  ∀ n, (P185476694286730933.a n : ℤ) = A283316 (n + 1)

end A283316

/-! ## A283316.P10877750213428451235

`A269723(and(n, 2*n))`
-/

namespace A283316.P10877750213428451235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269723 (Nat.land n (2 * n))

end

end A283316.P10877750213428451235

namespace A283316

/-- `A269723(and(n, 2*n))` -/
def P10877750213428451235.Spec : Prop :=
  ∀ n, P10877750213428451235.a n = A283316 (n + 1)

end A283316

/-! ## A283316.P6702261012382228333

`A341389(A048735(n))`
-/

namespace A283316.P6702261012382228333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341389 (A048735 n).toNat

end

end A283316.P6702261012382228333

namespace A283316

/-- `A341389(A048735(n))` -/
def P6702261012382228333.Spec : Prop :=
  ∀ n, P6702261012382228333.a n = A283316 (n + 1)

end A283316

/-! ## A283316.P6456801872767672662

`A269723(A213370(n))`
-/

namespace A283316.P6456801872767672662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269723 (A213370 n).toNat

end

end A283316.P6456801872767672662

namespace A283316

/-- `A269723(A213370(n))` -/
def P6456801872767672662.Spec : Prop :=
  ∀ n, P6456801872767672662.a n = A283316 (n + 1)

end A283316

/-! ## A283316.P9108910080839502561

`A269723(A380110(n))`
-/

namespace A283316.P9108910080839502561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269723 (A380110 n).toNat

end

end A283316.P9108910080839502561

namespace A283316

/-- `A269723(A380110(n))` -/
def P9108910080839502561.Spec : Prop :=
  ∀ n, P9108910080839502561.a n = A283316 (n + 1)

end A283316

/-! ## A283316.P7989702649956070752

`A341120(n)-A059252(n)`
-/

namespace A283316.P7989702649956070752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341120 n - A059252 n

end

end A283316.P7989702649956070752

namespace A283316

/-- `A341120(n)-A059252(n)` -/
def P7989702649956070752.Spec : Prop :=
  ∀ n, P7989702649956070752.a n = A283316 (n + 1)

end A283316

/-! ## A283316.P8471710318889503435

`A341121(n)-A059253(n)`
-/

namespace A283316.P8471710318889503435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341121 n - A059253 n

end

end A283316.P8471710318889503435

namespace A283316

/-- `A341121(n)-A059253(n)` -/
def P8471710318889503435.Spec : Prop :=
  ∀ n, P8471710318889503435.a n = A283316 (n + 1)

end A283316

/-! ## A283316.P15593038295643848803

`and(A001535(n), A160383(n))`
-/

namespace A283316.P15593038295643848803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001535 n) (A160383 n)

end

end A283316.P15593038295643848803

namespace A283316

/-- `and(A001535(n), A160383(n))` -/
def P15593038295643848803.Spec : Prop :=
  ∀ n, P15593038295643848803.a n = A283316 (n + 1)

end A283316

/-! ## A283316.P384503886663220711

`and(A001546(n), A160383(n))`
-/

namespace A283316.P384503886663220711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001546 n) (A160383 n)

end

end A283316.P384503886663220711

namespace A283316

/-- `and(A001546(n), A160383(n))` -/
def P384503886663220711.Spec : Prop :=
  ∀ n, P384503886663220711.a n = A283316 (n + 1)

end A283316

/-! ## A283316.P11977709020266713225

`and(A001846(n), A160383(n))`
-/

namespace A283316.P11977709020266713225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001846 n) (A160383 n)

end

end A283316.P11977709020266713225

namespace A283316

/-- `and(A001846(n), A160383(n))` -/
def P11977709020266713225.Spec : Prop :=
  ∀ n, P11977709020266713225.a n = A283316 (n + 1)

end A283316

/-! ## A283316.P3691733044032251033

`and(A016760(n), A160383(n))`
-/

namespace A283316.P3691733044032251033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A016760 n) (A160383 n)

end

end A283316.P3691733044032251033

namespace A283316

/-- `and(A016760(n), A160383(n))` -/
def P3691733044032251033.Spec : Prop :=
  ∀ n, P3691733044032251033.a n = A283316 (n + 1)

end A283316

/-! ## A283316.P3769015324583059605

`and(A016820(n), A160383(n))`
-/

namespace A283316.P3769015324583059605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A016820 n) (A160383 n)

end

end A283316.P3769015324583059605

namespace A283316

/-- `and(A016820(n), A160383(n))` -/
def P3769015324583059605.Spec : Prop :=
  ∀ n, P3769015324583059605.a n = A283316 (n + 1)

end A283316

/-! ## A283316.P3367339523186446824

`and(A017286(n), A160383(n))`
-/

namespace A283316.P3367339523186446824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A017286 n) (A160383 n)

end

end A283316.P3367339523186446824

namespace A283316

/-- `and(A017286(n), A160383(n))` -/
def P3367339523186446824.Spec : Prop :=
  ∀ n, P3367339523186446824.a n = A283316 (n + 1)

end A283316

/-! ## A283316.P2138520879584562466

`and(A017310(n), A160383(n))`
-/

namespace A283316.P2138520879584562466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A017310 n) (A160383 n)

end

end A283316.P2138520879584562466

namespace A283316

/-- `and(A017310(n), A160383(n))` -/
def P2138520879584562466.Spec : Prop :=
  ∀ n, P2138520879584562466.a n = A283316 (n + 1)

end A283316

/-! ## A283316.P13358884540197794205

`and(A017334(n), A160383(n))`
-/

namespace A283316.P13358884540197794205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A017334 n) (A160383 n)

end

end A283316.P13358884540197794205

namespace A283316

/-- `and(A017334(n), A160383(n))` -/
def P13358884540197794205.Spec : Prop :=
  ∀ n, P13358884540197794205.a n = A283316 (n + 1)

end A283316

/-! ## A283316.P4293911050688394016

`and(A017358(n), A160383(n))`
-/

namespace A283316.P4293911050688394016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A017358 n) (A160383 n)

end

end A283316.P4293911050688394016

namespace A283316

/-- `and(A017358(n), A160383(n))` -/
def P4293911050688394016.Spec : Prop :=
  ∀ n, P4293911050688394016.a n = A283316 (n + 1)

end A283316

/-! ## A283316.P5366874849686680853

`and(A017382(n), A160383(n))`
-/

namespace A283316.P5366874849686680853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A017382 n) (A160383 n)

end

end A283316.P5366874849686680853

namespace A283316

/-- `and(A017382(n), A160383(n))` -/
def P5366874849686680853.Spec : Prop :=
  ∀ n, P5366874849686680853.a n = A283316 (n + 1)

end A283316

/-! ## A283316.P13452698246560859469

`and(A017538(n), A160383(n))`
-/

namespace A283316.P13452698246560859469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A017538 n) (A160383 n)

end

end A283316.P13452698246560859469

namespace A283316

/-- `and(A017538(n), A160383(n))` -/
def P13452698246560859469.Spec : Prop :=
  ∀ n, P13452698246560859469.a n = A283316 (n + 1)

end A283316

/-!
# A283317: Image of 0 under repeated applications of the morphism 0 -> 0,0,0,0,1, 1 -> 1,1,1,1,0.

The programs for A283317, the canonical program `A283317.P17118573524570604165` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A283317 has offset 1).

The definition of A283317 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A283317.P17118573524570604165

`val(A194459(n), 5)%2`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A283317

/-- `val(A194459(n), 5)%2` -/
def P17118573524570604165.Spec : Prop :=
  ∀ n, (P17118573524570604165.a n : ℤ) = A283317 (n + 1)

theorem P17118573524570604165.correct : P17118573524570604165.Spec := by
  intro n
  simp only [A283317, Nat.add_sub_cancel]

end A283317

/-! ## A283317.P13782024929334257917

`A086483(A194459(n))`
-/

namespace A283317.P13782024929334257917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086483 (A194459 n).toNat

end

end A283317.P13782024929334257917

namespace A283317

/-- `A086483(A194459(n))` -/
def P13782024929334257917.Spec : Prop :=
  ∀ n, P13782024929334257917.a n = A283317 (n + 1)

end A283317

/-! ## A283317.P2717398260728073900

`A011710(A133303(n+1))`
-/

namespace A283317.P2717398260728073900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011710 (A133303 (n + 1)).toNat

end

end A283317.P2717398260728073900

namespace A283317

/-- `A011710(A133303(n+1))` -/
def P2717398260728073900.Spec : Prop :=
  ∀ n, P2717398260728073900.a n = A283317 (n + 1)

end A283317

/-! ## A283317.P1255163359202255061

`and(2, A005843(val(A194459(n), 5)))/2`
-/

namespace A283317.P1255163359202255061
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land 2 (A005843 (SequenceMachineLib.valuation (A194459 n).toNat 5)) : ℚ) / 2

end

end A283317.P1255163359202255061

namespace A283317

/-- `and(2, A005843(val(A194459(n), 5)))/2` -/
def P1255163359202255061.Spec : Prop :=
  ∀ n, P1255163359202255061.a n = (A283317 (n + 1) : ℚ)

end A283317

/-! ## A283317.P13147891912773104508

`A179081(A001744(n+1))`
-/

namespace A283317.P13147891912773104508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179081 (A001744 (n + 1)).toNat

end

end A283317.P13147891912773104508

namespace A283317

/-- `A179081(A001744(n+1))` -/
def P13147891912773104508.Spec : Prop :=
  ∀ n, P13147891912773104508.a n = A283317 (n + 1)

end A283317

/-! ## A283317.P15482208586471142466

`A102679(A014263(n+1))%2`
-/

namespace A283317.P15482208586471142466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A102679 (A014263 (n + 1)).toNat) 2

end

end A283317.P15482208586471142466

namespace A283317

/-- `A102679(A014263(n+1))%2` -/
def P15482208586471142466.Spec : Prop :=
  ∀ n, P15482208586471142466.a n = A283317 (n + 1)

end A283317

/-!
# A283318: Image of 0 under repeated applications of the morphism 0 -> 0,1,0,0, 1 -> 1,1,0,1.

The programs for A283318, there is no canonical definition to state claims against.
-/

/-! ## A283318.P4838998011505242992

`A056966(A048647(n))%2`
-/

namespace A283318.P4838998011505242992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056966 (A048647 n).toNat) 2

end

end A283318.P4838998011505242992

/-! ## A283318.P6004143425766347737

`A038189(A053985(n)+A006015(n))`
-/

namespace A283318.P6004143425766347737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038189 (A053985 n + A006015 n).toNat

end

end A283318.P6004143425766347737

/-! ## A283318.P14034075691994876861

`and(A000034(8*n), A056966(A048647(n)))`
-/

namespace A283318.P14034075691994876861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000034 (8 * n)) (A056966 (A048647 n).toNat)

end

end A283318.P14034075691994876861

/-! ## A283318.P2841545287516537669

`and(A000051(n), A056966(A048647(n)))`
-/

namespace A283318.P2841545287516537669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000051 n) (A056966 (A048647 n).toNat)

end

end A283318.P2841545287516537669

/-! ## A283318.P5525693136487031214

`and(A023394(n+1), A360434(n))`
-/

namespace A283318.P5525693136487031214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A023394 (n + 1)) (A360434 n)

end

end A283318.P5525693136487031214

/-!
# A283319: Image of 0 under repeated applications of the morphism 0 -> 0,0,1,2, 1 -> 1,1,2, 2 -> 0,2,2.

The programs for A283319, there is no canonical definition to state claims against.
-/

/-! ## A283319.P7771895808047934018

`A212811(n+1)-1`
-/

namespace A283319.P7771895808047934018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212811 (n + 1) - 1

end

end A283319.P7771895808047934018

/-! ## A283319.P727942821196590922

`5%A212811(A000027(n+1))`
-/

namespace A283319.P727942821196590922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 5 (A212811 (A000027 (n + 1)).toNat)

end

end A283319.P727942821196590922

/-! ## A283319.P13792293568902239348

`A001513(n)%A212811(n+1)`
-/

namespace A283319.P13792293568902239348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001513 n) (A212811 (n + 1))

end

end A283319.P13792293568902239348

/-! ## A283319.P18335484942794836193

`A001538(n)%A212811(n+1)`
-/

namespace A283319.P18335484942794836193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001538 n) (A212811 (n + 1))

end

end A283319.P18335484942794836193

/-! ## A283319.P17979968977736259970

`A002146(n)%A212811(n+1)`
-/

namespace A283319.P17979968977736259970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002146 n) (A212811 (n + 1))

end

end A283319.P17979968977736259970

/-! ## A283319.P4477941859976296730

`A002148(n)%A212811(n+1)`
-/

namespace A283319.P4477941859976296730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002148 n) (A212811 (n + 1))

end

end A283319.P4477941859976296730

/-! ## A283319.P13523600541525013881

`A004538(n)%A212811(n+1)`
-/

namespace A283319.P13523600541525013881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004538 n) (A212811 (n + 1))

end

end A283319.P13523600541525013881

/-! ## A283319.P18338861786135232853

`A016969(n)%A212811(n+1)`
-/

namespace A283319.P18338861786135232853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016969 n) (A212811 (n + 1))

end

end A283319.P18338861786135232853

/-! ## A283319.P11060116492336301861

`A016971(n)%A212811(n+1)`
-/

namespace A283319.P11060116492336301861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016971 n) (A212811 (n + 1))

end

end A283319.P11060116492336301861

/-! ## A283319.P3054827661339533677

`A016973(n)%A212811(n+1)`
-/

namespace A283319.P3054827661339533677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016973 n) (A212811 (n + 1))

end

end A283319.P3054827661339533677

/-! ## A283319.P7804631886468966217

`A016975(n)%A212811(n+1)`
-/

namespace A283319.P7804631886468966217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016975 n) (A212811 (n + 1))

end

end A283319.P7804631886468966217

/-! ## A283319.P7602925888535092776

`A017581(n)%A212811(n+1)`
-/

namespace A283319.P7602925888535092776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017581 n) (A212811 (n + 1))

end

end A283319.P7602925888535092776

/-! ## A283319.P9971312657969773244

`A017583(n)%A212811(n+1)`
-/

namespace A283319.P9971312657969773244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017583 n) (A212811 (n + 1))

end

end A283319.P9971312657969773244

/-! ## A283319.P4412428760209775105

`A017585(n)%A212811(n+1)`
-/

namespace A283319.P4412428760209775105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017585 n) (A212811 (n + 1))

end

end A283319.P4412428760209775105

/-! ## A283319.P13707058574288670947

`A017653(n)%A212811(n+1)`
-/

namespace A283319.P13707058574288670947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017653 n) (A212811 (n + 1))

end

end A283319.P13707058574288670947

/-! ## A283319.P16784754629554188721

`A017655(n)%A212811(n+1)`
-/

namespace A283319.P16784754629554188721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017655 n) (A212811 (n + 1))

end

end A283319.P16784754629554188721

/-! ## A283319.P12964411174509631518

`A017657(n)%A212811(n+1)`
-/

namespace A283319.P12964411174509631518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017657 n) (A212811 (n + 1))

end

end A283319.P12964411174509631518

/-! ## A283319.P18331557944794668476

`A031929(n)%A212811(n+1)`
-/

namespace A283319.P18331557944794668476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A031929 n) (A212811 (n + 1))

end

end A283319.P18331557944794668476

/-! ## A283319.P11942538141909470970

`A031935(n)%A212811(n+1)`
-/

namespace A283319.P11942538141909470970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A031935 n) (A212811 (n + 1))

end

end A283319.P11942538141909470970

/-!
# A283320: Composite semisimple numbers.

The programs for A283320, there is no canonical definition to state claims against.
-/

/-! ## A283320.P4866138685492498205

`eq[A010051(n+1)+1, A283530(n+1)]+1`
-/

namespace A283320.P4866138685492498205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283530 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A283320.P4866138685492498205

/-! ## A283320.P5253721235359649902

`filter[A283736(n+1), A005171(#)]`
-/

namespace A283320.P5253721235359649902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A283320.P5253721235359649902

/-! ## A283320.P15749087894939791642

`filter[A283736(n+1), A066247(#)]`
-/

namespace A283320.P15749087894939791642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A283320.P15749087894939791642

/-! ## A283320.P3874212054000333573

`filter[A283736(n+1), A087429(#)]`
-/

namespace A283320.P3874212054000333573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A087429 (f1 j).toNat = 1) n)

end

end A283320.P3874212054000333573

/-! ## A283320.P16640168343427814466

`filter[A283736(n+1), A174898(#)]`
-/

namespace A283320.P16640168343427814466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A174898 (f1 j).toNat = 1) n)

end

end A283320.P16640168343427814466

/-!
# A283321: Triangle read by rows: T(n,k) (0 <= k <= n) = number of elements of alternating semigroup A_n of height k.

The programs for A283321, there is no canonical definition to state claims against.
-/

/-! ## A283321.P17453082867326678171

`gcd(A014682(A196347(n)), A021010(n))`
-/

namespace A283321.P17453082867326678171
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A014682 (A196347 n).toNat) (A021010 n)

end

end A283321.P17453082867326678171

/-! ## A283321.P16992672846330930363

`gcd(A000217(A196347(n)), A144084(n))`
-/

namespace A283321.P16992672846330930363
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000217 (A196347 n).toNat) (A144084 n)

end

end A283321.P16992672846330930363

/-!
# A283322: Row sums of triangle in A283321.

The programs for A283322, there is no canonical definition to state claims against.
-/

/-! ## A283322.P9472118194919856863

`A260443(n)+A027868(A023001(n))`
-/

namespace A283322.P9472118194919856863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260443 n + A027868 (A023001 n).toNat

end

end A283322.P9472118194919856863

/-! ## A283322.P8453688452443282355

`A103221(A331965(n+1)+A026113(n))`
-/

namespace A283322.P8453688452443282355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (A331965 (n + 1) + A026113 n).toNat

end

end A283322.P8453688452443282355

/-!
# A283323: a(n) = 4*a(n-2)+1 with initial terms 1,3,7.

The programs for A283323, the canonical program `A283323.P13096286243482224154` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A283323 has offset 0).

The definition of A283323 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*a(n-2)+1` (program `A283323.P13096286243482224154`, by `A283323.P13096286243482224154.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A283323.P13096286243482224154

`4*a(n-2)+1` with `a(0)=1, a(1)=3, a(2)=7`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A283323

/-- `4*a(n-2)+1` -/
def P13096286243482224154.Spec : Prop :=
  ∀ n, (P13096286243482224154.a n : ℤ) = A283323 n

theorem P13096286243482224154.correct : P13096286243482224154.Spec := by
  intro n
  simp only [A283323]

end A283323

/-! ## A283323.P12390064535261220926

`∑[4*a(n-2)]` with `a(0)=1, a(1)=2, a(2)=4, a(3)=6`
-/

namespace A283323.P12390064535261220926
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 4, 6] fun n f1 =>
  4 * f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A283323.P12390064535261220926

namespace A283323

/-- `∑[4*a(n-2)]` -/
def P12390064535261220926.Spec : Prop :=
  ∀ n, (P12390064535261220926.a n : ℤ) = A283323 n

end A283323

/-! ## A283323.P3405892897951910516

`3-(2%n-4*a(n-2))` with `a(0)=1, a(1)=3`
-/

namespace A283323.P3405892897951910516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  3 - (((2 % n : ℕ) : ℤ) - 4 * a (n - 2))

end

end A283323.P3405892897951910516

namespace A283323

/-- `3-(2%n-4*a(n-2))` -/
def P3405892897951910516.Spec : Prop :=
  ∀ n, P3405892897951910516.a n = A283323 n

end A283323

/-! ## A283323.P13849198643027649405

`2*A136336(n)-1`
-/

namespace A283323.P13849198643027649405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A136336 n - 1

end

end A283323.P13849198643027649405

namespace A283323

/-- `2*A136336(n)-1` -/
def P13849198643027649405.Spec : Prop :=
  ∀ n, P13849198643027649405.a n = A283323 n

end A283323

/-! ## A283323.P3210657593813153791

`∑[round((A284354(n)+1)/2)]`
-/

namespace A283323.P3210657593813153791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A284354 n + 1 : ℚ) / 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A283323.P3210657593813153791

namespace A283323

/-- `∑[round((A284354(n)+1)/2)]` -/
def P3210657593813153791.Spec : Prop :=
  ∀ n, P3210657593813153791.a n = A283323 n

end A283323

/-! ## A283323.P3121064437190821172

`A133572(n)+a(n-1)` with `a(0)=1, a(1)=3`
-/

namespace A283323.P3121064437190821172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A133572 n + a (n - 1)

end

end A283323.P3121064437190821172

namespace A283323

/-- `A133572(n)+a(n-1)` -/
def P3121064437190821172.Spec : Prop :=
  ∀ n, P3121064437190821172.a n = A283323 n

end A283323

/-! ## A283323.P17661438938450495589

`A097163(n)+floor(2^(n-1))`
-/

namespace A283323.P17661438938450495589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097163 n + ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

end

end A283323.P17661438938450495589

namespace A283323

/-- `A097163(n)+floor(2^(n-1))` -/
def P17661438938450495589.Spec : Prop :=
  ∀ n, P17661438938450495589.a n = A283323 n

end A283323

/-! ## A283323.P10032529423933679988

`or(floor(2^(n-1)), A086893(n+1))`
-/

namespace A283323.P10032529423933679988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ (A086893 (n + 1))

end

end A283323.P10032529423933679988

namespace A283323

/-- `or(floor(2^(n-1)), A086893(n+1))` -/
def P10032529423933679988.Spec : Prop :=
  ∀ n, P10032529423933679988.a n = A283323 n

end A283323

/-! ## A283323.P3820673840490505687

`A131577(n)+A097163(n)`
-/

namespace A283323.P3820673840490505687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n + A097163 n

end

end A283323.P3820673840490505687

namespace A283323

/-- `A131577(n)+A097163(n)` -/
def P3820673840490505687.Spec : Prop :=
  ∀ n, P3820673840490505687.a n = A283323 n

end A283323

/-! ## A283323.P3775130346622555423

`xor(A061547(n+1), A083329(n))`
-/

namespace A283323.P3775130346622555423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A061547 (n + 1)) (A083329 n)

end

end A283323.P3775130346622555423

namespace A283323

/-- `xor(A061547(n+1), A083329(n))` -/
def P3775130346622555423.Spec : Prop :=
  ∀ n, P3775130346622555423.a n = A283323 n

end A283323

/-! ## A283323.P14582219327457716474

`2*(A305750(n)+A131577(n))-1`
-/

namespace A283323.P14582219327457716474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A305750 n + A131577 n) - 1

end

end A283323.P14582219327457716474

namespace A283323

/-- `2*(A305750(n)+A131577(n))-1` -/
def P14582219327457716474.Spec : Prop :=
  ∀ n, P14582219327457716474.a n = A283323 n

end A283323

/-! ## A283323.P18190338503003692617

`A003945(n)+A001045(n-A000035(n))`
-/

namespace A283323.P18190338503003692617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003945 n + A001045 ((n : ℤ) - A000035 n).toNat

end

end A283323.P18190338503003692617

namespace A283323

/-- `A003945(n)+A001045(n-A000035(n))` -/
def P18190338503003692617.Spec : Prop :=
  ∀ n, P18190338503003692617.a n = A283323 n

end A283323

/-! ## A283323.P17239414150370785925

`floor(A277954(n+1)/2)`
-/

namespace A283323.P17239414150370785925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A277954 (n + 1) : ℚ) / 2⌋

end

end A283323.P17239414150370785925

namespace A283323

/-- `floor(A277954(n+1)/2)` -/
def P17239414150370785925.Spec : Prop :=
  ∀ n, P17239414150370785925.a n = A283323 n

end A283323

/-! ## A283323.P11955740921332979678

`A097164(n)-A140252(n)`
-/

namespace A283323.P11955740921332979678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097164 n - A140252 n

end

end A283323.P11955740921332979678

namespace A283323

/-- `A097164(n)-A140252(n)` -/
def P11955740921332979678.Spec : Prop :=
  ∀ n, P11955740921332979678.a n = A283323 n

end A283323

/-! ## A283323.P5818840238798801610

`A052549(n)-A061547(n+1)`
-/

namespace A283323.P5818840238798801610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052549 n - A061547 (n + 1)

end

end A283323.P5818840238798801610

namespace A283323

/-- `A052549(n)-A061547(n+1)` -/
def P5818840238798801610.Spec : Prop :=
  ∀ n, P5818840238798801610.a n = A283323 n

end A283323

/-! ## A283323.P5213544248629074385

`∑[A290662(n)+1]-A290662(n)`
-/

namespace A283323.P5213544248629074385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290662 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A290662 n

end

end A283323.P5213544248629074385

namespace A283323

/-- `∑[A290662(n)+1]-A290662(n)` -/
def P5213544248629074385.Spec : Prop :=
  ∀ n, P5213544248629074385.a n = A283323 n

end A283323

/-! ## A283323.P5307301720809208682

`A347834(A101881(n))`
-/

namespace A283323.P5307301720809208682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347834 (A101881 n).toNat

end

end A283323.P5307301720809208682

namespace A283323

/-- `A347834(A101881(n))` -/
def P5307301720809208682.Spec : Prop :=
  ∀ n, P5307301720809208682.a n = A283323 n

end A283323

/-! ## A283323.P9724039438855439114

`A263806(n)%A048578(n)`
-/

namespace A283323.P9724039438855439114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A263806 n) (A048578 n)

end

end A283323.P9724039438855439114

namespace A283323

/-- `A263806(n)%A048578(n)` -/
def P9724039438855439114.Spec : Prop :=
  ∀ n, P9724039438855439114.a n = A283323 n

end A283323

/-!
# A283324: Number of ON cells at generation n in the reversible cellular automaton RCA(2) when started with a single ON cell at generation 0.

The programs for A283324, there is no canonical definition to state claims against.
-/

/-! ## A283324.P6345941643015460843

`∑{digits}[A284232(n), #]`
-/

namespace A283324.P6345941643015460843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284232 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A283324.P6345941643015460843

/-! ## A283324.P330797961109459464

`∑{e}[A278222(A284234(n)), #]`
-/

namespace A283324.P330797961109459464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278222 (A284234 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A283324.P330797961109459464

/-! ## A283324.P2069836811003831243

`dr(A007088(A284234(n)))`
-/

namespace A283324.P2069836811003831243
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007088 (A284234 n).toNat)

end

end A283324.P2069836811003831243

/-! ## A283324.P15561138710599237172

`∑{digits}[A007088(A284234(n)), A000045(#)]`
-/

namespace A283324.P15561138710599237172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A284234 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A000045 x).sum

end

end A283324.P15561138710599237172

/-! ## A283324.P10929172576313005215

`∑{digits}[A007088(A284234(n)), A000120(#)]`
-/

namespace A283324.P10929172576313005215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A284234 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A000120 x).sum

end

end A283324.P10929172576313005215

/-!
# A283325: Lengths of runs of successive zeros in A283683.

The programs for A283325, the canonical program `A283325.P1796176472703323700` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A283325 has offset 1).

The definition of A283325 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8721 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A283325.P1796176472703323700

`Δ[record[(n+1)*A283683(n+1)]]-1`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A283325

/-- `Δ[record[(n+1)*A283683(n+1)]]-1` -/
def P1796176472703323700.Spec : Prop :=
  ∀ n, P1796176472703323700.a n = A283325 (n + 1)

theorem P1796176472703323700.correct : P1796176472703323700.Spec := by
  intro n
  simp only [A283325, Nat.add_sub_cancel]

end A283325

/-! ## A283325.P2089554466093967490

`A289207(Δ[record[n*A283683(n+1)]])+1`
-/

namespace A283325.P2089554466093967490
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A283683 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (f1 (n + 1) - f1 n).toNat + 1

end

end A283325.P2089554466093967490

namespace A283325

/-- `A289207(Δ[record[n*A283683(n+1)]])+1` -/
def P2089554466093967490.Spec : Prop :=
  ∀ n, P2089554466093967490.a n = A283325 (n + 1)

end A283325

/-! ## A283325.P14706442654348228275

`A345913(Δ[record[(n+1)*A283683(n+1)]])`
-/

namespace A283325.P14706442654348228275
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A283683 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345913 (f1 (n + 1) - f1 n).toNat

end

end A283325.P14706442654348228275

namespace A283325

/-- `A345913(Δ[record[(n+1)*A283683(n+1)]])` -/
def P14706442654348228275.Spec : Prop :=
  ∀ n, P14706442654348228275.a n = A283325 (n + 1)

end A283325

/-!
# A283326: Number of compatible Parke-Taylor factors for the graph obtained by combining one bubble with a regular n-gon.

The programs for A283326, there is no canonical definition to state claims against.
-/

/-! ## A283326.P3062728373554800712

`A140975(n)+A002264(A164588(n))`
-/

namespace A283326.P3062728373554800712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140975 n + A002264 (A164588 n).toNat

end

end A283326.P3062728373554800712

/-!
# A283329: a(n) = (1 + Sum_{j=1..K-1} a(n-j) + a(n-1)*a(n-K+1))/a(n-K) with a(1),...,a(K)=1, where K=4.

The programs for A283329, the canonical program `A283329.P9023269722620787968` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A283329 has offset 1).

The definition of A283329 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A283329.P9023269722620787968

`51*a(n-3)-51*a(n-6)+a(n-9)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=5, a(5)=13, a(6)=33, a(7)=217, a(8)=617`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A283329

/-- `51*a(n-3)-51*a(n-6)+a(n-9)` -/
def P9023269722620787968.Spec : Prop :=
  ∀ n, P9023269722620787968.a n = A283329 (n + 1)

theorem P9023269722620787968.correct : P9023269722620787968.Spec := by
  intro n
  simp only [A283329, Nat.add_sub_cancel]

end A283329

/-! ## A283329.P12682238750032228593

`A063951(A153982(n))`
-/

namespace A283329.P12682238750032228593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063951 (A153982 n).toNat

end

end A283329.P12682238750032228593

namespace A283329

/-- `A063951(A153982(n))` -/
def P12682238750032228593.Spec : Prop :=
  ∀ n, P12682238750032228593.a n = A283329 (n + 1)

end A283329

/-! ## A283329.P11153432615353448974

`A064216(A069289(n!))`
-/

namespace A283329.P11153432615353448974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064216 (A069289 (Nat.factorial n)).toNat

end

end A283329.P11153432615353448974

namespace A283329

/-- `A064216(A069289(n!))` -/
def P11153432615353448974.Spec : Prop :=
  ∀ n, P11153432615353448974.a n = A283329 (n + 1)

end A283329

/-! ## A283329.P12122115776141058502

`or(1, A051775(A344605(n)))`
-/

namespace A283329.P12122115776141058502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A051775 (A344605 n).toNat)

end

end A283329.P12122115776141058502

namespace A283329

/-- `or(1, A051775(A344605(n)))` -/
def P12122115776141058502.Spec : Prop :=
  ∀ n, P12122115776141058502.a n = A283329 (n + 1)

end A283329

/-!
# A283330: a(n) = (1 + Sum_{j=1..K-1} a(n-j) + a(n-1)*a(n-K+1))/a(n-K) with a(1),...,a(K)=1, where K=5.

The programs for A283330, there is no canonical definition to state claims against.
-/

/-! ## A283330.P496813636342006397

`A283960(A062399(n+2))`
-/

namespace A283330.P496813636342006397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283960 (A062399 (n + 2)).toNat

end

end A283330.P496813636342006397

/-! ## A283330.P6879504139997458743

`A096135(A283960(n+2))`
-/

namespace A283330.P6879504139997458743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096135 (A283960 (n + 2)).toNat

end

end A283330.P6879504139997458743

/-! ## A283330.P10094828242800450859

`A242664(2^A038201(n))`
-/

namespace A283330.P10094828242800450859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242664 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A038201 n : ℤ))).toNat

end

end A283330.P10094828242800450859

/-! ## A283330.P1599665956366314921

`A283960(A032555(n+1)+1)`
-/

namespace A283330.P1599665956366314921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283960 (A032555 (n + 1) + 1).toNat

end

end A283330.P1599665956366314921

/-! ## A283330.P11681900531693026059

`A283960(A032559(n+1)+1)`
-/

namespace A283330.P11681900531693026059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283960 (A032559 (n + 1) + 1).toNat

end

end A283330.P11681900531693026059

/-!
# A283331: a(n) = (Sum_{j=1..(K-1)/2} a(n-2*j+1)*a(n-2*j))/a(n-K) with a(1),...,a(K)=1, where K=7.

The programs for A283331, there is no canonical definition to state claims against.
-/

/-! ## A283331.P1154935769090707316

`A324760(∑[A014374(n)])`
-/

namespace A283331.P1154935769090707316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014374 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324760 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A283331.P1154935769090707316

/-! ## A283331.P10448829461366802383

`A113983(A113983(n)+A001591(n))`
-/

namespace A283331.P10448829461366802383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113983 (A113983 n + A001591 n).toNat

end

end A283331.P10448829461366802383

/-! ## A283331.P7765265993748640037

`A032568(A265065(n)-A219675(n))`
-/

namespace A283331.P7765265993748640037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032568 (A265065 n - A219675 n).toNat

end

end A283331.P7765265993748640037

/-!
# A283332: a(n) = (Sum_{j=1..(K-1)/2} a(n-2*j+1)*a(n-2*j))/a(n-K) with a(1),...,a(K)=1, where K=9.

The programs for A283332, there is no canonical definition to state claims against.
-/

/-! ## A283332.P18360129899621663784

`gcd(floor(ϕ²*(n+1))², A269061(3*(n+1)))`
-/

namespace A283332.P18360129899621663784
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (⌊Real.goldenRatio ^ 2 * (n + 1 : ℝ)⌋ ^ 2) (A269061 (3 * (n + 1)))

end

end A283332.P18360129899621663784

/-! ## A283332.P17071282908851931146

`A170929(A370530(n))`
-/

namespace A283332.P17071282908851931146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170929 (A370530 n).toNat

end

end A283332.P17071282908851931146

/-! ## A283332.P984076449806417711

`A114282(A146622(n+1))`
-/

namespace A283332.P984076449806417711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114282 (A146622 (n + 1)).toNat

end

end A283332.P984076449806417711

/-! ## A283332.P6964011389183397057

`A162339(A306752(n)+1)`
-/

namespace A283332.P6964011389183397057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162339 (A306752 n + 1).toNat

end

end A283332.P6964011389183397057

/-! ## A283332.P940545811087194923

`A349703(A288543(n+4))`
-/

namespace A283332.P940545811087194923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349703 (A288543 (n + 4)).toNat

end

end A283332.P940545811087194923

/-!
# A283333: Main diagonal of A283272.

The programs for A283333, there is no canonical definition to state claims against.
-/

/-! ## A283333.P16652887493822177001

`A283272(∑[4*n])`
-/

namespace A283333.P16652887493822177001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283272 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A283333.P16652887493822177001

/-! ## A283333.P15769932723606832092

`A283272(A046092(n))+A025469(n)`
-/

namespace A283333.P15769932723606832092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283272 (A046092 n).toNat + A025469 n

end

end A283333.P15769932723606832092

/-! ## A283333.P4240620216108548948

`or(A018843(n), A283272(A046092(n)))`
-/

namespace A283333.P4240620216108548948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A018843 n) (A283272 (A046092 n).toNat)

end

end A283333.P4240620216108548948

/-! ## A283333.P10850918312301617239

`A283272(A046092(n))+A034562(n+1)`
-/

namespace A283333.P10850918312301617239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283272 (A046092 n).toNat + A034562 (n + 1)

end

end A283333.P10850918312301617239

/-!
# A283335: Expansion of exp( Sum_{n>=1} -A062796(n)/n*x^n ) in powers of x.

The programs for A283335, there is no canonical definition to state claims against.
-/

/-! ## A283335.P8155829950492558126

`A008833(n+1)-A254667(A174627(n))`
-/

namespace A283335.P8155829950492558126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008833 (n + 1) - A254667 (A174627 n).toNat

end

end A283335.P8155829950492558126

/-! ## A283335.P13347843584106925477

`1-A121928(A038054(n)-A008290(n))`
-/

namespace A283335.P13347843584106925477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A121928 (A038054 n - A008290 n).toNat

end

end A283335.P13347843584106925477

/-!
# A283336: Expansion of exp( Sum_{n>=1} -sigma_6(n)*x^n/n ) in powers of x.

The programs for A283336, there is no canonical definition to state claims against.
-/

/-! ## A283336.P3799337559821776904

`A283272(A055999(n+3))`
-/

namespace A283336.P3799337559821776904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283272 (A055999 (n + 3)).toNat

end

end A283336.P3799337559821776904

/-! ## A283336.P11683201891574109876

`A283272(eq[2, A116949(n)])`
-/

namespace A283336.P11683201891574109876
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116949 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283272 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283336.P11683201891574109876

/-! ## A283336.P9930622314751671492

`A283272(eq[5, A025581(n)])`
-/

namespace A283336.P9930622314751671492
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283272 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283336.P9930622314751671492

/-! ## A283336.P12257258572901735646

`A283272(A000217(n+6)-6)`
-/

namespace A283336.P12257258572901735646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283272 (A000217 (n + 6) - 6).toNat

end

end A283336.P12257258572901735646

/-! ## A283336.P14379998158546153706

`A283272(eq[6, A004736(n+1)])`
-/

namespace A283336.P14379998158546153706
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283272 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283336.P14379998158546153706

/-!
# A283337: Expansion of exp( Sum_{n>=1} -sigma_7(n)*x^n/n ) in powers of x.

The programs for A283337, there is no canonical definition to state claims against.
-/

/-! ## A283337.P12661251097111140279

`A283272(eq[6, A025581(n)])`
-/

namespace A283337.P12661251097111140279
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283272 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283337.P12661251097111140279

/-! ## A283337.P7706315110060864871

`A283272(A055999(n+4)-1)`
-/

namespace A283337.P7706315110060864871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283272 (A055999 (n + 4) - 1).toNat

end

end A283337.P7706315110060864871

/-! ## A283337.P17307636603791483367

`A283272(A000217(n+7)-7)`
-/

namespace A283337.P17307636603791483367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283272 (A000217 (n + 7) - 7).toNat

end

end A283337.P17307636603791483367

/-! ## A283337.P6344921033601273346

`A283272(eq[7, A004736(n+1)])`
-/

namespace A283337.P6344921033601273346
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283272 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283337.P6344921033601273346

/-! ## A283337.P10724190347847125833

`A283272(A000124(n+6)+n-1)`
-/

namespace A283337.P10724190347847125833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283272 (A000124 (n + 6) + ((n : ℤ) - 1)).toNat

end

end A283337.P10724190347847125833

/-!
# A283338: Expansion of exp( Sum_{n>=1} -sigma_8(n)*x^n/n ) in powers of x.

The programs for A283338, there is no canonical definition to state claims against.
-/

/-! ## A283338.P10254195991307458416

`A283272(eq[7, A025581(n)])`
-/

namespace A283338.P10254195991307458416
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283272 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283338.P10254195991307458416

/-! ## A283338.P5569664127810831814

`A283272(eq[7, A195664(n)])`
-/

namespace A283338.P5569664127810831814
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283272 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283338.P5569664127810831814

/-! ## A283338.P7286992818167962423

`A283272(eq[8, A193739(n)])`
-/

namespace A283338.P7286992818167962423
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283272 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283338.P7286992818167962423

/-! ## A283338.P9946749529371532225

`A283272(eq[8, A004736(n+1)])`
-/

namespace A283338.P9946749529371532225
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283272 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283338.P9946749529371532225

/-! ## A283338.P16281507490408772694

`A283272(eq[19, A104887(n+1)])`
-/

namespace A283338.P16281507490408772694
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104887 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283272 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283338.P16281507490408772694

/-!
# A283339: Expansion of exp( Sum_{n>=1} -sigma_9(n)*x^n/n ) in powers of x.

The programs for A283339, there is no canonical definition to state claims against.
-/

/-! ## A283339.P13717644839653549942

`A283272(eq[3, A104975(n)])`
-/

namespace A283339.P13717644839653549942
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104975 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283272 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283339.P13717644839653549942

/-! ## A283339.P2951511934298463868

`A283272(eq[8, A025581(n)])`
-/

namespace A283339.P2951511934298463868
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283272 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283339.P2951511934298463868

/-! ## A283339.P17661175477353591462

`A283272(eq[9, A193739(n)])`
-/

namespace A283339.P17661175477353591462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283272 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283339.P17661175477353591462

/-! ## A283339.P10101875105619326504

`A283272(eq[16, A116949(n)])`
-/

namespace A283339.P10101875105619326504
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116949 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283272 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283339.P10101875105619326504

/-! ## A283339.P3157247561422984385

`A283272(eq[9, A004736(n+1)])`
-/

namespace A283339.P3157247561422984385
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283272 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283339.P3157247561422984385

/-!
# A283340: Expansion of exp( Sum_{n>=1} -sigma_10(n)*x^n/n ) in powers of x.

The programs for A283340, there is no canonical definition to state claims against.
-/

/-! ## A283340.P9375166667225065326

`A283272(eq[9, A025581(n)])`
-/

namespace A283340.P9375166667225065326
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283272 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283340.P9375166667225065326

/-! ## A283340.P16083838564470177575

`A283272(eq[10, A193739(n)])`
-/

namespace A283340.P16083838564470177575
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283272 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283340.P16083838564470177575

/-! ## A283340.P12764702563211408109

`A283272(eq[19, A099375(n)])`
-/

namespace A283340.P12764702563211408109
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283272 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283340.P12764702563211408109

/-! ## A283340.P13444542537127885374

`A283272(eq[10, A004736(n+1)])`
-/

namespace A283340.P13444542537127885374
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283272 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283340.P13444542537127885374

/-! ## A283340.P5962351698317092623

`A283272(A056000(A020715(n)))`
-/

namespace A283340.P5962351698317092623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283272 (A056000 (A020715 n).toNat).toNat

end

end A283340.P5962351698317092623

/-!
# A283341: Number of nX2 0..1 arrays with no 1 equal to more than two of its horizontal, vertical and antidiagonal neighbors, with the exception of exactly one element.

The programs for A283341, there is no canonical definition to state claims against.
-/

/-! ## A283341.P684201117593592115

`A283347(∑[n+1]+2)`
-/

namespace A283341.P684201117593592115
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283347 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A283341.P684201117593592115

/-! ## A283341.P2331896916816504711

`A283347(A000096(n+1))*A323022(n+1)`
-/

namespace A283341.P2331896916816504711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283347 (A000096 (n + 1)).toNat * A323022 (n + 1)

end

end A283341.P2331896916816504711

/-!
# A283342: Number of nX3 0..1 arrays with no 1 equal to more than two of its horizontal, vertical and antidiagonal neighbors, with the exception of exactly one element.

The programs for A283342, there is no canonical definition to state claims against.
-/

/-! ## A283342.P13555676161870876781

`A283347(∑[n+2]+4)`
-/

namespace A283342.P13555676161870876781
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283347 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A283342.P13555676161870876781

/-! ## A283342.P923450958314881253

`A283347(A167614(n+1))+A178798(n)`
-/

namespace A283342.P923450958314881253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283347 (A167614 (n + 1)).toNat + A178798 n

end

end A283342.P923450958314881253

/-! ## A283342.P8609972830672691546

`A283347(A167614(n+1))+A185284(n)`
-/

namespace A283342.P8609972830672691546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283347 (A167614 (n + 1)).toNat + A185284 n

end

end A283342.P8609972830672691546

/-! ## A283342.P14311889162423454552

`A265404(n)*A283347(A167614(n+1))`
-/

namespace A283342.P14311889162423454552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265404 n * A283347 (A167614 (n + 1)).toNat

end

end A283342.P14311889162423454552

/-! ## A283342.P837418240157533503

`A283347(A167614(n+1))%A017514(n)`
-/

namespace A283342.P837418240157533503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A283347 (A167614 (n + 1)).toNat) (A017514 n)

end

end A283342.P837418240157533503

/-!
# A283343: Number of nX4 0..1 arrays with no 1 equal to more than two of its horizontal, vertical and antidiagonal neighbors, with the exception of exactly one element.

The programs for A283343, there is no canonical definition to state claims against.
-/

/-! ## A283343.P6686004670898762955

`A283347(A374004(n+1))`
-/

namespace A283343.P6686004670898762955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283347 (A374004 (n + 1)).toNat

end

end A283343.P6686004670898762955

/-! ## A283343.P2291686205113119688

`A283347(A052905(n)+9)`
-/

namespace A283343.P2291686205113119688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283347 (A052905 n + 9).toNat

end

end A283343.P2291686205113119688

/-! ## A283343.P17098969348311485748

`A283347(A167614(n+2)+1)`
-/

namespace A283343.P17098969348311485748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283347 (A167614 (n + 2) + 1).toNat

end

end A283343.P17098969348311485748

/-! ## A283343.P16554720153828164539

`A283347(Δ[A264443(n)-n²])`
-/

namespace A283343.P16554720153828164539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283347 (f1 (n + 1) - f1 n).toNat

end

end A283343.P16554720153828164539

/-! ## A283343.P15365232021166918354

`record[A283347(A145018(A187185(n+1)))]`
-/

namespace A283343.P15365232021166918354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283347 (A145018 (A187185 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A283343.P15365232021166918354

/-!
# A283344: Number of nX5 0..1 arrays with no 1 equal to more than two of its horizontal, vertical and antidiagonal neighbors, with the exception of exactly one element.

The programs for A283344, there is no canonical definition to state claims against.
-/

/-! ## A283344.P17047252182142890619

`A283347(A374005(n+1))`
-/

namespace A283344.P17047252182142890619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283347 (A374005 (n + 1)).toNat

end

end A283344.P17047252182142890619

/-! ## A283344.P8124660541178151132

`A283347(A077169(n+5))`
-/

namespace A283344.P8124660541178151132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283347 (A077169 (n + 5)).toNat

end

end A283344.P8124660541178151132

/-! ## A283344.P1841360649757140682

`A283347(Δ[A006416(n+2)]+8)`
-/

namespace A283344.P1841360649757140682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006416 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283347 (f1 (n + 1) - f1 n + 8).toNat

end

end A283344.P1841360649757140682

/-! ## A283344.P7328616284249879419

`A283347(Δ[A264443(n)])`
-/

namespace A283344.P7328616284249879419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283347 (f1 (n + 1) - f1 n).toNat

end

end A283344.P7328616284249879419

/-! ## A283344.P3075841614697110767

`A283347(A056115(n)+11)`
-/

namespace A283344.P3075841614697110767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283347 (A056115 n + 11).toNat

end

end A283344.P3075841614697110767

/-!
# A283345: Number of n X 6 0..1 arrays with no 1 equal to more than two of its horizontal, vertical and antidiagonal neighbors, with the exception of exactly one element.

The programs for A283345, there is no canonical definition to state claims against.
-/

/-! ## A283345.P10699952299792049967

`A283347(A374007(n+1))`
-/

namespace A283345.P10699952299792049967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283347 (A374007 (n + 1)).toNat

end

end A283345.P10699952299792049967

/-! ## A283345.P4289060268621150959

`A283347(A056119(n)+16)`
-/

namespace A283345.P4289060268621150959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283347 (A056119 n + 16).toNat

end

end A283345.P4289060268621150959

/-! ## A283345.P15518676935202119460

`A283347(eq[8, A258709(n)])`
-/

namespace A283345.P15518676935202119460
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283347 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283345.P15518676935202119460

/-! ## A283345.P14781133814271903996

`A283347(eq[8, A185782(n+1)])`
-/

namespace A283345.P14781133814271903996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283347 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283345.P14781133814271903996

/-! ## A283345.P7676996621477173099

`A283347(Δ[Δ[A006504(n+1)]])`
-/

namespace A283345.P7676996621477173099
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283347 (f1 (n + 1) - f1 n).toNat

end

end A283345.P7676996621477173099

/-!
# A283346: Number of nX7 0..1 arrays with no 1 equal to more than two of its horizontal, vertical and antidiagonal neighbors, with the exception of exactly one element.

The programs for A283346, there is no canonical definition to state claims against.
-/

/-! ## A283346.P15323071129326957867

`A283347(C(n+7, 2)+7)`
-/

namespace A283346.P15323071129326957867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283347 (Nat.choose (n + 7) 2 + 7)

end

end A283346.P15323071129326957867

/-! ## A283346.P2318746951640156162

`A283347(A374008(n+1))`
-/

namespace A283346.P2318746951640156162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283347 (A374008 (n + 1)).toNat

end

end A283346.P2318746951640156162

/-! ## A283346.P10156967162925412709

`A283347(eq[8, A131818(n+1)])`
-/

namespace A283346.P10156967162925412709
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283347 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283346.P10156967162925412709

/-! ## A283346.P8393806039265850393

`A283347(A055999(n+4))`
-/

namespace A283346.P8393806039265850393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283347 (A055999 (n + 4)).toNat

end

end A283346.P8393806039265850393

/-! ## A283346.P5699102056155259733

`A283347(eq[6, A193592(n)])`
-/

namespace A283346.P5699102056155259733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283347 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283346.P5699102056155259733

/-!
# A283347: T(n,k)=Number of nXk 0..1 arrays with no 1 equal to more than two of its horizontal, vertical and antidiagonal neighbors, with the exception of exactly one element.

The programs for A283347, there is no canonical definition to state claims against.
-/

/-! ## A283347.P2539343989088594442

`A308180(A181821(3*n+4))%A022167(n)`
-/

namespace A283347.P2539343989088594442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A308180 (A181821 (3 * n + 4)).toNat) (A022167 n)

end

end A283347.P2539343989088594442

/-!
# A283348: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 617", based on the 5-celled von Neumann neighborhood.

The programs for A283348, there is no canonical definition to state claims against.
-/

/-! ## A283348.P5197146119519894983

`A280606(n)+A282871(n)-A280607(n)`
-/

namespace A283348.P5197146119519894983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280606 n + (A282871 n - A280607 n)

end

end A283348.P5197146119519894983

/-! ## A283348.P8368227428041358699

`A007088(A283350(n))`
-/

namespace A283348.P8368227428041358699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A283350 n).toNat

end

end A283348.P8368227428041358699

/-! ## A283348.P8413149068723868303

`A007088(lcm(A143025(n), A283349(n)))`
-/

namespace A283348.P8413149068723868303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.lcm (A143025 n) (A283349 n))

end

end A283348.P8413149068723868303

/-! ## A283348.P12306684187056217089

`A007088(and(-A280610(n), A095121(n)))`
-/

namespace A283348.P12306684187056217089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.land (-A280610 n) (A095121 n)).toNat

end

end A283348.P12306684187056217089

/-! ## A283348.P4673780813738530191

`A007088(A095121(n)+1-A280610(n))`
-/

namespace A283348.P4673780813738530191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A095121 n + (1 - A280610 n)).toNat

end

end A283348.P4673780813738530191

/-!
# A283349: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 617", based on the 5-celled von Neumann neighborhood.

The programs for A283349, the canonical program `A283349.P6209488496877640541` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A283349 has offset 0).

The definition of A283349 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A283349.P6209488496877640541

`a(n-1)+4*a(n-2)-4*a(n-3)` with `a(0)=1, a(1)=0, a(2)=3, a(3)=1, a(4)=14, a(5)=6, a(6)=62`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A283349

/-- `a(n-1)+4*a(n-2)-4*a(n-3)` -/
def P6209488496877640541.Spec : Prop :=
  ∀ n, P6209488496877640541.a n = A283349 n

theorem P6209488496877640541.correct : P6209488496877640541.Spec := by
  intro n
  simp only [A283349]

end A283349

/-! ## A283349.P652029967417754942

`or(6, 4*a(n-2))` with `a(0)=1, a(1)=0, a(2)=3, a(3)=1`
-/

namespace A283349.P652029967417754942
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 3, 1] fun n a =>
  Nat.lor 6 (4 * a (n - 2))

end

end A283349.P652029967417754942

namespace A283349

/-- `or(6, 4*a(n-2))` -/
def P652029967417754942.Spec : Prop :=
  ∀ n, (P652029967417754942.a n : ℤ) = A283349 n

end A283349

/-! ## A283349.P18308270078476230759

`A154383(n)-A130130(A004526(n))`
-/

namespace A283349.P18308270078476230759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154383 n - A130130 (A004526 n).toNat

end

end A283349.P18308270078476230759

namespace A283349

/-- `A154383(n)-A130130(A004526(n))` -/
def P18308270078476230759.Spec : Prop :=
  ∀ n, P18308270078476230759.a n = A283349 n

end A283349

/-! ## A283349.P10587005959444758176

`A283357(n+1)%(A283357(n)-a(n-1))` with `a(0)=1`
-/

namespace A283349.P10587005959444758176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.tmod (A283357 (n + 1)) (A283357 n - a (n - 1))

end

end A283349.P10587005959444758176

namespace A283349

/-- `A283357(n+1)%(A283357(n)-a(n-1))` -/
def P10587005959444758176.Spec : Prop :=
  ∀ n, P10587005959444758176.a n = A283349 n

end A283349

/-! ## A283349.P17430099199454325200

`A126646(n)%A280608(A028310(n))`
-/

namespace A283349.P17430099199454325200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126646 n) (A280608 (A028310 n).toNat)

end

end A283349.P17430099199454325200

namespace A283349

/-- `A126646(n)%A280608(A028310(n))` -/
def P17430099199454325200.Spec : Prop :=
  ∀ n, P17430099199454325200.a n = A283349 n

end A283349

/-! ## A283349.P1739780152251277148

`∑[A000079(n)]%A280608(A028310(n))`
-/

namespace A283349.P1739780152251277148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A280608 (A028310 n).toNat)

end

end A283349.P1739780152251277148

namespace A283349

/-- `∑[A000079(n)]%A280608(A028310(n))` -/
def P1739780152251277148.Spec : Prop :=
  ∀ n, P1739780152251277148.a n = A283349 n

end A283349

/-!
# A283350: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 617", based on the 5-celled von Neumann neighborhood.

The programs for A283350, the canonical program `A283350.P6825626281669182007` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A283350 has offset 0).

The definition of A283350 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A283350.P6825626281669182007

`2*a(n-1)+a(n-2)-2*a(n-3)` with `a(0)=1, a(1)=0, a(2)=6, a(3)=8, a(4)=14, a(5)=24, a(6)=62`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A283350

/-- `2*a(n-1)+a(n-2)-2*a(n-3)` -/
def P6825626281669182007.Spec : Prop :=
  ∀ n, P6825626281669182007.a n = A283350 n

theorem P6825626281669182007.correct : P6825626281669182007.Spec := by
  intro n
  simp only [A283350]

end A283350

/-! ## A283350.P1855206903644772546

`lcm(A143025(n), A283349(n))`
-/

namespace A283350.P1855206903644772546
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A143025 n) (A283349 n)

end

end A283350.P1855206903644772546

namespace A283350

/-- `lcm(A143025(n), A283349(n))` -/
def P1855206903644772546.Spec : Prop :=
  ∀ n, (P1855206903644772546.a n : ℤ) = A283350 n

end A283350

/-! ## A283350.P14632358999393324487

`A280608(n)+A283349(n)-A280610(n)`
-/

namespace A283350.P14632358999393324487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280608 n + (A283349 n - A280610 n)

end

end A283350.P14632358999393324487

namespace A283350

/-- `A280608(n)+A283349(n)-A280610(n)` -/
def P14632358999393324487.Spec : Prop :=
  ∀ n, P14632358999393324487.a n = A283350 n

end A283350

/-! ## A283350.P14534846700855648032

`and(-A280610(n), A095121(n))`
-/

namespace A283350.P14534846700855648032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A280610 n) (A095121 n)

end

end A283350.P14534846700855648032

namespace A283350

/-- `and(-A280610(n), A095121(n))` -/
def P14534846700855648032.Spec : Prop :=
  ∀ n, P14534846700855648032.a n = A283350 n

end A283350

/-! ## A283350.P14877320099943565511

`A052955(A004277(n))-A280610(n)`
-/

namespace A283350.P14877320099943565511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052955 (A004277 n).toNat - A280610 n

end

end A283350.P14877320099943565511

namespace A283350

/-- `A052955(A004277(n))-A280610(n)` -/
def P14877320099943565511.Spec : Prop :=
  ∀ n, P14877320099943565511.a n = A283350 n

end A283350

/-! ## A283350.P11225813442958227540

`A126646(n)-A280610(n)%A280606(n)`
-/

namespace A283350.P11225813442958227540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n - Int.tmod (A280610 n) (A280606 n)

end

end A283350.P11225813442958227540

namespace A283350

/-- `A126646(n)-A280610(n)%A280606(n)` -/
def P11225813442958227540.Spec : Prop :=
  ∀ n, P11225813442958227540.a n = A283350 n

end A283350

/-!
# A283351: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 619", based on the 5-celled von Neumann neighborhood.

The programs for A283351, the canonical program `A283351.P7294209392179528084` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A283351 has offset 0).

The definition of A283351 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A283351.P7294209392179528084

`A002275(or(1, abs(1-n)))`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A283351

/-- `A002275(or(1, abs(1-n)))` -/
def P7294209392179528084.Spec : Prop :=
  ∀ n, P7294209392179528084.a n = A283351 n

theorem P7294209392179528084.correct : P7294209392179528084.Spec := by
  intro n
  simp only [A283351]

end A283351

/-! ## A283351.P16199116397969892336

`A002275(abs(n-char[2*n]))`
-/

namespace A283351.P16199116397969892336
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 |(n : ℤ) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)|.toNat

end

end A283351.P16199116397969892336

namespace A283351

/-- `A002275(abs(n-char[2*n]))` -/
def P16199116397969892336.Spec : Prop :=
  ∀ n, P16199116397969892336.a n = A283351 n

end A283351

/-! ## A283351.P9205784258841750576

`A002276(abs(char[2*n]-n))/2`
-/

namespace A283351.P9205784258841750576
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002276 |((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - (n : ℤ)|.toNat : ℚ) / 2

end

end A283351.P9205784258841750576

namespace A283351

/-- `A002276(abs(char[2*n]-n))/2` -/
def P9205784258841750576.Spec : Prop :=
  ∀ n, P9205784258841750576.a n = (A283351 n : ℚ)

end A283351

/-! ## A283351.P8372911302652434509

`A000042(n-∑{d}[n, round(1/#)]+1)`
-/

namespace A283351.P8372911302652434509
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 ((n : ℤ) - ∑ d ∈ Nat.divisors (f1 n), SequenceMachineLib.roundAway (1 / (d : ℚ)) + 1).toNat

end

end A283351.P8372911302652434509

namespace A283351

/-- `A000042(n-∑{d}[n, round(1/#)]+1)` -/
def P8372911302652434509.Spec : Prop :=
  ∀ n, P8372911302652434509.a n = A283351 n

end A283351

/-! ## A283351.P2035835229851471390

`A282411(record[abs(or(2, n-1))]-(n+1))`
-/

namespace A283351.P2035835229851471390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor 2 ((n : ℤ) - 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282411 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n + 1 : ℤ)).toNat

end

end A283351.P2035835229851471390

namespace A283351

/-- `A282411(record[abs(or(2, n-1))]-(n+1))` -/
def P2035835229851471390.Spec : Prop :=
  ∀ n, P2035835229851471390.a n = A283351 n

end A283351

/-! ## A283351.P13349569579701603550

`A282412(record[abs(or(2, n-1))]-(n+1))`
-/

namespace A283351.P13349569579701603550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor 2 ((n : ℤ) - 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282412 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n + 1 : ℤ)).toNat

end

end A283351.P13349569579701603550

namespace A283351

/-- `A282412(record[abs(or(2, n-1))]-(n+1))` -/
def P13349569579701603550.Spec : Prop :=
  ∀ n, P13349569579701603550.a n = A283351 n

end A283351

/-! ## A283351.P301764738950658336

`A131664(A370980(n))`
-/

namespace A283351.P301764738950658336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131664 (A370980 n).toNat

end

end A283351.P301764738950658336

namespace A283351

/-- `A131664(A370980(n))` -/
def P301764738950658336.Spec : Prop :=
  ∀ n, P301764738950658336.a n = A283351 n

end A283351

/-! ## A283351.P15945691768958319180

`A000042(A053438(n)-n)`
-/

namespace A283351.P15945691768958319180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (A053438 n - (n : ℤ)).toNat

end

end A283351.P15945691768958319180

namespace A283351

/-- `A000042(A053438(n)-n)` -/
def P15945691768958319180.Spec : Prop :=
  ∀ n, P15945691768958319180.a n = A283351 n

end A283351

/-! ## A283351.P839937574516068662

`A000042(abs(Δ[A141310(n)]))`
-/

namespace A283351.P839937574516068662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 |f1 (n + 1) - f1 n|.toNat

end

end A283351.P839937574516068662

namespace A283351

/-- `A000042(abs(Δ[A141310(n)]))` -/
def P839937574516068662.Spec : Prop :=
  ∀ n, P839937574516068662.a n = A283351 n

end A283351

/-! ## A283351.P5366784653015967990

`A000042(2*A065033(n)-1)`
-/

namespace A283351.P5366784653015967990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (2 * A065033 n - 1).toNat

end

end A283351.P5366784653015967990

namespace A283351

/-- `A000042(2*A065033(n)-1)` -/
def P5366784653015967990.Spec : Prop :=
  ∀ n, P5366784653015967990.a n = A283351 n

end A283351

/-! ## A283351.P8732153967044747360

`A282657(floor(∑[n]/A008619(n)))`
-/

namespace A283351.P8732153967044747360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282657 ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (A008619 n : ℚ)⌋.toNat

end

end A283351.P8732153967044747360

namespace A283351

/-- `A282657(floor(∑[n]/A008619(n)))` -/
def P8732153967044747360.Spec : Prop :=
  ∀ n, P8732153967044747360.a n = A283351 n

end A283351

/-! ## A283351.P14068038332172268819

`A290681(A058992(A080513(n)))`
-/

namespace A283351.P14068038332172268819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290681 (A058992 (A080513 n).toNat).toNat

end

end A283351.P14068038332172268819

namespace A283351

/-- `A290681(A058992(A080513(n)))` -/
def P14068038332172268819.Spec : Prop :=
  ∀ n, P14068038332172268819.a n = A283351 n

end A283351

/-! ## A283351.P2536757385397760681

`A290191(n-A266161(A266161(n)))`
-/

namespace A283351.P2536757385397760681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290191 ((n : ℤ) - A266161 (A266161 n).toNat).toNat

end

end A283351.P2536757385397760681

namespace A283351

/-- `A290191(n-A266161(A266161(n)))` -/
def P2536757385397760681.Spec : Prop :=
  ∀ n, P2536757385397760681.a n = A283351 n

end A283351

/-! ## A283351.P16943215324847188735

`A000042(A065033(n)+A065033(n)-1)`
-/

namespace A283351.P16943215324847188735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (A065033 n + (A065033 n - 1)).toNat

end

end A283351.P16943215324847188735

namespace A283351

/-- `A000042(A065033(n)+A065033(n)-1)` -/
def P16943215324847188735.Spec : Prop :=
  ∀ n, P16943215324847188735.a n = A283351 n

end A283351

/-! ## A283351.P7149557234968593512

`A000042(A065033(n)-(1-A065033(n)))`
-/

namespace A283351.P7149557234968593512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (A065033 n - (1 - A065033 n)).toNat

end

end A283351.P7149557234968593512

namespace A283351

/-- `A000042(A065033(n)-(1-A065033(n)))` -/
def P7149557234968593512.Spec : Prop :=
  ∀ n, P7149557234968593512.a n = A283351 n

end A283351

/-! ## A283351.P9554826485275744710

`A280411(∑{digits}[A283352(n), #])`
-/

namespace A283351.P9554826485275744710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283352 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280411 ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A283351.P9554826485275744710

namespace A283351

/-- `A280411(∑{digits}[A283352(n), #])` -/
def P9554826485275744710.Spec : Prop :=
  ∀ n, P9554826485275744710.a n = A283351 n

end A283351

/-! ## A283351.P15439062007324517127

`A280411(∑{digits}[1-A290660(n), #])`
-/

namespace A283351.P15439062007324517127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A290660 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280411 ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A283351.P15439062007324517127

namespace A283351

/-- `A280411(∑{digits}[1-A290660(n), #])` -/
def P15439062007324517127.Spec : Prop :=
  ∀ n, P15439062007324517127.a n = A283351 n

end A283351

/-!
# A283352: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 619", based on the 5-celled von Neumann neighborhood.

The programs for A283352, the canonical program `A283352.P13054535847704051275` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A283352 has offset 0).

The definition of A283352 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A283352.P1969612103969051782

`A290660(n)-ceil(abs(sin(n)))`
-/

namespace A283352.P1969612103969051782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290660 n - ⌈|Real.sin (n : ℝ)|⌉

end

end A283352.P1969612103969051782

namespace A283352

/-- `A290660(n)-ceil(abs(sin(n)))` -/
def P1969612103969051782.Spec : Prop :=
  ∀ n, P1969612103969051782.a n = A283352 n

end A283352

/-! ## A283352.P11822327751513686951

`A290660(n)-A178334(n)`
-/

namespace A283352.P11822327751513686951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290660 n - A178334 n

end

end A283352.P11822327751513686951

namespace A283352

/-- `A290660(n)-A178334(n)` -/
def P11822327751513686951.Spec : Prop :=
  ∀ n, P11822327751513686951.a n = A283352 n

end A283352

/-! ## A283352.P9013428604098929145

`A290660(n)-char[A029579(n)]`
-/

namespace A283352.P9013428604098929145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290660 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A283352.P9013428604098929145

namespace A283352

/-- `A290660(n)-char[A029579(n)]` -/
def P9013428604098929145.Spec : Prop :=
  ∀ n, P9013428604098929145.a n = A283352 n

end A283352

/-! ## A283352.P13054535847704051275

`A000007(n)+A290660(n)-1`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A283352

/-- `A000007(n)+A290660(n)-1` -/
def P13054535847704051275.Spec : Prop :=
  ∀ n, P13054535847704051275.a n = A283352 n

theorem P13054535847704051275.correct : P13054535847704051275.Spec := by
  intro n
  simp only [A283352]

end A283352

/-! ## A283352.P18231391454274110741

`A290660(n)-and(1, A014551(n))`
-/

namespace A283352.P18231391454274110741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290660 n - Int.land 1 (A014551 n)

end

end A283352.P18231391454274110741

namespace A283352

/-- `A290660(n)-and(1, A014551(n))` -/
def P18231391454274110741.Spec : Prop :=
  ∀ n, P18231391454274110741.a n = A283352 n

end A283352

/-! ## A283352.P17305894067772001250

`A290660(n)-and(1, A166956(n))`
-/

namespace A283352.P17305894067772001250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290660 n - Int.land 1 (A166956 n)

end

end A283352.P17305894067772001250

namespace A283352

/-- `A290660(n)-and(1, A166956(n))` -/
def P17305894067772001250.Spec : Prop :=
  ∀ n, P17305894067772001250.a n = A283352 n

end A283352

/-! ## A283352.P7032477120069272958

`A290660(n)-char[A003051(n+1)]`
-/

namespace A283352.P7032477120069272958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003051 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290660 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A283352.P7032477120069272958

namespace A283352

/-- `A290660(n)-char[A003051(n+1)]` -/
def P7032477120069272958.Spec : Prop :=
  ∀ n, P7032477120069272958.a n = A283352 n

end A283352

/-! ## A283352.P11678425775394584524

`xor((A000040(n+1)+2)%2, A290660(n))`
-/

namespace A283352.P11678425775394584524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (Int.tmod (A000040 (n + 1) + 2) 2) (A290660 n)

end

end A283352.P11678425775394584524

namespace A283352

/-- `xor((A000040(n+1)+2)%2, A290660(n))` -/
def P11678425775394584524.Spec : Prop :=
  ∀ n, P11678425775394584524.a n = A283352 n

end A283352

/-! ## A283352.P17178805779845660124

`A290660(n)-A000035(A004273(n))`
-/

namespace A283352.P17178805779845660124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290660 n - A000035 (A004273 n).toNat

end

end A283352.P17178805779845660124

namespace A283352

/-- `A290660(n)-A000035(A004273(n))` -/
def P17178805779845660124.Spec : Prop :=
  ∀ n, P17178805779845660124.a n = A283352 n

end A283352

/-! ## A283352.P10536250882727891171

`A290660(n)+A166956(and(1, A166956(n)))`
-/

namespace A283352.P10536250882727891171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290660 n + A166956 (Int.land 1 (A166956 n)).toNat

end

end A283352.P10536250882727891171

namespace A283352

/-- `A290660(n)+A166956(and(1, A166956(n)))` -/
def P10536250882727891171.Spec : Prop :=
  ∀ n, P10536250882727891171.a n = A283352 n

end A283352

/-! ## A283352.P3609665285322434167

`A290660(n)-A166977(n)/A014551(n)`
-/

namespace A283352.P3609665285322434167
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A290660 n : ℚ) - (A166977 n : ℚ) / (A014551 n : ℚ)

end

end A283352.P3609665285322434167

namespace A283352

/-- `A290660(n)-A166977(n)/A014551(n)` -/
def P3609665285322434167.Spec : Prop :=
  ∀ n, P3609665285322434167.a n = (A283352 n : ℚ)

end A283352

/-! ## A283352.P10442657096575858328

`A290660(n)-A000007(A000007(n)*A290660(n))`
-/

namespace A283352.P10442657096575858328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290660 n - A000007 (A000007 n * A290660 n).toNat

end

end A283352.P10442657096575858328

namespace A283352

/-- `A290660(n)-A000007(A000007(n)*A290660(n))` -/
def P10442657096575858328.Spec : Prop :=
  ∀ n, P10442657096575858328.a n = A283352 n

end A283352

/-! ## A283352.P8595513659249276000

`A290660(n)-A000007(A000007(n)/A290660(n))`
-/

namespace A283352.P8595513659249276000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290660 n - A000007 (SequenceMachineLib.roundAway ((A000007 n : ℚ) / (A290660 n : ℚ))).toNat

end

end A283352.P8595513659249276000

namespace A283352

/-- `A290660(n)-A000007(A000007(n)/A290660(n))` -/
def P8595513659249276000.Spec : Prop :=
  ∀ n, P8595513659249276000.a n = A283352 n

end A283352

/-!
# A283353: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 619", based on the 5-celled von Neumann neighborhood.

The programs for A283353, the canonical program `A283353.P11388500987967097882` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A283353 has offset 0).

The definition of A283353 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A283353.P11388500987967097882

`2*a(n-1)+a(n-2)-2*a(n-3)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=14`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A283353

/-- `2*a(n-1)+a(n-2)-2*a(n-3)` -/
def P11388500987967097882.Spec : Prop :=
  ∀ n, P11388500987967097882.a n = A283353 n

theorem P11388500987967097882.correct : P11388500987967097882.Spec := by
  intro n
  simp only [A283353]

end A283353

/-! ## A283353.P632440302539282394

`2^(n+1)-(2^n)%6`
-/

namespace A283353.P632440302539282394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) - ((2 ^ n % 6 : ℕ) : ℤ)

end

end A283353.P632440302539282394

namespace A283353

/-- `2^(n+1)-(2^n)%6` -/
def P632440302539282394.Spec : Prop :=
  ∀ n, P632440302539282394.a n = A283353 n

end A283353

/-! ## A283353.P17539582369256806767

`xor(2, a(n-1)+2^n)` with `a(0)=1, a(1)=2`
-/

namespace A283353.P17539582369256806767
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  Nat.xor 2 (a (n - 1) + 2 ^ n)

end

end A283353.P17539582369256806767

namespace A283353

/-- `xor(2, a(n-1)+2^n)` -/
def P17539582369256806767.Spec : Prop :=
  ∀ n, (P17539582369256806767.a n : ℤ) = A283353 n

end A283353

/-! ## A283353.P17312249854723225349

`2*(2^n-a(n-1)%3)` with `a(0)=1`
-/

namespace A283353.P17312249854723225349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * ((2 ^ n : ℤ) - Int.tmod (a (n - 1)) 3)

end

end A283353.P17312249854723225349

namespace A283353

/-- `2*(2^n-a(n-1)%3)` -/
def P17312249854723225349.Spec : Prop :=
  ∀ n, P17312249854723225349.a n = A283353 n

end A283353

/-! ## A283353.P5907525129046434916

`2*(a(n-1)+3*n%2)` with `a(0)=1, a(1)=2`
-/

namespace A283353.P5907525129046434916
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  2 * (a (n - 1) + 3 * (n % 2))

end

end A283353.P5907525129046434916

namespace A283353

/-- `2*(a(n-1)+3*n%2)` -/
def P5907525129046434916.Spec : Prop :=
  ∀ n, (P5907525129046434916.a n : ℤ) = A283353 n

end A283353

/-! ## A283353.P5251613665745501146

`2^(n+1)-gcd(4, a(n-2))` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A283353.P5251613665745501146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  (2 ^ (n + 1) : ℤ) - (Int.gcd 4 (a (n - 2)) : ℤ)

end

end A283353.P5251613665745501146

namespace A283353

/-- `2^(n+1)-gcd(4, a(n-2))` -/
def P5251613665745501146.Spec : Prop :=
  ∀ n, P5251613665745501146.a n = A283353 n

end A283353

/-! ## A283353.P15814548710503154757

`a(n-1)+2*(a(n-2)+3)` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A283353.P15814548710503154757
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  a (n - 1) + 2 * (a (n - 2) + 3)

end

end A283353.P15814548710503154757

namespace A283353

/-- `a(n-1)+2*(a(n-2)+3)` -/
def P15814548710503154757.Spec : Prop :=
  ∀ n, (P15814548710503154757.a n : ℤ) = A283353 n

end A283353

/-! ## A283353.P513728487256613646

`abs(3-record[A014551(n)])`
-/

namespace A283353.P513728487256613646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014551 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |3 - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)|

end

end A283353.P513728487256613646

namespace A283353

/-- `abs(3-record[A014551(n)])` -/
def P513728487256613646.Spec : Prop :=
  ∀ n, P513728487256613646.a n = A283353 n

end A283353

/-! ## A283353.P4574880270367764929

`A135440(n)+a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A283353.P4574880270367764929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A135440 n + a (n - 1)

end

end A283353.P4574880270367764929

namespace A283353

/-- `A135440(n)+a(n-1)` -/
def P4574880270367764929.Spec : Prop :=
  ∀ n, P4574880270367764929.a n = A283353 n

end A283353

/-! ## A283353.P13404563726975007866

`xor(a(n-1)+5, A000225(n))` with `a(0)=1, a(1)=2`
-/

namespace A283353.P13404563726975007866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  Int.xor (a (n - 1) + 5) (A000225 n)

end

end A283353.P13404563726975007866

namespace A283353

/-- `xor(a(n-1)+5, A000225(n))` -/
def P13404563726975007866.Spec : Prop :=
  ∀ n, P13404563726975007866.a n = A283353 n

end A283353

/-! ## A283353.P6401814098003619114

`or(abs(2-∑[2^n])-1, A004277(n))`
-/

namespace A283353.P6401814098003619114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (|2 - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)| - 1) (A004277 n)

end

end A283353.P6401814098003619114

namespace A283353

/-- `or(abs(2-∑[2^n])-1, A004277(n))` -/
def P6401814098003619114.Spec : Prop :=
  ∀ n, P6401814098003619114.a n = A283353 n

end A283353

/-! ## A283353.P5577373078240654896

`A105812(n)+A091270(n)`
-/

namespace A283353.P5577373078240654896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105812 n + A091270 n

end

end A283353.P5577373078240654896

namespace A283353

/-- `A105812(n)+A091270(n)` -/
def P5577373078240654896.Spec : Prop :=
  ∀ n, P5577373078240654896.a n = A283353 n

end A283353

/-! ## A283353.P10927165222963507588

`A120672(n)+A081668(n)`
-/

namespace A283353.P10927165222963507588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120672 n + A081668 n

end

end A283353.P10927165222963507588

namespace A283353

/-- `A120672(n)+A081668(n)` -/
def P10927165222963507588.Spec : Prop :=
  ∀ n, P10927165222963507588.a n = A283353 n

end A283353

/-! ## A283353.P212714114567577062

`A087288(n)-A040008(n)`
-/

namespace A283353.P212714114567577062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087288 n - A040008 n

end

end A283353.P212714114567577062

namespace A283353

/-- `A087288(n)-A040008(n)` -/
def P212714114567577062.Spec : Prop :=
  ∀ n, P212714114567577062.a n = A283353 n

end A283353

/-! ## A283353.P7359092573090144814

`A198633(n)-A040003(n)`
-/

namespace A283353.P7359092573090144814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198633 n - A040003 n

end

end A283353.P7359092573090144814

namespace A283353

/-- `A198633(n)-A040003(n)` -/
def P7359092573090144814.Spec : Prop :=
  ∀ n, P7359092573090144814.a n = A283353 n

end A283353

/-! ## A283353.P16468648852245716302

`and(A095121(n), A290828(n))`
-/

namespace A283353.P16468648852245716302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A095121 n) (A290828 n)

end

end A283353.P16468648852245716302

namespace A283353

/-- `and(A095121(n), A290828(n))` -/
def P16468648852245716302.Spec : Prop :=
  ∀ n, P16468648852245716302.a n = A283353 n

end A283353

/-! ## A283353.P14828337343562924202

`xor(1, A284353(n)-A280560(n))`
-/

namespace A283353.P14828337343562924202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A284353 n - A280560 n)

end

end A283353.P14828337343562924202

namespace A283353

/-- `xor(1, A284353(n)-A280560(n))` -/
def P14828337343562924202.Spec : Prop :=
  ∀ n, P14828337343562924202.a n = A283353 n

end A283353

/-! ## A283353.P962304949891052583

`A062157(n)+A132738(n)-n`
-/

namespace A283353.P962304949891052583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 n + (A132738 n - (n : ℤ))

end

end A283353.P962304949891052583

namespace A283353

/-- `A062157(n)+A132738(n)-n` -/
def P962304949891052583.Spec : Prop :=
  ∀ n, P962304949891052583.a n = A283353 n

end A283353

/-! ## A283353.P2959080924255975632

`abs(2-(A126646(n)+A062157(n)))`
-/

namespace A283353.P2959080924255975632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - (A126646 n + A062157 n)|

end

end A283353.P2959080924255975632

namespace A283353

/-- `abs(2-(A126646(n)+A062157(n)))` -/
def P2959080924255975632.Spec : Prop :=
  ∀ n, P2959080924255975632.a n = A283353 n

end A283353

/-!
# A283355: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 621", based on the 5-celled von Neumann neighborhood.

The programs for A283355, there is no canonical definition to state claims against.
-/

/-! ## A283355.P14109576422827171988

`A007088(A283357(n))`
-/

namespace A283355.P14109576422827171988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A283357 n).toNat

end

end A283355.P14109576422827171988

/-! ## A283355.P9819301233371013221

`A185544(2*A283357(n))`
-/

namespace A283355.P9819301233371013221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A283357 n).toNat

end

end A283355.P9819301233371013221

/-! ## A283355.P1224336741369250124

`A185544(A283357(n)+A283357(n))`
-/

namespace A283355.P1224336741369250124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A283357 n + A283357 n).toNat

end

end A283355.P1224336741369250124

/-! ## A283355.P9314557413762547056

`∏{e}[7^n, A283404(#)]`
-/

namespace A283355.P9314557413762547056
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A283404 (Nat.factorization (f1 n) p)

end

end A283355.P9314557413762547056

/-!
# A283356: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 621", based on the 5-celled von Neumann neighborhood.

The programs for A283356, there is no canonical definition to state claims against.
-/

/-! ## A283356.P10427362271183941783

`A007088(A283358(n))`
-/

namespace A283356.P10427362271183941783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A283358 n).toNat

end

end A283356.P10427362271183941783

/-! ## A283356.P7344857386202595368

`A305989(A283357(n)/A043559(n))`
-/

namespace A283356.P7344857386202595368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (SequenceMachineLib.roundAway ((A283357 n : ℚ) / (A043559 n : ℚ))).toNat

end

end A283356.P7344857386202595368

/-! ## A283356.P2666361818165988516

`A305989(A283357(n)/A273866(n+1))`
-/

namespace A283356.P2666361818165988516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (SequenceMachineLib.roundAway ((A283357 n : ℚ) / (A273866 (n + 1) : ℚ))).toNat

end

end A283356.P2666361818165988516

/-! ## A283356.P4024699388877466903

`A305989(A283357(n))`
-/

namespace A283356.P4024699388877466903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (A283357 n).toNat

end

end A283356.P4024699388877466903

/-! ## A283356.P17360476884802084443

`A185544(2*A283358(n))`
-/

namespace A283356.P17360476884802084443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A283358 n).toNat

end

end A283356.P17360476884802084443

/-!
# A283357: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 621", based on the 5-celled von Neumann neighborhood.

The programs for A283357, the canonical program `A283357.P2515840956938671828` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A283357 has offset 0).

The definition of A283357 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A283357.P2515840956938671828

`a(n-1)+4*a(n-2)-4*a(n-3)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=11, a(4)=17, a(5)=46, a(6)=70, a(7)=190`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A283357

/-- `a(n-1)+4*a(n-2)-4*a(n-3)` -/
def P2515840956938671828.Spec : Prop :=
  ∀ n, P2515840956938671828.a n = A283357 n

theorem P2515840956938671828.correct : P2515840956938671828.Spec := by
  intro n
  simp only [A283357]

end A283357

/-! ## A283357.P1074296514301502129

`A265428(A133572(n+1)-A361110(n+1))`
-/

namespace A283357.P1074296514301502129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265428 (A133572 (n + 1) - A361110 (n + 1)).toNat

end

end A283357.P1074296514301502129

namespace A283357

/-- `A265428(A133572(n+1)-A361110(n+1))` -/
def P1074296514301502129.Spec : Prop :=
  ∀ n, P1074296514301502129.a n = A283357 n

end A283357

/-! ## A283357.P12356486681033880383

`A283406(n)+A014083(A007474(n))`
-/

namespace A283357.P12356486681033880383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283406 n + A014083 (A007474 n).toNat

end

end A283357.P12356486681033880383

namespace A283357

/-- `A283406(n)+A014083(A007474(n))` -/
def P12356486681033880383.Spec : Prop :=
  ∀ n, P12356486681033880383.a n = A283357 n

end A283357

/-! ## A283357.P2908538662186530532

`A283406(n)+A014083(A013170(n))`
-/

namespace A283357.P2908538662186530532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283406 n + A014083 (A013170 n).toNat

end

end A283357.P2908538662186530532

namespace A283357

/-- `A283406(n)+A014083(A013170(n))` -/
def P2908538662186530532.Spec : Prop :=
  ∀ n, P2908538662186530532.a n = A283357 n

end A283357

/-! ## A283357.P9177143769851028479

`A283406(n)+A112765(A346043(n))`
-/

namespace A283357.P9177143769851028479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283406 n + A112765 (A346043 n).toNat

end

end A283357.P9177143769851028479

namespace A283357

/-- `A283406(n)+A112765(A346043(n))` -/
def P9177143769851028479.Spec : Prop :=
  ∀ n, P9177143769851028479.a n = A283357 n

end A283357

/-!
# A283358: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 621", based on the 5-celled von Neumann neighborhood.

The programs for A283358, the canonical program `A283358.P6742332976465248455` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A283358 has offset 0).

The definition of A283358 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A283358.P6742332976465248455

`2*a(n-1)+a(n-2)-2*a(n-3)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=13, a(4)=17, a(5)=29, a(6)=49, a(7)=125`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A283358

/-- `2*a(n-1)+a(n-2)-2*a(n-3)` -/
def P6742332976465248455.Spec : Prop :=
  ∀ n, P6742332976465248455.a n = A283358 n

theorem P6742332976465248455.correct : P6742332976465248455.Spec := by
  intro n
  simp only [A283358]

end A283358

/-! ## A283358.P4730773774509776574

`A030101(A283357(n)/A043559(n))`
-/

namespace A283358.P4730773774509776574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (SequenceMachineLib.roundAway ((A283357 n : ℚ) / (A043559 n : ℚ))).toNat

end

end A283358.P4730773774509776574

namespace A283358

/-- `A030101(A283357(n)/A043559(n))` -/
def P4730773774509776574.Spec : Prop :=
  ∀ n, P4730773774509776574.a n = A283358 n

end A283358

/-! ## A283358.P5262697945727217540

`A030101(A283357(n)/A273866(n+1))`
-/

namespace A283358.P5262697945727217540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (SequenceMachineLib.roundAway ((A283357 n : ℚ) / (A273866 (n + 1) : ℚ))).toNat

end

end A283358.P5262697945727217540

namespace A283358

/-- `A030101(A283357(n)/A273866(n+1))` -/
def P5262697945727217540.Spec : Prop :=
  ∀ n, P5262697945727217540.a n = A283358 n

end A283358

/-! ## A283358.P3599953553397421623

`A030101(A283357(n)/A052343(A107760(n)))`
-/

namespace A283358.P3599953553397421623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (SequenceMachineLib.roundAway ((A283357 n : ℚ) / (A052343 (A107760 n).toNat : ℚ))).toNat

end

end A283358.P3599953553397421623

namespace A283358

/-- `A030101(A283357(n)/A052343(A107760(n)))` -/
def P3599953553397421623.Spec : Prop :=
  ∀ n, P3599953553397421623.a n = A283358 n

end A283358

/-! ## A283358.P8922923602600102552

`A325401(lcm(2, A283357(n)))`
-/

namespace A283358.P8922923602600102552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (Int.lcm 2 (A283357 n))

end

end A283358.P8922923602600102552

namespace A283358

/-- `A325401(lcm(2, A283357(n)))` -/
def P8922923602600102552.Spec : Prop :=
  ∀ n, P8922923602600102552.a n = A283358 n

end A283358

/-!
# A283360: Absolute values of first differences of A283025.

The programs for A283360, the canonical program `A283360.P18224020745696931425` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A283360 has offset 1).

The definition of A283360 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A283025, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A283360.P18224020745696931425

`abs(A283025(n+2)-A283025(n+1))`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A283360

/-- `abs(A283025(n+2)-A283025(n+1))` -/
def P18224020745696931425.Spec : Prop :=
  ∀ n, P18224020745696931425.a n = A283360 (n + 1)

theorem P18224020745696931425.correct : P18224020745696931425.Spec := by
  intro n
  simp only [A283360, Nat.add_sub_cancel]

end A283360

/-! ## A283360.P7017422390192987892

`abs(Δ[A283025(n+1)])`
-/

namespace A283360.P7017422390192987892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283025 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A283360.P7017422390192987892

namespace A283360

/-- `abs(Δ[A283025(n+1)])` -/
def P7017422390192987892.Spec : Prop :=
  ∀ n, P7017422390192987892.a n = A283360 (n + 1)

theorem P7017422390192987892.correct : P7017422390192987892.Spec := by
  intro n
  simp only [A283360, Nat.add_sub_cancel, A283360.P7017422390192987892.f1, A283360.P7017422390192987892.a, A283360.P18224020745696931425.a, SequenceMachineLib.memo_apply]

end A283360

/-! ## A283360.P10845176763461036374

`abs(Δ[A076268(n+1)%(n+1)])`
-/

namespace A283360.P10845176763461036374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A076268 (n + 1)) (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A283360.P10845176763461036374

namespace A283360

/-- `abs(Δ[A076268(n+1)%(n+1)])` -/
def P10845176763461036374.Spec : Prop :=
  ∀ n, P10845176763461036374.a n = A283360 (n + 1)

end A283360

/-! ## A283360.P13886501763058495143

`lcm(Δ[A283025(n+1)], A020985(n))`
-/

namespace A283360.P13886501763058495143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283025 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (f1 (n + 1) - f1 n) (A020985 n)

end

end A283360.P13886501763058495143

namespace A283360

/-- `lcm(Δ[A283025(n+1)], A020985(n))` -/
def P13886501763058495143.Spec : Prop :=
  ∀ n, (P13886501763058495143.a n : ℤ) = A283360 (n + 1)

end A283360

/-! ## A283360.P6490817327908411411

`abs(Δ[∑[A004001(n+1)-A284019(n+1)]%(n+1)])`
-/

namespace A283360.P6490817327908411411
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004001 (n + 1) - A284019 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f2 j) (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A283360.P6490817327908411411

namespace A283360

/-- `abs(Δ[∑[A004001(n+1)-A284019(n+1)]%(n+1)])` -/
def P6490817327908411411.Spec : Prop :=
  ∀ n, P6490817327908411411.a n = A283360 (n + 1)

end A283360

/-! ## A283360.P11189653228193473941

`A262689(Δ[A283025(n+1)]²)`
-/

namespace A283360.P11189653228193473941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283025 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A283360.P11189653228193473941

namespace A283360

/-- `A262689(Δ[A283025(n+1)]²)` -/
def P11189653228193473941.Spec : Prop :=
  ∀ n, P11189653228193473941.a n = A283360 (n + 1)

end A283360

/-! ## A283360.P2277884536220775919

`A000196(Δ[A283025(n+1)]²)`
-/

namespace A283360.P2277884536220775919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283025 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A283360.P2277884536220775919

namespace A283360

/-- `A000196(Δ[A283025(n+1)]²)` -/
def P2277884536220775919.Spec : Prop :=
  ∀ n, P2277884536220775919.a n = A283360 (n + 1)

end A283360

/-!
# A283361: a(n) = (Product_{k=2..floor(2*n/3)} k^2) mod (2n-1).

The programs for A283361, there is no canonical definition to state claims against.
-/

/-! ## A283361.P4093391526821862113

`A004523(n)!²%(2*n-1)`
-/

namespace A283361.P4093391526821862113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Nat.factorial (A004523 n).toNat ^ 2 : ℤ) ((2 * n : ℤ) - 1)

end

end A283361.P4093391526821862113

/-! ## A283361.P2050351854083644549

`floor(2*n/3)!²%(2-A005408(n))`
-/

namespace A283361.P2050351854083644549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Nat.factorial ⌊2 * ((n : ℚ) / 3)⌋.toNat ^ 2 : ℤ) (2 - A005408 n)

end

end A283361.P2050351854083644549

/-!
# A283362: a(n) = (floor(2*n/3))! mod (2n-1).

The programs for A283362, the canonical program `A283362.P13718616288344494106` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A283362 has offset 1).

The definition of A283362 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A283362.P13718616288344494106

`ceil(2*n/3)!%(2*n+1)`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A283362

/-- `ceil(2*n/3)!%(2*n+1)` -/
def P13718616288344494106.Spec : Prop :=
  ∀ n, (P13718616288344494106.a n : ℤ) = A283362 (n + 1)

theorem P13718616288344494106.correct : P13718616288344494106.Spec := by
  intro n
  simp only [A283362, Nat.add_sub_cancel]

end A283362

/-! ## A283362.P12599449641394707141

`A000142(∑[n²%3])%(2*n+1)`
-/

namespace A283362.P12599449641394707141
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 % 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000142 (∑ j ∈ Finset.range (n + 1), f1 j)) (2 * n + 1 : ℤ)

end

end A283362.P12599449641394707141

namespace A283362

/-- `A000142(∑[n²%3])%(2*n+1)` -/
def P12599449641394707141.Spec : Prop :=
  ∀ n, P12599449641394707141.a n = A283362 (n + 1)

end A283362

/-! ## A283362.P18232664675467684495

`A000142(∑[A011655(n)])%(2*n+1)`
-/

namespace A283362.P18232664675467684495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011655 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000142 (∑ j ∈ Finset.range (n + 1), f1 j).toNat) (2 * n + 1 : ℤ)

end

end A283362.P18232664675467684495

namespace A283362

/-- `A000142(∑[A011655(n)])%(2*n+1)` -/
def P18232664675467684495.Spec : Prop :=
  ∀ n, P18232664675467684495.a n = A283362 (n + 1)

end A283362

/-! ## A283362.P991499310953693057

`A000142(n-A002264(n))%(2*n+1)`
-/

namespace A283362.P991499310953693057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000142 ((n : ℤ) - A002264 n).toNat) (2 * n + 1 : ℤ)

end

end A283362.P991499310953693057

namespace A283362

/-- `A000142(n-A002264(n))%(2*n+1)` -/
def P991499310953693057.Spec : Prop :=
  ∀ n, P991499310953693057.a n = A283362 (n + 1)

end A283362

/-!
# A283363: Absolute values of first differences of A090396.

The programs for A283363, the canonical program `A283363.P9051439283470971273` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A283363 has offset 1).

The definition of A283363 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A090396, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A283363.P9051439283470971273

`abs(A090396(n+2)-A090396(n+1))`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A283363

/-- `abs(A090396(n+2)-A090396(n+1))` -/
def P9051439283470971273.Spec : Prop :=
  ∀ n, P9051439283470971273.a n = A283363 (n + 1)

theorem P9051439283470971273.correct : P9051439283470971273.Spec := by
  intro n
  simp only [A283363, Nat.add_sub_cancel]

end A283363

/-! ## A283363.P16932661310706434256

`abs(Δ[A007504(n+1)%(n+1)])`
-/

namespace A283363.P16932661310706434256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007504 (n + 1)) (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A283363.P16932661310706434256

namespace A283363

/-- `abs(Δ[A007504(n+1)%(n+1)])` -/
def P16932661310706434256.Spec : Prop :=
  ∀ n, P16932661310706434256.a n = A283363 (n + 1)

end A283363

/-! ## A283363.P1245429474215074362

`abs(Δ[A090396(n+1)])`
-/

namespace A283363.P1245429474215074362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090396 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A283363.P1245429474215074362

namespace A283363

/-- `abs(Δ[A090396(n+1)])` -/
def P1245429474215074362.Spec : Prop :=
  ∀ n, P1245429474215074362.a n = A283363 (n + 1)

theorem P1245429474215074362.correct : P1245429474215074362.Spec := by
  intro n
  simp only [A283363, Nat.add_sub_cancel, A283363.P1245429474215074362.f1, A283363.P1245429474215074362.a, A283363.P9051439283470971273.a, SequenceMachineLib.memo_apply]

end A283363

/-! ## A283363.P13425480833901418528

`abs(Δ[A060939(n+1)%(n+1)])`
-/

namespace A283363.P13425480833901418528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A060939 (n + 1)) (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A283363.P13425480833901418528

namespace A283363

/-- `abs(Δ[A060939(n+1)%(n+1)])` -/
def P13425480833901418528.Spec : Prop :=
  ∀ n, P13425480833901418528.a n = A283363 (n + 1)

end A283363

/-! ## A283363.P12638015487907626538

`abs(Δ[A101301(n+1)%(n+1)])`
-/

namespace A283363.P12638015487907626538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A101301 (n + 1)) (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A283363.P12638015487907626538

namespace A283363

/-- `abs(Δ[A101301(n+1)%(n+1)])` -/
def P12638015487907626538.Spec : Prop :=
  ∀ n, P12638015487907626538.a n = A283363 (n + 1)

end A283363

/-! ## A283363.P10495877510142903388

`abs(Δ[∑[A000040(n+1)]%(n+1)])`
-/

namespace A283363.P10495877510142903388
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f2 j) (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A283363.P10495877510142903388

namespace A283363

/-- `abs(Δ[∑[A000040(n+1)]%(n+1)])` -/
def P10495877510142903388.Spec : Prop :=
  ∀ n, P10495877510142903388.a n = A283363 (n + 1)

end A283363

/-!
# A283364: Numbers m such that both numbers 2^m +- 1 have at most 2 distinct prime factors.

The programs for A283364, there is no canonical definition to state claims against.
-/

/-! ## A283364.P3330577899716088168

`∩[A283455(n+1), A283657(n+1)]`
-/

namespace A283364.P3330577899716088168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283455 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283657 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A283364.P3330577899716088168

/-! ## A283364.P586760584914116820

`∩[A283455(n+1), lt[A046799(n), 3]]`
-/

namespace A283364.P586760584914116820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283455 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046799 n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f3 j < (f4 j : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A283364.P586760584914116820

/-! ## A283364.P4674198962684264975

`∩[lt[A046800(n+1), 3]+1, A283657(n+1)]`
-/

namespace A283364.P4674198962684264975
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046800 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n + 1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283657 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A283364.P4674198962684264975

/-! ## A283364.P5904260864197013241

`∪[A345899(n+1), A028724(A345911(n+2))]`
-/

namespace A283364.P5904260864197013241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345899 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028724 (A345911 (n + 2)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A283364.P5904260864197013241

/-! ## A283364.P1514075210650303590

`A283455(A077168(n))`
-/

namespace A283364.P1514075210650303590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283455 (A077168 n).toNat

end

end A283364.P1514075210650303590

/-!
# A283365: Minimal number of numbers in A000332 = { C(k,4); k=1,2,3,... } whose sum equals n.

The programs for A283365, there is no canonical definition to state claims against.
-/

/-! ## A283365.P4510207970833252231

`A260688(A174139(n+1)%A032563(2*(n+1)))`
-/

namespace A283365.P4510207970833252231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260688 (Int.tmod (A174139 (n + 1)) (A032563 (2 * (n + 1)))).toNat

end

end A283365.P4510207970833252231

/-! ## A283365.P10754062142852906906

`A260688(A174139(n+1)%A268448(n+2))`
-/

namespace A283365.P10754062142852906906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260688 (Int.tmod (A174139 (n + 1)) (A268448 (n + 2))).toNat

end

end A283365.P10754062142852906906

/-! ## A283365.P7861587118258844830

`dr(eq[A028897(n), A053824(n)])`
-/

namespace A283365.P7861587118258844830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028897 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053824 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℤ)

end

end A283365.P7861587118258844830

/-! ## A283365.P18114255043003186264

`A260688(comp[A174138(n+1)]%A032581(2*n+1))`
-/

namespace A283365.P18114255043003186264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174138 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260688 (Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (A032581 (2 * n + 1))).toNat

end

end A283365.P18114255043003186264

/-!
# A283367: Irregular triangle read by rows: T(n,k) = number of horizontal positions for the vertical legs of the Dyck paths for the symmetric representation of sigma(n) that are listed in the corresponding positions of the triangle of A259177.

The programs for A283367, there is no canonical definition to state claims against.
-/

/-! ## A283367.P4753028248085897546

`A002260(∑[A259176(n+1)])`
-/

namespace A283367.P4753028248085897546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259176 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A283367.P4753028248085897546

/-! ## A283367.P14941259441817212507

`A003984(∑[A259176(n+1)])`
-/

namespace A283367.P14941259441817212507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259176 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003984 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A283367.P14941259441817212507

/-! ## A283367.P3008728880871081959

`A051125(∑[A259176(n+1)])`
-/

namespace A283367.P3008728880871081959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259176 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051125 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A283367.P3008728880871081959

/-! ## A283367.P15121549578636766547

`A131818(∑[A259176(n+1)])`
-/

namespace A283367.P15121549578636766547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259176 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A283367.P15121549578636766547

/-! ## A283367.P7265290208500324241

`A134868(∑[A259176(n+1)])`
-/

namespace A283367.P7265290208500324241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259176 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134868 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A283367.P7265290208500324241

/-! ## A283367.P13937119765966927894

`A002260(∑[A237593(2*n+1)])`
-/

namespace A283367.P13937119765966927894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237593 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A283367.P13937119765966927894

/-! ## A283367.P9242377257542130826

`A003984(∑[A237593(2*n+1)])`
-/

namespace A283367.P9242377257542130826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237593 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003984 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A283367.P9242377257542130826

/-! ## A283367.P4620789475317516944

`A051125(∑[A237593(2*n+1)])`
-/

namespace A283367.P4620789475317516944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237593 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051125 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A283367.P4620789475317516944

/-! ## A283367.P8924542148563616708

`A123229(∑[A237593(2*n+1)])`
-/

namespace A283367.P8924542148563616708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237593 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123229 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A283367.P8924542148563616708

/-! ## A283367.P3305619111650989528

`A134868(∑[A237593(2*n+1)])`
-/

namespace A283367.P3305619111650989528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237593 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134868 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A283367.P3305619111650989528

/-!
# A283368: Irregular triangle read by rows: T(n,k) = number of heights for the horizontal elements of the Dyck paths for the symmetric representation of sigma(n) that are listed in the corresponding positions of the triangle of A259176.

The programs for A283368, there is no canonical definition to state claims against.
-/

/-! ## A283368.P2975758924019004148

`A339575(∑[A259176(n+1)])`
-/

namespace A283368.P2975758924019004148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259176 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339575 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A283368.P2975758924019004148

/-! ## A283368.P6326857871285880968

`A339575(∑[A237593(2*n+1)])`
-/

namespace A283368.P6326857871285880968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237593 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339575 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A283368.P6326857871285880968

/-! ## A283368.P17531212032500639860

`A004736(∑[A237593(A004277(n))])`
-/

namespace A283368.P17531212032500639860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237593 (A004277 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A283368.P17531212032500639860

/-! ## A283368.P7101964290526656580

`A004736(∑[A237593(2*(n+1))]-A237593(2*(n+1))+1)`
-/

namespace A283368.P7101964290526656580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237593 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (∑ j ∈ Finset.range (n + 1), f1 j - A237593 (2 * (n + 1)) + 1).toNat

end

end A283368.P7101964290526656580

/-!
# A283369: a(n) = Sum_{d|n} d^(4*d + 1).

The programs for A283369, there is no canonical definition to state claims against.
-/

/-! ## A283369.P14372392404710928311

`A308704(Δ[A264443(n)])`
-/

namespace A283369.P14372392404710928311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308704 (f1 (n + 1) - f1 n).toNat

end

end A283369.P14372392404710928311

/-! ## A283369.P5312826769538904568

`A308704(Δ[A023545(n+1)])`
-/

namespace A283369.P5312826769538904568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308704 (f1 (n + 1) - f1 n).toNat

end

end A283369.P5312826769538904568

/-! ## A283369.P10891921180987584129

`A308704(A264443(n+1)-A264443(n))`
-/

namespace A283369.P10891921180987584129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308704 (A264443 (n + 1) - A264443 n).toNat

end

end A283369.P10891921180987584129

/-!
# A283371: Maximum number of pairs of primes (p, q) such that p < q = < prime (n) and q - p = constant.

The programs for A283371, there is no canonical definition to state claims against.
-/

/-! ## A283371.P14861435515647427268

`A327407(A001175(n+1))+A065855(n+1)`
-/

namespace A283371.P14861435515647427268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327407 (A001175 (n + 1)).toNat + A065855 (n + 1)

end

end A283371.P14861435515647427268

/-! ## A283371.P14836787407605526751

`round(A374249(3*n+2)/6)`
-/

namespace A283371.P14836787407605526751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A374249 (3 * n + 2) : ℚ) / 6)

end

end A283371.P14836787407605526751

/-! ## A283371.P14222844541743377359

`ceil(∑[A333381(4*n)]/2)`
-/

namespace A283371.P14222844541743377359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333381 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2⌉

end

end A283371.P14222844541743377359

/-! ## A283371.P154595607876231771

`A110654(∑[A333381(4*n)])`
-/

namespace A283371.P154595607876231771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333381 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A283371.P154595607876231771

/-! ## A283371.P7703701903082195358

`A085268(∑[∏{e}[A219753(n), #]])`
-/

namespace A283371.P7703701903082195358
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219753 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085268 (∑ j ∈ Finset.range (n + 1), f1 j + 32)

end

end A283371.P7703701903082195358

/-!
# A283372: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 625", based on the 5-celled von Neumann neighborhood.

The programs for A283372, there is no canonical definition to state claims against.
-/

/-! ## A283372.P2787679329615660778

`A000042(n+1)%A282305(A028310(n))`
-/

namespace A283372.P2787679329615660778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000042 (n + 1)) (A282305 (A028310 n).toNat)

end

end A283372.P2787679329615660778

/-! ## A283372.P16716405690210973886

`A282306(n)+A283373(n)-A282305(n)`
-/

namespace A283372.P16716405690210973886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282306 n + (A283373 n - A282305 n)

end

end A283372.P16716405690210973886

/-! ## A283372.P15265248178694037391

`A282602(n)+A283283(n)-A282305(n)`
-/

namespace A283372.P15265248178694037391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282602 n + (A283283 n - A282305 n)

end

end A283372.P15265248178694037391

/-! ## A283372.P8571135875265506256

`A282603(n)+A283284(n)-A282305(n)`
-/

namespace A283372.P8571135875265506256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282603 n + (A283284 n - A282305 n)

end

end A283372.P8571135875265506256

/-! ## A283372.P3208957765712155737

`A007088(A283374(n))`
-/

namespace A283372.P3208957765712155737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A283374 n).toNat

end

end A283372.P3208957765712155737

/-!
# A283373: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 625", based on the 5-celled von Neumann neighborhood.

The programs for A283373, there is no canonical definition to state claims against.
-/

/-! ## A283373.P13873421003706433661

`A282305(n)+A283372(n)-A282306(n)`
-/

namespace A283373.P13873421003706433661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282305 n + (A283372 n - A282306 n)

end

end A283373.P13873421003706433661

/-! ## A283373.P740749565232437023

`A282602(n)+A283283(n)-A282306(n)`
-/

namespace A283373.P740749565232437023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282602 n + (A283283 n - A282306 n)

end

end A283373.P740749565232437023

/-! ## A283373.P13644413328020620476

`A282603(n)+A283284(n)-A282306(n)`
-/

namespace A283373.P13644413328020620476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282603 n + (A283284 n - A282306 n)

end

end A283373.P13644413328020620476

/-! ## A283373.P16486196214349442229

`A007088(A283375(n))`
-/

namespace A283373.P16486196214349442229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A283375 n).toNat

end

end A283373.P16486196214349442229

/-! ## A283373.P6386605346278202363

`A007088(and(-A282308(n), A095121(n)))`
-/

namespace A283373.P6386605346278202363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.land (-A282308 n) (A095121 n)).toNat

end

end A283373.P6386605346278202363

/-!
# A283374: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 625", based on the 5-celled von Neumann neighborhood.

The programs for A283374, there is no canonical definition to state claims against.
-/

/-! ## A283374.P11000517201773041466

`A282604(n)+A283285(n)-A282307(n)`
-/

namespace A283374.P11000517201773041466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282604 n + (A283285 n - A282307 n)

end

end A283374.P11000517201773041466

/-! ## A283374.P11824909376216700206

`A095121(n)+1-A282307(n)`
-/

namespace A283374.P11824909376216700206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095121 n + (1 - A282307 n)

end

end A283374.P11824909376216700206

/-! ## A283374.P16175589574693343392

`A126646(n)%A282307(A028310(n))`
-/

namespace A283374.P16175589574693343392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126646 n) (A282307 (A028310 n).toNat)

end

end A283374.P16175589574693343392

/-! ## A283374.P9951805335840233878

`A282308(n)+A283375(n)-A282307(n)`
-/

namespace A283374.P9951805335840233878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282308 n + (A283375 n - A282307 n)

end

end A283374.P9951805335840233878

/-! ## A283374.P6668972814234138606

`A282605(n)+A283286(n)-A282307(n)`
-/

namespace A283374.P6668972814234138606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282605 n + (A283286 n - A282307 n)

end

end A283374.P6668972814234138606

/-!
# A283375: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 625", based on the 5-celled von Neumann neighborhood.

The programs for A283375, there is no canonical definition to state claims against.
-/

/-! ## A283375.P2381993081958849914

`and(-A282308(n), A095121(n))`
-/

namespace A283375.P2381993081958849914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A282308 n) (A095121 n)

end

end A283375.P2381993081958849914

/-! ## A283375.P7998781394386249684

`A282307(n)+A283374(n)-A282308(n)`
-/

namespace A283375.P7998781394386249684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282307 n + (A283374 n - A282308 n)

end

end A283375.P7998781394386249684

/-! ## A283375.P82977338181888432

`A282604(n)+A283285(n)-A282308(n)`
-/

namespace A283375.P82977338181888432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282604 n + (A283285 n - A282308 n)

end

end A283375.P82977338181888432

/-! ## A283375.P1267132567746230680

`A282605(n)+A283286(n)-A282308(n)`
-/

namespace A283375.P1267132567746230680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282605 n + (A283286 n - A282308 n)

end

end A283375.P1267132567746230680

/-! ## A283375.P12014810756205945753

`and(A126646(n)*A282308(n), A095121(n))`
-/

namespace A283375.P12014810756205945753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A126646 n * A282308 n) (A095121 n)

end

end A283375.P12014810756205945753

/-!
# A283376: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 627", based on the 5-celled von Neumann neighborhood.

The programs for A283376, there is no canonical definition to state claims against.
-/

/-! ## A283376.P8420800229430495444

`A007088(A283378(n))`
-/

namespace A283376.P8420800229430495444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A283378 n).toNat

end

end A283376.P8420800229430495444

/-! ## A283376.P13221810050159184073

`A305989(∏{p}[A283379(n), #])`
-/

namespace A283376.P13221810050159184073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283379 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A283376.P13221810050159184073

/-! ## A283376.P8029851475797625630

`A305989(A283379(n))`
-/

namespace A283376.P8029851475797625630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (A283379 n).toNat

end

end A283376.P8029851475797625630

/-! ## A283376.P7786403836921630729

`A185544(2*A283378(n))`
-/

namespace A283376.P7786403836921630729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A283378 n).toNat

end

end A283376.P7786403836921630729

/-! ## A283376.P2807984316992255901

`A185544(lcm(2, A283378(n)))`
-/

namespace A283376.P2807984316992255901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (Int.lcm 2 (A283378 n))

end

end A283376.P2807984316992255901

/-!
# A283377: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 627", based on the 5-celled von Neumann neighborhood.

The programs for A283377, there is no canonical definition to state claims against.
-/

/-! ## A283377.P3198037812337885987

`A007088(A283379(n))`
-/

namespace A283377.P3198037812337885987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A283379 n).toNat

end

end A283377.P3198037812337885987

/-! ## A283377.P5807844829759198507

`A185544(2*A283379(n))`
-/

namespace A283377.P5807844829759198507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A283379 n).toNat

end

end A283377.P5807844829759198507

/-!
# A283378: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 627", based on the 5-celled von Neumann neighborhood.

The programs for A283378, there is no canonical definition to state claims against.
-/

/-! ## A283378.P6710246898472408332

`A030101(∏{p}[A283379(n), #])`
-/

namespace A283378.P6710246898472408332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283379 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A283378.P6710246898472408332

/-! ## A283378.P1890510189105660245

`A325401(∏{p}[A283379(n), #])`
-/

namespace A283378.P1890510189105660245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283379 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A283378.P1890510189105660245

/-! ## A283378.P6147970937734191094

`A057889(A000265(A283379(n)))`
-/

namespace A283378.P6147970937734191094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (A000265 (A283379 n).toNat).toNat

end

end A283378.P6147970937734191094

/-! ## A283378.P7985490987105801625

`A030101(A283379(n))`
-/

namespace A283378.P7985490987105801625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (A283379 n).toNat

end

end A283378.P7985490987105801625

/-! ## A283378.P9557902127232296928

`A325401(lcm(2, A283379(n)))`
-/

namespace A283378.P9557902127232296928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (Int.lcm 2 (A283379 n))

end

end A283378.P9557902127232296928

/-!
# A283379: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 627", based on the 5-celled von Neumann neighborhood.

The programs for A283379, there is no canonical definition to state claims against.
-/

/-! ## A283379.P14095008209369210298

`A316470(A353401(2*n)+n)`
-/

namespace A283379.P14095008209369210298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316470 (A353401 (2 * n) + (n : ℤ)).toNat

end

end A283379.P14095008209369210298

/-! ## A283379.P14138478218096456526

`A233655(A336131(n))+A001318(n)`
-/

namespace A283379.P14138478218096456526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233655 (A336131 n).toNat + A001318 n

end

end A283379.P14138478218096456526

/-!
# A283380: Number of nX2 0..1 arrays with no 1 equal to more than two of its horizontal, vertical and antidiagonal neighbors, with the exception of exactly two elements.

The programs for A283380, there is no canonical definition to state claims against.
-/

/-! ## A283380.P5497944095099393646

`A283386(∑[n+1]+2)`
-/

namespace A283380.P5497944095099393646
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283386 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A283380.P5497944095099393646

/-! ## A283380.P10963394648398595688

`record[A283386(A022856(A050873(n+1)))]`
-/

namespace A283380.P10963394648398595688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283386 (A022856 (A050873 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A283380.P10963394648398595688

/-! ## A283380.P6852626979257616781

`record[A283386(A022856(A336515(n+1)))]`
-/

namespace A283380.P6852626979257616781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283386 (A022856 (A336515 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A283380.P6852626979257616781

/-! ## A283380.P2160444675019795587

`record[A283386(∑[A152271(n)])]`
-/

namespace A283380.P2160444675019795587
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283386 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A283380.P2160444675019795587

/-! ## A283380.P18015458168386597444

`record[A097806(n)*A283386(n+1)]`
-/

namespace A283380.P18015458168386597444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097806 n * A283386 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A283380.P18015458168386597444

/-!
# A283381: Number of nX3 0..1 arrays with no 1 equal to more than two of its horizontal, vertical and antidiagonal neighbors, with the exception of exactly two elements.

The programs for A283381, there is no canonical definition to state claims against.
-/

/-! ## A283381.P13652320639573498148

`A283386(∑[n+2]+4)`
-/

namespace A283381.P13652320639573498148
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283386 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A283381.P13652320639573498148

/-! ## A283381.P10317326799950903770

`or(char[1], A283386(A167614(n+1)))`
-/

namespace A283381.P10317326799950903770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A283386 (A167614 (n + 1)).toNat)

end

end A283381.P10317326799950903770

/-! ## A283381.P10658904668838649946

`A283386(A167614(n+1))+A180472(n)`
-/

namespace A283381.P10658904668838649946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283386 (A167614 (n + 1)).toNat + A180472 n

end

end A283381.P10658904668838649946

/-! ## A283381.P832271215393453771

`A283386(A167614(n+1))+A185255(n)`
-/

namespace A283381.P832271215393453771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283386 (A167614 (n + 1)).toNat + A185255 n

end

end A283381.P832271215393453771

/-! ## A283381.P9396052219309231954

`A283386(A167614(n+1))%A017600(n)`
-/

namespace A283381.P9396052219309231954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A283386 (A167614 (n + 1)).toNat) (A017600 n)

end

end A283381.P9396052219309231954

/-!
# A283382: Number of nX4 0..1 arrays with no 1 equal to more than two of its horizontal, vertical and antidiagonal neighbors, with the exception of exactly two elements.

The programs for A283382, there is no canonical definition to state claims against.
-/

/-! ## A283382.P15262724419407030338

`A283386(A374004(n+1))`
-/

namespace A283382.P15262724419407030338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283386 (A374004 (n + 1)).toNat

end

end A283382.P15262724419407030338

/-! ## A283382.P11297205769992234437

`A283386(A141214(n)+7)`
-/

namespace A283382.P11297205769992234437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283386 (A141214 n + 7).toNat

end

end A283382.P11297205769992234437

/-! ## A283382.P11977151405485518245

`A283386(A167614(n+2)+1)`
-/

namespace A283382.P11977151405485518245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283386 (A167614 (n + 2) + 1).toNat

end

end A283382.P11977151405485518245

/-! ## A283382.P16265947675154261377

`A283386(eq[5, A131818(n+1)])`
-/

namespace A283382.P16265947675154261377
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283386 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283382.P16265947675154261377

/-! ## A283382.P5512023722408710681

`A283386(Δ[A264443(n)-n²])`
-/

namespace A283382.P5512023722408710681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283386 (f1 (n + 1) - f1 n).toNat

end

end A283382.P5512023722408710681

/-!
# A283383: Number of nX5 0..1 arrays with no 1 equal to more than two of its horizontal, vertical and antidiagonal neighbors, with the exception of exactly two elements.

The programs for A283383, there is no canonical definition to state claims against.
-/

/-! ## A283383.P12146904343833365349

`A283386(A374005(n+1))`
-/

namespace A283383.P12146904343833365349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283386 (A374005 (n + 1)).toNat

end

end A283383.P12146904343833365349

/-! ## A283383.P2657416678595805332

`A283386(A155212(n)+13)`
-/

namespace A283383.P2657416678595805332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283386 (A155212 n + 13).toNat

end

end A283383.P2657416678595805332

/-! ## A283383.P13030233800285756524

`A283386(A056000(n)+15)`
-/

namespace A283383.P13030233800285756524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283386 (A056000 n + 15).toNat

end

end A283383.P13030233800285756524

/-! ## A283383.P6351027442869111493

`A283386(eq[6, A131818(n+1)])`
-/

namespace A283383.P6351027442869111493
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283386 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283383.P6351027442869111493

/-! ## A283383.P11643503859947145316

`A283386(Δ[A264443(n)])`
-/

namespace A283383.P11643503859947145316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283386 (f1 (n + 1) - f1 n).toNat

end

end A283383.P11643503859947145316

/-!
# A283384: Number of nX6 0..1 arrays with no 1 equal to more than two of its horizontal, vertical and antidiagonal neighbors, with the exception of exactly two elements.

The programs for A283384, there is no canonical definition to state claims against.
-/

/-! ## A283384.P8175517483645929500

`A283386(A374007(n+1))`
-/

namespace A283384.P8175517483645929500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283386 (A374007 (n + 1)).toNat

end

end A283384.P8175517483645929500

/-! ## A283384.P10030347423300835408

`A283386(eq[7, A131818(n+1)])`
-/

namespace A283384.P10030347423300835408
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283386 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283384.P10030347423300835408

/-! ## A283384.P1225438041702024667

`A283386(eq[3, A219347(n)])`
-/

namespace A283384.P1225438041702024667
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283386 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283384.P1225438041702024667

/-! ## A283384.P10517705256611298024

`A283386(eq[8, A185782(n+1)])`
-/

namespace A283384.P10517705256611298024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283386 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283384.P10517705256611298024

/-! ## A283384.P12325293096878606262

`A283386(Δ[Δ[A006504(n+1)]])`
-/

namespace A283384.P12325293096878606262
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283386 (f1 (n + 1) - f1 n).toNat

end

end A283384.P12325293096878606262

/-!
# A283385: Number of nX7 0..1 arrays with no 1 equal to more than two of its horizontal, vertical and antidiagonal neighbors, with the exception of exactly two elements.

The programs for A283385, there is no canonical definition to state claims against.
-/

/-! ## A283385.P5265531061229958721

`A283386(A374008(n+1))`
-/

namespace A283385.P5265531061229958721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283386 (A374008 (n + 1)).toNat

end

end A283385.P5265531061229958721

/-! ## A283385.P18442823764888950159

`A283386(A056119(n)+28)`
-/

namespace A283385.P18442823764888950159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283386 (A056119 n + 28).toNat

end

end A283385.P18442823764888950159

/-! ## A283385.P5476826613472399281

`A283386(eq[8, A131818(n+1)])`
-/

namespace A283385.P5476826613472399281
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283386 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283385.P5476826613472399281

/-! ## A283385.P7317379570608438187

`A283386(eq[4, A219347(n)])`
-/

namespace A283385.P7317379570608438187
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283386 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283385.P7317379570608438187

/-! ## A283385.P6743141351310500003

`A283386(eq[6, A193592(n)])`
-/

namespace A283385.P6743141351310500003
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283386 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283385.P6743141351310500003

/-!
# A283387: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 629", based on the 5-celled von Neumann neighborhood.

The programs for A283387, there is no canonical definition to state claims against.
-/

/-! ## A283387.P12954190983663313235

`A007088(A283389(n))`
-/

namespace A283387.P12954190983663313235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A283389 n).toNat

end

end A283387.P12954190983663313235

/-! ## A283387.P18090508177969337548

`A185544(2*A283389(n))`
-/

namespace A283387.P18090508177969337548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A283389 n).toNat

end

end A283387.P18090508177969337548

/-! ## A283387.P10665802801492328180

`A007088(or(A185284((3-n)²), A283293(n)))`
-/

namespace A283387.P10665802801492328180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.lor (A185284 ((3 - (n : ℤ)) ^ 2).toNat) (A283293 n)).toNat

end

end A283387.P10665802801492328180

/-! ## A283387.P16428972171524063375

`A185544(2*or(A185284((3-n)²), A283293(n)))`
-/

namespace A283387.P16428972171524063375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * Int.lor (A185284 ((3 - (n : ℤ)) ^ 2).toNat) (A283293 n)).toNat

end

end A283387.P16428972171524063375

/-!
# A283388: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 629", based on the 5-celled von Neumann neighborhood.

The programs for A283388, there is no canonical definition to state claims against.
-/

/-! ## A283388.P4070215707204062991

`A007088(A283390(n))`
-/

namespace A283388.P4070215707204062991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A283390 n).toNat

end

end A283388.P4070215707204062991

/-! ## A283388.P12308526405416812476

`A305989(A283389(n)/A303929(n))`
-/

namespace A283388.P12308526405416812476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (SequenceMachineLib.roundAway ((A283389 n : ℚ) / (A303929 n : ℚ))).toNat

end

end A283388.P12308526405416812476

/-! ## A283388.P3953257362012918774

`A305989(A283389(n)/A115576(n+1))`
-/

namespace A283388.P3953257362012918774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (SequenceMachineLib.roundAway ((A283389 n : ℚ) / (A115576 (n + 1) : ℚ))).toNat

end

end A283388.P3953257362012918774

/-! ## A283388.P4927399295237833963

`A305989(A283389(n))`
-/

namespace A283388.P4927399295237833963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (A283389 n).toNat

end

end A283388.P4927399295237833963

/-! ## A283388.P4299404238341949549

`A185544(2*A283390(n))`
-/

namespace A283388.P4299404238341949549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A283390 n).toNat

end

end A283388.P4299404238341949549

/-!
# A283389: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 629", based on the 5-celled von Neumann neighborhood.

The programs for A283389, there is no canonical definition to state claims against.
-/

/-! ## A283389.P15706347030746763343

`or(A185284((3-n)²), A283293(n))`
-/

namespace A283389.P15706347030746763343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A185284 ((3 - (n : ℤ)) ^ 2).toNat) (A283293 n)

end

end A283389.P15706347030746763343

/-! ## A283389.P11351758137144388334

`A283293(n)+A184955(A026351(n))`
-/

namespace A283389.P11351758137144388334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283293 n + A184955 (A026351 n).toNat

end

end A283389.P11351758137144388334

/-! ## A283389.P2302874891617797905

`A283293(n)+A184955(A160165(n))`
-/

namespace A283389.P2302874891617797905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283293 n + A184955 (A160165 n).toNat

end

end A283389.P2302874891617797905

/-! ## A283389.P10011156168894031712

`or(A184955(A004275(n)), A283216(n))`
-/

namespace A283389.P10011156168894031712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A184955 (A004275 n).toNat) (A283216 n)

end

end A283389.P10011156168894031712

/-! ## A283389.P8506868221299744057

`or(A184955(A022819(n)), A283216(n))`
-/

namespace A283389.P8506868221299744057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A184955 (A022819 n).toNat) (A283216 n)

end

end A283389.P8506868221299744057

/-!
# A283390: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 629", based on the 5-celled von Neumann neighborhood.

The programs for A283390, there is no canonical definition to state claims against.
-/

/-! ## A283390.P1047524173342504792

`A165789(A000265(A283389(n)))`
-/

namespace A283390.P1047524173342504792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165789 (A000265 (A283389 n).toNat).toNat

end

end A283390.P1047524173342504792

/-! ## A283390.P13905367255163784621

`A281589(lcm(2, A283389(n)))`
-/

namespace A283390.P13905367255163784621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281589 (Int.lcm 2 (A283389 n))

end

end A283390.P13905367255163784621

/-! ## A283390.P14717346860919122405

`A030101(A283389(n)/A303929(n))`
-/

namespace A283390.P14717346860919122405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (SequenceMachineLib.roundAway ((A283389 n : ℚ) / (A303929 n : ℚ))).toNat

end

end A283390.P14717346860919122405

/-! ## A283390.P6961649920516077549

`A030101(A283389(n)/A115576(n+1))`
-/

namespace A283390.P6961649920516077549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (SequenceMachineLib.roundAway ((A283389 n : ℚ) / (A115576 (n + 1) : ℚ))).toNat

end

end A283390.P6961649920516077549

/-! ## A283390.P12355657776439239563

`A030101(A283389(n))`
-/

namespace A283390.P12355657776439239563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (A283389 n).toNat

end

end A283390.P12355657776439239563

/-!
# A283391: Primes p such that a^2 + b^2 = p^2 and q = a + b is prime, where a,b > 0.

The programs for A283391, there is no canonical definition to state claims against.
-/

/-! ## A283391.P1730676669627898364

`p?[A001222(A120681(n+1))*A020882(n+1)]`
-/

namespace A283391.P1730676669627898364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A120681 (n + 1)).toNat * A020882 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A283391.P1730676669627898364

/-! ## A283391.P18148773586818987281

`p?[A014963(A120681(n+1))-A087459(n+1)]`
-/

namespace A283391.P18148773586818987281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A120681 (n + 1)).toNat - A087459 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A283391.P18148773586818987281

/-! ## A283391.P16086170540489106307

`record[A020639(A020882(n+1)*A120681(n+1))]`
-/

namespace A283391.P16086170540489106307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A020882 (n + 1) * A120681 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A283391.P16086170540489106307

/-! ## A283391.P8735322947153755162

`∩[A191218(A024898(n+1)), A327473(n+1)]`
-/

namespace A283391.P8735322947153755162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191218 (A024898 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327473 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A283391.P8735322947153755162

/-! ## A283391.P18020799714087884868

`A002144(comp[12-round(exp(n))]+1)`
-/

namespace A283391.P18020799714087884868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  12 - SequenceMachineLib.roundAway (Real.exp (n : ℝ))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A283391.P18020799714087884868

/-!
# A283393: a(n) = gcd(n^2-1, n^2+9).

The programs for A283393, the canonical program `A283393.P13641138866217676365` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A283393 has offset 0).

The definition of A283393 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A283393.P13641138866217676365

`gcd(10, 1-n²)`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A283393

/-- `gcd(10, 1-n²)` -/
def P13641138866217676365.Spec : Prop :=
  ∀ n, (P13641138866217676365.a n : ℤ) = A283393 n

theorem P13641138866217676365.correct : P13641138866217676365.Spec := by
  intro n
  simp only [A283393]

end A283393

/-!
# A283394: a(n) = 3*n*(3*n + 7)/2 + 4.

The programs for A283394, the canonical program `A283394.P1686196317453702883` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A283394 has offset 0).

The definition of A283394 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A283394.P14209017854424774053

`3*n*(3*n+7)/2+4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A283394.P14209017854424774053
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 * ((n : ℚ) * ((3 * n + 7 : ℚ) / 2)) + 4

end

end A283394.P14209017854424774053

namespace A283394

/-- `3*n*(3*n+7)/2+4` -/
def P14209017854424774053.Spec : Prop :=
  ∀ n, P14209017854424774053.a n = (A283394 n : ℚ)

end A283394

/-! ## A283394.P1686196317453702883

`A034856(3*n+2)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A283394

/-- `A034856(3*n+2)` -/
def P1686196317453702883.Spec : Prop :=
  ∀ n, P1686196317453702883.a n = A283394 n

theorem P1686196317453702883.correct : P1686196317453702883.Spec := by
  intro n
  simp only [A283394]

end A283394

/-! ## A283394.P11939681963281311705

`A101881(6*n+2)`
-/

namespace A283394.P11939681963281311705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101881 (6 * n + 2)

end

end A283394.P11939681963281311705

namespace A283394

/-- `A101881(6*n+2)` -/
def P11939681963281311705.Spec : Prop :=
  ∀ n, P11939681963281311705.a n = A283394 n

end A283394

/-! ## A283394.P12957140631680684578

`A165157(6*n+3)`
-/

namespace A283394.P12957140631680684578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165157 (6 * n + 3)

end

end A283394.P12957140631680684578

namespace A283394

/-- `A165157(6*n+3)` -/
def P12957140631680684578.Spec : Prop :=
  ∀ n, P12957140631680684578.a n = A283394 n

end A283394

/-! ## A283394.P3846387020366604071

`A186349(6*n+3)`
-/

namespace A283394.P3846387020366604071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186349 (6 * n + 3)

end

end A283394.P3846387020366604071

namespace A283394

/-- `A186349(6*n+3)` -/
def P3846387020366604071.Spec : Prop :=
  ∀ n, P3846387020366604071.a n = A283394 n

end A283394

/-! ## A283394.P14536013075242014280

`∑[a(n-1)+9]` with `a(0)=4, a(1)=15`
-/

namespace A283394.P14536013075242014280
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4, 15] fun n f1 =>
  f1 (n - 1) + 9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A283394.P14536013075242014280

namespace A283394

/-- `∑[a(n-1)+9]` -/
def P14536013075242014280.Spec : Prop :=
  ∀ n, (P14536013075242014280.a n : ℤ) = A283394 n

end A283394

/-! ## A283394.P18214962687483527415

`floor(a(n-1)+3*(3*n+2))` with `a(0)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A283394.P18214962687483527415
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4] fun n a =>
  a (n - 1) + 3 * (3 * n + 2)

end

end A283394.P18214962687483527415

namespace A283394

/-- `floor(a(n-1)+3*(3*n+2))` -/
def P18214962687483527415.Spec : Prop :=
  ∀ n, (P18214962687483527415.a n : ℤ) = A283394 n

end A283394

/-! ## A283394.P12244416001055463491

`∑[A017329(n)-abs(1-n)]`
-/

namespace A283394.P12244416001055463491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017329 n - |1 - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A283394.P12244416001055463491

namespace A283394

/-- `∑[A017329(n)-abs(1-n)]` -/
def P12244416001055463491.Spec : Prop :=
  ∀ n, P12244416001055463491.a n = A283394 n

end A283394

/-! ## A283394.P8567137184157921992

`abs(A062725(n+1)-(n+3))`
-/

namespace A283394.P8567137184157921992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A062725 (n + 1) - (n + 3 : ℤ)|

end

end A283394.P8567137184157921992

namespace A283394

/-- `abs(A062725(n+1)-(n+3))` -/
def P8567137184157921992.Spec : Prop :=
  ∀ n, P8567137184157921992.a n = A283394 n

end A283394

/-! ## A283394.P12302617998944352375

`∑[2*(A133653(n+1)+1)+n]`
-/

namespace A283394.P12302617998944352375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A133653 (n + 1) + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A283394.P12302617998944352375

namespace A283394

/-- `∑[2*(A133653(n+1)+1)+n]` -/
def P12302617998944352375.Spec : Prop :=
  ∀ n, P12302617998944352375.a n = A283394 n

end A283394

/-! ## A283394.P3714539681501576677

`(3*(n+2)*A016777(n)+2)/2`
-/

namespace A283394.P3714539681501576677
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * ((n + 2 : ℤ) * A016777 n) + 2 : ℚ) / 2

end

end A283394.P3714539681501576677

namespace A283394

/-- `(3*(n+2)*A016777(n)+2)/2` -/
def P3714539681501576677.Spec : Prop :=
  ∀ n, P3714539681501576677.a n = (A283394 n : ℚ)

end A283394

/-! ## A283394.P9933501246374613937

`A158447(n+1)%A160749(n)`
-/

namespace A283394.P9933501246374613937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158447 (n + 1)) (A160749 n)

end

end A283394.P9933501246374613937

namespace A283394

/-- `A158447(n+1)%A160749(n)` -/
def P9933501246374613937.Spec : Prop :=
  ∀ n, P9933501246374613937.a n = A283394 n

end A283394

/-! ## A283394.P9383581323856339172

`abs(3-A038764(n+1))`
-/

namespace A283394.P9383581323856339172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |3 - A038764 (n + 1)|

end

end A283394.P9383581323856339172

namespace A283394

/-- `abs(3-A038764(n+1))` -/
def P9383581323856339172.Spec : Prop :=
  ∀ n, P9383581323856339172.a n = A283394 n

end A283394

/-! ## A283394.P13697431489128431041

`Δ[(n-1)*A005448(n+2)]`
-/

namespace A283394.P13697431489128431041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * A005448 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A283394.P13697431489128431041

namespace A283394

/-- `Δ[(n-1)*A005448(n+2)]` -/
def P13697431489128431041.Spec : Prop :=
  ∀ n, P13697431489128431041.a n = A283394 n

end A283394

/-! ## A283394.P179915840059046658

`∑[A008579(2*n+1)+n]`
-/

namespace A283394.P179915840059046658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008579 (2 * n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A283394.P179915840059046658

namespace A283394

/-- `∑[A008579(2*n+1)+n]` -/
def P179915840059046658.Spec : Prop :=
  ∀ n, P179915840059046658.a n = A283394 n

end A283394

/-! ## A283394.P13458865159757822631

`∑[A296910(2*n+1)+n]`
-/

namespace A283394.P13458865159757822631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296910 (2 * n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A283394.P13458865159757822631

namespace A283394

/-- `∑[A296910(2*n+1)+n]` -/
def P13458865159757822631.Spec : Prop :=
  ∀ n, P13458865159757822631.a n = A283394 n

end A283394

/-! ## A283394.P7609340901526648942

`∑[A188134(A004277(n)+1)+2+n]`
-/

namespace A283394.P7609340901526648942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188134 (A004277 n + 1).toNat + 2 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A283394.P7609340901526648942

namespace A283394

/-- `∑[A188134(A004277(n)+1)+2+n]` -/
def P7609340901526648942.Spec : Prop :=
  ∀ n, P7609340901526648942.a n = A283394 n

end A283394

/-! ## A283394.P10648028384477989744

`floor(sqrt(A005565(3*n)))`
-/

namespace A283394.P10648028384477989744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A005565 (3 * n))

end

end A283394.P10648028384477989744

namespace A283394

/-- `floor(sqrt(A005565(3*n)))` -/
def P10648028384477989744.Spec : Prop :=
  ∀ n, P10648028384477989744.a n = A283394 n

end A283394

/-!
# A283395: Squarefree numbers m congruent to 1 modulo 4 such that the fundamental unit of the field Q(sqrt(m)) has the form x+y*sqrt(m) with x, y integers.

The programs for A283395, there is no canonical definition to state claims against.
-/

/-! ## A283395.P13149171471995299552

`∩[4*n+1, A107998(n+1)]`
-/

namespace A283395.P13149171471995299552
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107998 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A283395.P13149171471995299552

/-! ## A283395.P12016521569677035226

`filter[A107998(n+1), A133872(#)]`
-/

namespace A283395.P12016521569677035226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107998 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A133872 (f1 j).toNat = 1) n)

end

end A283395.P12016521569677035226

/-! ## A283395.P4581087446870048968

`filter[A107998(n+1), A290098(#)]`
-/

namespace A283395.P4581087446870048968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107998 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A290098 (f1 j).toNat = 1) n)

end

end A283395.P4581087446870048968

/-! ## A283395.P1616796633157738370

`∩[A107998(n+1), A016813(n)]`
-/

namespace A283395.P1616796633157738370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107998 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A283395.P1616796633157738370

/-! ## A283395.P13190061471449441180

`∩[A107998(n+1), A042948(n)]`
-/

namespace A283395.P13190061471449441180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107998 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A283395.P13190061471449441180

/-! ## A283395.P17963352641026023162

`∩[A107998(n+1), record[A009001(n)]]`
-/

namespace A283395.P17963352641026023162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107998 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A283395.P17963352641026023162

/-! ## A283395.P8582603465905882698

`∩[A107998(n+1), A039955(n+1)]`
-/

namespace A283395.P8582603465905882698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107998 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039955 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A283395.P8582603465905882698

/-! ## A283395.P14011219311646349044

`∩[A107998(n+1), A230239(n+1)]`
-/

namespace A283395.P14011219311646349044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107998 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230239 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A283395.P14011219311646349044

/-! ## A283395.P15474191227898933274

`∩[A107998(n+1), A277549(n+1)]`
-/

namespace A283395.P15474191227898933274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107998 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277549 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A283395.P15474191227898933274

/-! ## A283395.P11665515880466799259

`∩[A107998(n+1), A338062(n+1)]`
-/

namespace A283395.P11665515880466799259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107998 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338062 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A283395.P11665515880466799259

/-!
# A283396: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 630", based on the 5-celled von Neumann neighborhood.

The programs for A283396, there is no canonical definition to state claims against.
-/

/-! ## A283396.P3964326029961586451

`A007088(A283398(n))`
-/

namespace A283396.P3964326029961586451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A283398 n).toNat

end

end A283396.P3964326029961586451

/-! ## A283396.P9021528873825526819

`A305989(A283399(n))`
-/

namespace A283396.P9021528873825526819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (A283399 n).toNat

end

end A283396.P9021528873825526819

/-! ## A283396.P17398117753602383017

`A185544(2*A283398(n))`
-/

namespace A283396.P17398117753602383017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A283398 n).toNat

end

end A283396.P17398117753602383017

/-! ## A283396.P14673041357309134677

`A185544(lcm(2, A283398(n)))`
-/

namespace A283396.P14673041357309134677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (Int.lcm 2 (A283398 n))

end

end A283396.P14673041357309134677

/-! ## A283396.P7892112746716037825

`A185544(A283398(n)+A283398(n))`
-/

namespace A283396.P7892112746716037825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A283398 n + A283398 n).toNat

end

end A283396.P7892112746716037825

/-!
# A283397: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 630", based on the 5-celled von Neumann neighborhood.

The programs for A283397, there is no canonical definition to state claims against.
-/

/-! ## A283397.P1358622303569880072

`A007088(A283399(n))`
-/

namespace A283397.P1358622303569880072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A283399 n).toNat

end

end A283397.P1358622303569880072

/-! ## A283397.P11979588679076663285

`A305989(A283398(n))`
-/

namespace A283397.P11979588679076663285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (A283398 n).toNat

end

end A283397.P11979588679076663285

/-! ## A283397.P7238902643763691206

`A185544(2*A283399(n))`
-/

namespace A283397.P7238902643763691206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A283399 n).toNat

end

end A283397.P7238902643763691206

/-! ## A283397.P12550686774206505156

`A185544(lcm(2, A283399(n)))`
-/

namespace A283397.P12550686774206505156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (Int.lcm 2 (A283399 n))

end

end A283397.P12550686774206505156

/-! ## A283397.P13123078200447149814

`A185544(A283399(n)+A283399(n))`
-/

namespace A283397.P13123078200447149814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A283399 n + A283399 n).toNat

end

end A283397.P13123078200447149814

/-!
# A283398: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 630", based on the 5-celled von Neumann neighborhood.

The programs for A283398, there is no canonical definition to state claims against.
-/

/-! ## A283398.P7284371079415975094

`A057889(A283399(n))`
-/

namespace A283398.P7284371079415975094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (A283399 n).toNat

end

end A283398.P7284371079415975094

/-! ## A283398.P14681218891206454581

`A281589(2*A283399(n))`
-/

namespace A283398.P14681218891206454581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281589 (2 * A283399 n).toNat

end

end A283398.P14681218891206454581

/-! ## A283398.P11294104385346955341

`A325401(2*A283399(n))`
-/

namespace A283398.P11294104385346955341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (2 * A283399 n).toNat

end

end A283398.P11294104385346955341

/-! ## A283398.P4000324450282356270

`A281589(lcm(2, A283399(n)))`
-/

namespace A283398.P4000324450282356270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281589 (Int.lcm 2 (A283399 n))

end

end A283398.P4000324450282356270

/-! ## A283398.P5861153088890618012

`A030101(or(1, A283399(n)))`
-/

namespace A283398.P5861153088890618012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (Int.lor 1 (A283399 n)).toNat

end

end A283398.P5861153088890618012

/-!
# A283399: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 630", based on the 5-celled von Neumann neighborhood.

The programs for A283399, there is no canonical definition to state claims against.
-/

/-! ## A283399.P852783208043111952

`A057889(A283398(n))`
-/

namespace A283399.P852783208043111952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (A283398 n).toNat

end

end A283399.P852783208043111952

/-! ## A283399.P10726331867845720173

`A030101(2*A283398(n))`
-/

namespace A283399.P10726331867845720173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (2 * A283398 n).toNat

end

end A283399.P10726331867845720173

/-! ## A283399.P15488523693803099303

`A281589(2*A283398(n))`
-/

namespace A283399.P15488523693803099303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281589 (2 * A283398 n).toNat

end

end A283399.P15488523693803099303

/-! ## A283399.P2229469168157578396

`A325401(2*A283398(n))`
-/

namespace A283399.P2229469168157578396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (2 * A283398 n).toNat

end

end A283399.P2229469168157578396

/-! ## A283399.P10224403663931852106

`A030101(lcm(2, A283398(n)))`
-/

namespace A283399.P10224403663931852106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (Int.lcm 2 (A283398 n))

end

end A283399.P10224403663931852106

