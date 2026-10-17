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
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
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
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A157400: A partition product with biggest-part statistic of Stirling_1 type (with parameter k = -2) as well as of Stirling_2 type (with parameter k = -2), (triangle read by rows).

The programs for A157400, there is no canonical definition to state claims against.
-/

/-! ## A157400.P2049152761599091865

`A072084(A346214(n+1))`
-/

namespace A157400.P2049152761599091865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072084 (A346214 (n + 1)).toNat

end

end A157400.P2049152761599091865

/-! ## A157400.P2150266353716984350

`A260323(n*A135302(n)+1)`
-/

namespace A157400.P2150266353716984350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260323 ((n : ℤ) * A135302 n + 1).toNat

end

end A157400.P2150266353716984350

/-! ## A157400.P7862069361736857466

`A260323((n+1)^A135302(n))`
-/

namespace A157400.P7862069361736857466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260323 (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ (A135302 n : ℤ))).toNat

end

end A157400.P7862069361736857466

/-! ## A157400.P11063429030287105171

`A260323(C(n+1, A135302(n)))`
-/

namespace A157400.P11063429030287105171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260323 (Nat.choose (n + 1) (A135302 n).toNat)

end

end A157400.P11063429030287105171

/-!
# A157402: A partition product of Stirling_2 type [parameter k = 2] with biggest-part statistic (triangle read by rows).

The programs for A157402, there is no canonical definition to state claims against.
-/

/-! ## A157402.P17071227373678916673

`A000003(A062705(n+1)^4)`
-/

namespace A157402.P17071227373678916673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000003 (A062705 (n + 1) ^ 4).toNat

end

end A157402.P17071227373678916673

/-! ## A157402.P16992204006725198375

`A000003(A062705(n+1)²²)`
-/

namespace A157402.P16992204006725198375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000003 ((A062705 (n + 1) ^ 2) ^ 2).toNat

end

end A157402.P16992204006725198375

/-! ## A157402.P12039402206002639481

`A269384((2-char[∑[n]])^A239467(n+1))`
-/

namespace A157402.P12039402206002639481
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269384 (SequenceMachineLib.roundAway ((2 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) : ℚ) ^ (A239467 (n + 1) : ℤ))).toNat

end

end A157402.P12039402206002639481

/-! ## A157402.P9851937712766997522

`A070550(n*A097650(A002262(n)))`
-/

namespace A157402.P9851937712766997522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070550 ((n : ℤ) * A097650 (A002262 n).toNat).toNat

end

end A157402.P9851937712766997522

/-! ## A157402.P12467882890144257423

`A118759(A070550(n*A141169(n)))`
-/

namespace A157402.P12467882890144257423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A070550 ((n : ℤ) * A141169 n).toNat).toNat

end

end A157402.P12467882890144257423

/-!
# A157404: A partition product of Stirling_2 type [parameter k = 4] with biggest-part statistic (triangle read by rows).

The programs for A157404, there is no canonical definition to state claims against.
-/

/-! ## A157404.P10025723266994348717

`A277906(5^A271439(n))`
-/

namespace A157404.P10025723266994348717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277906 (SequenceMachineLib.roundAway ((5 : ℚ) ^ (A271439 n : ℤ))).toNat

end

end A157404.P10025723266994348717

/-! ## A157404.P1410481719993661558

`A268444(A002262(n)*A302205(n))`
-/

namespace A157404.P1410481719993661558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268444 (A002262 n * A302205 n).toNat

end

end A157404.P1410481719993661558

/-! ## A157404.P2965521730486767952

`A259884(lcm(A130045(n+1), A143844(n)))`
-/

namespace A157404.P2965521730486767952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259884 (Int.lcm (A130045 (n + 1)) (A143844 n))

end

end A157404.P2965521730486767952

/-! ## A157404.P14511882548016216533

`A236852(A157384(n+1)^A001222(2*n+3))`
-/

namespace A157404.P14511882548016216533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236852 (SequenceMachineLib.roundAway ((A157384 (n + 1) : ℚ) ^ (A001222 (2 * n + 3) : ℤ))).toNat

end

end A157404.P14511882548016216533

/-! ## A157404.P15194718242960886581

`A046523(A157398(n+1)^A250261(n))*A124794(n+1)`
-/

namespace A157404.P15194718242960886581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (SequenceMachineLib.roundAway ((A157398 (n + 1) : ℚ) ^ (A250261 n : ℤ))).toNat * A124794 (n + 1)

end

end A157404.P15194718242960886581

/-!
# A157405: A partition product of Stirling_2 type [parameter k = 5] with biggest-part statistic (triangle read by rows).

The programs for A157405, there is no canonical definition to state claims against.
-/

/-! ## A157405.P7883168675409571061

`A354091(C(A078008(n), A268441(n)))`
-/

namespace A157405.P7883168675409571061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354091 (Nat.choose (A078008 n).toNat (A268441 n).toNat)

end

end A157405.P7883168675409571061

/-! ## A157405.P11907252347682151274

`A242096(A052394(n))+A157385(n+1)`
-/

namespace A157405.P11907252347682151274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242096 (A052394 n).toNat + A157385 (n + 1)

end

end A157405.P11907252347682151274

/-! ## A157405.P16423597780442543191

`A220692(A152046(n))+A157397(n+1)`
-/

namespace A157405.P16423597780442543191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220692 (A152046 n).toNat + A157397 (n + 1)

end

end A157405.P16423597780442543191

/-!
# A157409: Minimum of { k > 0 : [2^n / 3^k] mod 6 = 3 } if such k exists, 0 otherwise.

The programs for A157409, there is no canonical definition to state claims against.
-/

/-! ## A157409.P13942360428210955911

`val(A176210(A000211(n+6)), A138136(n+4))`
-/

namespace A157409.P13942360428210955911
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A176210 (A000211 (n + 6)).toNat).toNat (A138136 (n + 4)).toNat

end

end A157409.P13942360428210955911

/-! ## A157409.P17109189447048542947

`A122634(3*n+2)%A099246(n)`
-/

namespace A157409.P17109189447048542947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A122634 (3 * n + 2)) (A099246 n)

end

end A157409.P17109189447048542947

/-! ## A157409.P7801108178198961398

`A361978(A318273(n+2))%A211956(n+2)`
-/

namespace A157409.P7801108178198961398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A361978 (A318273 (n + 2)).toNat) (A211956 (n + 2))

end

end A157409.P7801108178198961398

/-! ## A157409.P17689911156642589782

`A010873(A320320(3*n+4)*A320340(2*n+3))`
-/

namespace A157409.P17689911156642589782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (A320320 (3 * n + 4) * A320340 (2 * n + 3)).toNat

end

end A157409.P17689911156642589782

/-!
# A157410: Final primes in successive prime centuries.

The programs for A157410, there is no canonical definition to state claims against.
-/

/-! ## A157410.P5240786031297183721

`A122072(10*(n+1))`
-/

namespace A157410.P5240786031297183721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122072 (10 * (n + 1))

end

end A157410.P5240786031297183721

/-! ## A157410.P16179888732650453559

`A060265(50*(n+1))`
-/

namespace A157410.P16179888732650453559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060265 (50 * (n + 1))

end

end A157410.P16179888732650453559

/-! ## A157410.P4332145329369566916

`A060308(50*(n+1))`
-/

namespace A157410.P4332145329369566916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060308 (50 * (n + 1))

end

end A157410.P4332145329369566916

/-! ## A157410.P12706645143821107812

`A000040(∑[A038822(n)])`
-/

namespace A157410.P12706645143821107812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038822 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A157410.P12706645143821107812

/-!
# A157411: a(n) = 30*n^4 - 120*n^3 + 120*n^2 - 19.

The programs for A157411, the canonical program `A157411.P10580488486172764726` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157411 has offset 0).

The definition of A157411 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `30*n^4-120*n^3+120*n²-19` (program `A157411.P10580488486172764726`, by `A157411.P10580488486172764726.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A157411.P10580488486172764726

`30*n^4-120*n^3+120*n²-19`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A157411

/-- `30*n^4-120*n^3+120*n²-19` -/
def P10580488486172764726.Spec : Prop :=
  ∀ n, P10580488486172764726.a n = A157411 n

theorem P10580488486172764726.correct : P10580488486172764726.Spec := by
  intro n
  simp only [A157411]

end A157411

/-! ## A157411.P14538117948632027549

`Δ[A165281(n)]`
-/

namespace A157411.P14538117948632027549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165281 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A157411.P14538117948632027549

namespace A157411

/-- `Δ[A165281(n)]` -/
def P14538117948632027549.Spec : Prop :=
  ∀ n, P14538117948632027549.a n = A157411 n

end A157411

/-!
# A157412: Triangular read by rows: T(n,m) = J(prime(n),prime(m)) where J is the Jacobi symbol. Each row starts with prime(2) = 3.

The programs for A157412, there is no canonical definition to state claims against.
-/

/-! ## A157412.P1987802008436928414

`A306453(A209705(n+2))`
-/

namespace A157412.P1987802008436928414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306453 (A209705 (n + 2)).toNat

end

end A157412.P1987802008436928414

/-! ## A157412.P2552297211486228645

`C(2, n+2)-A215200(A061493(n+1))`
-/

namespace A157412.P2552297211486228645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose 2 (n + 2) : ℤ) - A215200 (A061493 (n + 1)).toNat

end

end A157412.P2552297211486228645

/-! ## A157412.P3394795368347023279

`A131372(A173043(n)+A131321(n))`
-/

namespace A157412.P3394795368347023279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131372 (A173043 n + A131321 n).toNat

end

end A157412.P3394795368347023279

/-! ## A157412.P9117989588478528925

`A257834(A180653(n+1)+A111125(n))`
-/

namespace A157412.P9117989588478528925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257834 (A180653 (n + 1) + A111125 n).toNat

end

end A157412.P9117989588478528925

/-! ## A157412.P12579123882501172151

`A008683(A085151(n+1)-A145973(n))`
-/

namespace A157412.P12579123882501172151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A085151 (n + 1) - A145973 n).toNat

end

end A157412.P12579123882501172151

/-!
# A157415: Triangle read by rows: T(n,m) = Jacobi(prime(n)/prime(m)) + Jacobi(prime(n)/prime(n-m+2)), 2 <= m <= n.

The programs for A157415, there is no canonical definition to state claims against.
-/

/-! ## A157415.P13433618875990559641

`A303708(A207938(n+1))-A003989(n+1)`
-/

namespace A157415.P13433618875990559641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303708 (A207938 (n + 1)).toNat - A003989 (n + 1)

end

end A157415.P13433618875990559641

/-!
# A157416: Length of maximal uncrossed cycle of knight moves on n X n board.

The programs for A157416, there is no canonical definition to state claims against.
-/

/-! ## A157416.P4058377389319693044

`∑[A066380(n)%A300628(n)]`
-/

namespace A157416.P4058377389319693044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A066380 n) (A300628 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A157416.P4058377389319693044

/-! ## A157416.P17014106820239541803

`∑[A002264(n)*A117728(3*n+1)]`
-/

namespace A157416.P17014106820239541803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 n * A117728 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A157416.P17014106820239541803

/-! ## A157416.P4885214905346756597

`A357357(n+1)-A357357(A270533(n))`
-/

namespace A157416.P4885214905346756597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357357 (n + 1) - A357357 (A270533 n).toNat

end

end A157416.P4885214905346756597

/-! ## A157416.P13732132404069892133

`A128422(A032798(n+1))+A128422(n+1)`
-/

namespace A157416.P13732132404069892133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128422 (A032798 (n + 1)).toNat + A128422 (n + 1)

end

end A157416.P13732132404069892133

/-! ## A157416.P3663633752807610045

`A128422(A047304(n+1))+A128422(n+1)`
-/

namespace A157416.P3663633752807610045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128422 (A047304 (n + 1)).toNat + A128422 (n + 1)

end

end A157416.P3663633752807610045

/-!
# A157417: Primes of the form floor((4*n^2-8*n-9)/3).

The programs for A157417, there is no canonical definition to state claims against.
-/

/-! ## A157417.P2489556049043129783

`∪[A154616(n+1), A201717(n+1)]`
-/

namespace A157417.P2489556049043129783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154616 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201717 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A157417.P2489556049043129783

/-! ## A157417.P18107816114421384793

`p?[ceil(n²/3)-5]`
-/

namespace A157417.P18107816114421384793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n ^ 2 : ℚ) / 3⌉ - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A157417.P18107816114421384793

/-! ## A157417.P4481659884120364022

`or(1, p?[A183859(n+1)+n])`
-/

namespace A157417.P4481659884120364022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183859 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A157417.P4481659884120364022

/-! ## A157417.P7266198503974154393

`round(sqrt(p?[A008810(n)-5]²+1))`
-/

namespace A157417.P7266198503974154393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008810 n - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2 + 1 : ℝ))

end

end A157417.P7266198503974154393

/-! ## A157417.P9914942958489842311

`abs(p?[A183859(n+1)+n]*A057077(n))`
-/

namespace A157417.P9914942958489842311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183859 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A057077 n|

end

end A157417.P9914942958489842311

/-! ## A157417.P5228681429751359952

`A007318(C(2, n))*p?[A183859(n+1)+n]`
-/

namespace A157417.P5228681429751359952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183859 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A157417.P5228681429751359952

/-! ## A157417.P5677189789301420822

`p?[A183859(n+1)+n]%A000040(n+2)²`
-/

namespace A157417.P5677189789301420822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183859 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A000040 (n + 2) ^ 2)

end

end A157417.P5677189789301420822

/-! ## A157417.P10740365401337137117

`A000041(and(1, -n))*p?[A183859(n+1)+n]`
-/

namespace A157417.P10740365401337137117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183859 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Int.land 1 (-(n : ℤ))).toNat * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A157417.P10740365401337137117

/-! ## A157417.P3933154639653936018

`char[A103523(n+1)]+p?[A183859(n+1)+n]`
-/

namespace A157417.P3933154639653936018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103523 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183859 (n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

end

end A157417.P3933154639653936018

/-! ## A157417.P8712896851622457944

`A000108(C(n, n²))*p?[A183859(n+1)+n]`
-/

namespace A157417.P8712896851622457944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183859 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Nat.choose n (n ^ 2)) * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A157417.P8712896851622457944

/-! ## A157417.P8088449858418899875

`p?[A183859(n+1)+n]/A007318(C(n, n²))`
-/

namespace A157417.P8088449858418899875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183859 (n + 1) + (n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / (A007318 (Nat.choose n (n ^ 2)) : ℚ)

end

end A157417.P8088449858418899875

/-! ## A157417.P6232593363377525026

`A014963(9*n+6)*p?[A183859(n+1)+n]`
-/

namespace A157417.P6232593363377525026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183859 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (9 * n + 6) * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A157417.P6232593363377525026

/-! ## A157417.P5395202151686002235

`A000041(C(2, n+2))*p?[A183859(n+1)+n]`
-/

namespace A157417.P5395202151686002235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183859 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A157417.P5395202151686002235

/-! ## A157417.P15811953670217741343

`A000041(gcd(n, n+1))*p?[A183859(n+1)+n]`
-/

namespace A157417.P15811953670217741343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183859 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.gcd n (n + 1)) * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A157417.P15811953670217741343

/-! ## A157417.P14440892201028553637

`A000005(abs((-1)^n))*p?[A183859(n+1)+n]`
-/

namespace A157417.P14440892201028553637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183859 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 |(-1) ^ n|.toNat * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A157417.P14440892201028553637

/-! ## A157417.P670306641789097910

`A007318(((-1)^n)²)*p?[A183859(n+1)+n]`
-/

namespace A157417.P670306641789097910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183859 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (((-1) ^ n) ^ 2).toNat * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A157417.P670306641789097910

/-! ## A157417.P10152244581530559654

`p?[A183859(n+1)+n]*A298667(A294932(n+1))`
-/

namespace A157417.P10152244581530559654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183859 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A298667 (A294932 (n + 1)).toNat

end

end A157417.P10152244581530559654

/-! ## A157417.P18358588434919731901

`A008683(A001359(n+1))²*p?[A183859(n+1)+n]`
-/

namespace A157417.P18358588434919731901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183859 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A001359 (n + 1)).toNat ^ 2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A157417.P18358588434919731901

/-! ## A157417.P1369088682840745825

`A000010(A141310(2*n+1))*p?[A183859(n+1)+n]`
-/

namespace A157417.P1369088682840745825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183859 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A141310 (2 * n + 1)).toNat * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A157417.P1369088682840745825

/-!
# A157418: a(n) is the number of ways to insert single pairs of parenthesis to completely separate n identical objects in a straight line such that at least one of the objects at the two ends is not enclosed.

The programs for A157418, there is no canonical definition to state claims against.
-/

/-! ## A157418.P6337702910023503881

`A052709(n+1)+A052705(n+1)`
-/

namespace A157418.P6337702910023503881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052709 (n + 1) + A052705 (n + 1)

end

end A157418.P6337702910023503881

/-! ## A157418.P606605162927035770

`A025227(n+2)-A052705(n+2)`
-/

namespace A157418.P606605162927035770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025227 (n + 2) - A052705 (n + 2)

end

end A157418.P606605162927035770

/-! ## A157418.P13595396243361384936

`A071943(∑[n]+n)+A052705(n+1)`
-/

namespace A157418.P13595396243361384936
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071943 (∑ j ∈ Finset.range (n + 1), f1 j + n) + A052705 (n + 1)

end

end A157418.P13595396243361384936

/-! ## A157418.P7771234248295355577

`A071945(∑[n]+n)+A052705(n+1)`
-/

namespace A157418.P7771234248295355577
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071945 (∑ j ∈ Finset.range (n + 1), f1 j + n) + A052705 (n + 1)

end

end A157418.P7771234248295355577

/-! ## A157418.P18385435444026495786

`A108075(A000217(n))+A052705(n+1)`
-/

namespace A157418.P18385435444026495786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108075 (A000217 n).toNat + A052705 (n + 1)

end

end A157418.P18385435444026495786

/-!
# A157419: a(0)=1. a(n) = the smallest integer coprime to a(n-1) and greater than the n-th prime.

The programs for A157419, there is no canonical definition to state claims against.
-/

/-! ## A157419.P5539986493631442110

`xor(A162800(n), A267683(A200743(n+1)))`
-/

namespace A157419.P5539986493631442110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A162800 n) (A267683 (A200743 (n + 1)).toNat)

end

end A157419.P5539986493631442110

/-! ## A157419.P17324900327361596769

`xor(A162800(n), A316824(A162665(2*n+5)))`
-/

namespace A157419.P17324900327361596769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A162800 n) (A316824 (A162665 (2 * n + 5)).toNat)

end

end A157419.P17324900327361596769

/-!
# A157420: a(0)=1. a(n) = the smallest integer coprime to a(n-1) and greater than the n-th Fibonacci number.

The programs for A157420, there is no canonical definition to state claims against.
-/

/-! ## A157420.P3839243737790319144

`A321405(n)+A240862(n+4)`
-/

namespace A157420.P3839243737790319144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321405 n + A240862 (n + 4)

end

end A157420.P3839243737790319144

/-! ## A157420.P6946537072738185704

`A111077(n)+A056170(A346634(3*n))`
-/

namespace A157420.P6946537072738185704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111077 n + A056170 (A346634 (3 * n)).toNat

end

end A157420.P6946537072738185704

/-! ## A157420.P16330026668882693219

`A305079(A238374(3*n+1))+A000045(n)`
-/

namespace A157420.P16330026668882693219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305079 (A238374 (3 * n + 1)).toNat + A000045 n

end

end A157420.P16330026668882693219

/-! ## A157420.P17257047621634539938

`∑[A322813(A147012(n+1)²)]`
-/

namespace A157420.P17257047621634539938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322813 (A147012 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A157420.P17257047621634539938

/-!
# A157421: a(0)=1. a(n) = the smallest integer coprime to a(n-1) and greater than n^2.

The programs for A157421, there is no canonical definition to state claims against.
-/

/-! ## A157421.P16405808095996032911

`or(n²+1, A052417(A052429(n+1)))`
-/

namespace A157421.P16405808095996032911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n ^ 2 + 1 : ℤ) (A052417 (A052429 (n + 1)).toNat)

end

end A157421.P16405808095996032911

/-! ## A157421.P2690366506254076219

`A055641(A033429(2*(n+2)))+n²`
-/

namespace A157421.P2690366506254076219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 (A033429 (2 * (n + 2))).toNat + (n ^ 2 : ℤ)

end

end A157421.P2690366506254076219

/-! ## A157421.P14008209522997060152

`or(A002522(n), A035175(A108711(3*(n+1))))`
-/

namespace A157421.P14008209522997060152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A002522 n) (A035175 (A108711 (3 * (n + 1))).toNat)

end

end A157421.P14008209522997060152

/-! ## A157421.P14762525846091653145

`n²+1+A112765(A033562(n))`
-/

namespace A157421.P14762525846091653145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 + 1 : ℤ) + A112765 (A033562 n).toNat

end

end A157421.P14762525846091653145

/-! ## A157421.P14995646663923070927

`or(A002522(n), A170958(3*n+2))`
-/

namespace A157421.P14995646663923070927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A002522 n) (A170958 (3 * n + 2))

end

end A157421.P14995646663923070927

/-!
# A157423: Triangle read by rows, T(n,k) = 0 if (n-k+1) is prime, else 1.

The programs for A157423, the canonical program `A157423.P10964563261487709945` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157423 has offset 1).

The definition of A157423 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A157423.P2169822146471760314

`A005171(C(comp[∑[n]]-n, 2)-n)`
-/

namespace A157423.P2169822146471760314
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - n)

end

end A157423.P2169822146471760314

namespace A157423

/-- `A005171(C(comp[∑[n]]-n, 2)-n)` -/
def P2169822146471760314.Spec : Prop :=
  ∀ n, P2169822146471760314.a n = A157423 (n + 1)

end A157423

/-! ## A157423.P11387002232451217012

`1-A010051(C(comp[∑[n]]-n, 2)-n)`
-/

namespace A157423.P11387002232451217012
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A010051 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - n)

end

end A157423.P11387002232451217012

namespace A157423

/-- `1-A010051(C(comp[∑[n]]-n, 2)-n)` -/
def P11387002232451217012.Spec : Prop :=
  ∀ n, P11387002232451217012.a n = A157423 (n + 1)

end A157423

/-! ## A157423.P10964563261487709945

`A005171(A004736(n+1))`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A157423

/-- `A005171(A004736(n+1))` -/
def P10964563261487709945.Spec : Prop :=
  ∀ n, P10964563261487709945.a n = A157423 (n + 1)

theorem P10964563261487709945.correct : P10964563261487709945.Spec := by
  intro n
  simp only [A157423, Nat.add_sub_cancel]

end A157423

/-! ## A157423.P6113222023741338856

`A005171(A025581(n)+1)`
-/

namespace A157423.P6113222023741338856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (A025581 n + 1).toNat

end

end A157423.P6113222023741338856

namespace A157423

/-- `A005171(A025581(n)+1)` -/
def P6113222023741338856.Spec : Prop :=
  ∀ n, P6113222023741338856.a n = A157423 (n + 1)

end A157423

/-! ## A157423.P7450066345082758619

`1-A143538(A038722(n+1))`
-/

namespace A157423.P7450066345082758619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A143538 (A038722 (n + 1)).toNat

end

end A157423.P7450066345082758619

namespace A157423

/-- `1-A143538(A038722(n+1))` -/
def P7450066345082758619.Spec : Prop :=
  ∀ n, P7450066345082758619.a n = A157423 (n + 1)

end A157423

/-! ## A157423.P14141523838474306319

`A005171(A055396(A083140(n+2)))`
-/

namespace A157423.P14141523838474306319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (A055396 (A083140 (n + 2)).toNat).toNat

end

end A157423.P14141523838474306319

namespace A157423

/-- `A005171(A055396(A083140(n+2)))` -/
def P14141523838474306319.Spec : Prop :=
  ∀ n, P14141523838474306319.a n = A157423 (n + 1)

end A157423

/-! ## A157423.P17983710534793427556

`1-A010051(A352001(n+1))`
-/

namespace A157423.P17983710534793427556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A010051 (A352001 (n + 1)).toNat

end

end A157423.P17983710534793427556

namespace A157423

/-- `1-A010051(A352001(n+1))` -/
def P17983710534793427556.Spec : Prop :=
  ∀ n, P17983710534793427556.a n = A157423 (n + 1)

end A157423

/-! ## A157423.P18255854692953432860

`A029692(A104796(n+1))`
-/

namespace A157423.P18255854692953432860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029692 (A104796 (n + 1)).toNat

end

end A157423.P18255854692953432860

namespace A157423

/-- `A029692(A104796(n+1))` -/
def P18255854692953432860.Spec : Prop :=
  ∀ n, P18255854692953432860.a n = A157423 (n + 1)

end A157423

/-! ## A157423.P2328069954340088608

`A087049(A337470(n))`
-/

namespace A157423.P2328069954340088608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087049 (A337470 n).toNat

end

end A157423.P2328069954340088608

namespace A157423

/-- `A087049(A337470(n))` -/
def P2328069954340088608.Spec : Prop :=
  ∀ n, P2328069954340088608.a n = A157423 (n + 1)

end A157423

/-! ## A157423.P11350515789468732119

`A280494(A349244(A272171(n+1)²))`
-/

namespace A157423.P11350515789468732119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280494 (A349244 (A272171 (n + 1) ^ 2).toNat).toNat

end

end A157423.P11350515789468732119

namespace A157423

/-- `A280494(A349244(A272171(n+1)²))` -/
def P11350515789468732119.Spec : Prop :=
  ∀ n, P11350515789468732119.a n = A157423 (n + 1)

end A157423

/-!
# A157424: Triangle read by rows, A157423 * (A052284 * 0^(n-k)).

The programs for A157424, there is no canonical definition to state claims against.
-/

/-! ## A157424.P9528319765167746112

`A144961(n)*A168181(A147955(n))`
-/

namespace A157424.P9528319765167746112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144961 n * A168181 (A147955 n).toNat

end

end A157424.P9528319765167746112

/-! ## A157424.P6374786839782673847

`A145765(n+1)^A145753(A004736(n+1))`
-/

namespace A157424.P6374786839782673847
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A145765 (n + 1) : ℚ) ^ (A145753 (A004736 (n + 1)).toNat : ℤ)

end

end A157424.P6374786839782673847

/-! ## A157424.P4443059653405396765

`or(A124763(A034500(n+1)), A145765(n+1))`
-/

namespace A157424.P4443059653405396765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A124763 (A034500 (n + 1)).toNat) (A145765 (n + 1))

end

end A157424.P4443059653405396765

/-! ## A157424.P4597557213726744337

`and(A145765(n+1), A284863(n))`
-/

namespace A157424.P4597557213726744337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A145765 (n + 1)) (A284863 n)

end

end A157424.P4597557213726744337

/-! ## A157424.P8104231557781508636

`and(A068662(n+1), A145765(n+1))`
-/

namespace A157424.P8104231557781508636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A068662 (n + 1)) (A145765 (n + 1))

end

end A157424.P8104231557781508636

/-!
# A157428: Lower left-hand x-coordinates of invisible 2 X 2 squares with 0 < y < x.

The programs for A157428, there is no canonical definition to state claims against.
-/

/-! ## A157428.P14221707097510458681

`A178793(A090106(n+1))-1`
-/

namespace A157428.P14221707097510458681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178793 (A090106 (n + 1)).toNat - 1

end

end A157428.P14221707097510458681

/-! ## A157428.P1956618686972244135

`A178793(n+1)%A325606(n+1)-1`
-/

namespace A157428.P1956618686972244135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A178793 (n + 1)) (A325606 (n + 1)) - 1

end

end A157428.P1956618686972244135

/-! ## A157428.P7477519162909719874

`xor(A178793(A090106(n+1)), A280865(n))`
-/

namespace A157428.P7477519162909719874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A178793 (A090106 (n + 1)).toNat) (A280865 n)

end

end A157428.P7477519162909719874

/-! ## A157428.P709885961403320448

`A178793(n+1)-A001222(A059763(n+1))`
-/

namespace A157428.P709885961403320448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178793 (n + 1) - A001222 (A059763 (n + 1)).toNat

end

end A157428.P709885961403320448

/-! ## A157428.P7109221567859621985

`A178793(n+1)-A292189(A187585(n+1))`
-/

namespace A157428.P7109221567859621985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178793 (n + 1) - A292189 (A187585 (n + 1)).toNat

end

end A157428.P7109221567859621985

/-!
# A157429: Lower left-hand y-coordinates of invisible 2x2 squares with 0 < x < y.

The programs for A157429, there is no canonical definition to state claims against.
-/

/-! ## A157429.P16756930212305540440

`A178794(∑[A280865(n)!!])-1`
-/

namespace A157429.P16756930212305540440
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Nat.factorial (A280865 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178794 (∑ j ∈ Finset.range (n + 1), f1 j) - 1

end

end A157429.P16756930212305540440

/-! ## A157429.P9571583093647378878

`A178794(A090106(n+1))-1`
-/

namespace A157429.P9571583093647378878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178794 (A090106 (n + 1)).toNat - 1

end

end A157429.P9571583093647378878

/-! ## A157429.P3658339652785046408

`xor(A178794(A090106(n+1)), A280865(n))`
-/

namespace A157429.P3658339652785046408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A178794 (A090106 (n + 1)).toNat) (A280865 n)

end

end A157429.P3658339652785046408

/-! ## A157429.P13309880679234930860

`A178794(n+1)-A001222(A059763(n+1))`
-/

namespace A157429.P13309880679234930860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178794 (n + 1) - A001222 (A059763 (n + 1)).toNat

end

end A157429.P13309880679234930860

/-! ## A157429.P14636466880310994847

`A178794(n+1)+A008683(A061335(n+2))`
-/

namespace A157429.P14636466880310994847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178794 (n + 1) + A008683 (A061335 (n + 2)).toNat

end

end A157429.P14636466880310994847

/-!
# A157431: a(n) = 4*n^2 + 73*n + 333.

The programs for A157431, the canonical program `A157431.P2359796781725965121` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157431 has offset 1).

The definition of A157431 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A157431.P2359796781725965121

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=410, a(1)=495, a(2)=588`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A157431

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P2359796781725965121.Spec : Prop :=
  ∀ n, P2359796781725965121.a n = A157431 (n + 1)

theorem P2359796781725965121.correct : P2359796781725965121.Spec := by
  intro n
  simp only [A157431, Nat.add_sub_cancel]

end A157431

/-! ## A157431.P14523886522269433594

`n+10+(2*(n+10))²`
-/

namespace A157431.P14523886522269433594
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 10 + (2 * (n + 10)) ^ 2

end

end A157431.P14523886522269433594

namespace A157431

/-- `n+10+(2*(n+10))²` -/
def P14523886522269433594.Spec : Prop :=
  ∀ n, (P14523886522269433594.a n : ℤ) = A157431 (n + 1)

end A157431

/-! ## A157431.P9035034681475297795

`A007742(n+10)`
-/

namespace A157431.P9035034681475297795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007742 (n + 10)

end

end A157431.P9035034681475297795

namespace A157431

/-- `A007742(n+10)` -/
def P9035034681475297795.Spec : Prop :=
  ∀ n, P9035034681475297795.a n = A157431 (n + 1)

end A157431

/-! ## A157431.P10402227990112330245

`A035608(2*(n+10))`
-/

namespace A157431.P10402227990112330245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035608 (2 * (n + 10))

end

end A157431.P10402227990112330245

namespace A157431

/-- `A035608(2*(n+10))` -/
def P10402227990112330245.Spec : Prop :=
  ∀ n, P10402227990112330245.a n = A157431 (n + 1)

end A157431

/-! ## A157431.P10549027372071435850

`A110349(2*(n+10))`
-/

namespace A157431.P10549027372071435850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110349 (2 * (n + 10))

end

end A157431.P10549027372071435850

namespace A157431

/-- `A110349(2*(n+10))` -/
def P10549027372071435850.Spec : Prop :=
  ∀ n, P10549027372071435850.a n = A157431 (n + 1)

end A157431

/-! ## A157431.P11315849519355493505

`A074378(2*(n+10))`
-/

namespace A157431.P11315849519355493505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074378 (2 * (n + 10))

end

end A157431.P11315849519355493505

namespace A157431

/-- `A074378(2*(n+10))` -/
def P11315849519355493505.Spec : Prop :=
  ∀ n, P11315849519355493505.a n = A157431 (n + 1)

end A157431

/-! ## A157431.P9833409655633020347

`A064038(4*(n+10)+1)`
-/

namespace A157431.P9833409655633020347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064038 (4 * (n + 10) + 1)

end

end A157431.P9833409655633020347

namespace A157431

/-- `A064038(4*(n+10)+1)` -/
def P9833409655633020347.Spec : Prop :=
  ∀ n, P9833409655633020347.a n = A157431 (n + 1)

end A157431

/-! ## A157431.P17662940273870769418

`A153192(A224535(n+2))`
-/

namespace A157431.P17662940273870769418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153192 (A224535 (n + 2)).toNat

end

end A157431.P17662940273870769418

namespace A157431

/-- `A153192(A224535(n+2))` -/
def P17662940273870769418.Spec : Prop :=
  ∀ n, P17662940273870769418.a n = A157431 (n + 1)

end A157431

/-!
# A157432: a(n) = 64*n + 584.

The programs for A157432, the canonical program `A157432.P14299582959694965642` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157432 has offset 1).

The definition of A157432 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A157432.P14299582959694965642

`2*a(n-1)-a(n-2)` with `a(0)=648, a(1)=712`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A157432

/-- `2*a(n-1)-a(n-2)` -/
def P14299582959694965642.Spec : Prop :=
  ∀ n, P14299582959694965642.a n = A157432 (n + 1)

theorem P14299582959694965642.correct : P14299582959694965642.Spec := by
  intro n
  simp only [A157432, Nat.add_sub_cancel]

end A157432

/-!
# A157433: a(n) = 128n^2 + 2336n + 10657.

The programs for A157433, the canonical program `A157433.P13730914805304613161` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157433 has offset 1).

The definition of A157433 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A157433.P13730914805304613161

`A275543(A004768(n)+72)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A157433

/-- `A275543(A004768(n)+72)` -/
def P13730914805304613161.Spec : Prop :=
  ∀ n, P13730914805304613161.a n = A157433 (n + 1)

theorem P13730914805304613161.correct : P13730914805304613161.Spec := by
  intro n
  simp only [A157433, Nat.add_sub_cancel]

end A157433

/-! ## A157433.P10165467951127966844

`round(sqrt(A157431(n+1))*A157432(n+1))`
-/

namespace A157433.P10165467951127966844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A157431 (n + 1) : ℝ) * (A157432 (n + 1) : ℝ))

end

end A157433.P10165467951127966844

namespace A157433

/-- `round(sqrt(A157431(n+1))*A157432(n+1))` -/
def P10165467951127966844.Spec : Prop :=
  ∀ n, P10165467951127966844.a n = A157433 (n + 1)

end A157433

/-! ## A157433.P16363900922053401459

`A157337(n+10)`
-/

namespace A157433.P16363900922053401459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157337 (n + 10)

end

end A157433.P16363900922053401459

namespace A157433

/-- `A157337(n+10)` -/
def P16363900922053401459.Spec : Prop :=
  ∀ n, P16363900922053401459.a n = A157433 (n + 1)

end A157433

/-! ## A157433.P5400073435355135961

`A069129((n+2)²-n²+37)`
-/

namespace A157433.P5400073435355135961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069129 (((n + 2) ^ 2 : ℤ) - (n ^ 2 : ℤ) + 37).toNat

end

end A157433.P5400073435355135961

namespace A157433

/-- `A069129((n+2)²-n²+37)` -/
def P5400073435355135961.Spec : Prop :=
  ∀ n, P5400073435355135961.a n = A157433 (n + 1)

end A157433

/-! ## A157433.P8381146658234464120

`A056220(8*(n+10)+1)`
-/

namespace A157433.P8381146658234464120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056220 (8 * (n + 10) + 1)

end

end A157433.P8381146658234464120

namespace A157433

/-- `A056220(8*(n+10)+1)` -/
def P8381146658234464120.Spec : Prop :=
  ∀ n, P8381146658234464120.a n = A157433 (n + 1)

end A157433

/-! ## A157433.P6101545773918552972

`A077221(8*(n+10)+1)`
-/

namespace A157433.P6101545773918552972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077221 (8 * (n + 10) + 1)

end

end A157433.P6101545773918552972

namespace A157433

/-- `A077221(8*(n+10)+1)` -/
def P6101545773918552972.Spec : Prop :=
  ∀ n, P6101545773918552972.a n = A157433 (n + 1)

end A157433

/-! ## A157433.P4830188131468795482

`A326658(4*4*(n+10))`
-/

namespace A157433.P4830188131468795482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326658 (4 * (4 * (n + 10)))

end

end A157433.P4830188131468795482

namespace A157433

/-- `A326658(4*4*(n+10))` -/
def P4830188131468795482.Spec : Prop :=
  ∀ n, P4830188131468795482.a n = A157433 (n + 1)

end A157433

/-!
# A157434: a(n) = 4*n^2 + 79*n + 390.

The programs for A157434, the canonical program `A157434.P13911057101020122820` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157434 has offset 1).

The definition of A157434 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A157434.P13911057101020122820

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=473, a(1)=564, a(2)=663`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A157434

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P13911057101020122820.Spec : Prop :=
  ∀ n, P13911057101020122820.a n = A157434 (n + 1)

theorem P13911057101020122820.correct : P13911057101020122820.Spec := by
  intro n
  simp only [A157434, Nat.add_sub_cancel]

end A157434

/-! ## A157434.P6270066163552790465

`round(A157431(n+2)-sqrt(A157431(n+2)))`
-/

namespace A157434.P6270066163552790465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A157431 (n + 2) : ℝ) - Real.sqrt (A157431 (n + 2) : ℝ))

end

end A157434.P6270066163552790465

namespace A157434

/-- `round(A157431(n+2)-sqrt(A157431(n+2)))` -/
def P6270066163552790465.Spec : Prop :=
  ∀ n, P6270066163552790465.a n = A157434 (n + 1)

end A157434

/-! ## A157434.P381213756303664640

`A002939(n+11)+11+n`
-/

namespace A157434.P381213756303664640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002939 (n + 11) + 11 + (n : ℤ)

end

end A157434.P381213756303664640

namespace A157434

/-- `A002939(n+11)+11+n` -/
def P381213756303664640.Spec : Prop :=
  ∀ n, P381213756303664640.a n = A157434 (n + 1)

end A157434

/-! ## A157434.P4785453174125078673

`A033991(n+11)`
-/

namespace A157434.P4785453174125078673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033991 (n + 11)

end

end A157434.P4785453174125078673

namespace A157434

/-- `A033991(n+11)` -/
def P4785453174125078673.Spec : Prop :=
  ∀ n, P4785453174125078673.a n = A157434 (n + 1)

end A157434

/-! ## A157434.P9104124228057153392

`A016742(n+11)-(n+11)`
-/

namespace A157434.P9104124228057153392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016742 (n + 11) - (n + 11 : ℤ)

end

end A157434.P9104124228057153392

namespace A157434

/-- `A016742(n+11)-(n+11)` -/
def P9104124228057153392.Spec : Prop :=
  ∀ n, P9104124228057153392.a n = A157434 (n + 1)

end A157434

/-! ## A157434.P5718815840423876234

`A173209(2*(n+11))`
-/

namespace A157434.P5718815840423876234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173209 (2 * (n + 11))

end

end A157434.P5718815840423876234

namespace A157434

/-- `A173209(2*(n+11))` -/
def P5718815840423876234.Spec : Prop :=
  ∀ n, P5718815840423876234.a n = A157434 (n + 1)

end A157434

/-! ## A157434.P4134040806829054438

`A074378(2*(n+10)+1)`
-/

namespace A157434.P4134040806829054438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074378 (2 * (n + 10) + 1)

end

end A157434.P4134040806829054438

namespace A157434

/-- `A074378(2*(n+10)+1)` -/
def P4134040806829054438.Spec : Prop :=
  ∀ n, P4134040806829054438.a n = A157434 (n + 1)

end A157434

/-! ## A157434.P9891680218444107718

`A048058(2*(n+10)+1)+n`
-/

namespace A157434.P9891680218444107718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048058 (2 * (n + 10) + 1) + (n : ℤ)

end

end A157434.P9891680218444107718

namespace A157434

/-- `A048058(2*(n+10)+1)+n` -/
def P9891680218444107718.Spec : Prop :=
  ∀ n, P9891680218444107718.a n = A157434 (n + 1)

end A157434

/-! ## A157434.P13038227082665259627

`A156859(A139580(n+2)/(n+2))`
-/

namespace A157434.P13038227082665259627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156859 (SequenceMachineLib.roundAway ((A139580 (n + 2) : ℚ) / (n + 2 : ℚ))).toNat

end

end A157434.P13038227082665259627

namespace A157434

/-- `A156859(A139580(n+2)/(n+2))` -/
def P13038227082665259627.Spec : Prop :=
  ∀ n, P13038227082665259627.a n = A157434 (n + 1)

end A157434

/-! ## A157434.P2563431043655027957

`A014848(2*(n+11))`
-/

namespace A157434.P2563431043655027957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014848 (2 * (n + 11))

end

end A157434.P2563431043655027957

namespace A157434

/-- `A014848(2*(n+11))` -/
def P2563431043655027957.Spec : Prop :=
  ∀ n, P2563431043655027957.a n = A157434 (n + 1)

end A157434

/-!
# A157435: a(n) = 64n + 632.

The programs for A157435, the canonical program `A157435.P13466515212831822654` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157435 has offset 1).

The definition of A157435 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A157435.P13466515212831822654

`2*a(n-1)-a(n-2)` with `a(0)=696, a(1)=760`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A157435

/-- `2*a(n-1)-a(n-2)` -/
def P13466515212831822654.Spec : Prop :=
  ∀ n, P13466515212831822654.a n = A157435 (n + 1)

theorem P13466515212831822654.correct : P13466515212831822654.Spec := by
  intro n
  simp only [A157435, Nat.add_sub_cancel]

end A157435

/-!
# A157436: a(n) = 128*n^2 + 2528*n + 12481.

The programs for A157436, the canonical program `A157436.P7975827807383193179` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157436 has offset 1).

The definition of A157436 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A157436.P7975827807383193179

`round(sqrt(A157434(n+1))*A157435(n+1))`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A157436

/-- `round(sqrt(A157434(n+1))*A157435(n+1))` -/
def P7975827807383193179.Spec : Prop :=
  ∀ n, P7975827807383193179.a n = A157436 (n + 1)

theorem P7975827807383193179.correct : P7975827807383193179.Spec := by
  intro n
  simp only [A157436, Nat.add_sub_cancel]

end A157436

/-! ## A157436.P10144682446266904630

`A157331(n+11)`
-/

namespace A157436.P10144682446266904630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157331 (n + 11)

end

end A157436.P10144682446266904630

namespace A157436

/-- `A157331(n+11)` -/
def P10144682446266904630.Spec : Prop :=
  ∀ n, P10144682446266904630.a n = A157436 (n + 1)

end A157436

/-! ## A157436.P6411262721827886451

`A081593(2*(n+11))`
-/

namespace A157436.P6411262721827886451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081593 (2 * (n + 11))

end

end A157436.P6411262721827886451

namespace A157436

/-- `A081593(2*(n+11))` -/
def P6411262721827886451.Spec : Prop :=
  ∀ n, P6411262721827886451.a n = A157436 (n + 1)

end A157436

/-! ## A157436.P12479202978797772568

`A069129(4*(n+11))`
-/

namespace A157436.P12479202978797772568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069129 (4 * (n + 11))

end

end A157436.P12479202978797772568

namespace A157436

/-- `A069129(4*(n+11))` -/
def P12479202978797772568.Spec : Prop :=
  ∀ n, P12479202978797772568.a n = A157436 (n + 1)

end A157436

/-! ## A157436.P10831523915413965760

`A056220(A004771(n+10))`
-/

namespace A157436.P10831523915413965760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056220 (A004771 (n + 10)).toNat

end

end A157436.P10831523915413965760

namespace A157436

/-- `A056220(A004771(n+10))` -/
def P10831523915413965760.Spec : Prop :=
  ∀ n, P10831523915413965760.a n = A157436 (n + 1)

end A157436

/-! ## A157436.P3302689503964610425

`A056220(A004769(n)+76)`
-/

namespace A157436.P3302689503964610425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056220 (A004769 n + 76).toNat

end

end A157436.P3302689503964610425

namespace A157436

/-- `A056220(A004769(n)+76)` -/
def P3302689503964610425.Spec : Prop :=
  ∀ n, P3302689503964610425.a n = A157436 (n + 1)

end A157436

/-!
# A157437: Primes congruent to 1, 5, 7, or 11 modulo 24.

The programs for A157437, the canonical program `A157437.P5415185452354151325` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157437 has offset 1).

The definition of A157437 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8985 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A157437.P11722069976122804629

`A296924(n+3)`
-/

namespace A157437.P11722069976122804629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296924 (n + 3)

end

end A157437.P11722069976122804629

namespace A157437

/-- `A296924(n+3)` -/
def P11722069976122804629.Spec : Prop :=
  ∀ n, P11722069976122804629.a n = A157437 (n + 1)

end A157437

/-! ## A157437.P15870613527666605758

`p?[A391366(n+3)]`
-/

namespace A157437.P15870613527666605758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391366 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A157437.P15870613527666605758

namespace A157437

/-- `p?[A391366(n+3)]` -/
def P15870613527666605758.Spec : Prop :=
  ∀ n, P15870613527666605758.a n = A157437 (n + 1)

end A157437

/-! ## A157437.P5415185452354151325

`p?[gcd(2*n+1, or(2, n+1)%3)]`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A157437

/-- `p?[gcd(2*n+1, or(2, n+1)%3)]` -/
def P5415185452354151325.Spec : Prop :=
  ∀ n, (P5415185452354151325.a n : ℤ) = A157437 (n + 1)

theorem P5415185452354151325.correct : P5415185452354151325.Spec := by
  intro n
  simp only [A157437, Nat.add_sub_cancel]

end A157437

/-! ## A157437.P4755885602772979760

`p?[xor(4, a(n-2)+3)]` with `a(0)=0, a(1)=5`
-/

namespace A157437.P4755885602772979760
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 5] fun n f1 =>
  Nat.xor 4 (f1 (n - 2) + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A157437.P4755885602772979760

namespace A157437

/-- `p?[xor(4, a(n-2)+3)]` -/
def P4755885602772979760.Spec : Prop :=
  ∀ n, (P4755885602772979760.a n : ℤ) = A157437 (n + 1)

end A157437

/-! ## A157437.P13531849382152309876

`∩[A083249(n+1), A391366(n+1)]`
-/

namespace A157437.P13531849382152309876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083249 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391366 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A157437.P13531849382152309876

namespace A157437

/-- `∩[A083249(n+1), A391366(n+1)]` -/
def P13531849382152309876.Spec : Prop :=
  ∀ n, (P13531849382152309876.a n : ℤ) = A157437 (n + 1)

end A157437

/-! ## A157437.P16368140921149180722

`∩[A066047(n+1), A391366(n+1)]`
-/

namespace A157437.P16368140921149180722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066047 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391366 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A157437.P16368140921149180722

namespace A157437

/-- `∩[A066047(n+1), A391366(n+1)]` -/
def P16368140921149180722.Spec : Prop :=
  ∀ n, (P16368140921149180722.a n : ℤ) = A157437 (n + 1)

end A157437

/-! ## A157437.P7987525000362052012

`p?[(n+3)*xor(5, n)%3]`
-/

namespace A157437.P7987525000362052012
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 3) * (Nat.xor 5 n % 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A157437.P7987525000362052012

namespace A157437

/-- `p?[(n+3)*xor(5, n)%3]` -/
def P7987525000362052012.Spec : Prop :=
  ∀ n, (P7987525000362052012.a n : ℤ) = A157437 (n + 1)

end A157437

/-! ## A157437.P17801460982323501878

`filter[A391366(n+1), A373154(#)]`
-/

namespace A157437.P17801460982323501878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391366 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373154 (f1 j).toNat = 1) n)

end

end A157437.P17801460982323501878

namespace A157437

/-- `filter[A391366(n+1), A373154(#)]` -/
def P17801460982323501878.Spec : Prop :=
  ∀ n, P17801460982323501878.a n = A157437 (n + 1)

end A157437

/-! ## A157437.P9020920995565232743

`filter[A391366(n+2), A359172(#)]`
-/

namespace A157437.P9020920995565232743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391366 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359172 (f1 j).toNat = 1) n)

end

end A157437.P9020920995565232743

namespace A157437

/-- `filter[A391366(n+2), A359172(#)]` -/
def P9020920995565232743.Spec : Prop :=
  ∀ n, P9020920995565232743.a n = A157437 (n + 1)

end A157437

/-! ## A157437.P14147991616384430381

`filter[A391366(n+2), A359377(#)]`
-/

namespace A157437.P14147991616384430381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391366 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359377 (f1 j).toNat = 1) n)

end

end A157437.P14147991616384430381

namespace A157437

/-- `filter[A391366(n+2), A359377(#)]` -/
def P14147991616384430381.Spec : Prop :=
  ∀ n, P14147991616384430381.a n = A157437 (n + 1)

end A157437

/-! ## A157437.P16843999618919111651

`filter[A391366(n+2), A369961(#)]`
-/

namespace A157437.P16843999618919111651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391366 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369961 (f1 j).toNat = 1) n)

end

end A157437.P16843999618919111651

namespace A157437

/-- `filter[A391366(n+2), A369961(#)]` -/
def P16843999618919111651.Spec : Prop :=
  ∀ n, P16843999618919111651.a n = A157437 (n + 1)

end A157437

/-! ## A157437.P14562119313920324671

`filter[A391366(n+3), A008966(#)]`
-/

namespace A157437.P14562119313920324671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391366 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A157437.P14562119313920324671

namespace A157437

/-- `filter[A391366(n+3), A008966(#)]` -/
def P14562119313920324671.Spec : Prop :=
  ∀ n, P14562119313920324671.a n = A157437 (n + 1)

end A157437

/-! ## A157437.P791915356900163249

`filter[A391366(n+3), A010051(#)]`
-/

namespace A157437.P791915356900163249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391366 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A157437.P791915356900163249

namespace A157437

/-- `filter[A391366(n+3), A010051(#)]` -/
def P791915356900163249.Spec : Prop :=
  ∀ n, P791915356900163249.a n = A157437 (n + 1)

end A157437

/-! ## A157437.P15853946795357128002

`filter[A391366(n+3), A066829(#)]`
-/

namespace A157437.P15853946795357128002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391366 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066829 (f1 j).toNat = 1) n)

end

end A157437.P15853946795357128002

namespace A157437

/-- `filter[A391366(n+3), A066829(#)]` -/
def P15853946795357128002.Spec : Prop :=
  ∀ n, P15853946795357128002.a n = A157437 (n + 1)

end A157437

/-! ## A157437.P10120097011174821381

`filter[A391366(n+3), A257531(#)]`
-/

namespace A157437.P10120097011174821381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391366 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A257531 (f1 j).toNat = 1) n)

end

end A157437.P10120097011174821381

namespace A157437

/-- `filter[A391366(n+3), A257531(#)]` -/
def P10120097011174821381.Spec : Prop :=
  ∀ n, P10120097011174821381.a n = A157437 (n + 1)

end A157437

/-! ## A157437.P12719533455418369666

`filter[A391366(n+2), A323511(#)]`
-/

namespace A157437.P12719533455418369666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391366 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323511 (f1 j).toNat = 1) n)

end

end A157437.P12719533455418369666

namespace A157437

/-- `filter[A391366(n+2), A323511(#)]` -/
def P12719533455418369666.Spec : Prop :=
  ∀ n, P12719533455418369666.a n = A157437 (n + 1)

end A157437

/-! ## A157437.P12149214308717593593

`filter[A391366(n+2), A323512(#)]`
-/

namespace A157437.P12149214308717593593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391366 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323512 (f1 j).toNat = 1) n)

end

end A157437.P12149214308717593593

namespace A157437

/-- `filter[A391366(n+2), A323512(#)]` -/
def P12149214308717593593.Spec : Prop :=
  ∀ n, P12149214308717593593.a n = A157437 (n + 1)

end A157437

/-! ## A157437.P12563798165115730934

`filter[A391366(n+2), A364250(#)]`
-/

namespace A157437.P12563798165115730934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391366 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A364250 (f1 j).toNat = 1) n)

end

end A157437.P12563798165115730934

namespace A157437

/-- `filter[A391366(n+2), A364250(#)]` -/
def P12563798165115730934.Spec : Prop :=
  ∀ n, P12563798165115730934.a n = A157437 (n + 1)

end A157437

/-! ## A157437.P9079547181780676650

`filter[A391366(n+3), A049240(#)]`
-/

namespace A157437.P9079547181780676650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391366 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A049240 (f1 j).toNat = 1) n)

end

end A157437.P9079547181780676650

namespace A157437

/-- `filter[A391366(n+3), A049240(#)]` -/
def P9079547181780676650.Spec : Prop :=
  ∀ n, P9079547181780676650.a n = A157437 (n + 1)

end A157437

/-! ## A157437.P8019802413164382517

`filter[A391366(n+3), A099104(#)]`
-/

namespace A157437.P8019802413164382517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391366 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A099104 (f1 j).toNat = 1) n)

end

end A157437.P8019802413164382517

namespace A157437

/-- `filter[A391366(n+3), A099104(#)]` -/
def P8019802413164382517.Spec : Prop :=
  ∀ n, P8019802413164382517.a n = A157437 (n + 1)

end A157437

/-!
# A157439: A090822 without every 1,1,2.

The programs for A157439, there is no canonical definition to state claims against.
-/

/-! ## A157439.P7078642789879111436

`gcd(A134478(n), A229054(n))+1`
-/

namespace A157439.P7078642789879111436
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A134478 n) (A229054 n) + 1

end

end A157439.P7078642789879111436

/-! ## A157439.P5115496631171000514

`A000040(gcd(A134478(n), A229054(n)))`
-/

namespace A157439.P5115496631171000514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (Int.gcd (A134478 n) (A229054 n))

end

end A157439.P5115496631171000514

/-! ## A157439.P8777389716301166435

`p?[A001221(A073757(∑[10*n+15]))]`
-/

namespace A157439.P8777389716301166435
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * n + 15

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A073757 (∑ j ∈ Finset.range (n + 1), f2 j)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A157439.P8777389716301166435

/-! ## A157439.P11626722934275247908

`A260452(A208069(2*n+5)-1)`
-/

namespace A157439.P11626722934275247908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260452 (A208069 (2 * n + 5) - 1).toNat

end

end A157439.P11626722934275247908

/-! ## A157439.P9178603881534539313

`A288203(n+1)+A043529(A206010(n+1))`
-/

namespace A157439.P9178603881534539313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288203 (n + 1) + A043529 (A206010 (n + 1)).toNat

end

end A157439.P9178603881534539313

/-!
# A157440: a(n) = 121*n^2 - 204*n + 86.

The programs for A157440, the canonical program `A157440.P17817131246230810672` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157440 has offset 1).

The definition of A157440 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A157440.P17817131246230810672

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=3, a(1)=162, a(2)=563`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A157440

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P17817131246230810672.Spec : Prop :=
  ∀ n, P17817131246230810672.a n = A157440 (n + 1)

theorem P17817131246230810672.correct : P17817131246230810672.Spec := by
  intro n
  simp only [A157440, Nat.add_sub_cancel]

end A157440

/-! ## A157440.P13665342973580140262

`floor((sqrt(a(n-1))+11)²)` with `a(0)=3`
-/

namespace A157440.P13665342973580140262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  ⌊(Real.sqrt (a (n - 1) : ℝ) + 11) ^ 2⌋

end

end A157440.P13665342973580140262

namespace A157440

/-- `floor((sqrt(a(n-1))+11)²)` -/
def P13665342973580140262.Spec : Prop :=
  ∀ n, P13665342973580140262.a n = A157440 (n + 1)

end A157440

/-! ## A157440.P1495718792399940476

`round((sqrt(a(n-1))+11)²)` with `a(0)=3`
-/

namespace A157440.P1495718792399940476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  SequenceMachineLib.roundAway ((Real.sqrt (a (n - 1) : ℝ) + 11) ^ 2)

end

end A157440.P1495718792399940476

namespace A157440

/-- `round((sqrt(a(n-1))+11)²)` -/
def P1495718792399940476.Spec : Prop :=
  ∀ n, P1495718792399940476.a n = A157440 (n + 1)

end A157440

/-! ## A157440.P3669221256958293365

`floor((sqrt(a(n-1))+11)^2)` with `a(0)=3`
-/

namespace A157440.P3669221256958293365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  ⌊(Real.sqrt (a (n - 1) : ℝ) + 11) ^ 2⌋

end

end A157440.P3669221256958293365

namespace A157440

/-- `floor((sqrt(a(n-1))+11)^2)` -/
def P3669221256958293365.Spec : Prop :=
  ∀ n, P3669221256958293365.a n = A157440 (n + 1)

end A157440

/-! ## A157440.P11499567302551062679

`round((sqrt(a(n-1))+11)^2)` with `a(0)=3`
-/

namespace A157440.P11499567302551062679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  SequenceMachineLib.roundAway ((Real.sqrt (a (n - 1) : ℝ) + 11) ^ 2)

end

end A157440.P11499567302551062679

namespace A157440

/-- `round((sqrt(a(n-1))+11)^2)` -/
def P11499567302551062679.Spec : Prop :=
  ∀ n, P11499567302551062679.a n = A157440 (n + 1)

end A157440

/-! ## A157440.P7441519687016649393

`(11*n+2)²-A016921(n)`
-/

namespace A157440.P7441519687016649393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((11 * n + 2) ^ 2 : ℤ) - A016921 n

end

end A157440.P7441519687016649393

namespace A157440

/-- `(11*n+2)²-A016921(n)` -/
def P7441519687016649393.Spec : Prop :=
  ∀ n, P7441519687016649393.a n = A157440 (n + 1)

end A157440

/-! ## A157440.P5419844182455930229

`A017413(n)²-5*n-(n+1)`
-/

namespace A157440.P5419844182455930229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017413 n ^ 2 - (5 * n : ℤ) - (n + 1 : ℤ)

end

end A157440.P5419844182455930229

namespace A157440

/-- `A017413(n)²-5*n-(n+1)` -/
def P5419844182455930229.Spec : Prop :=
  ∀ n, P5419844182455930229.a n = A157440 (n + 1)

end A157440

/-! ## A157440.P4551760592530883467

`A016873(n)+(11*n+3)*11*n+1`
-/

namespace A157440.P4551760592530883467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016873 n + ((11 * n + 3) * (11 * n) + 1 : ℤ)

end

end A157440.P4551760592530883467

namespace A157440

/-- `A016873(n)+(11*n+3)*11*n+1` -/
def P4551760592530883467.Spec : Prop :=
  ∀ n, P4551760592530883467.a n = A157440 (n + 1)

end A157440

/-! ## A157440.P10933435155779880241

`A016994(n)+2*A016922(n)`
-/

namespace A157440.P10933435155779880241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016994 n + 2 * A016922 n

end

end A157440.P10933435155779880241

namespace A157440

/-- `A016994(n)+2*A016922(n)` -/
def P10933435155779880241.Spec : Prop :=
  ∀ n, P10933435155779880241.a n = A157440 (n + 1)

end A157440

/-! ## A157440.P16969175066953779430

`A016994(n)+2*A016921(n)²`
-/

namespace A157440.P16969175066953779430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016994 n + 2 * A016921 n ^ 2

end

end A157440.P16969175066953779430

namespace A157440

/-- `A016994(n)+2*A016921(n)²` -/
def P16969175066953779430.Spec : Prop :=
  ∀ n, P16969175066953779430.a n = A157440 (n + 1)

end A157440

/-! ## A157440.P4846263800669260002

`A017413(n)²-A017545(n)/2`
-/

namespace A157440.P4846263800669260002
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017413 n ^ 2 : ℚ) - (A017545 n : ℚ) / 2

end

end A157440.P4846263800669260002

namespace A157440

/-- `A017413(n)²-A017545(n)/2` -/
def P4846263800669260002.Spec : Prop :=
  ∀ n, P4846263800669260002.a n = (A157440 (n + 1) : ℚ)

end A157440

/-! ## A157440.P774519637720650230

`A016861(n)+A017401(n)+A017401(n)²`
-/

namespace A157440.P774519637720650230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016861 n + (A017401 n + A017401 n ^ 2)

end

end A157440.P774519637720650230

namespace A157440

/-- `A016861(n)+A017401(n)+A017401(n)²` -/
def P774519637720650230.Spec : Prop :=
  ∀ n, P774519637720650230.a n = A157440 (n + 1)

end A157440

/-! ## A157440.P18288053394180737773

`A017413(n)²-A000265(A017545(n))`
-/

namespace A157440.P18288053394180737773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017413 n ^ 2 - A000265 (A017545 n).toNat

end

end A157440.P18288053394180737773

namespace A157440

/-- `A017413(n)²-A000265(A017545(n))` -/
def P18288053394180737773.Spec : Prop :=
  ∀ n, P18288053394180737773.a n = A157440 (n + 1)

end A157440

/-! ## A157440.P11523968924567484404

`A017413(n)²-A016777(2*n)`
-/

namespace A157440.P11523968924567484404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017413 n ^ 2 - A016777 (2 * n)

end

end A157440.P11523968924567484404

namespace A157440

/-- `A017413(n)²-A016777(2*n)` -/
def P11523968924567484404.Spec : Prop :=
  ∀ n, P11523968924567484404.a n = A157440 (n + 1)

end A157440

/-! ## A157440.P7918507940284104342

`A117950(2*n)+A173307(3*n)-n`
-/

namespace A157440.P7918507940284104342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117950 (2 * n) + (A173307 (3 * n) - (n : ℤ))

end

end A157440.P7918507940284104342

namespace A157440

/-- `A117950(2*n)+A173307(3*n)-n` -/
def P7918507940284104342.Spec : Prop :=
  ∀ n, P7918507940284104342.a n = A157440 (n + 1)

end A157440

/-! ## A157440.P14586076221787179030

`A051624(2*n+1)+A051624(n+1)+A033570(4*n)`
-/

namespace A157440.P14586076221787179030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051624 (2 * n + 1) + (A051624 (n + 1) + A033570 (4 * n))

end

end A157440.P14586076221787179030

namespace A157440

/-- `A051624(2*n+1)+A051624(n+1)+A033570(4*n)` -/
def P14586076221787179030.Spec : Prop :=
  ∀ n, P14586076221787179030.a n = A157440 (n + 1)

end A157440

/-! ## A157440.P4149381957405443287

`A028878(3*n)+2*A179986(4*n)`
-/

namespace A157440.P4149381957405443287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028878 (3 * n) + 2 * A179986 (4 * n)

end

end A157440.P4149381957405443287

namespace A157440

/-- `A028878(3*n)+2*A179986(4*n)` -/
def P4149381957405443287.Spec : Prop :=
  ∀ n, P4149381957405443287.a n = A157440 (n + 1)

end A157440

/-! ## A157440.P2283844032544259728

`A001504(3*n)+A005891(4*n)+n`
-/

namespace A157440.P2283844032544259728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001504 (3 * n) + (A005891 (4 * n) + (n : ℤ))

end

end A157440.P2283844032544259728

namespace A157440

/-- `A001504(3*n)+A005891(4*n)+n` -/
def P2283844032544259728.Spec : Prop :=
  ∀ n, P2283844032544259728.a n = A157440 (n + 1)

end A157440

/-! ## A157440.P3126067557308793457

`A003154(2*n+1)+A003154(4*n+1)+(n+1)²`
-/

namespace A157440.P3126067557308793457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003154 (2 * n + 1) + (A003154 (4 * n + 1) + ((n + 1) ^ 2 : ℤ))

end

end A157440.P3126067557308793457

namespace A157440

/-- `A003154(2*n+1)+A003154(4*n+1)+(n+1)²` -/
def P3126067557308793457.Spec : Prop :=
  ∀ n, P3126067557308793457.a n = A157440 (n + 1)

end A157440

/-!
# A157441: a(n) = 1331*n - 1122.

The programs for A157441, the canonical program `A157441.P9900113587646556657` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157441 has offset 1).

The definition of A157441 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A157441.P9900113587646556657

`11*(11*11*n+19)`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A157441

/-- `11*(11*11*n+19)` -/
def P9900113587646556657.Spec : Prop :=
  ∀ n, (P9900113587646556657.a n : ℤ) = A157441 (n + 1)

theorem P9900113587646556657.correct : P9900113587646556657.Spec := by
  intro n
  simp only [A157441, Nat.add_sub_cancel]

end A157441

/-!
# A157442: a(n) = 14641*n^2 - 24684*n + 10405.

The programs for A157442, the canonical program `A157442.P16979124603582513288` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157442 has offset 1).

The definition of A157442 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A157442.P16979124603582513288

`(11*11*n+19)²+1`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A157442

/-- `(11*11*n+19)²+1` -/
def P16979124603582513288.Spec : Prop :=
  ∀ n, (P16979124603582513288.a n : ℤ) = A157442 (n + 1)

theorem P16979124603582513288.correct : P16979124603582513288.Spec := by
  intro n
  simp only [A157442, Nat.add_sub_cancel]

end A157442

/-! ## A157442.P7743196369339573943

`round(sqrt(A157440(n+1))*A157441(n+1))`
-/

namespace A157442.P7743196369339573943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A157440 (n + 1) : ℝ) * (A157441 (n + 1) : ℝ))

end

end A157442.P7743196369339573943

namespace A157442

/-- `round(sqrt(A157440(n+1))*A157441(n+1))` -/
def P7743196369339573943.Spec : Prop :=
  ∀ n, P7743196369339573943.a n = A157442 (n + 1)

end A157442

/-! ## A157442.P2895019677789703890

`A002522(11*11*n+19)`
-/

namespace A157442.P2895019677789703890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 (11 * (11 * n) + 19)

end

end A157442.P2895019677789703890

namespace A157442

/-- `A002522(11*11*n+19)` -/
def P2895019677789703890.Spec : Prop :=
  ∀ n, P2895019677789703890.a n = A157442 (n + 1)

end A157442

/-! ## A157442.P14641593214156567582

`A158130(A157440(n+1))`
-/

namespace A157442.P14641593214156567582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158130 (A157440 (n + 1)).toNat

end

end A157442.P14641593214156567582

namespace A157442

/-- `A158130(A157440(n+1))` -/
def P14641593214156567582.Spec : Prop :=
  ∀ n, P14641593214156567582.a n = A157442 (n + 1)

end A157442

/-! ## A157442.P15405910735328574825

`A158130(A016873(n)+(11*n+3)*11*n+1)`
-/

namespace A157442.P15405910735328574825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158130 (A016873 n + ((11 * n + 3) * (11 * n) + 1 : ℤ)).toNat

end

end A157442.P15405910735328574825

namespace A157442

/-- `A158130(A016873(n)+(11*n+3)*11*n+1)` -/
def P15405910735328574825.Spec : Prop :=
  ∀ n, P15405910735328574825.a n = A157442 (n + 1)

end A157442

/-!
# A157443: a(n) = 121*n^2 - 38*n + 3.

The programs for A157443, the canonical program `A157443.P1530116859315508855` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157443 has offset 1).

The definition of A157443 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A157443.P1530116859315508855

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=86, a(1)=411, a(2)=978`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A157443

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P1530116859315508855.Spec : Prop :=
  ∀ n, P1530116859315508855.a n = A157443 (n + 1)

theorem P1530116859315508855.correct : P1530116859315508855.Spec := by
  intro n
  simp only [A157443, Nat.add_sub_cancel]

end A157443

/-! ## A157443.P14083300559601322943

`A017498(n)+6*n+5`
-/

namespace A157443.P14083300559601322943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017498 n + (6 * n + 5 : ℤ)

end

end A157443.P14083300559601322943

namespace A157443

/-- `A017498(n)+6*n+5` -/
def P14083300559601322943.Spec : Prop :=
  ∀ n, P14083300559601322943.a n = A157443 (n + 1)

end A157443

/-! ## A157443.P15817538237695989559

`A016969(n)+(11*n+9)²`
-/

namespace A157443.P15817538237695989559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016969 n + ((11 * n + 9) ^ 2 : ℤ)

end

end A157443.P15817538237695989559

namespace A157443

/-- `A016969(n)+(11*n+9)²` -/
def P15817538237695989559.Spec : Prop :=
  ∀ n, P15817538237695989559.a n = A157443 (n + 1)

end A157443

/-! ## A157443.P18334456106339800997

`A017054(n)+2*A016969(n)²`
-/

namespace A157443.P18334456106339800997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017054 n + 2 * A016969 n ^ 2

end

end A157443.P18334456106339800997

namespace A157443

/-- `A017054(n)+2*A016969(n)²` -/
def P18334456106339800997.Spec : Prop :=
  ∀ n, P18334456106339800997.a n = A157443 (n + 1)

end A157443

/-! ## A157443.P10474621780905537723

`A017497(n)+A017497(n)²-A016897(n)`
-/

namespace A157443.P10474621780905537723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017497 n + (A017497 n ^ 2 - A016897 n)

end

end A157443.P10474621780905537723

namespace A157443

/-- `A017497(n)+A017497(n)²-A016897(n)` -/
def P10474621780905537723.Spec : Prop :=
  ∀ n, P10474621780905537723.a n = A157443 (n + 1)

end A157443

/-! ## A157443.P11927193920383418027

`A000027(A016969(n))+abs((1-A017509(n))²-1)+1`
-/

namespace A157443.P11927193920383418027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A016969 n).toNat + (|(1 - A017509 n) ^ 2 - 1| + 1)

end

end A157443.P11927193920383418027

namespace A157443

/-- `A000027(A016969(n))+abs((1-A017509(n))²-1)+1` -/
def P11927193920383418027.Spec : Prop :=
  ∀ n, P11927193920383418027.a n = A157443 (n + 1)

end A157443

/-! ## A157443.P2396471628011182001

`round(A016969(n)+(A016957(n)+A016873(n)+3)^(8/4))`
-/

namespace A157443.P2396471628011182001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A016969 n : ℝ) + (A016957 n + A016873 n + 3 : ℝ) ^ ((8 : ℚ) / 4 : ℝ))

end

end A157443.P2396471628011182001

namespace A157443

/-- `round(A016969(n)+(A016957(n)+A016873(n)+3)^(8/4))` -/
def P2396471628011182001.Spec : Prop :=
  ∀ n, P2396471628011182001.a n = A157443 (n + 1)

end A157443

/-! ## A157443.P3632008363317273796

`A008458(n+1)+A017498(n)-1`
-/

namespace A157443.P3632008363317273796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (n + 1) + (A017498 n - 1)

end

end A157443.P3632008363317273796

namespace A157443

/-- `A008458(n+1)+A017498(n)-1` -/
def P3632008363317273796.Spec : Prop :=
  ∀ n, P3632008363317273796.a n = A157443 (n + 1)

end A157443

/-! ## A157443.P10021692227705998153

`A017510(n)+1-A004767(A004767(n))`
-/

namespace A157443.P10021692227705998153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017510 n + (1 - A004767 (A004767 n).toNat)

end

end A157443.P10021692227705998153

namespace A157443

/-- `A017510(n)+1-A004767(A004767(n))` -/
def P10021692227705998153.Spec : Prop :=
  ∀ n, P10021692227705998153.a n = A157443 (n + 1)

end A157443

/-! ## A157443.P14024304058496682418

`(A084849(A017497(n))+n)/2`
-/

namespace A157443.P14024304058496682418
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084849 (A017497 n).toNat + (n : ℤ) : ℚ) / 2

end

end A157443.P14024304058496682418

namespace A157443

/-- `(A084849(A017497(n))+n)/2` -/
def P14024304058496682418.Spec : Prop :=
  ∀ n, P14024304058496682418.a n = (A157443 (n + 1) : ℚ)

end A157443

/-! ## A157443.P16028417129281719893

`(n+1)*A017461(A017461(n)+1)+3`
-/

namespace A157443.P16028417129281719893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A017461 (A017461 n + 1).toNat + 3

end

end A157443.P16028417129281719893

namespace A157443

/-- `(n+1)*A017461(A017461(n)+1)+3` -/
def P16028417129281719893.Spec : Prop :=
  ∀ n, P16028417129281719893.a n = A157443 (n + 1)

end A157443

/-! ## A157443.P779743482062135564

`A000290(9*n+2*n+9)+A016969(n)`
-/

namespace A157443.P779743482062135564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (9 * n + (2 * n + 9)) + A016969 n

end

end A157443.P779743482062135564

namespace A157443

/-- `A000290(9*n+2*n+9)+A016969(n)` -/
def P779743482062135564.Spec : Prop :=
  ∀ n, P779743482062135564.a n = A157443 (n + 1)

end A157443

/-! ## A157443.P3253171956343515072

`A000027(A016969(n))+A005563(10*n+8+n)+1`
-/

namespace A157443.P3253171956343515072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A016969 n).toNat + (A005563 (10 * n + 8 + n) + 1)

end

end A157443.P3253171956343515072

namespace A157443

/-- `A000027(A016969(n))+A005563(10*n+8+n)+1` -/
def P3253171956343515072.Spec : Prop :=
  ∀ n, P3253171956343515072.a n = A157443 (n + 1)

end A157443

/-!
# A157444: a(n) = 1331*n - 209.

The programs for A157444, the canonical program `A157444.P3765960402501703196` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157444 has offset 1).

The definition of A157444 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A157444.P3765960402501703196

`11*(A158130(n+1)-18)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A157444

/-- `11*(A158130(n+1)-18)` -/
def P3765960402501703196.Spec : Prop :=
  ∀ n, P3765960402501703196.a n = A157444 (n + 1)

theorem P3765960402501703196.correct : P3765960402501703196.Spec := by
  intro n
  simp only [A157444, Nat.add_sub_cancel]

end A157444

/-!
# A157445: a(n) = 14641*n^2 - 4598*n + 362.

The programs for A157445, the canonical program `A157445.P9537513974224732465` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157445 has offset 1).

The definition of A157445 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A157445.P9537513974224732465

`(A158130(n+1)-18)²+1`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A157445

/-- `(A158130(n+1)-18)²+1` -/
def P9537513974224732465.Spec : Prop :=
  ∀ n, P9537513974224732465.a n = A157445 (n + 1)

theorem P9537513974224732465.correct : P9537513974224732465.Spec := by
  intro n
  simp only [A157445, Nat.add_sub_cancel]

end A157445

/-! ## A157445.P662376980006878166

`(20*A016969(n)+2+n)²+1`
-/

namespace A157445.P662376980006878166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (20 * A016969 n + 2 + (n : ℤ)) ^ 2 + 1

end

end A157445.P662376980006878166

namespace A157445

/-- `(20*A016969(n)+2+n)²+1` -/
def P662376980006878166.Spec : Prop :=
  ∀ n, P662376980006878166.a n = A157445 (n + 1)

end A157445

/-! ## A157445.P4530444001587248500

`round(sqrt(A157443(n+1))*A157444(n+1))`
-/

namespace A157445.P4530444001587248500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A157443 (n + 1) : ℝ) * (A157444 (n + 1) : ℝ))

end

end A157445.P4530444001587248500

namespace A157445

/-- `round(sqrt(A157443(n+1))*A157444(n+1))` -/
def P4530444001587248500.Spec : Prop :=
  ∀ n, P4530444001587248500.a n = A157445 (n + 1)

end A157445

/-! ## A157445.P12298837089414097956

`A017425(A017497(n))²+1`
-/

namespace A157445.P12298837089414097956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017425 (A017497 n).toNat ^ 2 + 1

end

end A157445.P12298837089414097956

namespace A157445

/-- `A017425(A017497(n))²+1` -/
def P12298837089414097956.Spec : Prop :=
  ∀ n, P12298837089414097956.a n = A157445 (n + 1)

end A157445

/-! ## A157445.P11005160542860794028

`A017425(A017425(n)+6)²+1`
-/

namespace A157445.P11005160542860794028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017425 (A017425 n + 6).toNat ^ 2 + 1

end

end A157445.P11005160542860794028

namespace A157445

/-- `A017425(A017425(n)+6)²+1` -/
def P11005160542860794028.Spec : Prop :=
  ∀ n, P11005160542860794028.a n = A157445 (n + 1)

end A157445

/-! ## A157445.P3367768664369992229

`A158130(A016969(n))+A017390(A017497(n))`
-/

namespace A157445.P3367768664369992229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158130 (A016969 n).toNat + A017390 (A017497 n).toNat

end

end A157445.P3367768664369992229

namespace A157445

/-- `A158130(A016969(n))+A017390(A017497(n))` -/
def P3367768664369992229.Spec : Prop :=
  ∀ n, P3367768664369992229.a n = A157445 (n + 1)

end A157445

/-!
# A157446: a(n) = 16*n^2 - n.

The programs for A157446, the canonical program `A157446.P15512618227182812450` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157446 has offset 1).

The definition of A157446 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A157446.P15512618227182812450

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=15, a(1)=62, a(2)=141`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A157446

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P15512618227182812450.Spec : Prop :=
  ∀ n, P15512618227182812450.a n = A157446 (n + 1)

theorem P15512618227182812450.correct : P15512618227182812450.Spec := by
  intro n
  simp only [A157446, Nat.add_sub_cancel]

end A157446

/-! ## A157446.P13917294800499437868

`∑[32*n+15]`
-/

namespace A157446.P13917294800499437868
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  32 * n + 15

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A157446.P13917294800499437868

namespace A157446

/-- `∑[32*n+15]` -/
def P13917294800499437868.Spec : Prop :=
  ∀ n, (P13917294800499437868.a n : ℤ) = A157446 (n + 1)

end A157446

/-! ## A157446.P15634490984435710316

`abs(∑[a(n-1)+32])` with `a(0)=15`
-/

namespace A157446.P15634490984435710316
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [15] fun n f1 =>
  f1 (n - 1) + 32

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A157446.P15634490984435710316

namespace A157446

/-- `abs(∑[a(n-1)+32])` -/
def P15634490984435710316.Spec : Prop :=
  ∀ n, (P15634490984435710316.a n : ℤ) = A157446 (n + 1)

end A157446

/-! ## A157446.P15932591060632343605

`ceil(∑[a(n-1)+32])` with `a(0)=15`

`ceil` is left out, it is the identity on integers.
-/

namespace A157446.P15932591060632343605
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [15] fun n f1 =>
  f1 (n - 1) + 32

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A157446.P15932591060632343605

namespace A157446

/-- `ceil(∑[a(n-1)+32])` -/
def P15932591060632343605.Spec : Prop :=
  ∀ n, (P15932591060632343605.a n : ℤ) = A157446 (n + 1)

end A157446

/-! ## A157446.P15981263928024575910

`record[xor(n, -4)²]-(n+1)`
-/

namespace A157446.P15981263928024575910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-4) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n + 1 : ℤ)

end

end A157446.P15981263928024575910

namespace A157446

/-- `record[xor(n, -4)²]-(n+1)` -/
def P15981263928024575910.Spec : Prop :=
  ∀ n, P15981263928024575910.a n = A157446 (n + 1)

end A157446

/-! ## A157446.P10236270428465725019

`record[(4*(1-n))²]-(n+1)`
-/

namespace A157446.P10236270428465725019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * (1 - (n : ℤ))) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n + 1 : ℤ)

end

end A157446.P10236270428465725019

namespace A157446

/-- `record[(4*(1-n))²]-(n+1)` -/
def P10236270428465725019.Spec : Prop :=
  ∀ n, P10236270428465725019.a n = A157446 (n + 1)

end A157446

/-! ## A157446.P2800818793915855627

`lcm(2, (4*(n+1))²)-(n+1)`
-/

namespace A157446.P2800818793915855627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 ((4 * (n + 1)) ^ 2) : ℤ) - (n + 1 : ℤ)

end

end A157446.P2800818793915855627

namespace A157446

/-- `lcm(2, (4*(n+1))²)-(n+1)` -/
def P2800818793915855627.Spec : Prop :=
  ∀ n, P2800818793915855627.a n = A157446 (n + 1)

end A157446

/-! ## A157446.P8493452472979470279

`or(1, (4*(n+1))²)-(n+2)`
-/

namespace A157446.P8493452472979470279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 ((4 * (n + 1)) ^ 2) : ℤ) - (n + 2 : ℤ)

end

end A157446.P8493452472979470279

namespace A157446

/-- `or(1, (4*(n+1))²)-(n+2)` -/
def P8493452472979470279.Spec : Prop :=
  ∀ n, P8493452472979470279.a n = A157446 (n + 1)

end A157446

/-! ## A157446.P14996902236267342716

`xor(1, (4*(n+1))²)-(n+2)`
-/

namespace A157446.P14996902236267342716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor 1 ((4 * (n + 1)) ^ 2) : ℤ) - (n + 2 : ℤ)

end

end A157446.P14996902236267342716

namespace A157446

/-- `xor(1, (4*(n+1))²)-(n+2)` -/
def P14996902236267342716.Spec : Prop :=
  ∀ n, P14996902236267342716.a n = A157446 (n + 1)

end A157446

/-! ## A157446.P18274840869817910362

`(4*C(n+1, n))²-(n+1)`
-/

namespace A157446.P18274840869817910362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((4 * Nat.choose (n + 1) n) ^ 2 : ℤ) - (n + 1 : ℤ)

end

end A157446.P18274840869817910362

namespace A157446

/-- `(4*C(n+1, n))²-(n+1)` -/
def P18274840869817910362.Spec : Prop :=
  ∀ n, P18274840869817910362.a n = A157446 (n + 1)

end A157446

/-! ## A157446.P8541588895598503326

`record[(4*(1-n))²-abs(1-n)]`
-/

namespace A157446.P8541588895598503326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * (1 - (n : ℤ))) ^ 2 - |1 - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A157446.P8541588895598503326

namespace A157446

/-- `record[(4*(1-n))²-abs(1-n)]` -/
def P8541588895598503326.Spec : Prop :=
  ∀ n, P8541588895598503326.a n = A157446 (n + 1)

end A157446

/-! ## A157446.P14971586405068477103

`lt[3, xor(n, n-1)]²-(n+1)`
-/

namespace A157446.P14971586405068477103
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n ^ 2 : ℤ) - (n + 1 : ℤ)

end

end A157446.P14971586405068477103

namespace A157446

/-- `lt[3, xor(n, n-1)]²-(n+1)` -/
def P14971586405068477103.Spec : Prop :=
  ∀ n, P14971586405068477103.a n = A157446 (n + 1)

end A157446

/-! ## A157446.P9642394945249054370

`C(8*(n+1), 2)/2+n+1`
-/

namespace A157446.P9642394945249054370
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (8 * (n + 1)) 2 : ℚ) / 2 + (n + 1 : ℚ)

end

end A157446.P9642394945249054370

namespace A157446

/-- `C(8*(n+1), 2)/2+n+1` -/
def P9642394945249054370.Spec : Prop :=
  ∀ n, P9642394945249054370.a n = (A157446 (n + 1) : ℚ)

end A157446

/-! ## A157446.P14540239499065822002

`lcm(8*(2*n+1)+7, n+1)`
-/

namespace A157446.P14540239499065822002
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (8 * (2 * n + 1) + 7) (n + 1)

end

end A157446.P14540239499065822002

namespace A157446

/-- `lcm(8*(2*n+1)+7, n+1)` -/
def P14540239499065822002.Spec : Prop :=
  ∀ n, (P14540239499065822002.a n : ℤ) = A157446 (n + 1)

end A157446

/-! ## A157446.P7740632078323236101

`(n+1)*or(7, 4*(4*n+2))`
-/

namespace A157446.P7740632078323236101
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * Nat.lor 7 (4 * (4 * n + 2))

end

end A157446.P7740632078323236101

namespace A157446

/-- `(n+1)*or(7, 4*(4*n+2))` -/
def P7740632078323236101.Spec : Prop :=
  ∀ n, (P7740632078323236101.a n : ℤ) = A157446 (n + 1)

end A157446

/-! ## A157446.P12100277941653279992

`(n+1)*xor(7, 4*(4*n+2))`
-/

namespace A157446.P12100277941653279992
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * Nat.xor 7 (4 * (4 * n + 2))

end

end A157446.P12100277941653279992

namespace A157446

/-- `(n+1)*xor(7, 4*(4*n+2))` -/
def P12100277941653279992.Spec : Prop :=
  ∀ n, (P12100277941653279992.a n : ℤ) = A157446 (n + 1)

end A157446

/-! ## A157446.P6078950631437644265

`∩[2*n, 4*(n+1)]²-(n+1)`
-/

namespace A157446.P6078950631437644265
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = x) n ^ 2 : ℤ) - (n + 1 : ℤ)

end

end A157446.P6078950631437644265

namespace A157446

/-- `∩[2*n, 4*(n+1)]²-(n+1)` -/
def P6078950631437644265.Spec : Prop :=
  ∀ n, P6078950631437644265.a n = A157446 (n + 1)

end A157446

/-! ## A157446.P12665747725987671861

`lt[n+1, or(n, n-1)]²-(n+1)`
-/

namespace A157446.P12665747725987671861
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n ^ 2 : ℤ) - (n + 1 : ℤ)

end

end A157446.P12665747725987671861

namespace A157446

/-- `lt[n+1, or(n, n-1)]²-(n+1)` -/
def P12665747725987671861.Spec : Prop :=
  ∀ n, P12665747725987671861.a n = A157446 (n + 1)

end A157446

/-! ## A157446.P6667267180343739672

`((n+1)*gcd(2, 2*n)²)²-(n+1)`
-/

namespace A157446.P6667267180343739672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n + 1) * Nat.gcd 2 (2 * n) ^ 2) ^ 2 : ℤ) - (n + 1 : ℤ)

end

end A157446.P6667267180343739672

namespace A157446

/-- `((n+1)*gcd(2, 2*n)²)²-(n+1)` -/
def P6667267180343739672.Spec : Prop :=
  ∀ n, P6667267180343739672.a n = A157446 (n + 1)

end A157446

/-! ## A157446.P5191850020288905230

`(C(n+2, 2)-∑[n-3])²-(n+1)`
-/

namespace A157446.P5191850020288905230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.choose (n + 2) 2 : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1 : ℤ)

end

end A157446.P5191850020288905230

namespace A157446

/-- `(C(n+2, 2)-∑[n-3])²-(n+1)` -/
def P5191850020288905230.Spec : Prop :=
  ∀ n, P5191850020288905230.a n = A157446 (n + 1)

end A157446

/-!
# A157447: a(n) = 512*n - 16.

The programs for A157447, the canonical program `A157447.P10352796834176218758` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157447 has offset 1).

The definition of A157447 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A157447.P10352796834176218758

`16*(32*n+31)`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A157447

/-- `16*(32*n+31)` -/
def P10352796834176218758.Spec : Prop :=
  ∀ n, (P10352796834176218758.a n : ℤ) = A157447 (n + 1)

theorem P10352796834176218758.correct : P10352796834176218758.Spec := by
  intro n
  simp only [A157447, Nat.add_sub_cancel]

end A157447

/-!
# A157448: a(n) = 2048*n^2 - 128*n + 1.

The programs for A157448, the canonical program `A157448.P10982465410716432833` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157448 has offset 1).

The definition of A157448 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A157448.P10982465410716432833

`2*A239128(n+1)²-1`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A157448

/-- `2*A239128(n+1)²-1` -/
def P10982465410716432833.Spec : Prop :=
  ∀ n, P10982465410716432833.a n = A157448 (n + 1)

theorem P10982465410716432833.correct : P10982465410716432833.Spec := by
  intro n
  simp only [A157448, Nat.add_sub_cancel]

end A157448

/-! ## A157448.P6605509023958307414

`A275543(A139098(n+2)-A275543(2*n))`
-/

namespace A157448.P6605509023958307414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275543 (A139098 (n + 2) - A275543 (2 * n)).toNat

end

end A157448.P6605509023958307414

namespace A157448

/-- `A275543(A139098(n+2)-A275543(2*n))` -/
def P6605509023958307414.Spec : Prop :=
  ∀ n, P6605509023958307414.a n = A157448 (n + 1)

end A157448

/-! ## A157448.P11491387701354574451

`A157331(4*(n+1))`
-/

namespace A157448.P11491387701354574451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157331 (4 * (n + 1))

end

end A157448.P11491387701354574451

namespace A157448

/-- `A157331(4*(n+1))` -/
def P11491387701354574451.Spec : Prop :=
  ∀ n, P11491387701354574451.a n = A157448 (n + 1)

end A157448

/-! ## A157448.P7726257620072172223

`A157331(A008586(n+1))%A157367(n+1)`
-/

namespace A157448.P7726257620072172223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A157331 (A008586 (n + 1)).toNat) (A157367 (n + 1))

end

end A157448.P7726257620072172223

namespace A157448

/-- `A157331(A008586(n+1))%A157367(n+1)` -/
def P7726257620072172223.Spec : Prop :=
  ∀ n, P7726257620072172223.a n = A157448 (n + 1)

end A157448

/-! ## A157448.P3599121012046703353

`A017138(A004771(n))/2-1`
-/

namespace A157448.P3599121012046703353
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017138 (A004771 n).toNat : ℚ) / 2 - 1

end

end A157448.P3599121012046703353

namespace A157448

/-- `A017138(A004771(n))/2-1` -/
def P3599121012046703353.Spec : Prop :=
  ∀ n, P3599121012046703353.a n = (A157448 (n + 1) : ℚ)

end A157448

/-! ## A157448.P5151448222164186880

`A081593(8*(n+1))`
-/

namespace A157448.P5151448222164186880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081593 (8 * (n + 1))

end

end A157448.P5151448222164186880

namespace A157448

/-- `A081593(8*(n+1))` -/
def P5151448222164186880.Spec : Prop :=
  ∀ n, P5151448222164186880.a n = A157448 (n + 1)

end A157448

/-! ## A157448.P4872414019999565201

`A069129(A008598(n+1))`
-/

namespace A157448.P4872414019999565201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069129 (A008598 (n + 1)).toNat

end

end A157448.P4872414019999565201

namespace A157448

/-- `A069129(A008598(n+1))` -/
def P4872414019999565201.Spec : Prop :=
  ∀ n, P4872414019999565201.a n = A157448 (n + 1)

end A157448

/-! ## A157448.P2888017897309528442

`A069129(Δ[A069129(n+1)])`
-/

namespace A157448.P2888017897309528442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069129 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069129 (f1 (n + 1) - f1 n).toNat

end

end A157448.P2888017897309528442

namespace A157448

/-- `A069129(Δ[A069129(n+1)])` -/
def P2888017897309528442.Spec : Prop :=
  ∀ n, P2888017897309528442.a n = A157448 (n + 1)

end A157448

/-! ## A157448.P5823050944322387774

`A069129(Δ[A077221(Δ[n²])])`
-/

namespace A157448.P5823050944322387774
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077221 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069129 (f1 (n + 1) - f1 n).toNat

end

end A157448.P5823050944322387774

namespace A157448

/-- `A069129(Δ[A077221(Δ[n²])])` -/
def P5823050944322387774.Spec : Prop :=
  ∀ n, P5823050944322387774.a n = A157448 (n + 1)

end A157448

/-! ## A157448.P11513829421854497522

`A069129(A158057(n+1)-1)`
-/

namespace A157448.P11513829421854497522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069129 (A158057 (n + 1) - 1).toNat

end

end A157448.P11513829421854497522

namespace A157448

/-- `A069129(A158057(n+1)-1)` -/
def P11513829421854497522.Spec : Prop :=
  ∀ n, P11513829421854497522.a n = A157448 (n + 1)

end A157448

/-! ## A157448.P14178496061455428448

`A069129(A022144(2*(n+1)))`
-/

namespace A157448.P14178496061455428448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069129 (A022144 (2 * (n + 1))).toNat

end

end A157448.P14178496061455428448

namespace A157448

/-- `A069129(A022144(2*(n+1)))` -/
def P14178496061455428448.Spec : Prop :=
  ∀ n, P14178496061455428448.a n = A157448 (n + 1)

end A157448

/-! ## A157448.P13111005118492420903

`2*A033996(A125169(n))+1`
-/

namespace A157448.P13111005118492420903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A033996 (A125169 n).toNat + 1

end

end A157448.P13111005118492420903

namespace A157448

/-- `2*A033996(A125169(n))+1` -/
def P13111005118492420903.Spec : Prop :=
  ∀ n, P13111005118492420903.a n = A157448 (n + 1)

end A157448

/-! ## A157448.P8089026528875642172

`A069129(A005843(8*(n+1)))`
-/

namespace A157448.P8089026528875642172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069129 (A005843 (8 * (n + 1))).toNat

end

end A157448.P8089026528875642172

namespace A157448

/-- `A069129(A005843(8*(n+1)))` -/
def P8089026528875642172.Spec : Prop :=
  ∀ n, P8089026528875642172.a n = A157448 (n + 1)

end A157448

/-! ## A157448.P14513557064051206458

`A077591(Δ[A077591(n+1)])-1`
-/

namespace A157448.P14513557064051206458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077591 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077591 (f1 (n + 1) - f1 n).toNat - 1

end

end A157448.P14513557064051206458

namespace A157448

/-- `A077591(Δ[A077591(n+1)])-1` -/
def P14513557064051206458.Spec : Prop :=
  ∀ n, P14513557064051206458.a n = A157448 (n + 1)

end A157448

/-! ## A157448.P7007793468763034285

`A069129(A016802(n+1)/(n+1))`
-/

namespace A157448.P7007793468763034285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069129 (SequenceMachineLib.roundAway ((A016802 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

end

end A157448.P7007793468763034285

namespace A157448

/-- `A069129(A016802(n+1)/(n+1))` -/
def P7007793468763034285.Spec : Prop :=
  ∀ n, P7007793468763034285.a n = A157448 (n + 1)

end A157448

/-! ## A157448.P5792674479425600384

`A069129(A035008(2*n+1)/(2*n+1))`
-/

namespace A157448.P5792674479425600384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069129 (SequenceMachineLib.roundAway ((A035008 (2 * n + 1) : ℚ) / (2 * n + 1 : ℚ))).toNat

end

end A157448.P5792674479425600384

namespace A157448

/-- `A069129(A035008(2*n+1)/(2*n+1))` -/
def P5792674479425600384.Spec : Prop :=
  ∀ n, P5792674479425600384.a n = A157448 (n + 1)

end A157448

/-! ## A157448.P16230498187128497775

`A069129(A008586(A008586(n+1)))`
-/

namespace A157448.P16230498187128497775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069129 (A008586 (A008586 (n + 1)).toNat).toNat

end

end A157448.P16230498187128497775

namespace A157448

/-- `A069129(A008586(A008586(n+1)))` -/
def P16230498187128497775.Spec : Prop :=
  ∀ n, P16230498187128497775.a n = A157448 (n + 1)

end A157448

/-! ## A157448.P4238327973342952435

`A069129(A004772(A017533(n+1)))`
-/

namespace A157448.P4238327973342952435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069129 (A004772 (A017533 (n + 1)).toNat).toNat

end

end A157448.P4238327973342952435

namespace A157448

/-- `A069129(A004772(A017533(n+1)))` -/
def P4238327973342952435.Spec : Prop :=
  ∀ n, P4238327973342952435.a n = A157448 (n + 1)

end A157448

/-! ## A157448.P15350679367383154976

`A069129(A035008(n+1)-A035008(n))`
-/

namespace A157448.P15350679367383154976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069129 (A035008 (n + 1) - A035008 n).toNat

end

end A157448.P15350679367383154976

namespace A157448

/-- `A069129(A035008(n+1)-A035008(n))` -/
def P15350679367383154976.Spec : Prop :=
  ∀ n, P15350679367383154976.a n = A157448 (n + 1)

end A157448

/-! ## A157448.P14413167825238670138

`A069129(A108099(n+1)-A108099(n))`
-/

namespace A157448.P14413167825238670138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069129 (A108099 (n + 1) - A108099 n).toNat

end

end A157448.P14413167825238670138

namespace A157448

/-- `A069129(A108099(n+1)-A108099(n))` -/
def P14413167825238670138.Spec : Prop :=
  ∀ n, P14413167825238670138.a n = A157448 (n + 1)

end A157448

/-!
# A157449: Difference between n and the sum of its divisors except 1 and itself.

The programs for A157449, the canonical program `A157449.P8094442520443741575` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157449 has offset 2).

The definition of A157449 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A157449.P8094442520443741575

`2*n+5-∑{d}[n+2, #]`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A157449

/-- `2*n+5-∑{d}[n+2, #]` -/
def P8094442520443741575.Spec : Prop :=
  ∀ n, P8094442520443741575.a n = A157449 (n + 2)

theorem P8094442520443741575.correct : P8094442520443741575.Spec := by
  intro n
  simp only [A157449, Nat.add_sub_cancel]

end A157449

/-! ## A157449.P5188497201955398236

`Δ[(n+2)²]-∑{d}[n+2, #]`
-/

namespace A157449.P5188497201955398236
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - ((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℤ)

end

end A157449.P5188497201955398236

namespace A157449

/-- `Δ[(n+2)²]-∑{d}[n+2, #]` -/
def P5188497201955398236.Spec : Prop :=
  ∀ n, P5188497201955398236.a n = A157449 (n + 2)

theorem P5188497201955398236.correct : P5188497201955398236.Spec := by
  intro n
  simp only [A157449, Nat.add_sub_cancel, A157449.P5188497201955398236.f1, A157449.P5188497201955398236.f2, A157449.P5188497201955398236.a, A157449.P8094442520443741575.f1, A157449.P8094442520443741575.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A157449

/-! ## A157449.P1722357974601463867

`n+2-abs(∑{d}[n+2, #]-(n+3))`
-/

namespace A157449.P1722357974601463867
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - |((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - (n + 3 : ℤ)|

end

end A157449.P1722357974601463867

namespace A157449

/-- `n+2-abs(∑{d}[n+2, #]-(n+3))` -/
def P1722357974601463867.Spec : Prop :=
  ∀ n, P1722357974601463867.a n = A157449 (n + 2)

end A157449

/-! ## A157449.P15026615770743809957

`A033879(n+2)+1`
-/

namespace A157449.P15026615770743809957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033879 (n + 2) + 1

end

end A157449.P15026615770743809957

namespace A157449

/-- `A033879(n+2)+1` -/
def P15026615770743809957.Spec : Prop :=
  ∀ n, P15026615770743809957.a n = A157449 (n + 2)

end A157449

/-! ## A157449.P15302755503595144814

`A120444(n+1)+2`
-/

namespace A157449.P15302755503595144814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120444 (n + 1) + 2

end

end A157449.P15302755503595144814

namespace A157449

/-- `A120444(n+1)+2` -/
def P15302755503595144814.Spec : Prop :=
  ∀ n, P15302755503595144814.a n = A157449 (n + 2)

end A157449

/-! ## A157449.P7707449097437831786

`∑[1-A053246(n+1)]+1`
-/

namespace A157449.P7707449097437831786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A053246 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A157449.P7707449097437831786

namespace A157449

/-- `∑[1-A053246(n+1)]+1` -/
def P7707449097437831786.Spec : Prop :=
  ∀ n, P7707449097437831786.a n = A157449 (n + 2)

end A157449

/-! ## A157449.P8468255869730684419

`∑[2-A053222(n+1)]+2`
-/

namespace A157449.P8468255869730684419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A053222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A157449.P8468255869730684419

namespace A157449

/-- `∑[2-A053222(n+1)]+2` -/
def P8468255869730684419.Spec : Prop :=
  ∀ n, P8468255869730684419.a n = A157449 (n + 2)

end A157449

/-! ## A157449.P10258632438104870748

`∑[A163553(n+1)-n]+2`
-/

namespace A157449.P10258632438104870748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163553 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A157449.P10258632438104870748

namespace A157449

/-- `∑[A163553(n+1)-n]+2` -/
def P10258632438104870748.Spec : Prop :=
  ∀ n, P10258632438104870748.a n = A157449 (n + 2)

end A157449

/-! ## A157449.P12208804207462225781

`2*n+5-A000203(n+2)`
-/

namespace A157449.P12208804207462225781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) + (5 - A000203 (n + 2))

end

end A157449.P12208804207462225781

namespace A157449

/-- `2*n+5-A000203(n+2)` -/
def P12208804207462225781.Spec : Prop :=
  ∀ n, P12208804207462225781.a n = A157449 (n + 2)

end A157449

/-! ## A157449.P15158593532642410739

`∑[2-Δ[A000203(n+1)]]+2`
-/

namespace A157449.P15158593532642410739
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A157449.P15158593532642410739

namespace A157449

/-- `∑[2-Δ[A000203(n+1)]]+2` -/
def P15158593532642410739.Spec : Prop :=
  ∀ n, P15158593532642410739.a n = A157449 (n + 2)

end A157449

/-! ## A157449.P9460193030359257073

`∑{d}[n+2, A000010(#)-#]+n+3`
-/

namespace A157449.P9460193030359257073
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A000010 d - (d : ℤ)) + (n + 3 : ℤ)

end

end A157449.P9460193030359257073

namespace A157449

/-- `∑{d}[n+2, A000010(#)-#]+n+3` -/
def P9460193030359257073.Spec : Prop :=
  ∀ n, P9460193030359257073.a n = A157449 (n + 2)

end A157449

/-! ## A157449.P13438799348049789857

`5-(A000203(2*n-(n-2))-2*n)`
-/

namespace A157449.P13438799348049789857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 - (A000203 ((2 * n : ℤ) - ((n : ℤ) - 2)).toNat - (2 * n : ℤ))

end

end A157449.P13438799348049789857

namespace A157449

/-- `5-(A000203(2*n-(n-2))-2*n)` -/
def P13438799348049789857.Spec : Prop :=
  ∀ n, P13438799348049789857.a n = A157449 (n + 2)

end A157449

/-! ## A157449.P16398805839708899048

`Δ[(n+2)²]-A000203(C(n+2, n+1))`
-/

namespace A157449.P16398805839708899048
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A000203 (Nat.choose (n + 2) (n + 1))

end

end A157449.P16398805839708899048

namespace A157449

/-- `Δ[(n+2)²]-A000203(C(n+2, n+1))` -/
def P16398805839708899048.Spec : Prop :=
  ∀ n, P16398805839708899048.a n = A157449 (n + 2)

end A157449

/-! ## A157449.P2002615374165430448

`A117966(A295882(n+2))+1`
-/

namespace A157449.P2002615374165430448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117966 (A295882 (n + 2)).toNat + 1

end

end A157449.P2002615374165430448

namespace A157449

/-- `A117966(A295882(n+2))+1` -/
def P2002615374165430448.Spec : Prop :=
  ∀ n, P2002615374165430448.a n = A157449 (n + 2)

end A157449

/-! ## A157449.P3319016164142918055

`A000203(n+2)-A062967(n+2)`
-/

namespace A157449.P3319016164142918055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 2) - A062967 (n + 2)

end

end A157449.P3319016164142918055

namespace A157449

/-- `A000203(n+2)-A062967(n+2)` -/
def P3319016164142918055.Spec : Prop :=
  ∀ n, P3319016164142918055.a n = A157449 (n + 2)

end A157449

/-! ## A157449.P4277898172436992015

`A000010(n+2)+1-A051709(n+2)`
-/

namespace A157449.P4277898172436992015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 2) + (1 - A051709 (n + 2))

end

end A157449.P4277898172436992015

namespace A157449

/-- `A000010(n+2)+1-A051709(n+2)` -/
def P4277898172436992015.Spec : Prop :=
  ∀ n, P4277898172436992015.a n = A157449 (n + 2)

end A157449

/-! ## A157449.P8760163264587985831

`A000203(n+2)+1-A091818(n+2)`
-/

namespace A157449.P8760163264587985831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 2) + (1 - A091818 (n + 2))

end

end A157449.P8760163264587985831

namespace A157449

/-- `A000203(n+2)+1-A091818(n+2)` -/
def P8760163264587985831.Spec : Prop :=
  ∀ n, P8760163264587985831.a n = A157449 (n + 2)

end A157449

/-! ## A157449.P4846507735916825227

`Δ[A000203(n+2)+(n+2)²]-A000203(n+3)`
-/

namespace A157449.P4846507735916825227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 2) + ((n + 2) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A000203 (n + 3)

end

end A157449.P4846507735916825227

namespace A157449

/-- `Δ[A000203(n+2)+(n+2)²]-A000203(n+3)` -/
def P4846507735916825227.Spec : Prop :=
  ∀ n, P4846507735916825227.a n = A157449 (n + 2)

end A157449

/-! ## A157449.P2318626442848699438

`lcm(n+2, A006530(n+2))-A000203(n+2)+n+3`
-/

namespace A157449.P2318626442848699438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm (n + 2 : ℤ) (A006530 (n + 2)) : ℤ) - A000203 (n + 2) + (n + 3 : ℤ)

end

end A157449.P2318626442848699438

namespace A157449

/-- `lcm(n+2, A006530(n+2))-A000203(n+2)+n+3` -/
def P2318626442848699438.Spec : Prop :=
  ∀ n, P2318626442848699438.a n = A157449 (n + 2)

end A157449

/-! ## A157449.P15691699728873693598

`1-A033880(n+2)`
-/

namespace A157449.P15691699728873693598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A033880 (n + 2)

end

end A157449.P15691699728873693598

namespace A157449

/-- `1-A033880(n+2)` -/
def P15691699728873693598.Spec : Prop :=
  ∀ n, P15691699728873693598.a n = A157449 (n + 2)

end A157449

/-!
# A157451: Number generated by regarding the numbers in row n of A139038 as digits of a base n number.

The programs for A157451, there is no canonical definition to state claims against.
-/

/-! ## A157451.P3464441126016445174

`A065033(∑[∑[(n+2)^n]])`
-/

namespace A157451.P3464441126016445174
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) ^ n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A157451.P3464441126016445174

/-!
# A157452: Number generated by regarding the numbers in row n of A003983 as digits of a base n number.

The programs for A157452, there is no canonical definition to state claims against.
-/

/-! ## A157452.P6973262597220180209

`A360746(A337167(n))`
-/

namespace A157452.P6973262597220180209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360746 (A337167 n).toNat

end

end A157452.P6973262597220180209

/-!
# A157453: A general recursion sequence:m=8:Half tent function: f(n,m)== Min[1 + Floor[m/2], 1 + Floor[(n - m)/2]]; Recursion: A(n,k,m)=(m*(n - k) + 1)*A(n - 1, k - 1, m) + (m*k + 1)*A(n - 1, k, m) + m*f(n, k)*A(n - 2, k - 1, m).

The programs for A157453, there is no canonical definition to state claims against.
-/

/-! ## A157453.P16961380342604945960

`A261226(A173006(n))`
-/

namespace A157453.P16961380342604945960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261226 (A173006 n).toNat

end

end A157453.P16961380342604945960

/-! ## A157453.P4662396929888474670

`A291149(A176203(n))`
-/

namespace A157453.P4662396929888474670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291149 (A176203 n).toNat

end

end A157453.P4662396929888474670

/-! ## A157453.P8375477005858174009

`A038568(A015116(n)²)`
-/

namespace A157453.P8375477005858174009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038568 (A015116 n ^ 2).toNat

end

end A157453.P8375477005858174009

/-! ## A157453.P5036873268902031331

`A240729(A143007(n)+2)`
-/

namespace A157453.P5036873268902031331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240729 (A143007 n + 2).toNat

end

end A157453.P5036873268902031331

/-! ## A157453.P17777768402956987236

`A038568(A015116(n)^2)`
-/

namespace A157453.P17777768402956987236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038568 (A015116 n ^ 2).toNat

end

end A157453.P17777768402956987236

/-!
# A157454: Triangle read by rows: T(n, m) = min(2*m - 1, 2*(n - m) + 1).

The programs for A157454, the canonical program `A157454.P17958483760181188644` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157454 has offset 1).

The definition of A157454 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049581, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A157454.P17668505500422354539

`2*A003983(n+1)-1`
-/

namespace A157454.P17668505500422354539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A003983 (n + 1) - 1

end

end A157454.P17668505500422354539

namespace A157454

/-- `2*A003983(n+1)-1` -/
def P17668505500422354539.Spec : Prop :=
  ∀ n, P17668505500422354539.a n = A157454 (n + 1)

end A157454

/-! ## A157454.P17958483760181188644

`A002024(n+1)-A049581(n)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A157454

/-- `A002024(n+1)-A049581(n)` -/
def P17958483760181188644.Spec : Prop :=
  ∀ n, P17958483760181188644.a n = A157454 (n + 1)

theorem P17958483760181188644.correct : P17958483760181188644.Spec := by
  intro n
  simp only [A157454, Nat.add_sub_cancel]

end A157454

/-! ## A157454.P10748579296230436347

`A204012(n+1)-A003056(n)`
-/

namespace A157454.P10748579296230436347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204012 (n + 1) - A003056 n

end

end A157454.P10748579296230436347

namespace A157454

/-- `A204012(n+1)-A003056(n)` -/
def P10748579296230436347.Spec : Prop :=
  ∀ n, P10748579296230436347.a n = A157454 (n + 1)

end A157454

/-! ## A157454.P4473115809233903880

`A204028(n+1)-A004197(n)`
-/

namespace A157454.P4473115809233903880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204028 (n + 1) - A004197 n

end

end A157454.P4473115809233903880

namespace A157454

/-- `A204028(n+1)-A004197(n)` -/
def P4473115809233903880.Spec : Prop :=
  ∀ n, P4473115809233903880.a n = A157454 (n + 1)

end A157454

/-! ## A157454.P5401468725832333148

`A111650(n+1)-A204022(n+1)`
-/

namespace A157454.P5401468725832333148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111650 (n + 1) - A204022 (n + 1)

end

end A157454.P5401468725832333148

namespace A157454

/-- `A111650(n+1)-A204022(n+1)` -/
def P5401468725832333148.Spec : Prop :=
  ∀ n, P5401468725832333148.a n = A157454 (n + 1)

end A157454

/-! ## A157454.P693542652783062103

`or(1, A157458(n))`
-/

namespace A157454.P693542652783062103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A157458 n)

end

end A157454.P693542652783062103

namespace A157454

/-- `or(1, A157458(n))` -/
def P693542652783062103.Spec : Prop :=
  ∀ n, P693542652783062103.a n = A157454 (n + 1)

end A157454

/-! ## A157454.P7804231785574309071

`ceil(A115281(n)/2)`
-/

namespace A157454.P7804231785574309071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A115281 n : ℚ) / 2⌉

end

end A157454.P7804231785574309071

namespace A157454

/-- `ceil(A115281(n)/2)` -/
def P7804231785574309071.Spec : Prop :=
  ∀ n, P7804231785574309071.a n = A157454 (n + 1)

end A157454

/-! ## A157454.P7226600810378442084

`2*A004197(n)+1`
-/

namespace A157454.P7226600810378442084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A004197 n + 1

end

end A157454.P7226600810378442084

namespace A157454

/-- `2*A004197(n)+1` -/
def P7226600810378442084.Spec : Prop :=
  ∀ n, P7226600810378442084.a n = A157454 (n + 1)

end A157454

/-! ## A157454.P9556233714875730826

`val(A152716(n), 2)+1`
-/

namespace A157454.P9556233714875730826
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A152716 n).toNat 2 + 1

end

end A157454.P9556233714875730826

namespace A157454

/-- `val(A152716(n), 2)+1` -/
def P9556233714875730826.Spec : Prop :=
  ∀ n, (P9556233714875730826.a n : ℤ) = A157454 (n + 1)

end A157454

/-! ## A157454.P4251773374651459105

`log2(A144464(n)²)+1`
-/

namespace A157454.P4251773374651459105
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A144464 n ^ 2 : ℝ) + 1

end

end A157454.P4251773374651459105

namespace A157454

/-- `log2(A144464(n)²)+1` -/
def P4251773374651459105.Spec : Prop :=
  ∀ n, P4251773374651459105.a n = (A157454 (n + 1) : ℝ)

end A157454

/-! ## A157454.P2502874457036440411

`log2(A082693(2*n+1))`
-/

namespace A157454.P2502874457036440411
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A082693 (2 * n + 1) : ℝ)

end

end A157454.P2502874457036440411

namespace A157454

/-- `log2(A082693(2*n+1))` -/
def P2502874457036440411.Spec : Prop :=
  ∀ n, P2502874457036440411.a n = (A157454 (n + 1) : ℝ)

end A157454

/-! ## A157454.P7057523601274197882

`or(1, A194959(n+1)-1)`
-/

namespace A157454.P7057523601274197882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A194959 (n + 1) - 1)

end

end A157454.P7057523601274197882

namespace A157454

/-- `or(1, A194959(n+1)-1)` -/
def P7057523601274197882.Spec : Prop :=
  ∀ n, P7057523601274197882.a n = A157454 (n + 1)

end A157454

/-! ## A157454.P18407570873655173235

`2*sqrt(A106314(n+1))-1`
-/

namespace A157454.P18407570873655173235
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  2 * Real.sqrt (A106314 (n + 1) : ℝ) - 1

end

end A157454.P18407570873655173235

namespace A157454

/-- `2*sqrt(A106314(n+1))-1` -/
def P18407570873655173235.Spec : Prop :=
  ∀ n, P18407570873655173235.a n = (A157454 (n + 1) : ℝ)

end A157454

/-! ## A157454.P1463174318999175408

`sqrt(2*A168281(n+1))-1`
-/

namespace A157454.P1463174318999175408
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (2 * A168281 (n + 1) : ℝ) - 1

end

end A157454.P1463174318999175408

namespace A157454

/-- `sqrt(2*A168281(n+1))-1` -/
def P1463174318999175408.Spec : Prop :=
  ∀ n, P1463174318999175408.a n = (A157454 (n + 1) : ℝ)

end A157454

/-! ## A157454.P11135830343309467743

`A005408(A004197(n))`
-/

namespace A157454.P11135830343309467743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A004197 n).toNat

end

end A157454.P11135830343309467743

namespace A157454

/-- `A005408(A004197(n))` -/
def P11135830343309467743.Spec : Prop :=
  ∀ n, P11135830343309467743.a n = A157454 (n + 1)

end A157454

/-! ## A157454.P7014999838762093878

`A004525(A115281(n))`
-/

namespace A157454.P7014999838762093878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A115281 n).toNat

end

end A157454.P7014999838762093878

namespace A157454

/-- `A004525(A115281(n))` -/
def P7014999838762093878.Spec : Prop :=
  ∀ n, P7014999838762093878.a n = A157454 (n + 1)

end A157454

/-! ## A157454.P9500145446114004368

`A109613(A157458(n))`
-/

namespace A157454.P9500145446114004368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (A157458 n).toNat

end

end A157454.P9500145446114004368

namespace A157454

/-- `A109613(A157458(n))` -/
def P9500145446114004368.Spec : Prop :=
  ∀ n, P9500145446114004368.a n = A157454 (n + 1)

end A157454

/-! ## A157454.P376574423099237113

`A004273(A004197(n)+1)`
-/

namespace A157454.P376574423099237113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A004197 n + 1).toNat

end

end A157454.P376574423099237113

namespace A157454

/-- `A004273(A004197(n)+1)` -/
def P376574423099237113.Spec : Prop :=
  ∀ n, P376574423099237113.a n = A157454 (n + 1)

end A157454

/-! ## A157454.P4815304710756630234

`A008619(A115281(n)-1)`
-/

namespace A157454.P4815304710756630234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A115281 n - 1).toNat

end

end A157454.P4815304710756630234

namespace A157454

/-- `A008619(A115281(n)-1)` -/
def P4815304710756630234.Spec : Prop :=
  ∀ n, P4815304710756630234.a n = A157454 (n + 1)

end A157454

/-! ## A157454.P5540616846275254536

`A157458(n)+A003982(n)`
-/

namespace A157454.P5540616846275254536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157458 n + A003982 n

end

end A157454.P5540616846275254536

namespace A157454

/-- `A157458(n)+A003982(n)` -/
def P5540616846275254536.Spec : Prop :=
  ∀ n, P5540616846275254536.a n = A157454 (n + 1)

end A157454

/-!
# A157455: Number generated by regarding the numbers in row n of A157454 as digits of a base n number.

The programs for A157455, there is no canonical definition to state claims against.
-/

/-! ## A157455.P5596814415812093309

`A109613(∑{d}[A292631(n), #])`
-/

namespace A157455.P5596814415812093309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292631 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A157455.P5596814415812093309

/-!
# A157456: Expansion of x * (1 - x) / (1 - 16*x + x^2).

The programs for A157456, the canonical program `A157456.P13061809257677112012` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157456 has offset 1).

The definition of A157456 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A157456.P13061809257677112012

`16*a(n-1)-a(n-2)` with `a(0)=1, a(1)=15`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A157456

/-- `16*a(n-1)-a(n-2)` -/
def P13061809257677112012.Spec : Prop :=
  ∀ n, P13061809257677112012.a n = A157456 (n + 1)

theorem P13061809257677112012.correct : P13061809257677112012.Spec := by
  intro n
  simp only [A157456, Nat.add_sub_cancel]

end A157456

/-! ## A157456.P11376180150135584239

`A041111(2*n)`
-/

namespace A157456.P11376180150135584239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041111 (2 * n)

end

end A157456.P11376180150135584239

namespace A157456

/-- `A041111(2*n)` -/
def P11376180150135584239.Spec : Prop :=
  ∀ n, P11376180150135584239.a n = A157456 (n + 1)

end A157456

/-! ## A157456.P5263995279381791588

`A243469(Δ[n²])`
-/

namespace A157456.P5263995279381791588
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243469 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A157456.P5263995279381791588

namespace A157456

/-- `A243469(Δ[n²])` -/
def P5263995279381791588.Spec : Prop :=
  ∀ n, P5263995279381791588.a n = A157456 (n + 1)

end A157456

/-! ## A157456.P14509649287947436417

`A243470(Δ[n²])`
-/

namespace A157456.P14509649287947436417
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243470 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A157456.P14509649287947436417

namespace A157456

/-- `A243470(Δ[n²])` -/
def P14509649287947436417.Spec : Prop :=
  ∀ n, P14509649287947436417.a n = A157456 (n + 1)

end A157456

/-! ## A157456.P12222770131274475025

`A090727(n)-a(n-1)` with `a(0)=1`
-/

namespace A157456.P12222770131274475025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A090727 n - a (n - 1)

end

end A157456.P12222770131274475025

namespace A157456

/-- `A090727(n)-a(n-1)` -/
def P12222770131274475025.Spec : Prop :=
  ∀ n, P12222770131274475025.a n = A157456 (n + 1)

end A157456

/-! ## A157456.P14123552906467366243

`record[A041111(n)/(-1)^n]`
-/

namespace A157456.P14123552906467366243
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041111 n : ℚ) / ((-1) ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A157456.P14123552906467366243

namespace A157456

/-- `record[A041111(n)/(-1)^n]` -/
def P14123552906467366243.Spec : Prop :=
  ∀ n, P14123552906467366243.a n = (A157456 (n + 1) : ℚ)

end A157456

/-! ## A157456.P6652369811960045164

`record[log2(gcd(2, n))*A243469(n+1)]`
-/

namespace A157456.P6652369811960045164
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.gcd 2 n : ℝ) * (A243469 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A157456.P6652369811960045164

namespace A157456

/-- `record[log2(gcd(2, n))*A243469(n+1)]` -/
def P6652369811960045164.Spec : Prop :=
  ∀ n, P6652369811960045164.a n = (A157456 (n + 1) : ℝ)

end A157456

/-! ## A157456.P2928403775671501742

`record[A041111(A014681(n))]`
-/

namespace A157456.P2928403775671501742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041111 (A014681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A157456.P2928403775671501742

namespace A157456

/-- `record[A041111(A014681(n))]` -/
def P2928403775671501742.Spec : Prop :=
  ∀ n, P2928403775671501742.a n = A157456 (n + 1)

end A157456

/-! ## A157456.P10583976405109388089

`record[A041111(A153733(n))]`
-/

namespace A157456.P10583976405109388089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041111 (A153733 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A157456.P10583976405109388089

namespace A157456

/-- `record[A041111(A153733(n))]` -/
def P10583976405109388089.Spec : Prop :=
  ∀ n, P10583976405109388089.a n = A157456 (n + 1)

end A157456

/-!
# A157457: Read n-th row of triangle in A157458 and regard it as the expansion of a number in base n+1.

The programs for A157457, there is no canonical definition to state claims against.
-/

/-! ## A157457.P2659792312501909766

`A289437(xor(3, A016130(n))-n)`
-/

namespace A157457.P2659792312501909766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289437 (Int.xor 3 (A016130 n) - (n : ℤ)).toNat

end

end A157457.P2659792312501909766

/-!
# A157458: Triangle, read by rows, double tent function: T(n,k) = min(1 + 2*k, 1 + 2*(n-k), n).

The programs for A157458, the canonical program `A157458.P16856629470642738053` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157458 has offset 0).

The definition of A157458 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A157458.P13457674221893382779

`floor(A115281(n)/2)`
-/

namespace A157458.P13457674221893382779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A115281 n : ℚ) / 2⌋

end

end A157458.P13457674221893382779

namespace A157458

/-- `floor(A115281(n)/2)` -/
def P13457674221893382779.Spec : Prop :=
  ∀ n, P13457674221893382779.a n = A157458 n

end A157458

/-! ## A157458.P6538139509356682660

`A004526(A115281(n))`
-/

namespace A157458.P6538139509356682660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A115281 n).toNat

end

end A157458.P6538139509356682660

namespace A157458

/-- `A004526(A115281(n))` -/
def P6538139509356682660.Spec : Prop :=
  ∀ n, P6538139509356682660.a n = A157458 n

end A157458

/-! ## A157458.P11146094237169331288

`A289133(A115282(n))`
-/

namespace A157458.P11146094237169331288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289133 (A115282 n).toNat

end

end A157458.P11146094237169331288

namespace A157458

/-- `A289133(A115282(n))` -/
def P11146094237169331288.Spec : Prop :=
  ∀ n, P11146094237169331288.a n = A157458 n

end A157458

/-! ## A157458.P10929012581618565019

`A004525(A115281(n)-1)`
-/

namespace A157458.P10929012581618565019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A115281 n - 1).toNat

end

end A157458.P10929012581618565019

namespace A157458

/-- `A004525(A115281(n)-1)` -/
def P10929012581618565019.Spec : Prop :=
  ∀ n, P10929012581618565019.a n = A157458 n

end A157458

/-! ## A157458.P5946062456329960398

`A002265(2*A115281(n))`
-/

namespace A157458.P5946062456329960398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * A115281 n).toNat

end

end A157458.P5946062456329960398

namespace A157458

/-- `A002265(2*A115281(n))` -/
def P5946062456329960398.Spec : Prop :=
  ∀ n, P5946062456329960398.a n = A157458 n

end A157458

/-! ## A157458.P11537343277259605572

`A008621(2*A115281(n))-1`
-/

namespace A157458.P11537343277259605572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (2 * A115281 n).toNat - 1

end

end A157458.P11537343277259605572

namespace A157458

/-- `A008621(2*A115281(n))-1` -/
def P11537343277259605572.Spec : Prop :=
  ∀ n, P11537343277259605572.a n = A157458 n

end A157458

/-! ## A157458.P16856629470642738053

`A157454(n+1)-A003982(n)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A157458

/-- `A157454(n+1)-A003982(n)` -/
def P16856629470642738053.Spec : Prop :=
  ∀ n, P16856629470642738053.a n = A157458 n

theorem P16856629470642738053.correct : P16856629470642738053.Spec := by
  intro n
  simp only [A157458]

end A157458

/-! ## A157458.P2363083949177747833

`A115281(n)-A157454(n+1)`
-/

namespace A157458.P2363083949177747833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115281 n - A157454 (n + 1)

end

end A157458.P2363083949177747833

namespace A157458

/-- `A115281(n)-A157454(n+1)` -/
def P2363083949177747833.Spec : Prop :=
  ∀ n, P2363083949177747833.a n = A157458 n

end A157458

/-! ## A157458.P10127718218825778876

`A194959(n+1)-A101688(n)`
-/

namespace A157458.P10127718218825778876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194959 (n + 1) - A101688 n

end

end A157458.P10127718218825778876

namespace A157458

/-- `A194959(n+1)-A101688(n)` -/
def P10127718218825778876.Spec : Prop :=
  ∀ n, P10127718218825778876.a n = A157458 n

end A157458

/-! ## A157458.P373234222042104529

`A101776(n)-A220073(n+1)`
-/

namespace A157458.P373234222042104529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101776 n - A220073 (n + 1)

end

end A157458.P373234222042104529

namespace A157458

/-- `A101776(n)-A220073(n+1)` -/
def P373234222042104529.Spec : Prop :=
  ∀ n, P373234222042104529.a n = A157458 n

end A157458

/-! ## A157458.P9010753204921649381

`(A115281(n)-A003982(n))/2`
-/

namespace A157458.P9010753204921649381
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A115281 n - A003982 n : ℚ) / 2

end

end A157458.P9010753204921649381

namespace A157458

/-- `(A115281(n)-A003982(n))/2` -/
def P9010753204921649381.Spec : Prop :=
  ∀ n, P9010753204921649381.a n = (A157458 n : ℚ)

end A157458

/-! ## A157458.P9162009891345133007

`A157454(n+1)-char[A046092(n)]`
-/

namespace A157458.P9162009891345133007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046092 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157454 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A157458.P9162009891345133007

namespace A157458

/-- `A157454(n+1)-char[A046092(n)]` -/
def P9162009891345133007.Spec : Prop :=
  ∀ n, P9162009891345133007.a n = A157458 n

end A157458

/-! ## A157458.P13972936652780892460

`A002265(A115281(n)+A115281(n)+1)`
-/

namespace A157458.P13972936652780892460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A115281 n + (A115281 n + 1)).toNat

end

end A157458.P13972936652780892460

namespace A157458

/-- `A002265(A115281(n)+A115281(n)+1)` -/
def P13972936652780892460.Spec : Prop :=
  ∀ n, P13972936652780892460.a n = A157458 n

end A157458

/-! ## A157458.P12908774224819349397

`A115281(n)-A004273(A004197(n)+1)`
-/

namespace A157458.P12908774224819349397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115281 n - A004273 (A004197 n + 1).toNat

end

end A157458.P12908774224819349397

namespace A157458

/-- `A115281(n)-A004273(A004197(n)+1)` -/
def P12908774224819349397.Spec : Prop :=
  ∀ n, P12908774224819349397.a n = A157458 n

end A157458

/-! ## A157458.P2529490248803688298

`A157454(n+1)-A000007(A204016(n+1))`
-/

namespace A157458.P2529490248803688298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157454 (n + 1) - A000007 (A204016 (n + 1)).toNat

end

end A157458.P2529490248803688298

namespace A157458

/-- `A157454(n+1)-A000007(A204016(n+1))` -/
def P2529490248803688298.Spec : Prop :=
  ∀ n, P2529490248803688298.a n = A157458 n

end A157458

/-! ## A157458.P1885325089761654577

`A053616(n+1)+A053616(n)`
-/

namespace A157458.P1885325089761654577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053616 (n + 1) + A053616 n

end

end A157458.P1885325089761654577

namespace A157458

/-- `A053616(n+1)+A053616(n)` -/
def P1885325089761654577.Spec : Prop :=
  ∀ n, P1885325089761654577.a n = A157458 n

end A157458

/-! ## A157458.P3490366977727890100

`A210535(n+1)-A077605(n+1)`
-/

namespace A157458.P3490366977727890100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210535 (n + 1) - A077605 (n + 1)

end

end A157458.P3490366977727890100

namespace A157458

/-- `A210535(n+1)-A077605(n+1)` -/
def P3490366977727890100.Spec : Prop :=
  ∀ n, P3490366977727890100.a n = A157458 n

end A157458

/-! ## A157458.P12157562658174726928

`A053188(A028391(2*n)+1)`
-/

namespace A157458.P12157562658174726928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053188 (A028391 (2 * n) + 1).toNat

end

end A157458.P12157562658174726928

namespace A157458

/-- `A053188(A028391(2*n)+1)` -/
def P12157562658174726928.Spec : Prop :=
  ∀ n, P12157562658174726928.a n = A157458 n

end A157458

/-! ## A157458.P4453788330295795298

`A053188(2*n+1-A000196(2*n))`
-/

namespace A157458.P4453788330295795298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053188 ((2 * n + 1 : ℤ) - A000196 (2 * n)).toNat

end

end A157458.P4453788330295795298

namespace A157458

/-- `A053188(2*n+1-A000196(2*n))` -/
def P4453788330295795298.Spec : Prop :=
  ∀ n, P4453788330295795298.a n = A157458 n

end A157458

/-! ## A157458.P7436425238620062830

`A004739(2*n+1)-A101688(n)`
-/

namespace A157458.P7436425238620062830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004739 (2 * n + 1) - A101688 n

end

end A157458.P7436425238620062830

namespace A157458

/-- `A004739(2*n+1)-A101688(n)` -/
def P7436425238620062830.Spec : Prop :=
  ∀ n, P7436425238620062830.a n = A157458 n

end A157458

/-!
# A157459: Expansion of 72*x^2 / (1 - 323*x + 323*x^2 - x^3).

The programs for A157459, the canonical program `A157459.P11164572467771712150` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157459 has offset 1).

The definition of A157459 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A157459.P11164572467771712150

`2*A201003(n)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A157459

/-- `2*A201003(n)` -/
def P11164572467771712150.Spec : Prop :=
  ∀ n, P11164572467771712150.a n = A157459 (n + 1)

theorem P11164572467771712150.correct : P11164572467771712150.Spec := by
  intro n
  simp only [A157459, Nat.add_sub_cancel]

end A157459

/-! ## A157459.P7303576368937819399

`72*A298271(n)`
-/

namespace A157459.P7303576368937819399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  72 * A298271 n

end

end A157459.P7303576368937819399

namespace A157459

/-- `72*A298271(n)` -/
def P7303576368937819399.Spec : Prop :=
  ∀ n, P7303576368937819399.a n = A157459 (n + 1)

end A157459

/-! ## A157459.P15858170687432629217

`∑[A060645(2*n)]`
-/

namespace A157459.P15858170687432629217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060645 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A157459.P15858170687432629217

namespace A157459

/-- `∑[A060645(2*n)]` -/
def P15858170687432629217.Spec : Prop :=
  ∀ n, P15858170687432629217.a n = A157459 (n + 1)

end A157459

/-! ## A157459.P11853617136710563360

`∑[A001076(4*n)]`
-/

namespace A157459.P11853617136710563360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001076 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A157459.P11853617136710563360

namespace A157459

/-- `∑[A001076(4*n)]` -/
def P11853617136710563360.Spec : Prop :=
  ∀ n, P11853617136710563360.a n = A157459 (n + 1)

end A157459

/-! ## A157459.P1950573744113770676

`2*C(A246641(n), 2)`
-/

namespace A157459.P1950573744113770676
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.choose (A246641 n).toNat 2

end

end A157459.P1950573744113770676

namespace A157459

/-- `2*C(A246641(n), 2)` -/
def P1950573744113770676.Spec : Prop :=
  ∀ n, (P1950573744113770676.a n : ℤ) = A157459 (n + 1)

end A157459

/-!
# A157460: Expansion of 88*x^2 / (1-483*x+483*x^2-x^3).

The programs for A157460, there is no canonical definition to state claims against.
-/

/-! ## A157460.P17617353947364513133

`8/5*A201008(n)`
-/

namespace A157460.P17617353947364513133
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (8 : ℚ) / 5 * (A201008 n : ℚ)

end

end A157460.P17617353947364513133

/-! ## A157460.P12614383723623807226

`floor(A133274(n+1)/9)`
-/

namespace A157460.P12614383723623807226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A133274 (n + 1) : ℚ) / 9⌋

end

end A157460.P12614383723623807226

/-! ## A157460.P4864984050072301706

`floor(A157014(n+1)²/5)`
-/

namespace A157460.P4864984050072301706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A157014 (n + 1) ^ 2 : ℚ) / 5⌋

end

end A157460.P4864984050072301706

/-! ## A157460.P8300992033374120177

`floor(A133283(n+1)²/6)`
-/

namespace A157460.P8300992033374120177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A133283 (n + 1) ^ 2 : ℚ) / 6⌋

end

end A157460.P8300992033374120177

/-! ## A157460.P10809666550180159792

`A133283(n+1)²-A157014(n+1)²`
-/

namespace A157460.P10809666550180159792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133283 (n + 1) ^ 2 - A157014 (n + 1) ^ 2

end

end A157460.P10809666550180159792

/-!
# A157461: Expansion of x*(x+1) / (x^2-26*x+1).

The programs for A157461, the canonical program `A157461.P15148820883685211993` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157461 has offset 1).

The definition of A157461 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A157461.P15148820883685211993

`26*a(n-1)-a(n-2)` with `a(0)=1, a(1)=27`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A157461

/-- `26*a(n-1)-a(n-2)` -/
def P15148820883685211993.Spec : Prop :=
  ∀ n, P15148820883685211993.a n = A157461 (n + 1)

theorem P15148820883685211993.correct : P15148820883685211993.Spec := by
  intro n
  simp only [A157461, Nat.add_sub_cancel]

end A157461

/-! ## A157461.P12306925865138323445

`∑[A090247(n)]-1`
-/

namespace A157461.P12306925865138323445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090247 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A157461.P12306925865138323445

namespace A157461

/-- `∑[A090247(n)]-1` -/
def P12306925865138323445.Spec : Prop :=
  ∀ n, P12306925865138323445.a n = A157461 (n + 1)

end A157461

/-! ## A157461.P495033205851245590

`Δ[A322708(n)/6]`
-/

namespace A157461.P495033205851245590
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322708 n : ℚ) / 6

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A157461.P495033205851245590

namespace A157461

/-- `Δ[A322708(n)/6]` -/
def P495033205851245590.Spec : Prop :=
  ∀ n, P495033205851245590.a n = (A157461 (n + 1) : ℚ)

end A157461

/-! ## A157461.P8569481276927757107

`A041070(2*n)/6`
-/

namespace A157461.P8569481276927757107
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041070 (2 * n) : ℚ) / 6

end

end A157461.P8569481276927757107

namespace A157461

/-- `A041070(2*n)/6` -/
def P8569481276927757107.Spec : Prop :=
  ∀ n, P8569481276927757107.a n = (A157461 (n + 1) : ℚ)

end A157461

/-! ## A157461.P2647369687839403131

`∑[2*A097308(n)]-1`
-/

namespace A157461.P2647369687839403131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A097308 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A157461.P2647369687839403131

namespace A157461

/-- `∑[2*A097308(n)]-1` -/
def P2647369687839403131.Spec : Prop :=
  ∀ n, P2647369687839403131.a n = A157461 (n + 1)

end A157461

/-! ## A157461.P13450661878830083400

`2*A253457(n+1)-1`
-/

namespace A157461.P13450661878830083400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A253457 (n + 1) - 1

end

end A157461.P13450661878830083400

namespace A157461

/-- `2*A253457(n+1)-1` -/
def P13450661878830083400.Spec : Prop :=
  ∀ n, P13450661878830083400.a n = A157461 (n + 1)

end A157461

/-! ## A157461.P9918835230348034851

`A004293(n)-a(n-1)` with `a(0)=1`
-/

namespace A157461.P9918835230348034851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A004293 n - a (n - 1)

end

end A157461.P9918835230348034851

namespace A157461

/-- `A004293(n)-a(n-1)` -/
def P9918835230348034851.Spec : Prop :=
  ∀ n, P9918835230348034851.a n = A157461 (n + 1)

end A157461

/-! ## A157461.P16388123597025023492

`∑[A097308(n)*A280193(2*n)]`
-/

namespace A157461.P16388123597025023492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097308 n * A280193 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A157461.P16388123597025023492

namespace A157461

/-- `∑[A097308(n)*A280193(2*n)]` -/
def P16388123597025023492.Spec : Prop :=
  ∀ n, P16388123597025023492.a n = A157461 (n + 1)

end A157461

/-! ## A157461.P4331228083773192418

`A041071(2*n+1)-A041071(2*n)`
-/

namespace A157461.P4331228083773192418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041071 (2 * n + 1) - A041071 (2 * n)

end

end A157461.P4331228083773192418

namespace A157461

/-- `A041071(2*n+1)-A041071(2*n)` -/
def P4331228083773192418.Spec : Prop :=
  ∀ n, P4331228083773192418.a n = A157461 (n + 1)

end A157461

/-!
# A157462: Denominator of Euler(n, 1/30).

The programs for A157462, there is no canonical definition to state claims against.
-/

/-! ## A157462.P1992379722875702239

`30*30*a(n-2)` with `a(0)=1, a(1)=15`
-/

namespace A157462.P1992379722875702239
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 15] fun n a =>
  30 * (30 * a (n - 2))

end

end A157462.P1992379722875702239

/-! ## A157462.P11196954416056933911

`∏[gcd(60, A126898(n))]`
-/

namespace A157462.P11196954416056933911
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 60 (A126898 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A157462.P11196954416056933911

/-! ## A157462.P6866154036925772876

`30^n/A000034(n)`
-/

namespace A157462.P6866154036925772876
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (30 ^ n : ℚ) / (A000034 n : ℚ)

end

end A157462.P6866154036925772876

/-! ## A157462.P8490765005583945607

`a(n-1)*A040873(n)` with `a(0)=1`
-/

namespace A157462.P8490765005583945607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A040873 n

end

end A157462.P8490765005583945607

/-! ## A157462.P17036417656151019191

`30^n/A176895(2*n)`
-/

namespace A157462.P17036417656151019191
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (30 ^ n : ℚ) / (A176895 (2 * n) : ℚ)

end

end A157462.P17036417656151019191

/-! ## A157462.P16870108082349191997

`A016116(n)²*A001024(n)`
-/

namespace A157462.P16870108082349191997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 n ^ 2 * A001024 n

end

end A157462.P16870108082349191997

/-! ## A157462.P4354599225614352720

`A000302(A004526(n))*A001024(n)`
-/

namespace A157462.P4354599225614352720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000302 (A004526 n).toNat * A001024 n

end

end A157462.P4354599225614352720

/-! ## A157462.P700604735024479189

`A009974(n)/A001511(A019565(n))`
-/

namespace A157462.P700604735024479189
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009974 n : ℚ) / (A001511 (A019565 n).toNat : ℚ)

end

end A157462.P700604735024479189

/-!
# A157465: Numbers seen as squares with at most one missing digit in decimal representation.

The programs for A157465, there is no canonical definition to state claims against.
-/

/-! ## A157465.P10013301498647898883

`eq[1, gcd(11, A157464(n))]`
-/

namespace A157465.P10013301498647898883
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 11 (A157464 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A157465.P10013301498647898883

/-! ## A157465.P4101496470216890847

`eq[1, ceil(A157464(n)/A087475(n))]`
-/

namespace A157465.P4101496470216890847
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A157464 n : ℚ) / (A087475 n : ℚ)⌉

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A157465.P4101496470216890847

/-! ## A157465.P9852320309892674120

`eq[1, ceil(A157464(n)/A157432(n+1))]`
-/

namespace A157465.P9852320309892674120
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A157464 n : ℚ) / (A157432 (n + 1) : ℚ)⌉

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A157465.P9852320309892674120

/-! ## A157465.P6434981099770434983

`eq[1, ceil(A157464(n)/A157433(n+1))]`
-/

namespace A157465.P6434981099770434983
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A157464 n : ℚ) / (A157433 (n + 1) : ℚ)⌉

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A157465.P6434981099770434983

/-! ## A157465.P10964489948681231220

`eq[1, ceil(A157464(n)/A157434(n+1))]`
-/

namespace A157465.P10964489948681231220
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A157464 n : ℚ) / (A157434 (n + 1) : ℚ)⌉

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A157465.P10964489948681231220

/-!
# A157466: Numbers of numbers <= n, that are squares when inserting at most one digit in decimal representation (see A157465).

The programs for A157466, there is no canonical definition to state claims against.
-/

/-! ## A157466.P3784032937261002217

`∑[round(atan(A157464(n)))]`
-/

namespace A157466.P3784032937261002217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.arctan (A157464 n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A157466.P3784032937261002217

/-! ## A157466.P6354740526876213428

`∑[ceil(A157464(n)/A087475(n))]`
-/

namespace A157466.P6354740526876213428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A157464 n : ℚ) / (A087475 n : ℚ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A157466.P6354740526876213428

/-! ## A157466.P18390579855640834583

`∑[ceil(A157464(n)/A157431(n+1))]`
-/

namespace A157466.P18390579855640834583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A157464 n : ℚ) / (A157431 (n + 1) : ℚ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A157466.P18390579855640834583

/-! ## A157466.P4348435739638598176

`∑[ceil(A157464(n)/A157432(n+1))]`
-/

namespace A157466.P4348435739638598176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A157464 n : ℚ) / (A157432 (n + 1) : ℚ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A157466.P4348435739638598176

/-! ## A157466.P11349588679780386512

`∑[ceil(A157464(n)/A157433(n+1))]`
-/

namespace A157466.P11349588679780386512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A157464 n : ℚ) / (A157433 (n + 1) : ℚ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A157466.P11349588679780386512

/-! ## A157466.P16873873291652969514

`∑[ceil(A157464(n)/A157434(n+1))]`
-/

namespace A157466.P16873873291652969514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A157464 n : ℚ) / (A157434 (n + 1) : ℚ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A157466.P16873873291652969514

/-! ## A157466.P208099332928899939

`∑[ceil(A157464(n)/A157445(n+1))]`
-/

namespace A157466.P208099332928899939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A157464 n : ℚ) / (A157445 (n + 1) : ℚ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A157466.P208099332928899939

/-! ## A157466.P6726087590640002021

`∑[ceil(A157464(n)/A157427(n+1))]`
-/

namespace A157466.P6726087590640002021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A157464 n : ℚ) / (A157427 (n + 1) : ℚ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A157466.P6726087590640002021

/-!
# A157467: Primes of the form p^2 + 2*p + 2 where p is prime.

The programs for A157467, there is no canonical definition to state claims against.
-/

/-! ## A157467.P16281360998924236937

`A065018(A157468(n+1))`
-/

namespace A157467.P16281360998924236937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065018 (A157468 (n + 1)).toNat

end

end A157467.P16281360998924236937

/-! ## A157467.P15475732080348649428

`A002522(A157468(n+1)+1)`
-/

namespace A157467.P15475732080348649428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 (A157468 (n + 1) + 1).toNat

end

end A157467.P15475732080348649428

/-! ## A157467.P4318239589650205649

`A083266(2*A157468(n+1))`
-/

namespace A157467.P4318239589650205649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083266 (2 * A157468 (n + 1)).toNat

end

end A157467.P4318239589650205649

/-! ## A157467.P7991516092451811936

`A083266(A157468(n+1)+A157468(n+1))`
-/

namespace A157467.P7991516092451811936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083266 (A157468 (n + 1) + A157468 (n + 1)).toNat

end

end A157467.P7991516092451811936

/-! ## A157467.P5538022710938627103

`p?[(p?[2*n+1]+1)²+1]`
-/

namespace A157467.P5538022710938627103
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) + 1) ^ 2 + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A157467.P5538022710938627103

/-!
# A157468: Primes of the form sqrt(p-1)-1, where p is a prime.

The programs for A157468, there is no canonical definition to state claims against.
-/

/-! ## A157468.P3910491740420552774

`p?[A359185(n+1)]`
-/

namespace A157468.P3910491740420552774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359185 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A157468.P3910491740420552774

/-! ## A157468.P15324212506976008007

`p?[A089593(n+1)]`
-/

namespace A157468.P15324212506976008007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089593 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A157468.P15324212506976008007

/-! ## A157468.P16702137986347326123

`p?[∑[A214516(n+1)]]`
-/

namespace A157468.P16702137986347326123
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214516 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A157468.P16702137986347326123

/-! ## A157468.P17646723818291955458

`p?[A005574(n+1)-1]`
-/

namespace A157468.P17646723818291955458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005574 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A157468.P17646723818291955458

/-! ## A157468.P7802782334741568284

`p?[A090693(n+1)-2]`
-/

namespace A157468.P7802782334741568284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090693 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A157468.P7802782334741568284

/-! ## A157468.P1737562187350636801

`p?[2*A001912(n+1)-1]`
-/

namespace A157468.P1737562187350636801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001912 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A157468.P1737562187350636801

/-! ## A157468.P5043767861748715191

`p?[floor(sqrt(A002496(n+1)))-1]`
-/

namespace A157468.P5043767861748715191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A002496 (n + 1)) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A157468.P5043767861748715191

/-! ## A157468.P1714517628909793751

`p?[A001912(n+2)+A001912(n+2)-1]`
-/

namespace A157468.P1714517628909793751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001912 (n + 2) + (A001912 (n + 2) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A157468.P1714517628909793751

/-! ## A157468.P17483239345322602285

`∩[A045405(n+1), A089593(n+1)]`
-/

namespace A157468.P17483239345322602285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045405 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089593 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A157468.P17483239345322602285

/-! ## A157468.P9713505986211778339

`∩[A042991(n+1), A089593(n+1)]`
-/

namespace A157468.P9713505986211778339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042991 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089593 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A157468.P9713505986211778339

/-! ## A157468.P5576908844943553050

`∩[A049557(n+1), A089593(n+1)]`
-/

namespace A157468.P5576908844943553050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049557 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089593 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A157468.P5576908844943553050

/-! ## A157468.P7728471835217055129

`∩[A040179(n+1), A089593(n+1)]`
-/

namespace A157468.P7728471835217055129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040179 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089593 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A157468.P7728471835217055129

/-! ## A157468.P13246454425546838063

`∩[A040161(n+1), A089593(n+1)]`
-/

namespace A157468.P13246454425546838063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040161 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089593 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A157468.P13246454425546838063

/-! ## A157468.P14908095286751388959

`∩[A040970(n+1), A089593(n+1)]`
-/

namespace A157468.P14908095286751388959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040970 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089593 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A157468.P14908095286751388959

/-! ## A157468.P12167311743615595012

`∩[A040972(n+1), A089593(n+1)]`
-/

namespace A157468.P12167311743615595012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089593 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A157468.P12167311743615595012

/-! ## A157468.P17836401684953180232

`∩[A040986(n+1), A089593(n+1)]`
-/

namespace A157468.P17836401684953180232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089593 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A157468.P17836401684953180232

/-! ## A157468.P5003161661629622213

`∩[A040990(n+1), A089593(n+1)]`
-/

namespace A157468.P5003161661629622213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040990 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089593 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A157468.P5003161661629622213

/-! ## A157468.P1759954135686662104

`∩[A040169(n+1), A089593(n+1)]`
-/

namespace A157468.P1759954135686662104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040169 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089593 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A157468.P1759954135686662104

/-! ## A157468.P7938591548522932089

`∩[A040159(n+1), A089593(n+1)]`
-/

namespace A157468.P7938591548522932089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040159 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089593 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A157468.P7938591548522932089

/-! ## A157468.P17458397151522035024

`∩[A040980(n+1), A089593(n+1)]`
-/

namespace A157468.P17458397151522035024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040980 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089593 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A157468.P17458397151522035024

/-!
# A157469: Positive numbers y such that y^2 is of the form x^2 + (x+97)^2 with integer x.

The programs for A157469, the canonical program `A157469.P15203427322609379750` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157469 has offset 1).

The definition of A157469 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A157469.P15203427322609379750

`6*a(n-3)-a(n-6)` with `a(0)=85, a(1)=97, a(2)=113, a(3)=397, a(4)=485, a(5)=593`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A157469

/-- `6*a(n-3)-a(n-6)` -/
def P15203427322609379750.Spec : Prop :=
  ∀ n, P15203427322609379750.a n = A157469 (n + 1)

theorem P15203427322609379750.correct : P15203427322609379750.Spec := by
  intro n
  simp only [A157469, Nat.add_sub_cancel]

end A157469

/-! ## A157469.P16194121191716585029

`A000032(a(n-1))` with `a(0)=85, a(1)=97, a(2)=113, a(3)=397, a(4)=485, a(5)=593`
-/

namespace A157469.P16194121191716585029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [85, 97, 113, 397, 485, 593] fun n a =>
  A000032 (a (n - 1)).toNat

end

end A157469.P16194121191716585029

namespace A157469

/-- `A000032(a(n-1))` -/
def P16194121191716585029.Spec : Prop :=
  ∀ n, P16194121191716585029.a n = A157469 (n + 1)

end A157469

/-!
# A157473: Primes p such that (p-2)^(1/3) -+ 2 are also primes.

The programs for A157473, there is no canonical definition to state claims against.
-/

/-! ## A157473.P14813536480379333359

`A144953(gcd(A144922(n+1), A144950(3*n+4)))`
-/

namespace A157473.P14813536480379333359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144953 (Int.gcd (A144922 (n + 1)) (A144950 (3 * n + 4)))

end

end A157473.P14813536480379333359

/-!
# A157474: a(n) = 16n^2 + n.

The programs for A157474, the canonical program `A157474.P16338280449018444670` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157474 has offset 1).

The definition of A157474 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A157474.P16338280449018444670

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=17, a(1)=66, a(2)=147`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A157474

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P16338280449018444670.Spec : Prop :=
  ∀ n, P16338280449018444670.a n = A157474 (n + 1)

theorem P16338280449018444670.correct : P16338280449018444670.Spec := by
  intro n
  simp only [A157474, Nat.add_sub_cancel]

end A157474

/-! ## A157474.P6812243168051667605

`∑[32*n+17]`
-/

namespace A157474.P6812243168051667605
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  32 * n + 17

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A157474.P6812243168051667605

namespace A157474

/-- `∑[32*n+17]` -/
def P6812243168051667605.Spec : Prop :=
  ∀ n, (P6812243168051667605.a n : ℤ) = A157474 (n + 1)

end A157474

/-! ## A157474.P10933172330625383252

`or(1, (4*(n+1))²)+n`
-/

namespace A157474.P10933172330625383252
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 ((4 * (n + 1)) ^ 2) + n

end

end A157474.P10933172330625383252

namespace A157474

/-- `or(1, (4*(n+1))²)+n` -/
def P10933172330625383252.Spec : Prop :=
  ∀ n, (P10933172330625383252.a n : ℤ) = A157474 (n + 1)

end A157474

/-! ## A157474.P2314322604653059168

`xor(1, (4*(n+1))²)+n`
-/

namespace A157474.P2314322604653059168
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 ((4 * (n + 1)) ^ 2) + n

end

end A157474.P2314322604653059168

namespace A157474

/-- `xor(1, (4*(n+1))²)+n` -/
def P2314322604653059168.Spec : Prop :=
  ∀ n, (P2314322604653059168.a n : ℤ) = A157474 (n + 1)

end A157474

/-! ## A157474.P5912171449542678309

`record[xor(n, -4)²]+n+1`
-/

namespace A157474.P5912171449542678309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-4) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (n + 1 : ℤ)

end

end A157474.P5912171449542678309

namespace A157474

/-- `record[xor(n, -4)²]+n+1` -/
def P5912171449542678309.Spec : Prop :=
  ∀ n, P5912171449542678309.a n = A157474 (n + 1)

end A157474

/-! ## A157474.P6346840106557654574

`record[(4*(1-n))²]+n+1`
-/

namespace A157474.P6346840106557654574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * (1 - (n : ℤ))) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (n + 1 : ℤ)

end

end A157474.P6346840106557654574

namespace A157474

/-- `record[(4*(1-n))²]+n+1` -/
def P6346840106557654574.Spec : Prop :=
  ∀ n, P6346840106557654574.a n = A157474 (n + 1)

end A157474

/-! ## A157474.P9449317685548553644

`lcm(2, (4*(n+1))²)+n+1`
-/

namespace A157474.P9449317685548553644
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 ((4 * (n + 1)) ^ 2) + (n + 1)

end

end A157474.P9449317685548553644

namespace A157474

/-- `lcm(2, (4*(n+1))²)+n+1` -/
def P9449317685548553644.Spec : Prop :=
  ∀ n, (P9449317685548553644.a n : ℤ) = A157474 (n + 1)

end A157474

/-! ## A157474.P16751496955537635831

`(4*C(n+1, n))²+n+1`
-/

namespace A157474.P16751496955537635831
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (4 * Nat.choose (n + 1) n) ^ 2 + (n + 1)

end

end A157474.P16751496955537635831

namespace A157474

/-- `(4*C(n+1, n))²+n+1` -/
def P16751496955537635831.Spec : Prop :=
  ∀ n, (P16751496955537635831.a n : ℤ) = A157474 (n + 1)

end A157474

/-! ## A157474.P13816263905036418471

`lt[3, xor(n, n-1)]²+n+1`
-/

namespace A157474.P13816263905036418471
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ((n : ℤ) - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n ^ 2 + (n + 1)

end

end A157474.P13816263905036418471

namespace A157474

/-- `lt[3, xor(n, n-1)]²+n+1` -/
def P13816263905036418471.Spec : Prop :=
  ∀ n, (P13816263905036418471.a n : ℤ) = A157474 (n + 1)

end A157474

/-! ## A157474.P5458956376380160370

`lcm(8*(2*n+1)+9, n+1)`
-/

namespace A157474.P5458956376380160370
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (8 * (2 * n + 1) + 9) (n + 1)

end

end A157474.P5458956376380160370

namespace A157474

/-- `lcm(8*(2*n+1)+9, n+1)` -/
def P5458956376380160370.Spec : Prop :=
  ∀ n, (P5458956376380160370.a n : ℤ) = A157474 (n + 1)

end A157474

/-! ## A157474.P6127057914691770936

`∩[2*n, 4*(n+1)]²+n+1`
-/

namespace A157474.P6127057914691770936
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = x) n ^ 2 + (n + 1)

end

end A157474.P6127057914691770936

namespace A157474

/-- `∩[2*n, 4*(n+1)]²+n+1` -/
def P6127057914691770936.Spec : Prop :=
  ∀ n, (P6127057914691770936.a n : ℤ) = A157474 (n + 1)

end A157474

/-! ## A157474.P6991106652375715741

`lt[n+1, or(n, n-1)]²+n+1`
-/

namespace A157474.P6991106652375715741
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) ((n : ℤ) - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n ^ 2 + (n + 1)

end

end A157474.P6991106652375715741

namespace A157474

/-- `lt[n+1, or(n, n-1)]²+n+1` -/
def P6991106652375715741.Spec : Prop :=
  ∀ n, (P6991106652375715741.a n : ℤ) = A157474 (n + 1)

end A157474

/-! ## A157474.P5554592107540722019

`((n+1)*gcd(2, 2*n)²)²+n+1`
-/

namespace A157474.P5554592107540722019
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((n + 1) * Nat.gcd 2 (2 * n) ^ 2) ^ 2 + (n + 1)

end

end A157474.P5554592107540722019

namespace A157474

/-- `((n+1)*gcd(2, 2*n)²)²+n+1` -/
def P5554592107540722019.Spec : Prop :=
  ∀ n, (P5554592107540722019.a n : ℤ) = A157474 (n + 1)

end A157474

/-! ## A157474.P14875797863716822168

`(C(n+2, 2)-∑[n-3])²+n+1`
-/

namespace A157474.P14875797863716822168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.choose (n + 2) 2 : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 + (n + 1 : ℤ)

end

end A157474.P14875797863716822168

namespace A157474

/-- `(C(n+2, 2)-∑[n-3])²+n+1` -/
def P14875797863716822168.Spec : Prop :=
  ∀ n, P14875797863716822168.a n = A157474 (n + 1)

end A157474

/-! ## A157474.P16075454884111814474

`Δ[(2*n)²-a(n-1)]²+n+1` with `a(0)=0`
-/

namespace A157474.P16075454884111814474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  ((2 * n) ^ 2 : ℤ) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2 + (n + 1 : ℤ)

end

end A157474.P16075454884111814474

namespace A157474

/-- `Δ[(2*n)²-a(n-1)]²+n+1` -/
def P16075454884111814474.Spec : Prop :=
  ∀ n, P16075454884111814474.a n = A157474 (n + 1)

end A157474

/-! ## A157474.P6166813221891177279

`Δ[(n+1)*and(2*n+1, 2*n)]²+n+1`
-/

namespace A157474.P6166813221891177279
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * Nat.land (2 * n + 1) (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2 + (n + 1 : ℤ)

end

end A157474.P6166813221891177279

namespace A157474

/-- `Δ[(n+1)*and(2*n+1, 2*n)]²+n+1` -/
def P6166813221891177279.Spec : Prop :=
  ∀ n, P6166813221891177279.a n = A157474 (n + 1)

end A157474

/-! ## A157474.P407560915281131555

`A108211(n+1)+n`
-/

namespace A157474.P407560915281131555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108211 (n + 1) + (n : ℤ)

end

end A157474.P407560915281131555

namespace A157474

/-- `A108211(n+1)+n` -/
def P407560915281131555.Spec : Prop :=
  ∀ n, P407560915281131555.a n = A157474 (n + 1)

end A157474

/-! ## A157474.P17978165873554631333

`A141759(n)+2+n`
-/

namespace A157474.P17978165873554631333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141759 n + 2 + (n : ℤ)

end

end A157474.P17978165873554631333

namespace A157474

/-- `A141759(n)+2+n` -/
def P17978165873554631333.Spec : Prop :=
  ∀ n, P17978165873554631333.a n = A157474 (n + 1)

end A157474

/-! ## A157474.P3886343580022858586

`A016802(n+1)+n+1`
-/

namespace A157474.P3886343580022858586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016802 (n + 1) + (n + 1 : ℤ)

end

end A157474.P3886343580022858586

namespace A157474

/-- `A016802(n+1)+n+1` -/
def P3886343580022858586.Spec : Prop :=
  ∀ n, P3886343580022858586.a n = A157474 (n + 1)

end A157474

/-! ## A157474.P11652502606460731692

`A010006(n+1)-1+n`
-/

namespace A157474.P11652502606460731692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010006 (n + 1) - 1 + (n : ℤ)

end

end A157474.P11652502606460731692

namespace A157474

/-- `A010006(n+1)-1+n` -/
def P11652502606460731692.Spec : Prop :=
  ∀ n, P11652502606460731692.a n = A157474 (n + 1)

end A157474

/-!
# A157475: a(n) = 512n + 16.

The programs for A157475, the canonical program `A157475.P158521250635584529` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157475 has offset 1).

The definition of A157475 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A157475.P158521250635584529

`16*(32*n+33)`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A157475

/-- `16*(32*n+33)` -/
def P158521250635584529.Spec : Prop :=
  ∀ n, (P158521250635584529.a n : ℤ) = A157475 (n + 1)

theorem P158521250635584529.correct : P158521250635584529.Spec := by
  intro n
  simp only [A157475, Nat.add_sub_cancel]

end A157475

/-!
# A157476: a(n) = 2048n^2 + 128n + 1.

The programs for A157476, the canonical program `A157476.P8636604521927645473` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157476 has offset 1).

The definition of A157476 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A157476.P8636604521927645473

`A157951(n+1)+A152691(n+1)*A174312(n+1)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A157476

/-- `A157951(n+1)+A152691(n+1)*A174312(n+1)` -/
def P8636604521927645473.Spec : Prop :=
  ∀ n, P8636604521927645473.a n = A157476 (n + 1)

theorem P8636604521927645473.correct : P8636604521927645473.Spec := by
  intro n
  simp only [A157476, Nat.add_sub_cancel]

end A157476

/-! ## A157476.P2503215534660926365

`A157337(4*(n+1))`
-/

namespace A157476.P2503215534660926365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157337 (4 * (n + 1))

end

end A157476.P2503215534660926365

namespace A157476

/-- `A157337(4*(n+1))` -/
def P2503215534660926365.Spec : Prop :=
  ∀ n, P2503215534660926365.a n = A157476 (n + 1)

end A157476

/-! ## A157476.P8870294317576236790

`16*A000217(16*(n+1))+1`
-/

namespace A157476.P8870294317576236790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  16 * A000217 (16 * (n + 1)) + 1

end

end A157476.P8870294317576236790

namespace A157476

/-- `16*A000217(16*(n+1))+1` -/
def P8870294317576236790.Spec : Prop :=
  ∀ n, P8870294317576236790.a n = A157476 (n + 1)

end A157476

/-! ## A157476.P13203121665635513618

`A244082(A008590(n+1))+A157951(n+1)`
-/

namespace A157476.P13203121665635513618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244082 (A008590 (n + 1)).toNat + A157951 (n + 1)

end

end A157476.P13203121665635513618

namespace A157476

/-- `A244082(A008590(n+1))+A157951(n+1)` -/
def P13203121665635513618.Spec : Prop :=
  ∀ n, P13203121665635513618.a n = A157476 (n + 1)

end A157476

/-! ## A157476.P15521819140494921865

`A035008(16*(n+1))+1`
-/

namespace A157476.P15521819140494921865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035008 (16 * (n + 1)) + 1

end

end A157476.P15521819140494921865

namespace A157476

/-- `A035008(16*(n+1))+1` -/
def P15521819140494921865.Spec : Prop :=
  ∀ n, P15521819140494921865.a n = A157476 (n + 1)

end A157476

/-! ## A157476.P15683024960653476869

`A069129(A158057(n+1))`
-/

namespace A157476.P15683024960653476869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069129 (A158057 (n + 1)).toNat

end

end A157476.P15683024960653476869

namespace A157476

/-- `A069129(A158057(n+1))` -/
def P15683024960653476869.Spec : Prop :=
  ∀ n, P15683024960653476869.a n = A157476 (n + 1)

end A157476

/-! ## A157476.P852726360483101604

`A069129(A082285(n)+4)`
-/

namespace A157476.P852726360483101604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069129 (A082285 n + 4).toNat

end

end A157476.P852726360483101604

namespace A157476

/-- `A069129(A082285(n)+4)` -/
def P852726360483101604.Spec : Prop :=
  ∀ n, P852726360483101604.a n = A157476 (n + 1)

end A157476

/-! ## A157476.P13458573743091691611

`A069129(A008598(n+1)+1)`
-/

namespace A157476.P13458573743091691611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069129 (A008598 (n + 1) + 1).toNat

end

end A157476.P13458573743091691611

namespace A157476

/-- `A069129(A008598(n+1)+1)` -/
def P13458573743091691611.Spec : Prop :=
  ∀ n, P13458573743091691611.a n = A157476 (n + 1)

end A157476

/-! ## A157476.P6096492628283169976

`A069129(A016813(4*(n+1)))`
-/

namespace A157476.P6096492628283169976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069129 (A016813 (4 * (n + 1))).toNat

end

end A157476.P6096492628283169976

namespace A157476

/-- `A069129(A016813(4*(n+1)))` -/
def P6096492628283169976.Spec : Prop :=
  ∀ n, P6096492628283169976.a n = A157476 (n + 1)

end A157476

/-! ## A157476.P8570886767307396104

`A069129(Δ[A069129(n+1)]+1)`
-/

namespace A157476.P8570886767307396104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069129 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069129 (f1 (n + 1) - f1 n + 1).toNat

end

end A157476.P8570886767307396104

namespace A157476

/-- `A069129(Δ[A069129(n+1)]+1)` -/
def P8570886767307396104.Spec : Prop :=
  ∀ n, P8570886767307396104.a n = A157476 (n + 1)

end A157476

/-! ## A157476.P815774291637433592

`A069129(A069129(n+2)-A035008(n))`
-/

namespace A157476.P815774291637433592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069129 (A069129 (n + 2) - A035008 n).toNat

end

end A157476.P815774291637433592

namespace A157476

/-- `A069129(A069129(n+2)-A035008(n))` -/
def P815774291637433592.Spec : Prop :=
  ∀ n, P815774291637433592.a n = A157476 (n + 1)

end A157476

/-! ## A157476.P10338737874995118702

`A069129(A077591(n+2)-A069129(n+1))`
-/

namespace A157476.P10338737874995118702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069129 (A077591 (n + 2) - A069129 (n + 1)).toNat

end

end A157476.P10338737874995118702

namespace A157476

/-- `A069129(A077591(n+2)-A069129(n+1))` -/
def P10338737874995118702.Spec : Prop :=
  ∀ n, P10338737874995118702.a n = A157476 (n + 1)

end A157476

/-! ## A157476.P9590039136958197442

`A005893(32*(n+1)+1)-3`
-/

namespace A157476.P9590039136958197442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005893 (32 * (n + 1) + 1) - 3

end

end A157476.P9590039136958197442

namespace A157476

/-- `A005893(32*(n+1)+1)-3` -/
def P9590039136958197442.Spec : Prop :=
  ∀ n, P9590039136958197442.a n = A157476 (n + 1)

end A157476

/-! ## A157476.P3151328233838958020

`A249356(A174312(n+1))`
-/

namespace A157476.P3151328233838958020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249356 (A174312 (n + 1)).toNat

end

end A157476.P3151328233838958020

namespace A157476

/-- `A249356(A174312(n+1))` -/
def P3151328233838958020.Spec : Prop :=
  ∀ n, P3151328233838958020.a n = A157476 (n + 1)

end A157476

/-! ## A157476.P18060900960135500226

`A056220(A239128(n+1)+2)`
-/

namespace A157476.P18060900960135500226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056220 (A239128 (n + 1) + 2).toNat

end

end A157476.P18060900960135500226

namespace A157476

/-- `A056220(A239128(n+1)+2)` -/
def P18060900960135500226.Spec : Prop :=
  ∀ n, P18060900960135500226.a n = A157476 (n + 1)

end A157476

/-! ## A157476.P6561815063193378243

`A060626(Δ[A060626(2*n)])/2`
-/

namespace A157476.P6561815063193378243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060626 (2 * n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060626 (f1 (n + 1) - f1 n).toNat : ℚ) / 2

end

end A157476.P6561815063193378243

namespace A157476

/-- `A060626(Δ[A060626(2*n)])/2` -/
def P6561815063193378243.Spec : Prop :=
  ∀ n, P6561815063193378243.a n = (A157476 (n + 1) : ℚ)

end A157476

/-! ## A157476.P2642114708245207657

`A056220(A125169(2*n+1)+2)`
-/

namespace A157476.P2642114708245207657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056220 (A125169 (2 * n + 1) + 2).toNat

end

end A157476.P2642114708245207657

namespace A157476

/-- `A056220(A125169(2*n+1)+2)` -/
def P2642114708245207657.Spec : Prop :=
  ∀ n, P2642114708245207657.a n = A157476 (n + 1)

end A157476

/-! ## A157476.P2549705401988382353

`A056220(Δ[A007742(2*n+1)]-1)`
-/

namespace A157476.P2549705401988382353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007742 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056220 (f1 (n + 1) - f1 n - 1).toNat

end

end A157476.P2549705401988382353

namespace A157476

/-- `A056220(Δ[A007742(2*n+1)]-1)` -/
def P2549705401988382353.Spec : Prop :=
  ∀ n, P2549705401988382353.a n = A157476 (n + 1)

end A157476

/-! ## A157476.P4768776816486368121

`A077221(A081585(n+2)-8*n²)`
-/

namespace A157476.P4768776816486368121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077221 (A081585 (n + 2) - (8 * n ^ 2 : ℤ)).toNat

end

end A157476.P4768776816486368121

namespace A157476

/-- `A077221(A081585(n+2)-8*n²)` -/
def P4768776816486368121.Spec : Prop :=
  ∀ n, P4768776816486368121.a n = A157476 (n + 1)

end A157476

/-! ## A157476.P14046972747194558250

`A249356(A128470(n+1)+2*n+1)`
-/

namespace A157476.P14046972747194558250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249356 (A128470 (n + 1) + (2 * n + 1 : ℤ)).toNat

end

end A157476.P14046972747194558250

namespace A157476

/-- `A249356(A128470(n+1)+2*n+1)` -/
def P14046972747194558250.Spec : Prop :=
  ∀ n, P14046972747194558250.a n = A157476 (n + 1)

end A157476

/-!
# A157477: Number of values k < n for which k is a greedy sum of squares.

The programs for A157477, there is no canonical definition to state claims against.
-/

/-! ## A157477.P11981294283505256575

`∑[(A002265(∑[A000124(n+6)])+1)%2]`
-/

namespace A157477.P11981294283505256575
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (n + 6)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002265 (∑ j ∈ Finset.range (n + 1), f2 j).toNat + 1) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A157477.P11981294283505256575

/-! ## A157477.P3442139191066985604

`∑[A047201(A139276(n+4)+A000292(n))%2]`
-/

namespace A157477.P3442139191066985604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A047201 (A139276 (n + 4) + A000292 n).toNat) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A157477.P3442139191066985604

/-! ## A157477.P7108448400743468483

`A000196(A140110(n+1)%A325545(3*n))`
-/

namespace A157477.P7108448400743468483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (Int.tmod (A140110 (n + 1)) (A325545 (3 * n))).toNat

end

end A157477.P7108448400743468483

/-! ## A157477.P7387825716504649715

`∑[A372825(3*n+4)%2]`
-/

namespace A157477.P7387825716504649715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A372825 (3 * n + 4)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A157477.P7387825716504649715

/-! ## A157477.P6878125884076617593

`∑[A000035(A372825(3*n+4))]`
-/

namespace A157477.P6878125884076617593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A372825 (3 * n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A157477.P6878125884076617593

/-!
# A157478: a(n) is the least prime p such that p is greater than any previous term and is representable as the arithmetic mean of two other primes in exactly n different ways.

The programs for A157478, there is no canonical definition to state claims against.
-/

/-! ## A157478.P9642451307110273035

`p?[A325425(A267304(3*(n+1))-A267299(n+1))]`
-/

namespace A157478.P9642451307110273035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325425 (A267304 (3 * (n + 1)) - A267299 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A157478.P9642451307110273035

/-! ## A157478.P11196754162175705245

`A299791(A136034(n))`
-/

namespace A157478.P11196754162175705245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299791 (A136034 n).toNat

end

end A157478.P11196754162175705245

/-! ## A157478.P2321931696224633900

`A299791(A206350(n+1))`
-/

namespace A157478.P2321931696224633900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299791 (A206350 (n + 1)).toNat

end

end A157478.P2321931696224633900

/-!
# A157480: a(n) = least prime p such that p + prime(n) is a square.

The programs for A157480, there is no canonical definition to state claims against.
-/

/-! ## A157480.P6295144025469915002

`A075555(p?[comp[n²]])`
-/

namespace A157480.P6295144025469915002
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075555 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A157480.P6295144025469915002

/-! ## A157480.P16319284777444576993

`A075555(A000040(n+1))`
-/

namespace A157480.P16319284777444576993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075555 (A000040 (n + 1)).toNat

end

end A157480.P16319284777444576993

/-! ## A157480.P2581724592108075705

`A075555(A008578(n+2))`
-/

namespace A157480.P2581724592108075705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075555 (A008578 (n + 2)).toNat

end

end A157480.P2581724592108075705

/-! ## A157480.P18021267241118658340

`A075555(A182986(n+2))`
-/

namespace A157480.P18021267241118658340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075555 (A182986 (n + 2)).toNat

end

end A157480.P18021267241118658340

/-! ## A157480.P13265955315173939487

`A075555(record[A006530(n+2)])`
-/

namespace A157480.P13265955315173939487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075555 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A157480.P13265955315173939487

/-! ## A157480.P4363522127406071213

`A075555(record[A014963(n+2)])`
-/

namespace A157480.P4363522127406071213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075555 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A157480.P4363522127406071213

/-! ## A157480.P12036494890864692869

`A075555(record[A020639(n+2)])`
-/

namespace A157480.P12036494890864692869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075555 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A157480.P12036494890864692869

/-!
# A157481: Number of primes between n^3-n^2 and (n+1)^3-(n+1)^2.

The programs for A157481, there is no canonical definition to state claims against.
-/

/-! ## A157481.P17789150886584760202

`Δ[A000720(A151800((n-1)*n²))]`
-/

namespace A157481.P17789150886584760202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A151800 (((n : ℤ) - 1) * (n ^ 2 : ℤ)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A157481.P17789150886584760202

/-! ## A157481.P16435383441273746848

`Δ[A000720(A028310(n)*A103505(n))]`
-/

namespace A157481.P16435383441273746848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A028310 n * A103505 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A157481.P16435383441273746848

/-! ## A157481.P16566880066492443598

`Δ[A230980((n-1)*n²)]`
-/

namespace A157481.P16566880066492443598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (((n : ℤ) - 1) * (n ^ 2 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A157481.P16566880066492443598

/-! ## A157481.P4548921933012955907

`Δ[A000720(A007918((n-1)*n²))]`
-/

namespace A157481.P4548921933012955907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A007918 (((n : ℤ) - 1) * (n ^ 2 : ℤ)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A157481.P4548921933012955907

/-! ## A157481.P13001809240062991991

`Δ[A000720(A028310((n-1)*n²))]`
-/

namespace A157481.P13001809240062991991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A028310 (((n : ℤ) - 1) * (n ^ 2 : ℤ)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A157481.P13001809240062991991

/-!
# A157482: Number of primes between n^3-n^2-n^1 and (n+1)^3-(n+1)^2-(n+1)^1.

The programs for A157482, there is no canonical definition to state claims against.
-/

/-! ## A157482.P9725289023511802445

`Δ[A230980(abs(2*n*C(n, 2)-n))]`
-/

namespace A157482.P9725289023511802445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 |(2 * (n * Nat.choose n 2) : ℤ) - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A157482.P9725289023511802445

/-! ## A157482.P14554437399346638096

`Δ[A230980(abs(A152015(n)))]`
-/

namespace A157482.P14554437399346638096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 |A152015 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A157482.P14554437399346638096

/-! ## A157482.P7754660511499936227

`Δ[A230980(lcm(n, A165900(n)))]`
-/

namespace A157482.P7754660511499936227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (Int.lcm (n : ℤ) (A165900 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A157482.P7754660511499936227

/-! ## A157482.P10312972906766383516

`Δ[A036234(A007918(A152618(n)))]`
-/

namespace A157482.P10312972906766383516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (A007918 (A152618 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A157482.P10312972906766383516

/-!
# A157483: Numbers k such that k-1 and k+1 are divisible by exactly 3 primes, counted with multiplicity.

The programs for A157483, the canonical program `A157483.P17221998707677221966` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157483 has offset 1).

The definition of A157483 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1678 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A157483.P12180356544595291150

`record[A273943(A124941(n+1))+1]`
-/

namespace A157483.P12180356544595291150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A124941 (n + 1)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A157483.P12180356544595291150

namespace A157483

/-- `record[A273943(A124941(n+1))+1]` -/
def P12180356544595291150.Spec : Prop :=
  ∀ n, P12180356544595291150.a n = A157483 (n + 1)

end A157483

/-! ## A157483.P17221998707677221966

`record[A103391(A124941(n+1))]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A157483

/-- `record[A103391(A124941(n+1))]` -/
def P17221998707677221966.Spec : Prop :=
  ∀ n, P17221998707677221966.a n = A157483 (n + 1)

theorem P17221998707677221966.correct : P17221998707677221966.Spec := by
  intro n
  simp only [A157483, Nat.add_sub_cancel]

end A157483

/-! ## A157483.P13011546147785496433

`A180117(n+1)+1`
-/

namespace A157483.P13011546147785496433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180117 (n + 1) + 1

end

end A157483.P13011546147785496433

namespace A157483

/-- `A180117(n+1)+1` -/
def P13011546147785496433.Spec : Prop :=
  ∀ n, P13011546147785496433.a n = A157483 (n + 1)

end A157483

/-! ## A157483.P17127389890134183906

`A011760(A180117(n+1))`
-/

namespace A157483.P17127389890134183906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011760 (A180117 (n + 1)).toNat

end

end A157483.P17127389890134183906

namespace A157483

/-- `A011760(A180117(n+1))` -/
def P17127389890134183906.Spec : Prop :=
  ∀ n, P17127389890134183906.a n = A157483 (n + 1)

end A157483

/-! ## A157483.P15368350374386535706

`record[A001057(A124941(n+1)+1)]`
-/

namespace A157483.P15368350374386535706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A124941 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A157483.P15368350374386535706

namespace A157483

/-- `record[A001057(A124941(n+1)+1)]` -/
def P15368350374386535706.Spec : Prop :=
  ∀ n, P15368350374386535706.a n = A157483 (n + 1)

end A157483

/-! ## A157483.P17061031502882310731

`record[A003602(A124941(n+1)+1)]`
-/

namespace A157483.P17061031502882310731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A124941 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A157483.P17061031502882310731

namespace A157483

/-- `record[A003602(A124941(n+1)+1)]` -/
def P17061031502882310731.Spec : Prop :=
  ∀ n, P17061031502882310731.a n = A157483 (n + 1)

end A157483

/-! ## A157483.P1176665292842500977

`A008619(record[A131738(A124941(n+1))])`
-/

namespace A157483.P1176665292842500977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131738 (A124941 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A157483.P1176665292842500977

namespace A157483

/-- `A008619(record[A131738(A124941(n+1))])` -/
def P1176665292842500977.Spec : Prop :=
  ∀ n, P1176665292842500977.a n = A157483 (n + 1)

end A157483

/-! ## A157483.P7915024314917082600

`A008619(record[A348717(A124941(n+1))])`
-/

namespace A157483.P7915024314917082600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348717 (A124941 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A157483.P7915024314917082600

namespace A157483

/-- `A008619(record[A348717(A124941(n+1))])` -/
def P7915024314917082600.Spec : Prop :=
  ∀ n, P7915024314917082600.a n = A157483 (n + 1)

end A157483

/-!
# A157484: Numbers k such that k+-1 are divisible by exactly 4 primes, counted with multiplicity.

The programs for A157484, there is no canonical definition to state claims against.
-/

/-! ## A157484.P12375887642511039057

`A180150(n+1)+1`
-/

namespace A157484.P12375887642511039057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180150 (n + 1) + 1

end

end A157484.P12375887642511039057

/-! ## A157484.P17643233133791740133

`∩[A014613(n+1)+1, A014613(n+1)-1]`
-/

namespace A157484.P17643233133791740133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014613 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014613 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A157484.P17643233133791740133

/-! ## A157484.P3155965941004772326

`A011760(A180150(n+1))`
-/

namespace A157484.P3155965941004772326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011760 (A180150 (n + 1)).toNat

end

end A157484.P3155965941004772326

/-! ## A157484.P13520200891651422346

`A005408(A259504(n+1))%p?[A027368(n)]`
-/

namespace A157484.P13520200891651422346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027368 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005408 (A259504 (n + 1)).toNat) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A157484.P13520200891651422346

/-! ## A157484.P13016045368261468618

`A005408(A259504(n+1)^A133707(n+1))`
-/

namespace A157484.P13016045368261468618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (SequenceMachineLib.roundAway ((A259504 (n + 1) : ℚ) ^ (A133707 (n + 1) : ℤ))).toNat

end

end A157484.P13016045368261468618

/-! ## A157484.P13279995104055229774

`A005408(A133707(n+1)²*A259504(n+1))`
-/

namespace A157484.P13279995104055229774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A133707 (n + 1) ^ 2 * A259504 (n + 1)).toNat

end

end A157484.P13279995104055229774

/-! ## A157484.P7081429764647026048

`A002260(A000124(2*n+1))*A005408(A259504(n+1))`
-/

namespace A157484.P7081429764647026048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A000124 (2 * n + 1)).toNat * A005408 (A259504 (n + 1)).toNat

end

end A157484.P7081429764647026048

/-! ## A157484.P15846163782481562071

`or(A005408(A259504(n+1)), A306862(n))`
-/

namespace A157484.P15846163782481562071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A005408 (A259504 (n + 1)).toNat) (A306862 n)

end

end A157484.P15846163782481562071

/-!
# A157485: Numbers k such that k-+1 are divisible by exactly 5 primes, counted with multiplicity.

The programs for A157485, there is no canonical definition to state claims against.
-/

/-! ## A157485.P8198612035712064713

`A180151(n+1)+1`
-/

namespace A157485.P8198612035712064713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180151 (n + 1) + 1

end

end A157485.P8198612035712064713

/-! ## A157485.P8906803134136857418

`∩[A014614(n+1)+1, A014614(n+1)-1]`
-/

namespace A157485.P8906803134136857418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014614 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014614 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A157485.P8906803134136857418

/-! ## A157485.P4478209824491340751

`∩[A014614(n+1)+1, A280382(n+1)]`
-/

namespace A157485.P4478209824491340751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014614 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280382 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A157485.P4478209824491340751

/-! ## A157485.P15250611476893065931

`A011760(A180151(n+1))`
-/

namespace A157485.P15250611476893065931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011760 (A180151 (n + 1)).toNat

end

end A157485.P15250611476893065931

/-! ## A157485.P1318240243185197248

`∩[A065475(A014614(n+1)), A280382(n+1)]`
-/

namespace A157485.P1318240243185197248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (A014614 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280382 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A157485.P1318240243185197248

/-!
# A157488: a(1) = 1; for n > 1, a(n) = product of exponential divisors of n.

The programs for A157488, there is no canonical definition to state claims against.
-/

/-! ## A157488.P12016479264263551664

`∏{d}[n+1, #]/A160199(n+1)`
-/

namespace A157488.P12016479264263551664
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ d ∈ Nat.divisors (f1 n), d : ℕ) : ℚ) / (A160199 (n + 1) : ℚ)

end

end A157488.P12016479264263551664

/-! ## A157488.P12819327561878504840

`A007955(n+1)/A160199(n+1)`
-/

namespace A157488.P12819327561878504840
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007955 (n + 1) : ℚ) / (A160199 (n + 1) : ℚ)

end

end A157488.P12819327561878504840

/-! ## A157488.P4792595807555131413

`∑{d}[n+1, A174940(#)]/A160199(n+1)`
-/

namespace A157488.P4792595807555131413
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), A174940 d : ℤ) : ℚ) / (A160199 (n + 1) : ℚ)

end

end A157488.P4792595807555131413

/-! ## A157488.P13514193698666613122

`(n+1)*A007956(n+1)/A160199(n+1)`
-/

namespace A157488.P13514193698666613122
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((A007956 (n + 1) : ℚ) / (A160199 (n + 1) : ℚ))

end

end A157488.P13514193698666613122

/-! ## A157488.P5639515371285511018

`sqrt(n+1)^Δ[A006218(n)]/A160199(n+1)`
-/

namespace A157488.P5639515371285511018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (n + 1 : ℝ) ^ (f1 (n + 1) - f1 n : ℤ) / (A160199 (n + 1) : ℝ)

end

end A157488.P5639515371285511018

/-! ## A157488.P11052402218149391056

`sqrt(n+1)^A000005(n+1)/A160199(n+1)`
-/

namespace A157488.P11052402218149391056
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (n + 1 : ℝ) ^ (A000005 (n + 1) : ℤ) / (A160199 (n + 1) : ℝ)

end

end A157488.P11052402218149391056

/-! ## A157488.P8879962283805601528

`(n+1)^(A000005(2*n+1-n)/2)/A160199(n+1)`
-/

namespace A157488.P8879962283805601528
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) ^ ((A000005 (2 * n + 1 - n) : ℚ) / 2 : ℝ) / (A160199 (n + 1) : ℝ)

end

end A157488.P8879962283805601528

/-! ## A157488.P17945364364002936529

`A056925(n+1)*A056926(n+1)/A160199(n+1)`
-/

namespace A157488.P17945364364002936529
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056925 (n + 1) * A056926 (n + 1) : ℚ) / (A160199 (n + 1) : ℚ)

end

end A157488.P17945364364002936529

/-! ## A157488.P3625196063849313516

`A306705(n+1)/(A160199(n+1)*A211776(n+1))`
-/

namespace A157488.P3625196063849313516
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A306705 (n + 1) : ℚ) / (A160199 (n + 1) * A211776 (n + 1) : ℚ)

end

end A157488.P3625196063849313516

/-! ## A157488.P10866729658646818470

`sqrt(A062758(n+1))/A160199(n+1)`
-/

namespace A157488.P10866729658646818470
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A062758 (n + 1) : ℝ) / (A160199 (n + 1) : ℝ)

end

end A157488.P10866729658646818470

/-!
# A157491: A050165*A130595 as infinite lower triangular matrices.

The programs for A157491, there is no canonical definition to state claims against.
-/

/-! ## A157491.P18357697641290484937

`(and(2, comp[∑[n]]+n)-1)*A094385(n)`
-/

namespace A157491.P18357697641290484937
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.land 2 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + n) : ℤ) - 1) * A094385 n

end

end A157491.P18357697641290484937

/-! ## A157491.P16841203880450082205

`A094385(n)*A097807(n)`
-/

namespace A157491.P16841203880450082205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094385 n * A097807 n

end

end A157491.P16841203880450082205

/-! ## A157491.P4403663959191952096

`A033999(A051162(n))*A094385(n)`
-/

namespace A157491.P4403663959191952096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A051162 n).toNat * A094385 n

end

end A157491.P4403663959191952096

/-! ## A157491.P325775832149350490

`A008836(A130321(n))*A094385(n)`
-/

namespace A157491.P325775832149350490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (A130321 n).toNat * A094385 n

end

end A157491.P325775832149350490

/-! ## A157491.P4610095391034075471

`A033999(A244788(n+1))*A094385(n)`
-/

namespace A157491.P4610095391034075471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A244788 (n + 1)).toNat * A094385 n

end

end A157491.P4610095391034075471

/-!
# A157492: Apply partial sum operator twice to sequence of squares of the first n primes.

The programs for A157492, the canonical program `A157492.P2918812419229499210` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157492 has offset 1).

The definition of A157492 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A157492.P2918812419229499210

`∑[A024450(n+1)]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A157492

/-- `∑[A024450(n+1)]` -/
def P2918812419229499210.Spec : Prop :=
  ∀ n, P2918812419229499210.a n = A157492 (n + 1)

theorem P2918812419229499210.correct : P2918812419229499210.Spec := by
  intro n
  simp only [A157492, Nat.add_sub_cancel]

end A157492

/-! ## A157492.P11218516938392853688

`∑[∑[A001248(n+1)]]`
-/

namespace A157492.P11218516938392853688
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A157492.P11218516938392853688

namespace A157492

/-- `∑[∑[A001248(n+1)]]` -/
def P11218516938392853688.Spec : Prop :=
  ∀ n, P11218516938392853688.a n = A157492 (n + 1)

end A157492

/-! ## A157492.P13506505474748303420

`∑[∑[A000040(n+1)²]]`
-/

namespace A157492.P13506505474748303420
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A157492.P13506505474748303420

namespace A157492

/-- `∑[∑[A000040(n+1)²]]` -/
def P13506505474748303420.Spec : Prop :=
  ∀ n, P13506505474748303420.a n = A157492 (n + 1)

end A157492

/-! ## A157492.P3957826153976132836

`∑[∑[A273960(n+1)²]]`
-/

namespace A157492.P3957826153976132836
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273960 (n + 1) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A157492.P3957826153976132836

namespace A157492

/-- `∑[∑[A273960(n+1)²]]` -/
def P3957826153976132836.Spec : Prop :=
  ∀ n, P3957826153976132836.a n = A157492 (n + 1)

end A157492

/-! ## A157492.P955865117975434671

`∑[∑[sqrt(A030514(n+1))]]`
-/

namespace A157492.P955865117975434671
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A030514 (n + 1) : ℝ)

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A157492.P955865117975434671

namespace A157492

/-- `∑[∑[sqrt(A030514(n+1))]]` -/
def P955865117975434671.Spec : Prop :=
  ∀ n, P955865117975434671.a n = (A157492 (n + 1) : ℝ)

end A157492

/-! ## A157492.P304749865951309904

`∑[∑[A084920(n+1)+1]]`
-/

namespace A157492.P304749865951309904
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084920 (n + 1) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A157492.P304749865951309904

namespace A157492

/-- `∑[∑[A084920(n+1)+1]]` -/
def P304749865951309904.Spec : Prop :=
  ∀ n, P304749865951309904.a n = A157492 (n + 1)

end A157492

/-! ## A157492.P16725125392782594356

`∑[∑[A049001(n+1)+2]]`
-/

namespace A157492.P16725125392782594356
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049001 (n + 1) + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A157492.P16725125392782594356

namespace A157492

/-- `∑[∑[A049001(n+1)+2]]` -/
def P16725125392782594356.Spec : Prop :=
  ∀ n, P16725125392782594356.a n = A157492 (n + 1)

end A157492

/-! ## A157492.P2844087062347460314

`∑[∑[A066872(n+1)-1]]`
-/

namespace A157492.P2844087062347460314
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066872 (n + 1) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A157492.P2844087062347460314

namespace A157492

/-- `∑[∑[A066872(n+1)-1]]` -/
def P2844087062347460314.Spec : Prop :=
  ∀ n, P2844087062347460314.a n = A157492 (n + 1)

end A157492

/-! ## A157492.P1284244558585305897

`∑[∑[A061725(n+1)-2]]`
-/

namespace A157492.P1284244558585305897
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061725 (n + 1) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A157492.P1284244558585305897

namespace A157492

/-- `∑[∑[A061725(n+1)-2]]` -/
def P1284244558585305897.Spec : Prop :=
  ∀ n, P1284244558585305897.a n = A157492 (n + 1)

end A157492

/-! ## A157492.P6411098389633165531

`∑[∑[A079704(n+1)/2]]`
-/

namespace A157492.P6411098389633165531
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079704 (n + 1) : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A157492.P6411098389633165531

namespace A157492

/-- `∑[∑[A079704(n+1)/2]]` -/
def P6411098389633165531.Spec : Prop :=
  ∀ n, P6411098389633165531.a n = (A157492 (n + 1) : ℚ)

end A157492

/-! ## A157492.P9517159773733511265

`∑[∑[(A006093(n+1)+1)²]]`
-/

namespace A157492.P9517159773733511265
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A006093 (n + 1) + 1) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A157492.P9517159773733511265

namespace A157492

/-- `∑[∑[(A006093(n+1)+1)²]]` -/
def P9517159773733511265.Spec : Prop :=
  ∀ n, P9517159773733511265.a n = A157492 (n + 1)

end A157492

/-! ## A157492.P5695035670414748914

`∑[∑[(1-A008864(n+1))²]]`
-/

namespace A157492.P5695035670414748914
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A008864 (n + 1)) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A157492.P5695035670414748914

namespace A157492

/-- `∑[∑[(1-A008864(n+1))²]]` -/
def P5695035670414748914.Spec : Prop :=
  ∀ n, P5695035670414748914.a n = A157492 (n + 1)

end A157492

/-! ## A157492.P9312273648590890474

`∑[∑[(A040976(n+1)+2)²]]`
-/

namespace A157492.P9312273648590890474
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A040976 (n + 1) + 2) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A157492.P9312273648590890474

namespace A157492

/-- `∑[∑[(A040976(n+1)+2)²]]` -/
def P9312273648590890474.Spec : Prop :=
  ∀ n, P9312273648590890474.a n = A157492 (n + 1)

end A157492

/-! ## A157492.P3397057649126133104

`∑[∑[(2-A052147(n+1))²]]`
-/

namespace A157492.P3397057649126133104
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A052147 (n + 1)) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A157492.P3397057649126133104

namespace A157492

/-- `∑[∑[(2-A052147(n+1))²]]` -/
def P3397057649126133104.Spec : Prop :=
  ∀ n, P3397057649126133104.a n = A157492 (n + 1)

end A157492

/-! ## A157492.P10617500881066049828

`∑[∑[(A014692(n+1)+n)²]]`
-/

namespace A157492.P10617500881066049828
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014692 (n + 1) + (n : ℤ)) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A157492.P10617500881066049828

namespace A157492

/-- `∑[∑[(A014692(n+1)+n)²]]` -/
def P10617500881066049828.Spec : Prop :=
  ∀ n, P10617500881066049828.a n = A157492 (n + 1)

end A157492

/-! ## A157492.P17181112220964692732

`∑[∑[A036689(n+1)+A000040(n+1)]]`
-/

namespace A157492.P17181112220964692732
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036689 (n + 1) + A000040 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A157492.P17181112220964692732

namespace A157492

/-- `∑[∑[A036689(n+1)+A000040(n+1)]]` -/
def P17181112220964692732.Spec : Prop :=
  ∀ n, P17181112220964692732.a n = A157492 (n + 1)

end A157492

/-! ## A157492.P15878557341986379204

`∑[∑[A280076(n+2)]]`
-/

namespace A157492.P15878557341986379204
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280076 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A157492.P15878557341986379204

namespace A157492

/-- `∑[∑[A280076(n+2)]]` -/
def P15878557341986379204.Spec : Prop :=
  ∀ n, P15878557341986379204.a n = A157492 (n + 1)

end A157492

/-! ## A157492.P6367799473253501635

`∑[A024525(n+1)-1]`
-/

namespace A157492.P6367799473253501635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024525 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A157492.P6367799473253501635

namespace A157492

/-- `∑[A024525(n+1)-1]` -/
def P6367799473253501635.Spec : Prop :=
  ∀ n, P6367799473253501635.a n = A157492 (n + 1)

end A157492

/-! ## A157492.P6124149611032156293

`∑[∑[A008578(n+2)²]]`
-/

namespace A157492.P6124149611032156293
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A157492.P6124149611032156293

namespace A157492

/-- `∑[∑[A008578(n+2)²]]` -/
def P6124149611032156293.Spec : Prop :=
  ∀ n, P6124149611032156293.a n = A157492 (n + 1)

end A157492

/-! ## A157492.P10889974273263156545

`∑[∑[A182986(n+2)²]]`
-/

namespace A157492.P10889974273263156545
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 2) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A157492.P10889974273263156545

namespace A157492

/-- `∑[∑[A182986(n+2)²]]` -/
def P10889974273263156545.Spec : Prop :=
  ∀ n, P10889974273263156545.a n = A157492 (n + 1)

end A157492

/-!
# A157493: Apply partial sum operator thrice to sequence of squares of the first n primes.

The programs for A157493, the canonical program `A157493.P10261944289604514386` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157493 has offset 1).

The definition of A157493 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A157493.P10261944289604514386

`∑[A157492(n+1)]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A157493

/-- `∑[A157492(n+1)]` -/
def P10261944289604514386.Spec : Prop :=
  ∀ n, P10261944289604514386.a n = A157493 (n + 1)

theorem P10261944289604514386.correct : P10261944289604514386.Spec := by
  intro n
  simp only [A157493, Nat.add_sub_cancel]

end A157493

/-! ## A157493.P3118297264500210288

`∑[∑[A024450(n+1)]]`
-/

namespace A157493.P3118297264500210288
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024450 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A157493.P3118297264500210288

namespace A157493

/-- `∑[∑[A024450(n+1)]]` -/
def P3118297264500210288.Spec : Prop :=
  ∀ n, P3118297264500210288.a n = A157493 (n + 1)

end A157493

/-! ## A157493.P9491122434415044219

`∑[∑[∑[A001248(n+1)]]]`
-/

namespace A157493.P9491122434415044219
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A157493.P9491122434415044219

namespace A157493

/-- `∑[∑[∑[A001248(n+1)]]]` -/
def P9491122434415044219.Spec : Prop :=
  ∀ n, P9491122434415044219.a n = A157493 (n + 1)

end A157493

/-! ## A157493.P17286617415967398941

`∑[∑[∑[A000040(n+1)²]]]`
-/

namespace A157493.P17286617415967398941
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A157493.P17286617415967398941

namespace A157493

/-- `∑[∑[∑[A000040(n+1)²]]]` -/
def P17286617415967398941.Spec : Prop :=
  ∀ n, P17286617415967398941.a n = A157493 (n + 1)

end A157493

/-! ## A157493.P964697859897832274

`∑[∑[∑[(A006093(n+1)+1)²]]]`
-/

namespace A157493.P964697859897832274
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A006093 (n + 1) + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A157493.P964697859897832274

namespace A157493

/-- `∑[∑[∑[(A006093(n+1)+1)²]]]` -/
def P964697859897832274.Spec : Prop :=
  ∀ n, P964697859897832274.a n = A157493 (n + 1)

end A157493

/-! ## A157493.P9912679070333612970

`∑[∑[∑[(A040976(n+1)+2)²]]]`
-/

namespace A157493.P9912679070333612970
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A040976 (n + 1) + 2) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A157493.P9912679070333612970

namespace A157493

/-- `∑[∑[∑[(A040976(n+1)+2)²]]]` -/
def P9912679070333612970.Spec : Prop :=
  ∀ n, P9912679070333612970.a n = A157493 (n + 1)

end A157493

/-! ## A157493.P13447416678106670523

`∑[∑[A024525(n+1)-1]]`
-/

namespace A157493.P13447416678106670523
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024525 (n + 1) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A157493.P13447416678106670523

namespace A157493

/-- `∑[∑[A024525(n+1)-1]]` -/
def P13447416678106670523.Spec : Prop :=
  ∀ n, P13447416678106670523.a n = A157493 (n + 1)

end A157493

/-! ## A157493.P12023546149789815432

`∑[∑[∑[A008578(n+2)²]]]`
-/

namespace A157493.P12023546149789815432
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A157493.P12023546149789815432

namespace A157493

/-- `∑[∑[∑[A008578(n+2)²]]]` -/
def P12023546149789815432.Spec : Prop :=
  ∀ n, P12023546149789815432.a n = A157493 (n + 1)

end A157493

/-! ## A157493.P3118570383341049432

`∑[∑[∑[record[A006530(n+2)²]]]]`
-/

namespace A157493.P3118570383341049432
noncomputable section

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2) ^ 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f4 (SequenceMachineLib.nth (fun j => ∀ l < j, f4 l < f4 j) n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A157493.P3118570383341049432

namespace A157493

/-- `∑[∑[∑[record[A006530(n+2)²]]]]` -/
def P3118570383341049432.Spec : Prop :=
  ∀ n, P3118570383341049432.a n = A157493 (n + 1)

end A157493

/-! ## A157493.P11356076495295625115

`∑[∑[∑[record[A020639(n+2)²]]]]`
-/

namespace A157493.P11356076495295625115
noncomputable section

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2) ^ 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f4 (SequenceMachineLib.nth (fun j => ∀ l < j, f4 l < f4 j) n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A157493.P11356076495295625115

namespace A157493

/-- `∑[∑[∑[record[A020639(n+2)²]]]]` -/
def P11356076495295625115.Spec : Prop :=
  ∀ n, P11356076495295625115.a n = A157493 (n + 1)

end A157493

/-! ## A157493.P1731384400649791408

`∑[∑[∑[p?[comp[n²]]²]]]`
-/

namespace A157493.P1731384400649791408
noncomputable section

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f5 j ≠ x) n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f4 (SequenceMachineLib.nth (fun j => (f4 j).Prime) n) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A157493.P1731384400649791408

namespace A157493

/-- `∑[∑[∑[p?[comp[n²]]²]]]` -/
def P1731384400649791408.Spec : Prop :=
  ∀ n, (P1731384400649791408.a n : ℤ) = A157493 (n + 1)

end A157493

/-! ## A157493.P15904036384938256415

`∑[∑[∑[record[A014963(n+2)²]]]]`
-/

namespace A157493.P15904036384938256415
noncomputable section

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2) ^ 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f4 (SequenceMachineLib.nth (fun j => ∀ l < j, f4 l < f4 j) n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A157493.P15904036384938256415

namespace A157493

/-- `∑[∑[∑[record[A014963(n+2)²]]]]` -/
def P15904036384938256415.Spec : Prop :=
  ∀ n, P15904036384938256415.a n = A157493 (n + 1)

end A157493

/-!
# A157496: Composite numbers n where the largest digit m is equal to the sum of all digits of n except for one occurrence of m.

The programs for A157496, there is no canonical definition to state claims against.
-/

/-! ## A157496.P7829430780583295071

`filter[A064544(n+1), A005171(#)]`
-/

namespace A157496.P7829430780583295071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064544 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A157496.P7829430780583295071

/-! ## A157496.P12359859877881411920

`filter[A064544(n+1), A066247(#)]`
-/

namespace A157496.P12359859877881411920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064544 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A157496.P12359859877881411920

/-! ## A157496.P11167874122605216914

`filter[A064544(n+1), A174898(#)]`
-/

namespace A157496.P11167874122605216914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064544 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A174898 (f1 j).toNat = 1) n)

end

end A157496.P11167874122605216914

/-! ## A157496.P7886097423947592179

`filter[A064544(n+1), A202238(#)]`
-/

namespace A157496.P7886097423947592179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064544 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202238 (f1 j).toNat = 1) n)

end

end A157496.P7886097423947592179

/-! ## A157496.P17361563202839439780

`∩[A002808(n+1), A064544(n)]`
-/

namespace A157496.P17361563202839439780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064544 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A157496.P17361563202839439780

/-! ## A157496.P9544276271128407887

`∩[A018252(n+1), A064544(n)]`
-/

namespace A157496.P9544276271128407887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064544 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A157496.P9544276271128407887

/-! ## A157496.P4221874821387976940

`∩[A056653(n+1), A064544(n)]`
-/

namespace A157496.P4221874821387976940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056653 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064544 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A157496.P4221874821387976940

/-! ## A157496.P12862123283061913921

`∩[A062973(n+1), A064544(n)]`
-/

namespace A157496.P12862123283061913921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062973 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064544 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A157496.P12862123283061913921

/-! ## A157496.P17370353404484043051

`∩[A065090(n+1), A064544(n)]`
-/

namespace A157496.P17370353404484043051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065090 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064544 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A157496.P17370353404484043051

/-! ## A157496.P17733086789764592671

`∩[A111774(n+1), A064544(n)]`
-/

namespace A157496.P17733086789764592671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111774 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064544 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A157496.P17733086789764592671

/-!
# A157497: Triangle read by rows, A156348 * A127648.

The programs for A157497, there is no canonical definition to state claims against.
-/

/-! ## A157497.P2966243457979492774

`(1-C(∑[char[∑[n]]], 2)+n)*A156348(n+1)`
-/

namespace A157497.P2966243457979492774
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) + (n : ℤ)) * A156348 (n + 1)

end

end A157497.P2966243457979492774

/-! ## A157497.P8647510577437215544

`A002260(n+1)*A156348(n+1)`
-/

namespace A157497.P8647510577437215544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A156348 (n + 1)

end

end A157497.P8647510577437215544

/-! ## A157497.P802097577534696585

`(A002262(n)+1)*A156348(n+1)`
-/

namespace A157497.P802097577534696585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002262 n + 1) * A156348 (n + 1)

end

end A157497.P802097577534696585

/-! ## A157497.P17876981852386001480

`A050873(n+1)*A156348(n+1)`
-/

namespace A157497.P17876981852386001480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050873 (n + 1) * A156348 (n + 1)

end

end A157497.P17876981852386001480

/-! ## A157497.P4505184819493250922

`A112544(n+1)*A156348(n+1)`
-/

namespace A157497.P4505184819493250922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112544 (n + 1) * A156348 (n + 1)

end

end A157497.P4505184819493250922

/-! ## A157497.P8823048045587274591

`A123275(n+1)*A156348(n+1)`
-/

namespace A157497.P8823048045587274591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123275 (n + 1) * A156348 (n + 1)

end

end A157497.P8823048045587274591

/-! ## A157497.P9588181033766109254

`A127093(n+1)*A156348(n+1)`
-/

namespace A157497.P9588181033766109254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127093 (n + 1) * A156348 (n + 1)

end

end A157497.P9588181033766109254

/-! ## A157497.P3759364226577752708

`A156348(n+1)*A307662(n+1)`
-/

namespace A157497.P3759364226577752708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156348 (n + 1) * A307662 (n + 1)

end

end A157497.P3759364226577752708

/-! ## A157497.P10779846269568779122

`A156348(n+1)*A327856(n+1)`
-/

namespace A157497.P10779846269568779122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156348 (n + 1) * A327856 (n + 1)

end

end A157497.P10779846269568779122

/-! ## A157497.P3422169918639798515

`A156348(n+1)*A334230(n+1)`
-/

namespace A157497.P3422169918639798515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156348 (n + 1) * A334230 (n + 1)

end

end A157497.P3422169918639798515

/-!
# A157499: Denominator of Euler(n, 1/31).

The programs for A157499, there is no canonical definition to state claims against.
-/

/-! ## A157499.P6427005615620222020

`2^val(n+1, 2)*31^n`
-/

namespace A157499.P6427005615620222020
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ SequenceMachineLib.valuation (n + 1) 2 * 31 ^ n

end

end A157499.P6427005615620222020

/-! ## A157499.P9793531961913664269

`31^n*A006519(n+1)`
-/

namespace A157499.P9793531961913664269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (31 ^ n : ℤ) * A006519 (n + 1)

end

end A157499.P9793531961913664269

/-! ## A157499.P6418108681280727736

`A006519(n+1)*A009975(n)`
-/

namespace A157499.P6418108681280727736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (n + 1) * A009975 n

end

end A157499.P6418108681280727736

/-! ## A157499.P10030680457923443098

`A000079(A007814(n+1))*A009975(n)`
-/

namespace A157499.P10030680457923443098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A007814 (n + 1)).toNat * A009975 n

end

end A157499.P10030680457923443098

/-! ## A157499.P10659273079723209227

`lcm(A009531(A028233(n+1)), A009975(n))`
-/

namespace A157499.P10659273079723209227
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A009531 (A028233 (n + 1)).toNat) (A009975 n)

end

end A157499.P10659273079723209227

/-! ## A157499.P3848488538354875797

`lcm(A006519(n+1), A009975(A033619(n+1)))`
-/

namespace A157499.P3848488538354875797
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A006519 (n + 1)) (A009975 (A033619 (n + 1)).toNat)

end

end A157499.P3848488538354875797

