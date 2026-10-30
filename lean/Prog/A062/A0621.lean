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
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C045
import Seq.B000.C047
import Seq.B000.C049
import Seq.B000.C050
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
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C002
import Seq.B004.C003
import Seq.B004.C004
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A062100: Triangular numbers with every digit a triangular number.

The programs for A062100, there is no canonical definition to state claims against.
-/

/-! ## A062100.P5913599989296810058

`∩[∑[n], A222250(A007284(n))]`
-/

namespace A062100.P5913599989296810058
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222250 (A007284 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A062100.P5913599989296810058

/-! ## A062100.P2526667740106226993

`∩[∑[n], A137386(A037460(n)+1)]`
-/

namespace A062100.P2526667740106226993
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137386 (A037460 n + 1).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A062100.P2526667740106226993

/-! ## A062100.P16176265337300420028

`C(∑[A089610(A320921(n))], 2)`
-/

namespace A062100.P16176265337300420028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089610 (A320921 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j).toNat 2

end

end A062100.P16176265337300420028

/-! ## A062100.P18011154942410004588

`A068821(A028310(n))%A338327(n)`
-/

namespace A062100.P18011154942410004588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A068821 (A028310 n).toNat) (A338327 n)

end

end A062100.P18011154942410004588

/-! ## A062100.P15631484808161861395

`A161680(A211947(n+1)%A178017(n+1))`
-/

namespace A062100.P15631484808161861395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (Int.tmod (A211947 (n + 1)) (A178017 (n + 1))).toNat

end

end A062100.P15631484808161861395

/-!
# A062101: Squarefree numbers with every digit a squarefree number.

The programs for A062101, there is no canonical definition to state claims against.
-/

/-! ## A062101.P11551667440926795702

`record[A004179(A019554(A214677(n+1)))]`
-/

namespace A062101.P11551667440926795702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004179 (A019554 (A214677 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A062101.P11551667440926795702

/-! ## A062101.P911439874772290765

`A330597(n+1)+A000007(A000041(n))`
-/

namespace A062101.P911439874772290765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330597 (n + 1) + A000007 (A000041 n).toNat

end

end A062101.P911439874772290765

/-! ## A062101.P14098632473781455541

`A330597(n+1)+A000007(A000837(n))`
-/

namespace A062101.P14098632473781455541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330597 (n + 1) + A000007 (A000837 n).toNat

end

end A062101.P14098632473781455541

/-! ## A062101.P15616397624827737111

`A216455(A330597(n+1))`
-/

namespace A062101.P15616397624827737111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216455 (A330597 (n + 1)).toNat

end

end A062101.P15616397624827737111

/-! ## A062101.P9556246639761029964

`A097247(A330597(n+1))`
-/

namespace A062101.P9556246639761029964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097247 (A330597 (n + 1)).toNat

end

end A062101.P9556246639761029964

/-!
# A062103: Number of paths by which an unpromoted knight (keima) of Shogi can move to various squares on infinite board, if it starts from its origin square, the second leftmost square of the back rank.

The programs for A062103, there is no canonical definition to state claims against.
-/

/-! ## A062103.P12751025875402251602

`A088534(A005471(n+1)-A034020(A060428(n+1)))`
-/

namespace A062103.P12751025875402251602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088534 (A005471 (n + 1) - A034020 (A060428 (n + 1)).toNat).toNat

end

end A062103.P12751025875402251602

/-! ## A062103.P5616737791121297444

`A000161(A320752(n+1)-10)`
-/

namespace A062103.P5616737791121297444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000161 (A320752 (n + 1) - 10).toNat

end

end A062103.P5616737791121297444

/-! ## A062103.P5417579392914328196

`A324192(gcd(A210571(n+3), A223838(n+1)))`
-/

namespace A062103.P5417579392914328196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324192 (Int.gcd (A210571 (n + 3)) (A223838 (n + 1)))

end

end A062103.P5417579392914328196

/-! ## A062103.P5924606002971236404

`and(A057354(A210981(3*n+1)), A351726(n+4))`
-/

namespace A062103.P5924606002971236404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057354 (A210981 (3 * n + 1)).toNat) (A351726 (n + 4))

end

end A062103.P5924606002971236404

/-! ## A062103.P10866387564517942900

`and(A271424(3*n+1), A330098(A053289(2*n+1)))`
-/

namespace A062103.P10866387564517942900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A271424 (3 * n + 1)) (A330098 (A053289 (2 * n + 1)).toNat)

end

end A062103.P10866387564517942900

/-!
# A062104: Square array read by antidiagonals: number of ways a black pawn (starting at any square on the second rank) can (theoretically) end at various squares on an infinite chessboard.

The programs for A062104, there is no canonical definition to state claims against.
-/

/-! ## A062104.P6624493886956641983

`A351939(lt[A125781(2*(n+2)), A161908(3*(n+1))])`
-/

namespace A062104.P6624493886956641983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125781 (2 * (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161908 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351939 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A062104.P6624493886956641983

/-! ## A062104.P10194875610179758530

`xor(A083857(n), A102683(A221074(n)))`
-/

namespace A062104.P10194875610179758530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A083857 n) (A102683 (A221074 n).toNat)

end

end A062104.P10194875610179758530

/-! ## A062104.P11517251532079207853

`dr(A095011(A143453(n)))`
-/

namespace A062104.P11517251532079207853
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A095011 (A143453 n).toNat)

end

end A062104.P11517251532079207853

/-! ## A062104.P4582468014529988318

`A116537(A135293(n+1))`
-/

namespace A062104.P4582468014529988318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116537 (A135293 (n + 1)).toNat

end

end A062104.P4582468014529988318

/-! ## A062104.P8538059124365393480

`A191228(A130746(n+1))`
-/

namespace A062104.P8538059124365393480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191228 (A130746 (n + 1)).toNat

end

end A062104.P8538059124365393480

/-!
# A062105: Square array read by antidiagonals: number of ways a pawn-like piece (with the initial 2-step move forbidden and starting from any square on the back rank) can end at various squares on an infinite chessboard.

The programs for A062105, there is no canonical definition to state claims against.
-/

/-! ## A062105.P2962659551542538531

`A103298(A071949(n))-A002265(A084938(n))`
-/

namespace A062105.P2962659551542538531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103298 (A071949 n).toNat - A002265 (A084938 n).toNat

end

end A062105.P2962659551542538531

/-! ## A062105.P11549181853267789506

`A196563(A268371(n+1))+A101477(n)`
-/

namespace A062105.P11549181853267789506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196563 (A268371 (n + 1)).toNat + A101477 n

end

end A062105.P11549181853267789506

/-! ## A062105.P10246898154857212360

`A131343(A232560(n+1)^A115346(n))`
-/

namespace A062105.P10246898154857212360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131343 (SequenceMachineLib.roundAway ((A232560 (n + 1) : ℚ) ^ (A115346 n : ℤ))).toNat

end

end A062105.P10246898154857212360

/-! ## A062105.P8364692763602348929

`A064288(lcm(A047150(n), A271969(n+1)))`
-/

namespace A062105.P8364692763602348929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064288 (Int.lcm (A047150 n) (A271969 (n + 1)))

end

end A062105.P8364692763602348929

/-! ## A062105.P3651308055917590277

`A137152(or(A064282(n), A133232(n+1)))`
-/

namespace A062105.P3651308055917590277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137152 (Int.lor (A064282 n) (A133232 (n + 1))).toNat

end

end A062105.P3651308055917590277

/-!
# A062106: Number of ways a black pawn (from any starting square on the second back rank) can (theoretically) end on the n-th square of the leftmost file counted from the back rank.

The programs for A062106, there is no canonical definition to state claims against.
-/

/-! ## A062106.P694775706110592007

`A062104(∑[n]+n)`
-/

namespace A062106.P694775706110592007
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062104 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A062106.P694775706110592007

/-! ## A062106.P11348136485027503432

`record[Δ[-A062104(n)]]`
-/

namespace A062106.P11348136485027503432
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A062104 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A062106.P11348136485027503432

/-! ## A062106.P16703271886817615887

`record[A062104(A049780(n))]`
-/

namespace A062106.P16703271886817615887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062104 (A049780 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A062106.P16703271886817615887

/-! ## A062106.P2034722806362832980

`record[A062104(A061579(n))]`
-/

namespace A062106.P2034722806362832980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062104 (A061579 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A062106.P2034722806362832980

/-! ## A062106.P5589576013856976748

`record[A062104(lt[A065177(n), 2])]`
-/

namespace A062106.P5589576013856976748
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065177 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062104 (SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A062106.P5589576013856976748

/-!
# A062107: Diagonal of table A062104.

The programs for A062107, the canonical program `A062107.P11800875836665992402` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062107 has offset 1).

The definition of A062107 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A062107.P11800875836665992402

`floor(10*3^(n-3))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A062107

/-- `floor(10*3^(n-3))` -/
def P11800875836665992402.Spec : Prop :=
  ∀ n, P11800875836665992402.a n = A062107 (n + 1)

theorem P11800875836665992402.correct : P11800875836665992402.Spec := by
  intro n
  simp only [A062107, Nat.add_sub_cancel]

end A062107

/-! ## A062107.P17414072721159225667

`ogf((x+x^3)/(1-3x))`
-/

namespace A062107.P17414072721159225667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 0, 1] [1, -3] n

end

end A062107.P17414072721159225667

namespace A062107

/-- `ogf((x+x^3)/(1-3x))` -/
def P17414072721159225667.Spec : Prop :=
  ∀ n, P17414072721159225667.a n = A062107 (n + 1)

end A062107

/-! ## A062107.P17808182749212496946

`3*a(n-1)` with `a(0)=0, a(1)=1, a(2)=3, a(3)=10`
-/

namespace A062107.P17808182749212496946
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 3, 10] fun n a =>
  3 * a (n - 1)

end

end A062107.P17808182749212496946

namespace A062107

/-- `3*a(n-1)` -/
def P17808182749212496946.Spec : Prop :=
  ∀ n, (P17808182749212496946.a n : ℤ) = A062107 (n + 1)

end A062107

/-! ## A062107.P8362641946791527720

`a(n-1)/sqrt(1/9)` with `a(0)=0, a(1)=1, a(2)=3, a(3)=10`
-/

namespace A062107.P8362641946791527720
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [0, 1, 3, 10] fun n a =>
  a (n - 1) / Real.sqrt ((1 : ℚ) / 9 : ℝ)

end

end A062107.P8362641946791527720

namespace A062107

/-- `a(n-1)/sqrt(1/9)` -/
def P8362641946791527720.Spec : Prop :=
  ∀ n, P8362641946791527720.a n = (A062107 (n + 1) : ℝ)

end A062107

/-! ## A062107.P6672904441807809127

`round(16*3^(n-3))-∑[A326339(n)]`
-/

namespace A062107.P6672904441807809127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326339 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (16 * (3 : ℚ) ^ ((n : ℤ) - 3 : ℤ)) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062107.P6672904441807809127

namespace A062107

/-- `round(16*3^(n-3))-∑[A326339(n)]` -/
def P6672904441807809127.Spec : Prop :=
  ∀ n, P6672904441807809127.a n = A062107 (n + 1)

end A062107

/-! ## A062107.P4770960297971397976

`A140429(n)+A140429(A289207(n))`
-/

namespace A062107.P4770960297971397976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140429 n + A140429 (A289207 n).toNat

end

end A062107.P4770960297971397976

namespace A062107

/-- `A140429(n)+A140429(A289207(n))` -/
def P4770960297971397976.Spec : Prop :=
  ∀ n, P4770960297971397976.a n = A062107 (n + 1)

end A062107

/-! ## A062107.P8361564840231350928

`Δ[A124302(n)+A124302(A289207(n))]`
-/

namespace A062107.P8361564840231350928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124302 n + A124302 (A289207 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A062107.P8361564840231350928

namespace A062107

/-- `Δ[A124302(n)+A124302(A289207(n))]` -/
def P8361564840231350928.Spec : Prop :=
  ∀ n, P8361564840231350928.a n = A062107 (n + 1)

end A062107

/-! ## A062107.P15871807662355634174

`A083580(n)-A395481(n)`
-/

namespace A062107.P15871807662355634174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083580 n - A395481 n

end

end A062107.P15871807662355634174

namespace A062107

/-- `A083580(n)-A395481(n)` -/
def P15871807662355634174.Spec : Prop :=
  ∀ n, P15871807662355634174.a n = A062107 (n + 1)

end A062107

/-! ## A062107.P14545278030956855440

`lcm(3, a(n-1)+1)-A165020(n+1)` with `a(0)=0, a(1)=1, a(2)=3`
-/

namespace A062107.P14545278030956855440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 3] fun n a =>
  (Int.lcm 3 (a (n - 1) + 1) : ℤ) - A165020 (n + 1)

end

end A062107.P14545278030956855440

namespace A062107

/-- `lcm(3, a(n-1)+1)-A165020(n+1)` -/
def P14545278030956855440.Spec : Prop :=
  ∀ n, P14545278030956855440.a n = A062107 (n + 1)

end A062107

/-! ## A062107.P15525765302613425673

`A062104(2*n²)`
-/

namespace A062107.P15525765302613425673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062104 (2 * n ^ 2)

end

end A062107.P15525765302613425673

namespace A062107

/-- `A062104(2*n²)` -/
def P15525765302613425673.Spec : Prop :=
  ∀ n, P15525765302613425673.a n = A062107 (n + 1)

end A062107

/-!
# A062108: a(n) = floor(n^(3/4)).

The programs for A062108, the canonical program `A062108.P1540959847004753283` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062108 has offset 0).

The definition of A062108 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A062108.P15941220526621386343

`floor(n^(3/4))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A062108.P15941220526621386343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) ^ ((3 : ℚ) / 4 : ℝ)⌋

end

end A062108.P15941220526621386343

namespace A062108

/-- `floor(n^(3/4))` -/
def P15941220526621386343.Spec : Prop :=
  ∀ n, P15941220526621386343.a n = A062108 n

end A062108

/-! ## A062108.P1540959847004753283

`A061054(n)-n`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A062108

/-- `A061054(n)-n` -/
def P1540959847004753283.Spec : Prop :=
  ∀ n, P1540959847004753283.a n = A062108 n

theorem P1540959847004753283.correct : P1540959847004753283.Spec := by
  intro n
  simp only [A062108]

end A062108

/-! ## A062108.P14249654893936065638

`floor(sqrt(sqrt(n^3)))%(n+1)`
-/

namespace A062108.P14249654893936065638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊Real.sqrt (Real.sqrt (n ^ 3 : ℝ))⌋ (n + 1 : ℤ)

end

end A062108.P14249654893936065638

namespace A062108

/-- `floor(sqrt(sqrt(n^3)))%(n+1)` -/
def P14249654893936065638.Spec : Prop :=
  ∀ n, P14249654893936065638.a n = A062108 n

end A062108

/-! ## A062108.P917220906550064323

`∑[char[A134917(n+1)]]`
-/

namespace A062108.P917220906550064323
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134917 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062108.P917220906550064323

namespace A062108

/-- `∑[char[A134917(n+1)]]` -/
def P917220906550064323.Spec : Prop :=
  ∀ n, (P917220906550064323.a n : ℤ) = A062108 n

end A062108

/-! ## A062108.P17969736971811187338

`ceil(sqrt(A000093(n)+1))-1`
-/

namespace A062108.P17969736971811187338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A000093 n + 1 : ℝ)⌉ - 1

end

end A062108.P17969736971811187338

namespace A062108

/-- `ceil(sqrt(A000093(n)+1))-1` -/
def P17969736971811187338.Spec : Prop :=
  ∀ n, P17969736971811187338.a n = A062108 n

end A062108

/-! ## A062108.P15847742114583384618

`comp[A135677(n+1)-1]-n`
-/

namespace A062108.P15847742114583384618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135677 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A062108.P15847742114583384618

namespace A062108

/-- `comp[A135677(n+1)-1]-n` -/
def P15847742114583384618.Spec : Prop :=
  ∀ n, P15847742114583384618.a n = A062108 n

end A062108

/-! ## A062108.P7646476435451303945

`A000196(floor(sqrt(n^3)))`
-/

namespace A062108.P7646476435451303945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (Nat.sqrt (n ^ 3))

end

end A062108.P7646476435451303945

namespace A062108

/-- `A000196(floor(sqrt(n^3)))` -/
def P7646476435451303945.Spec : Prop :=
  ∀ n, P7646476435451303945.a n = A062108 n

end A062108

/-! ## A062108.P15314495781830444827

`A003059(A349993(n)+n)-1`
-/

namespace A062108.P15314495781830444827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003059 (A349993 n + (n : ℤ)).toNat - 1

end

end A062108.P15314495781830444827

namespace A062108

/-- `A003059(A349993(n)+n)-1` -/
def P15314495781830444827.Spec : Prop :=
  ∀ n, P15314495781830444827.a n = A062108 n

end A062108

/-! ## A062108.P860695814917451021

`A000196(A000093(n))+A001489(n)+n`
-/

namespace A062108.P860695814917451021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A000093 n).toNat + (A001489 n + (n : ℤ))

end

end A062108.P860695814917451021

namespace A062108

/-- `A000196(A000093(n))+A001489(n)+n` -/
def P860695814917451021.Spec : Prop :=
  ∀ n, P860695814917451021.a n = A062108 n

end A062108

/-! ## A062108.P17252017970845500274

`A000194(A000093(n))-A023969(A000093(n))`
-/

namespace A062108.P17252017970845500274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A000093 n).toNat - A023969 (A000093 n).toNat

end

end A062108.P17252017970845500274

namespace A062108

/-- `A000194(A000093(n))-A023969(A000093(n))` -/
def P17252017970845500274.Spec : Prop :=
  ∀ n, P17252017970845500274.a n = A062108 n

end A062108

/-!
# A062109: Expansion of g.f. ((1-x)/(1-2*x))^4.

The programs for A062109, the canonical program `A062109.P8341807795069969925` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062109 has offset 0).

The definition of A062109 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-4x+6x^2-4x^3+x^4)/(1-8x+24x^2-32x^3+16x^4))` (program `A062109.P8341807795069969925`, by `A062109.P8341807795069969925.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A062109.P17511835628620694378

`2*a(n-1)+A058396(n)-A058396(n-1)` with `a(0)=1`
-/

namespace A062109.P17511835628620694378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) + A058396 n - A058396 (n - 1)

end

end A062109.P17511835628620694378

namespace A062109

/-- `2*a(n-1)+A058396(n)-A058396(n-1)` -/
def P17511835628620694378.Spec : Prop :=
  ∀ n, P17511835628620694378.a n = A062109 n

end A062109

/-! ## A062109.P8341807795069969925

`ogf((1-4x+6x^2-4x^3+x^4)/(1-8x+24x^2-32x^3+16x^4))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A062109

/-- `ogf((1-4x+6x^2-4x^3+x^4)/(1-8x+24x^2-32x^3+16x^4))` -/
def P8341807795069969925.Spec : Prop :=
  ∀ n, P8341807795069969925.a n = A062109 n

theorem P8341807795069969925.correct : P8341807795069969925.Spec := by
  intro n
  simp only [A062109]

end A062109

/-! ## A062109.P7069219273845693253

`A158920(n+1)+a(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A062109.P7069219273845693253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A158920 (n + 1) + (a (n - 1) + a (n - 1))

end

end A062109.P7069219273845693253

namespace A062109

/-- `A158920(n+1)+a(n-1)+a(n-1)` -/
def P7069219273845693253.Spec : Prop :=
  ∀ n, P7069219273845693253.a n = A062109 n

end A062109

/-! ## A062109.P8065781065063057885

`A058396(n)+A049612(n)`
-/

namespace A062109.P8065781065063057885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058396 n + A049612 n

end

end A062109.P8065781065063057885

namespace A062109

/-- `A058396(n)+A049612(n)` -/
def P8065781065063057885.Spec : Prop :=
  ∀ n, P8065781065063057885.a n = A062109 n

end A062109

/-! ## A062109.P15488757035649186870

`∑{#}[n, A045623(#)*A045623(n-#)]`
-/

namespace A062109.P15488757035649186870
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A045623 k * A045623 (n - k)

end

end A062109.P15488757035649186870

namespace A062109

/-- `∑{#}[n, A045623(#)*A045623(n-#)]` -/
def P15488757035649186870.Spec : Prop :=
  ∀ n, P15488757035649186870.a n = A062109 n

end A062109

/-! ## A062109.P13979590595036206969

`A049611(n+1)+A049612(n)-A049611(n)`
-/

namespace A062109.P13979590595036206969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049611 (n + 1) + (A049612 n - A049611 n)

end

end A062109.P13979590595036206969

namespace A062109

/-- `A049611(n+1)+A049612(n)-A049611(n)` -/
def P13979590595036206969.Spec : Prop :=
  ∀ n, P13979590595036206969.a n = A062109 n

end A062109

/-! ## A062109.P17648546704169865224

`Δ[A049612(n)]`
-/

namespace A062109.P17648546704169865224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049612 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A062109.P17648546704169865224

namespace A062109

/-- `Δ[A049612(n)]` -/
def P17648546704169865224.Spec : Prop :=
  ∀ n, P17648546704169865224.a n = A062109 n

end A062109

/-! ## A062109.P12638110365646570605

`A049612(n+1)-A049612(n)`
-/

namespace A062109.P12638110365646570605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049612 (n + 1) - A049612 n

end

end A062109.P12638110365646570605

namespace A062109

/-- `A049612(n+1)-A049612(n)` -/
def P12638110365646570605.Spec : Prop :=
  ∀ n, P12638110365646570605.a n = A062109 n

end A062109

/-! ## A062109.P16740089721864938780

`A169792(n)-A055589(n)`
-/

namespace A062109.P16740089721864938780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169792 n - A055589 n

end

end A062109.P16740089721864938780

namespace A062109

/-- `A169792(n)-A055589(n)` -/
def P16740089721864938780.Spec : Prop :=
  ∀ n, P16740089721864938780.a n = A062109 n

end A062109

/-! ## A062109.P11481969634975366100

`A055589(n+1)-2*A055589(n)`
-/

namespace A062109.P11481969634975366100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055589 (n + 1) - 2 * A055589 n

end

end A062109.P11481969634975366100

namespace A062109

/-- `A055589(n+1)-2*A055589(n)` -/
def P11481969634975366100.Spec : Prop :=
  ∀ n, P11481969634975366100.a n = A062109 n

end A062109

/-! ## A062109.P12239781989707003510

`∑{#}[n, C(n, #)*A002623(#)]`
-/

namespace A062109.P12239781989707003510
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A002623 k

end

end A062109.P12239781989707003510

namespace A062109

/-- `∑{#}[n, C(n, #)*A002623(#)]` -/
def P12239781989707003510.Spec : Prop :=
  ∀ n, P12239781989707003510.a n = A062109 n

end A062109

/-! ## A062109.P1859752684033975955

`∑{#}[n+1, C(n+1, #)*A006918(#)]`
-/

namespace A062109.P1859752684033975955
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose (n + 1) k : ℤ) * A006918 k

end

end A062109.P1859752684033975955

namespace A062109

/-- `∑{#}[n+1, C(n+1, #)*A006918(#)]` -/
def P1859752684033975955.Spec : Prop :=
  ∀ n, P1859752684033975955.a n = A062109 n

end A062109

/-! ## A062109.P17648492701509487676

`A105306(A055999(n)+10)`
-/

namespace A062109.P17648492701509487676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105306 (A055999 n + 10).toNat

end

end A062109.P17648492701509487676

namespace A062109

/-- `A105306(A055999(n)+10)` -/
def P17648492701509487676.Spec : Prop :=
  ∀ n, P17648492701509487676.a n = A062109 n

end A062109

/-! ## A062109.P4386760614564296154

`A062110(A155212(n)+12)`
-/

namespace A062109.P4386760614564296154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062110 (A155212 n + 12).toNat

end

end A062109.P4386760614564296154

namespace A062109

/-- `A062110(A155212(n)+12)` -/
def P4386760614564296154.Spec : Prop :=
  ∀ n, P4386760614564296154.a n = A062109 n

end A062109

/-! ## A062109.P11338736136140631500

`A105306(A167614(n+2)+1)`
-/

namespace A062109.P11338736136140631500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105306 (A167614 (n + 2) + 1).toNat

end

end A062109.P11338736136140631500

namespace A062109

/-- `A105306(A167614(n+2)+1)` -/
def P11338736136140631500.Spec : Prop :=
  ∀ n, P11338736136140631500.a n = A062109 n

end A062109

/-! ## A062109.P18125283970961246287

`A062110(A167614(n+3)+1)`
-/

namespace A062109.P18125283970961246287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062110 (A167614 (n + 3) + 1).toNat

end

end A062109.P18125283970961246287

namespace A062109

/-- `A062110(A167614(n+3)+1)` -/
def P18125283970961246287.Spec : Prop :=
  ∀ n, P18125283970961246287.a n = A062109 n

end A062109

/-! ## A062109.P13790039998153433419

`A105306(A000096(n+2)+5)`
-/

namespace A062109.P13790039998153433419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105306 (A000096 (n + 2) + 5).toNat

end

end A062109.P13790039998153433419

namespace A062109

/-- `A105306(A000096(n+2)+5)` -/
def P13790039998153433419.Spec : Prop :=
  ∀ n, P13790039998153433419.a n = A062109 n

end A062109

/-! ## A062109.P6334355536410229037

`Δ[A049600(A055999(n+1)+2)]`
-/

namespace A062109.P6334355536410229037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049600 (A055999 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A062109.P6334355536410229037

namespace A062109

/-- `Δ[A049600(A055999(n+1)+2)]` -/
def P6334355536410229037.Spec : Prop :=
  ∀ n, P6334355536410229037.a n = A062109 n

end A062109

/-! ## A062109.P9392757796991034857

`Δ[A049600(A000217(n+4)-4)]`
-/

namespace A062109.P9392757796991034857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049600 (A000217 (n + 4) - 4).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A062109.P9392757796991034857

namespace A062109

/-- `Δ[A049600(A000217(n+4)-4)]` -/
def P9392757796991034857.Spec : Prop :=
  ∀ n, P9392757796991034857.a n = A062109 n

end A062109

/-!
# A062110: A(n,k) is the coefficient of x^k in (1-x)^n/(1-2*x)^n for n, k >= 0; Table A read by descending antidiagonals.

The programs for A062110, the canonical program `A062110.P18137327142033812778` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062110 has offset 0).

The definition of A062110 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A062110.P18137327142033812778

`2*T(n-1,k)+T(n-1,k-1)-T(n-2,k-1)` with `a(0)=1, a(1)=0`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A062110

/-- `2*T(n-1,k)+T(n-1,k-1)-T(n-2,k-1)` -/
def P18137327142033812778.Spec : Prop :=
  ∀ n, P18137327142033812778.a n = A062110 n

theorem P18137327142033812778.correct : P18137327142033812778.Spec := by
  intro n
  simp only [A062110]

end A062110

/-! ## A062110.P4166849294110092441

`A121462(C(row(n)+1, 2)+col(n)+1)*2^(row(n)-2*col(n))`
-/

namespace A062110.P4166849294110092441
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A121462 (Nat.choose (SequenceMachineLib.triRow n + 1) 2 + (SequenceMachineLib.triCol n + 1)) : ℚ) * (2 : ℚ) ^ ((SequenceMachineLib.triRow n : ℤ) - (2 * SequenceMachineLib.triCol n : ℤ) : ℤ)

end

end A062110.P4166849294110092441

namespace A062110

/-- `A121462(C(row(n)+1, 2)+col(n)+1)*2^(row(n)-2*col(n))` -/
def P4166849294110092441.Spec : Prop :=
  ∀ n, P4166849294110092441.a n = (A062110 n : ℚ)

end A062110

/-! ## A062110.P16816194879525427189

`2*A105306(n+1)-A106195(n)`
-/

namespace A062110.P16816194879525427189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A105306 (n + 1) - A106195 n

end

end A062110.P16816194879525427189

namespace A062110

/-- `2*A105306(n+1)-A106195(n)` -/
def P16816194879525427189.Spec : Prop :=
  ∀ n, P16816194879525427189.a n = A062110 n

end A062110

/-! ## A062110.P7758462093903872552

`A121462(n+1)/A208341(n)*A106195(n)`
-/

namespace A062110.P7758462093903872552
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A121462 (n + 1) : ℚ) / (A208341 n : ℚ) * (A106195 n : ℚ)

end

end A062110.P7758462093903872552

namespace A062110

/-- `A121462(n+1)/A208341(n)*A106195(n)` -/
def P7758462093903872552.Spec : Prop :=
  ∀ n, P7758462093903872552.a n = (A062110 n : ℚ)

end A062110

/-! ## A062110.P17416105274383893581

`A055807(n+1)-Δ[A055587(n)]`
-/

namespace A062110.P17416105274383893581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055587 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055807 (n + 1) - (f1 (n + 1) - f1 n)

end

end A062110.P17416105274383893581

namespace A062110

/-- `A055807(n+1)-Δ[A055587(n)]` -/
def P17416105274383893581.Spec : Prop :=
  ∀ n, P17416105274383893581.a n = A062110 n

end A062110

/-! ## A062110.P2170222808228017179

`A105306(n+1)-A049600(A061579(n))`
-/

namespace A062110.P2170222808228017179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105306 (n + 1) - A049600 (A061579 n).toNat

end

end A062110.P2170222808228017179

namespace A062110

/-- `A105306(n+1)-A049600(A061579(n))` -/
def P2170222808228017179.Spec : Prop :=
  ∀ n, P2170222808228017179.a n = A062110 n

end A062110

/-! ## A062110.P2515003367436467718

`A106195(n)-2*A049600(A061579(n))`
-/

namespace A062110.P2515003367436467718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106195 n - 2 * A049600 (A061579 n).toNat

end

end A062110.P2515003367436467718

namespace A062110

/-- `A106195(n)-2*A049600(A061579(n))` -/
def P2515003367436467718.Spec : Prop :=
  ∀ n, P2515003367436467718.a n = A062110 n

end A062110

/-! ## A062110.P9061073795546695081

`2*A160232(A038722(n+1))-A106195(n)`
-/

namespace A062110.P9061073795546695081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A160232 (A038722 (n + 1)).toNat - A106195 n

end

end A062110.P9061073795546695081

namespace A062110

/-- `2*A160232(A038722(n+1))-A106195(n)` -/
def P9061073795546695081.Spec : Prop :=
  ∀ n, P9061073795546695081.a n = A062110 n

end A062110

/-! ## A062110.P7380563568099090458

`A105306(n+1)-A049600(A038722(n+1)-1)`
-/

namespace A062110.P7380563568099090458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105306 (n + 1) - A049600 (A038722 (n + 1) - 1).toNat

end

end A062110.P7380563568099090458

namespace A062110

/-- `A105306(n+1)-A049600(A038722(n+1)-1)` -/
def P7380563568099090458.Spec : Prop :=
  ∀ n, P7380563568099090458.a n = A062110 n

end A062110

/-! ## A062110.P5669410404936843837

`A160232(A038722(n+1))-A049600(A061579(n))`
-/

namespace A062110.P5669410404936843837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160232 (A038722 (n + 1)).toNat - A049600 (A061579 n).toNat

end

end A062110.P5669410404936843837

namespace A062110

/-- `A160232(A038722(n+1))-A049600(A061579(n))` -/
def P5669410404936843837.Spec : Prop :=
  ∀ n, P5669410404936843837.a n = A062110 n

end A062110

/-! ## A062110.P18426016870523935741

`A105306(n+1)-A049600(A038722(n+2))`
-/

namespace A062110.P18426016870523935741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105306 (n + 1) - A049600 (A038722 (n + 2)).toNat

end

end A062110.P18426016870523935741

namespace A062110

/-- `A105306(n+1)-A049600(A038722(n+2))` -/
def P18426016870523935741.Spec : Prop :=
  ∀ n, P18426016870523935741.a n = A062110 n

end A062110

/-! ## A062110.P9911287145977901197

`A277919(n)-A055807(A014132(n+1))`
-/

namespace A062110.P9911287145977901197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277919 n - A055807 (A014132 (n + 1)).toNat

end

end A062110.P9911287145977901197

namespace A062110

/-- `A277919(n)-A055807(A014132(n+1))` -/
def P9911287145977901197.Spec : Prop :=
  ∀ n, P9911287145977901197.a n = A062110 n

end A062110

/-! ## A062110.P2992391383736413904

`A055818(n)-A055807(n)%A000711(n)`
-/

namespace A062110.P2992391383736413904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055818 n - Int.tmod (A055807 n) (A000711 n)

end

end A062110.P2992391383736413904

namespace A062110

/-- `A055818(n)-A055807(n)%A000711(n)` -/
def P2992391383736413904.Spec : Prop :=
  ∀ n, P2992391383736413904.a n = A062110 n

end A062110

/-!
# A062111: Upper-right triangle resulting from binomial transform calculation for nonnegative integers.

The programs for A062111, the canonical program `A062111.P4556083306612583342` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062111 has offset 0).

The definition of A062111 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A062111.P4556083306612583342

`2^(row(n)-col(n)-1)*(row(n)+col(n))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A062111

/-- `2^(row(n)-col(n)-1)*(row(n)+col(n))` -/
def P4556083306612583342.Spec : Prop :=
  ∀ n, P4556083306612583342.a n = (A062111 n : ℚ)

end A062111

/-! ## A062111.P14165761816164245655

`A152920(C(row(n)+1, 2)+row(n)-col(n))`
-/

namespace A062111.P14165761816164245655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152920 ((Nat.choose (SequenceMachineLib.triRow n + 1) 2 : ℤ) + ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ))).toNat

end

end A062111.P14165761816164245655

namespace A062111

/-- `A152920(C(row(n)+1, 2)+row(n)-col(n))` -/
def P14165761816164245655.Spec : Prop :=
  ∀ n, P14165761816164245655.a n = A062111 n

end A062111

/-! ## A062111.P15061195358837820577

`2^(row(n)-(col(n)+1))*(row(n)+col(n))`
-/

namespace A062111.P15061195358837820577
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n + 1 : ℤ) : ℤ) * (SequenceMachineLib.triRow n + SequenceMachineLib.triCol n : ℚ)

end

end A062111.P15061195358837820577

namespace A062111

/-- `2^(row(n)-(col(n)+1))*(row(n)+col(n))` -/
def P15061195358837820577.Spec : Prop :=
  ∀ n, P15061195358837820577.a n = (A062111 n : ℚ)

end A062111

/-! ## A062111.P10030668056322949562

`A152920(row(n)*(row(n)+3)/2-col(n))`
-/

namespace A062111.P10030668056322949562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152920 (SequenceMachineLib.roundAway ((SequenceMachineLib.triRow n * (SequenceMachineLib.triRow n + 3) : ℚ) / 2 - (SequenceMachineLib.triCol n : ℚ))).toNat

end

end A062111.P10030668056322949562

namespace A062111

/-- `A152920(row(n)*(row(n)+3)/2-col(n))` -/
def P10030668056322949562.Spec : Prop :=
  ∀ n, P10030668056322949562.a n = A062111 n

end A062111

/-! ## A062111.P3309500476854930592

`A053219(n+1)-2^(C(comp[∑[n]]-n, 2)-n)/2`
-/

namespace A062111.P3309500476854930592
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053219 (n + 1) : ℚ) - (2 : ℚ) ^ ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ) : ℤ) / 2

end

end A062111.P3309500476854930592

namespace A062111

/-- `A053219(n+1)-2^(C(comp[∑[n]]-n, 2)-n)/2` -/
def P3309500476854930592.Spec : Prop :=
  ∀ n, P3309500476854930592.a n = (A062111 n : ℚ)

end A062111

/-! ## A062111.P12579766182382385093

`A152920(A061579(n))`
-/

namespace A062111.P12579766182382385093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152920 (A061579 n).toNat

end

end A062111.P12579766182382385093

namespace A062111

/-- `A152920(A061579(n))` -/
def P12579766182382385093.Spec : Prop :=
  ∀ n, P12579766182382385093.a n = A062111 n

end A062111

/-! ## A062111.P12216602087440148082

`A002262(n)+A047858(n)-1`
-/

namespace A062111.P12216602087440148082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n + (A047858 n - 1)

end

end A062111.P12216602087440148082

namespace A062111

/-- `A002262(n)+A047858(n)-1` -/
def P12216602087440148082.Spec : Prop :=
  ∀ n, P12216602087440148082.a n = A062111 n

end A062111

/-! ## A062111.P38122803784425876

`A053219(n+1)-A130321(n)`
-/

namespace A062111.P38122803784425876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053219 (n + 1) - A130321 n

end

end A062111.P38122803784425876

namespace A062111

/-- `A053219(n+1)-A130321(n)` -/
def P38122803784425876.Spec : Prop :=
  ∀ n, P38122803784425876.a n = A062111 n

end A062111

/-! ## A062111.P7136194242541503543

`A327916(n)-A053219(n+1)`
-/

namespace A062111.P7136194242541503543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327916 n - A053219 (n + 1)

end

end A062111.P7136194242541503543

namespace A062111

/-- `A327916(n)-A053219(n+1)` -/
def P7136194242541503543.Spec : Prop :=
  ∀ n, P7136194242541503543.a n = A062111 n

end A062111

/-! ## A062111.P6129611904409318288

`A400451(n+1)/A059268(n)`
-/

namespace A062111.P6129611904409318288
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A400451 (n + 1) : ℚ) / (A059268 n : ℚ)

end

end A062111.P6129611904409318288

namespace A062111

/-- `A400451(n+1)/A059268(n)` -/
def P6129611904409318288.Spec : Prop :=
  ∀ n, P6129611904409318288.a n = (A062111 n : ℚ)

end A062111

/-! ## A062111.P12790600241318066450

`A051162(n)/2*A130321(n)`
-/

namespace A062111.P12790600241318066450
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051162 n : ℚ) / 2 * (A130321 n : ℚ)

end

end A062111.P12790600241318066450

namespace A062111

/-- `A051162(n)/2*A130321(n)` -/
def P12790600241318066450.Spec : Prop :=
  ∀ n, P12790600241318066450.a n = (A062111 n : ℚ)

end A062111

/-! ## A062111.P17296022681312968377

`A053219(n+1)-sqrt(A262616(n))`
-/

namespace A062111.P17296022681312968377
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A053219 (n + 1) : ℝ) - Real.sqrt (A262616 n : ℝ)

end

end A062111.P17296022681312968377

namespace A062111

/-- `A053219(n+1)-sqrt(A262616(n))` -/
def P17296022681312968377.Spec : Prop :=
  ∀ n, P17296022681312968377.a n = (A062111 n : ℝ)

end A062111

/-! ## A062111.P7147497521445848615

`floor(A130321(n)/2*A134478(n))`
-/

namespace A062111.P7147497521445848615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A130321 n : ℚ) / 2 * (A134478 n : ℚ)⌋

end

end A062111.P7147497521445848615

namespace A062111

/-- `floor(A130321(n)/2*A134478(n))` -/
def P7147497521445848615.Spec : Prop :=
  ∀ n, P7147497521445848615.a n = A062111 n

end A062111

/-! ## A062111.P3400201456888826147

`A002260(n+1)+A047858(n)-2`
-/

namespace A062111.P3400201456888826147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) + (A047858 n - 2)

end

end A062111.P3400201456888826147

namespace A062111

/-- `A002260(n+1)+A047858(n)-2` -/
def P3400201456888826147.Spec : Prop :=
  ∀ n, P3400201456888826147.a n = A062111 n

end A062111

/-! ## A062111.P8746693339692121189

`A053219(n+1)-A090988(n+1)/2`
-/

namespace A062111.P8746693339692121189
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053219 (n + 1) : ℚ) - (A090988 (n + 1) : ℚ) / 2

end

end A062111.P8746693339692121189

namespace A062111

/-- `A053219(n+1)-A090988(n+1)/2` -/
def P8746693339692121189.Spec : Prop :=
  ∀ n, P8746693339692121189.a n = (A062111 n : ℚ)

end A062111

/-! ## A062111.P16839453906515591036

`A053219(n+1)-A000010(A090988(n+1))`
-/

namespace A062111.P16839453906515591036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053219 (n + 1) - A000010 (A090988 (n + 1)).toNat

end

end A062111.P16839453906515591036

namespace A062111

/-- `A053219(n+1)-A000010(A090988(n+1))` -/
def P16839453906515591036.Spec : Prop :=
  ∀ n, P16839453906515591036.a n = A062111 n

end A062111

/-!
# A062112: a(0)=0; a(1)=1; a(n) = a(n-1) + (3 + (-1)^n)*a(n-2)/2.

The programs for A062112, the canonical program `A062112.P3126490636662587271` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062112 has offset 0).

The definition of A062112 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A062112.P15632868732753936816

`ogf((x+x^2-2x^3)/(1-4x^2+2x^4))`
-/

namespace A062112.P15632868732753936816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 1, -2] [1, 0, -4, 0, 2] n

end

end A062112.P15632868732753936816

namespace A062112

/-- `ogf((x+x^2-2x^3)/(1-4x^2+2x^4))` -/
def P15632868732753936816.Spec : Prop :=
  ∀ n, P15632868732753936816.a n = A062112 n

end A062112

/-! ## A062112.P13783841863382774923

`a(n-1)+(3+(-1)^n)*a(n-2)/2` with `a(0)=0, a(1)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A062112.P13783841863382774923
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) + (3 + (-1) ^ n : ℚ) * a (n - 2) / 2

end

end A062112.P13783841863382774923

namespace A062112

/-- `a(n-1)+(3+(-1)^n)*a(n-2)/2` -/
def P13783841863382774923.Spec : Prop :=
  ∀ n, P13783841863382774923.a n = (A062112 n : ℚ)

end A062112

/-! ## A062112.P3126490636662587271

`4*a(n-2)-2*a(n-4)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=2`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A062112

/-- `4*a(n-2)-2*a(n-4)` -/
def P3126490636662587271.Spec : Prop :=
  ∀ n, P3126490636662587271.a n = A062112 n

theorem P3126490636662587271.correct : P3126490636662587271.Spec := by
  intro n
  simp only [A062112]

end A062112

/-! ## A062112.P6431530576033357022

`a(n-1)+gcd(2, n)*a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A062112.P6431530576033357022
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) + Nat.gcd 2 n * a (n - 2)

end

end A062112.P6431530576033357022

namespace A062112

/-- `a(n-1)+gcd(2, n)*a(n-2)` -/
def P6431530576033357022.Spec : Prop :=
  ∀ n, (P6431530576033357022.a n : ℤ) = A062112 n

end A062112

/-! ## A062112.P10271385019978106374

`A121720(n)+a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A062112.P10271385019978106374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A121720 n + a (n - 2)

end

end A062112.P10271385019978106374

namespace A062112

/-- `A121720(n)+a(n-2)` -/
def P10271385019978106374.Spec : Prop :=
  ∀ n, P10271385019978106374.a n = A062112 n

end A062112

/-! ## A062112.P12913000354848013530

`A030436(n)-a(n-1)` with `a(0)=0`
-/

namespace A062112.P12913000354848013530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A030436 n - a (n - 1)

end

end A062112.P12913000354848013530

namespace A062112

/-- `A030436(n)-a(n-1)` -/
def P12913000354848013530.Spec : Prop :=
  ∀ n, P12913000354848013530.a n = A062112 n

end A062112

/-! ## A062112.P5060771296710871701

`A030435(n)/2-a(n-1)` with `a(0)=0`
-/

namespace A062112.P5060771296710871701
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  (A030435 n : ℚ) / 2 - a (n - 1)

end

end A062112.P5060771296710871701

namespace A062112

/-- `A030435(n)/2-a(n-1)` -/
def P5060771296710871701.Spec : Prop :=
  ∀ n, P5060771296710871701.a n = (A062112 n : ℚ)

end A062112

/-! ## A062112.P9626246843215346017

`A001882(n+2)-A007068(n+2)`
-/

namespace A062112.P9626246843215346017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001882 (n + 2) - A007068 (n + 2)

end

end A062112.P9626246843215346017

namespace A062112

/-- `A001882(n+2)-A007068(n+2)` -/
def P9626246843215346017.Spec : Prop :=
  ∀ n, P9626246843215346017.a n = A062112 n

end A062112

/-! ## A062112.P15084971493219600013

`A001882(n+2)-A121720(n+4)`
-/

namespace A062112.P15084971493219600013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001882 (n + 2) - A121720 (n + 4)

end

end A062112.P15084971493219600013

namespace A062112

/-- `A001882(n+2)-A121720(n+4)` -/
def P15084971493219600013.Spec : Prop :=
  ∀ n, P15084971493219600013.a n = A062112 n

end A062112

/-! ## A062112.P12579330502661557456

`A062113(n+1)-2*A121720(n+2)`
-/

namespace A062112.P12579330502661557456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062113 (n + 1) - 2 * A121720 (n + 2)

end

end A062112.P12579330502661557456

namespace A062112

/-- `A062113(n+1)-2*A121720(n+2)` -/
def P12579330502661557456.Spec : Prop :=
  ∀ n, P12579330502661557456.a n = A062112 n

end A062112

/-! ## A062112.P69210511099938687

`A228405(A007590(n)+n)`
-/

namespace A062112.P69210511099938687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228405 (A007590 n + (n : ℤ)).toNat

end

end A062112.P69210511099938687

namespace A062112

/-- `A228405(A007590(n)+n)` -/
def P69210511099938687.Spec : Prop :=
  ∀ n, P69210511099938687.a n = A062112 n

end A062112

/-! ## A062112.P6291285158814598102

`A228405(∑[A109613(n)]-1)`
-/

namespace A062112.P6291285158814598102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228405 (∑ j ∈ Finset.range (n + 1), f1 j - 1).toNat

end

end A062112.P6291285158814598102

namespace A062112

/-- `A228405(∑[A109613(n)]-1)` -/
def P6291285158814598102.Spec : Prop :=
  ∀ n, P6291285158814598102.a n = A062112 n

end A062112

/-! ## A062112.P14329927150918079041

`A228405(Δ[A131941(n)]-1)`
-/

namespace A062112.P14329927150918079041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131941 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228405 (f1 (n + 1) - f1 n - 1).toNat

end

end A062112.P14329927150918079041

namespace A062112

/-- `A228405(Δ[A131941(n)]-1)` -/
def P14329927150918079041.Spec : Prop :=
  ∀ n, P14329927150918079041.a n = A062112 n

end A062112

/-! ## A062112.P13895140134586990896

`A228405(A000982(n+1)-1)`
-/

namespace A062112.P13895140134586990896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228405 (A000982 (n + 1) - 1).toNat

end

end A062112.P13895140134586990896

namespace A062112

/-- `A228405(A000982(n+1)-1)` -/
def P13895140134586990896.Spec : Prop :=
  ∀ n, P13895140134586990896.a n = A062112 n

end A062112

/-! ## A062112.P2207535137992256300

`A228405(∑[A004524(2*n)]+n)`
-/

namespace A062112.P2207535137992256300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228405 (∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)).toNat

end

end A062112.P2207535137992256300

namespace A062112

/-- `A228405(∑[A004524(2*n)]+n)` -/
def P2207535137992256300.Spec : Prop :=
  ∀ n, P2207535137992256300.a n = A062112 n

end A062112

/-! ## A062112.P11487455689872582919

`A228405(A052928(A000982(n))+n)`
-/

namespace A062112.P11487455689872582919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228405 (A052928 (A000982 n).toNat + (n : ℤ)).toNat

end

end A062112.P11487455689872582919

namespace A062112

/-- `A228405(A052928(A000982(n))+n)` -/
def P11487455689872582919.Spec : Prop :=
  ∀ n, P11487455689872582919.a n = A062112 n

end A062112

/-! ## A062112.P12613571420325900794

`A228405(A004524(n²)+n)`
-/

namespace A062112.P12613571420325900794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228405 (A004524 (n ^ 2) + (n : ℤ)).toNat

end

end A062112.P12613571420325900794

namespace A062112

/-- `A228405(A004524(n²)+n)` -/
def P12613571420325900794.Spec : Prop :=
  ∀ n, P12613571420325900794.a n = A062112 n

end A062112

/-! ## A062112.P1100384526281156619

`A228405(A004526(n²)+n)`
-/

namespace A062112.P1100384526281156619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228405 (A004526 (n ^ 2) + (n : ℤ)).toNat

end

end A062112.P1100384526281156619

namespace A062112

/-- `A228405(A004526(n²)+n)` -/
def P1100384526281156619.Spec : Prop :=
  ∀ n, P1100384526281156619.a n = A062112 n

end A062112

/-! ## A062112.P4440739715299740225

`A228405(A004526(n*(n+2)))`
-/

namespace A062112.P4440739715299740225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228405 (A004526 (n * (n + 2))).toNat

end

end A062112.P4440739715299740225

namespace A062112

/-- `A228405(A004526(n*(n+2)))` -/
def P4440739715299740225.Spec : Prop :=
  ∀ n, P4440739715299740225.a n = A062112 n

end A062112

/-!
# A062113: a(0)=1; a(1)=2; a(n) = a(n-1) + a(n-2)*(3 - (-1)^n)/2.

The programs for A062113, the canonical program `A062113.P10854462351995447684` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062113 has offset 0).

The definition of A062113 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A062113.P8400911270548388764

`ogf((1+2x-x^2-x^3)/(1-4x^2+2x^4))`
-/

namespace A062113.P8400911270548388764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, -1, -1] [1, 0, -4, 0, 2] n

end

end A062113.P8400911270548388764

namespace A062113

/-- `ogf((1+2x-x^2-x^3)/(1-4x^2+2x^4))` -/
def P8400911270548388764.Spec : Prop :=
  ∀ n, P8400911270548388764.a n = A062113 n

end A062113

/-! ## A062113.P10854462351995447684

`4*a(n-2)-2*a(n-4)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=7`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A062113

/-- `4*a(n-2)-2*a(n-4)` -/
def P10854462351995447684.Spec : Prop :=
  ∀ n, P10854462351995447684.a n = A062113 n

theorem P10854462351995447684.correct : P10854462351995447684.Spec := by
  intro n
  simp only [A062113]

end A062113

/-! ## A062113.P5980859497308121290

`a(n-1)+a(n-2)*(3-(-1)^n)/2` with `a(0)=1, a(1)=2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A062113.P5980859497308121290
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) + a (n - 2) * (3 - (-1) ^ n : ℚ) / 2

end

end A062113.P5980859497308121290

namespace A062113

/-- `a(n-1)+a(n-2)*(3-(-1)^n)/2` -/
def P5980859497308121290.Spec : Prop :=
  ∀ n, P5980859497308121290.a n = (A062113 n : ℚ)

end A062113

/-! ## A062113.P13916388205520966121

`a(n-1)+a(n-2)*A000034(n)` with `a(0)=1, a(1)=2`
-/

namespace A062113.P13916388205520966121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) + a (n - 2) * A000034 n

end

end A062113.P13916388205520966121

namespace A062113

/-- `a(n-1)+a(n-2)*A000034(n)` -/
def P13916388205520966121.Spec : Prop :=
  ∀ n, P13916388205520966121.a n = A062113 n

end A062113

/-! ## A062113.P15208740360950184497

`a(n-1)+a(n-2)*a(n%2)` with `a(0)=1, a(1)=2`
-/

namespace A062113.P15208740360950184497
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) + a (n - 2) * a (n % 2)

end

end A062113.P15208740360950184497

namespace A062113

/-- `a(n-1)+a(n-2)*a(n%2)` -/
def P15208740360950184497.Spec : Prop :=
  ∀ n, (P15208740360950184497.a n : ℤ) = A062113 n

end A062113

/-! ## A062113.P14853323004704400048

`a(n-2)+a(n-2)+a(n-2)+a(n-1)%a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A062113.P14853323004704400048
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 2) + (a (n - 2) + (a (n - 2) + a (n - 1) % a (n - 2)))

end

end A062113.P14853323004704400048

namespace A062113

/-- `a(n-2)+a(n-2)+a(n-2)+a(n-1)%a(n-2)` -/
def P14853323004704400048.Spec : Prop :=
  ∀ n, (P14853323004704400048.a n : ℤ) = A062113 n

end A062113

/-! ## A062113.P12201619083112114957

`A062112(n+3)/2`
-/

namespace A062113.P12201619083112114957
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062112 (n + 3) : ℚ) / 2

end

end A062113.P12201619083112114957

namespace A062113

/-- `A062112(n+3)/2` -/
def P12201619083112114957.Spec : Prop :=
  ∀ n, P12201619083112114957.a n = (A062113 n : ℚ)

end A062113

/-! ## A062113.P1600760578850606165

`A121720(n+1)+A062112(n+1)`
-/

namespace A062113.P1600760578850606165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121720 (n + 1) + A062112 (n + 1)

end

end A062113.P1600760578850606165

namespace A062113

/-- `A121720(n+1)+A062112(n+1)` -/
def P1600760578850606165.Spec : Prop :=
  ∀ n, P1600760578850606165.a n = A062113 n

end A062113

/-! ## A062113.P15715502608004242240

`A001882(n+1)-A062112(n+1)`
-/

namespace A062113.P15715502608004242240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001882 (n + 1) - A062112 (n + 1)

end

end A062113.P15715502608004242240

namespace A062113

/-- `A001882(n+1)-A062112(n+1)` -/
def P15715502608004242240.Spec : Prop :=
  ∀ n, P15715502608004242240.a n = A062113 n

end A062113

/-! ## A062113.P14598029354168494219

`A007068(n+1)-A121720(n+1)`
-/

namespace A062113.P14598029354168494219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007068 (n + 1) - A121720 (n + 1)

end

end A062113.P14598029354168494219

namespace A062113

/-- `A007068(n+1)-A121720(n+1)` -/
def P14598029354168494219.Spec : Prop :=
  ∀ n, P14598029354168494219.a n = A062113 n

end A062113

/-! ## A062113.P16408046831996340130

`A121720(n+3)-A121720(n+1)`
-/

namespace A062113.P16408046831996340130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121720 (n + 3) - A121720 (n + 1)

end

end A062113.P16408046831996340130

namespace A062113

/-- `A121720(n+3)-A121720(n+1)` -/
def P16408046831996340130.Spec : Prop :=
  ∀ n, P16408046831996340130.a n = A062113 n

end A062113

/-! ## A062113.P11685096490310919913

`(A121720(n+1)+A001882(n+1))/2`
-/

namespace A062113.P11685096490310919913
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A121720 (n + 1) + A001882 (n + 1) : ℚ) / 2

end

end A062113.P11685096490310919913

namespace A062113

/-- `(A121720(n+1)+A001882(n+1))/2` -/
def P11685096490310919913.Spec : Prop :=
  ∀ n, P11685096490310919913.a n = (A062113 n : ℚ)

end A062113

/-! ## A062113.P17599311217651921934

`Δ[A217730(n)]`
-/

namespace A062113.P17599311217651921934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217730 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A062113.P17599311217651921934

namespace A062113

/-- `Δ[A217730(n)]` -/
def P17599311217651921934.Spec : Prop :=
  ∀ n, P17599311217651921934.a n = A062113 n

end A062113

/-! ## A062113.P17814387799888254472

`∪[A003480(n), A007052(n)]`
-/

namespace A062113.P17814387799888254472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003480 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007052 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A062113.P17814387799888254472

namespace A062113

/-- `∪[A003480(n), A007052(n)]` -/
def P17814387799888254472.Spec : Prop :=
  ∀ n, (P17814387799888254472.a n : ℤ) = A062113 n

end A062113

/-! ## A062113.P1946077977627570973

`∪[A007052(n), A020727(n)]`
-/

namespace A062113.P1946077977627570973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007052 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020727 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A062113.P1946077977627570973

namespace A062113

/-- `∪[A007052(n), A020727(n)]` -/
def P1946077977627570973.Spec : Prop :=
  ∀ n, (P1946077977627570973.a n : ℤ) = A062113 n

end A062113

/-! ## A062113.P8052371997134200942

`∪[A003480(n), A048580(n)]`
-/

namespace A062113.P8052371997134200942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003480 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048580 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A062113.P8052371997134200942

namespace A062113

/-- `∪[A003480(n), A048580(n)]` -/
def P8052371997134200942.Spec : Prop :=
  ∀ n, (P8052371997134200942.a n : ℤ) = A062113 n

end A062113

/-! ## A062113.P15457019520945551282

`A217730(n+1)-A217730(n)`
-/

namespace A062113.P15457019520945551282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217730 (n + 1) - A217730 n

end

end A062113.P15457019520945551282

namespace A062113

/-- `A217730(n+1)-A217730(n)` -/
def P15457019520945551282.Spec : Prop :=
  ∀ n, P15457019520945551282.a n = A062113 n

end A062113

/-! ## A062113.P16085922307351152616

`Δ[A030436(n)+∑[A062112(n)]]`
-/

namespace A062113.P16085922307351152616
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062112 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030436 n + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A062113.P16085922307351152616

namespace A062113

/-- `Δ[A030436(n)+∑[A062112(n)]]` -/
def P16085922307351152616.Spec : Prop :=
  ∀ n, P16085922307351152616.a n = A062113 n

end A062113

/-! ## A062113.P7920969741333794737

`∪[A007052(n), A007070(n)+A007052(n)]`
-/

namespace A062113.P7920969741333794737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007052 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007070 n + A007052 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A062113.P7920969741333794737

namespace A062113

/-- `∪[A007052(n), A007070(n)+A007052(n)]` -/
def P7920969741333794737.Spec : Prop :=
  ∀ n, (P7920969741333794737.a n : ℤ) = A062113 n

end A062113

/-! ## A062113.P17381850198459619877

`Δ[A068912(n+1)/2]`
-/

namespace A062113.P17381850198459619877
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A068912 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A062113.P17381850198459619877

namespace A062113

/-- `Δ[A068912(n+1)/2]` -/
def P17381850198459619877.Spec : Prop :=
  ∀ n, P17381850198459619877.a n = (A062113 n : ℚ)

end A062113

/-!
# A062114: a(n) = 2*Fibonacci(n) - (1 - (-1)^n)/2.

The programs for A062114, the canonical program `A062114.P6297935527570528798` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062114 has offset 0).

The definition of A062114 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A062114.P4760102650167511042

`ogf((x+x^2-x^3)/(1-x-2x^2+x^3+x^4))`
-/

namespace A062114.P4760102650167511042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 1, -1] [1, -1, -2, 1, 1] n

end

end A062114.P4760102650167511042

namespace A062114

/-- `ogf((x+x^2-x^3)/(1-x-2x^2+x^3+x^4))` -/
def P4760102650167511042.Spec : Prop :=
  ∀ n, P4760102650167511042.a n = A062114 n

end A062114

/-! ## A062114.P706616101402364911

`a(n-1)+a(n-2)+(1+(-1)^n)/2` with `a(0)=0, a(1)=1`
-/

namespace A062114.P706616101402364911
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) + a (n - 2) + (1 + (-1) ^ n : ℚ) / 2

end

end A062114.P706616101402364911

namespace A062114

/-- `a(n-1)+a(n-2)+(1+(-1)^n)/2` -/
def P706616101402364911.Spec : Prop :=
  ∀ n, P706616101402364911.a n = (A062114 n : ℚ)

end A062114

/-! ## A062114.P6297935527570528798

`a(n-1)+2*a(n-2)-a(n-3)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A062114

/-- `a(n-1)+2*a(n-2)-a(n-3)-a(n-4)` -/
def P6297935527570528798.Spec : Prop :=
  ∀ n, P6297935527570528798.a n = A062114 n

theorem P6297935527570528798.correct : P6297935527570528798.Spec := by
  intro n
  simp only [A062114]

end A062114

/-! ## A062114.P16783179991055681199

`2*A000045(n)-(1-(-1)^n)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A062114.P16783179991055681199
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A000045 n : ℚ) - (1 - (-1) ^ n : ℚ) / 2

end

end A062114.P16783179991055681199

namespace A062114

/-- `2*A000045(n)-(1-(-1)^n)/2` -/
def P16783179991055681199.Spec : Prop :=
  ∀ n, P16783179991055681199.a n = (A062114 n : ℚ)

end A062114

/-! ## A062114.P2795210948932318297

`a(n-1)+or(1, a(n-2))` with `a(0)=0, a(1)=1`
-/

namespace A062114.P2795210948932318297
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) + Nat.lor 1 (a (n - 2))

end

end A062114.P2795210948932318297

namespace A062114

/-- `a(n-1)+or(1, a(n-2))` -/
def P2795210948932318297.Spec : Prop :=
  ∀ n, (P2795210948932318297.a n : ℤ) = A062114 n

end A062114

/-! ## A062114.P17349045038518982985

`2*a(n-2)+a(n-3)+1` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A062114.P17349045038518982985
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  2 * a (n - 2) + (a (n - 3) + 1)

end

end A062114.P17349045038518982985

namespace A062114

/-- `2*a(n-2)+a(n-3)+1` -/
def P17349045038518982985.Spec : Prop :=
  ∀ n, (P17349045038518982985.a n : ℤ) = A062114 n

end A062114

/-! ## A062114.P11847344862438569425

`a(n-1)+∑[(-1)^n]+a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A062114.P11847344862438569425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) + (∑ j ∈ Finset.range (n + 1), f1 j + a (n - 2))

end

end A062114.P11847344862438569425

namespace A062114

/-- `a(n-1)+∑[(-1)^n]+a(n-2)` -/
def P11847344862438569425.Spec : Prop :=
  ∀ n, P11847344862438569425.a n = A062114 n

end A062114

/-! ## A062114.P14877187633491127791

`(n+1)%2+a(n-1)+a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A062114.P14877187633491127791
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  (n + 1) % 2 + (a (n - 1) + a (n - 2))

end

end A062114.P14877187633491127791

namespace A062114

/-- `(n+1)%2+a(n-1)+a(n-2)` -/
def P14877187633491127791.Spec : Prop :=
  ∀ n, (P14877187633491127791.a n : ℤ) = A062114 n

end A062114

/-! ## A062114.P5142773681321485270

`gcd(2, n)-1+a(n-1)+a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A062114.P5142773681321485270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  (Nat.gcd 2 n : ℤ) - 1 + (a (n - 1) + a (n - 2))

end

end A062114.P5142773681321485270

namespace A062114

/-- `gcd(2, n)-1+a(n-1)+a(n-2)` -/
def P5142773681321485270.Spec : Prop :=
  ∀ n, P5142773681321485270.a n = A062114 n

end A062114

/-! ## A062114.P15454277976559458351

`1-(n%2-a(n-1)-a(n-2))` with `a(0)=0, a(1)=1`
-/

namespace A062114.P15454277976559458351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  1 - (((n % 2 : ℕ) : ℤ) - a (n - 1) - a (n - 2))

end

end A062114.P15454277976559458351

namespace A062114

/-- `1-(n%2-a(n-1)-a(n-2))` -/
def P15454277976559458351.Spec : Prop :=
  ∀ n, P15454277976559458351.a n = A062114 n

end A062114

/-! ## A062114.P2810900599345639501

`and(1, n+1)+a(n-1)+a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A062114.P2810900599345639501
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  Nat.land 1 (n + 1) + (a (n - 1) + a (n - 2))

end

end A062114.P2810900599345639501

namespace A062114

/-- `and(1, n+1)+a(n-1)+a(n-2)` -/
def P2810900599345639501.Spec : Prop :=
  ∀ n, (P2810900599345639501.a n : ℤ) = A062114 n

end A062114

/-! ## A062114.P2711001305467656852

`a(n-2)+1+a(n-2)+a(n-3)` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A062114.P2711001305467656852
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  a (n - 2) + 1 + (a (n - 2) + a (n - 3))

end

end A062114.P2711001305467656852

namespace A062114

/-- `a(n-2)+1+a(n-2)+a(n-3)` -/
def P2711001305467656852.Spec : Prop :=
  ∀ n, (P2711001305467656852.a n : ℤ) = A062114 n

end A062114

/-! ## A062114.P13316892590596718680

`A166012(n)-1`
-/

namespace A062114.P13316892590596718680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166012 n - 1

end

end A062114.P13316892590596718680

namespace A062114

/-- `A166012(n)-1` -/
def P13316892590596718680.Spec : Prop :=
  ∀ n, P13316892590596718680.a n = A062114 n

end A062114

/-! ## A062114.P9822015514728283563

`A006355(n+1)-and(1, n)`
-/

namespace A062114.P9822015514728283563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006355 (n + 1) - (Nat.land 1 n : ℤ)

end

end A062114.P9822015514728283563

namespace A062114

/-- `A006355(n+1)-and(1, n)` -/
def P9822015514728283563.Spec : Prop :=
  ∀ n, P9822015514728283563.a n = A062114 n

end A062114

/-! ## A062114.P1414801137729208826

`a(n-2)+2*A000045(n-1)` with `a(0)=0, a(1)=1`
-/

namespace A062114.P1414801137729208826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 2) + 2 * A000045 (n - 1)

end

end A062114.P1414801137729208826

namespace A062114

/-- `a(n-2)+2*A000045(n-1)` -/
def P1414801137729208826.Spec : Prop :=
  ∀ n, P1414801137729208826.a n = A062114 n

end A062114

/-! ## A062114.P14730099792900136378

`floor(A000045(n+1)+a(n-2)/2)` with `a(0)=0, a(1)=1`
-/

namespace A062114.P14730099792900136378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  ⌊(A000045 (n + 1) : ℚ) + (a (n - 2) : ℚ) / 2⌋

end

end A062114.P14730099792900136378

namespace A062114

/-- `floor(A000045(n+1)+a(n-2)/2)` -/
def P14730099792900136378.Spec : Prop :=
  ∀ n, P14730099792900136378.a n = A062114 n

end A062114

/-! ## A062114.P6712863090037016636

`A001588(n)-A000034(n)`
-/

namespace A062114.P6712863090037016636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001588 n - A000034 n

end

end A062114.P6712863090037016636

namespace A062114

/-- `A001588(n)-A000034(n)` -/
def P6712863090037016636.Spec : Prop :=
  ∀ n, P6712863090037016636.a n = A062114 n

end A062114

/-! ## A062114.P322676325907852067

`A052952(n)-A212804(n)`
-/

namespace A062114.P322676325907852067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052952 n - A212804 n

end

end A062114.P322676325907852067

namespace A062114

/-- `A052952(n)-A212804(n)` -/
def P322676325907852067.Spec : Prop :=
  ∀ n, P322676325907852067.a n = A062114 n

end A062114

/-! ## A062114.P13235206782680390355

`A052952(n)-Δ[A000045(n)]`
-/

namespace A062114.P13235206782680390355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052952 n - (f1 (n + 1) - f1 n)

end

end A062114.P13235206782680390355

namespace A062114

/-- `A052952(n)-Δ[A000045(n)]` -/
def P13235206782680390355.Spec : Prop :=
  ∀ n, P13235206782680390355.a n = A062114 n

end A062114

/-! ## A062114.P12001598887025340441

`A001588(n)-(A000035(n)+1)`
-/

namespace A062114.P12001598887025340441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001588 n - (A000035 n + 1)

end

end A062114.P12001598887025340441

namespace A062114

/-- `A001588(n)-(A000035(n)+1)` -/
def P12001598887025340441.Spec : Prop :=
  ∀ n, P12001598887025340441.a n = A062114 n

end A062114

/-!
# A062115: Numbers with no prime substring in their decimal expansion.

The programs for A062115, there is no canonical definition to state claims against.
-/

/-! ## A062115.P6631864737755569310

`comp[A163753(n+1)]`
-/

namespace A062115.P6631864737755569310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163753 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A062115.P6631864737755569310

/-! ## A062115.P14552291521209595208

`record[A330356(n)]`
-/

namespace A062115.P14552291521209595208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330356 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A062115.P14552291521209595208

/-! ## A062115.P6627320625264827540

`eq[0, A047814(n)]`
-/

namespace A062115.P6627320625264827540
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047814 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A062115.P6627320625264827540

/-! ## A062115.P6792845856169734966

`eq[0, A211396(n)]`
-/

namespace A062115.P6792845856169734966
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211396 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A062115.P6792845856169734966

/-! ## A062115.P15265701542108727060

`eq[0, A365276(n)]`
-/

namespace A062115.P15265701542108727060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365276 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A062115.P15265701542108727060

/-! ## A062115.P14900056700885175252

`A330356(eq[n, A330356(n)])`
-/

namespace A062115.P14900056700885175252
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330356 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330356 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A062115.P14900056700885175252

/-! ## A062115.P8660621164243291360

`eq[1, A039997(A028310(n))+1]`
-/

namespace A062115.P8660621164243291360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039997 (A028310 n).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A062115.P8660621164243291360

/-! ## A062115.P3832915787176697418

`record[n-A062880(n)*A211396(n)]`
-/

namespace A062115.P3832915787176697418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A062880 n * A211396 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A062115.P3832915787176697418

/-! ## A062115.P2739073765402814392

`record[n-A000203(n+1)*A211396(n)]`
-/

namespace A062115.P2739073765402814392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A000203 (n + 1) * A211396 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A062115.P2739073765402814392

/-! ## A062115.P1226111899030932335

`eq[A035044(n), A330356(n)]`
-/

namespace A062115.P1226111899030932335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035044 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330356 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A062115.P1226111899030932335

/-! ## A062115.P3589177197986052930

`record[n-A047814(n)*A103517(n)]`
-/

namespace A062115.P3589177197986052930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A047814 n * A103517 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A062115.P3589177197986052930

/-! ## A062115.P5208002384547597889

`lt[p?[A054054(n)]*A211396(n), 1]`
-/

namespace A062115.P5208002384547597889
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054054 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) * A211396 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A062115.P5208002384547597889

/-! ## A062115.P10155179462395496145

`lt[(n*A211396(n))², A314826(n)]`
-/

namespace A062115.P10155179462395496145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A211396 n) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314826 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A062115.P10155179462395496145

/-! ## A062115.P13373521369393667042

`lt[A047814(n), A014963(A047821(n+1))]`
-/

namespace A062115.P13373521369393667042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047814 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A047821 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A062115.P13373521369393667042

/-! ## A062115.P8747648140318978387

`lt[A047814(n), A014963(A047822(n+1))]`
-/

namespace A062115.P8747648140318978387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047814 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A047822 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A062115.P8747648140318978387

/-! ## A062115.P16527396347492790312

`lt[A005901(n)*A211396(n), A314826(n)]`
-/

namespace A062115.P16527396347492790312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005901 n * A211396 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314826 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A062115.P16527396347492790312

/-! ## A062115.P8129139838296649454

`lt[A049632(n)*A211396(n), A314826(n)]`
-/

namespace A062115.P8129139838296649454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049632 n * A211396 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314826 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A062115.P8129139838296649454

/-! ## A062115.P7473508064012346118

`lt[n*A000040(A211396(n)+2), A314826(n)]`
-/

namespace A062115.P7473508064012346118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000040 (A211396 n + 2).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314826 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A062115.P7473508064012346118

/-! ## A062115.P2506992418794168717

`lt[A047814(n), A000005(A047811(n+1))]`
-/

namespace A062115.P2506992418794168717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047814 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A047811 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A062115.P2506992418794168717

/-! ## A062115.P16347217349354303934

`lt[A047814(n), A014963(A047779(n+1))]`
-/

namespace A062115.P16347217349354303934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047814 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A047779 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A062115.P16347217349354303934

/-!
# A062116: a(n) = 2^n mod 17.

The programs for A062116, the canonical program `A062116.P1131181203688972771` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062116 has offset 0).

The definition of A062116 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2^n)%17` (program `A062116.P1131181203688972771`, by `A062116.P1131181203688972771.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A062116.P7563141880572862467

`ogf((1+x+2x^2+4x^3+9x^4)/(1-x+x^4-x^5))`
-/

namespace A062116.P7563141880572862467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 2, 4, 9] [1, -1, 0, 0, 1, -1] n

end

end A062116.P7563141880572862467

namespace A062116

/-- `ogf((1+x+2x^2+4x^3+9x^4)/(1-x+x^4-x^5))` -/
def P7563141880572862467.Spec : Prop :=
  ∀ n, P7563141880572862467.a n = A062116 n

end A062116

/-! ## A062116.P1131181203688972771

`(2^n)%17`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A062116

/-- `(2^n)%17` -/
def P1131181203688972771.Spec : Prop :=
  ∀ n, (P1131181203688972771.a n : ℤ) = A062116 n

theorem P1131181203688972771.correct : P1131181203688972771.Spec := by
  intro n
  simp only [A062116]

end A062116

/-!
# A062117: Order of 3 mod n-th prime.

The programs for A062117, there is no canonical definition to state claims against.
-/

/-! ## A062117.P1423400545881949923

`A211245(n+1)+A240658(n+1)-A000007(n)`
-/

namespace A062117.P1423400545881949923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211245 (n + 1) + (A240658 (n + 1) - A000007 n)

end

end A062117.P1423400545881949923

/-! ## A062117.P417633867806104629

`A211245(n+1)+A057427(n)*A240658(n+1)`
-/

namespace A062117.P417633867806104629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211245 (n + 1) + A057427 n * A240658 (n + 1)

end

end A062117.P417633867806104629

/-! ## A062117.P9474429726960736746

`A211245(n+1)+A240658(n+1)%A002522(n)`
-/

namespace A062117.P9474429726960736746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211245 (n + 1) + Int.tmod (A240658 (n + 1)) (A002522 n)

end

end A062117.P9474429726960736746

/-! ## A062117.P11349913353862830702

`A070676(Δ[A007504(n)])`
-/

namespace A062117.P11349913353862830702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070676 (f1 (n + 1) - f1 n).toNat

end

end A062117.P11349913353862830702

/-! ## A062117.P11770137204202127831

`A070676(A000040(n+1))`
-/

namespace A062117.P11770137204202127831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070676 (A000040 (n + 1)).toNat

end

end A062117.P11770137204202127831

/-! ## A062117.P451920621607774122

`A070676(A008578(n+2))`
-/

namespace A062117.P451920621607774122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070676 (A008578 (n + 2)).toNat

end

end A062117.P451920621607774122

/-! ## A062117.P1696039521941974164

`A070676(A182986(n+2))`
-/

namespace A062117.P1696039521941974164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070676 (A182986 (n + 2)).toNat

end

end A062117.P1696039521941974164

/-! ## A062117.P9828420405109231309

`A070676(record[A006530(n+2)])`
-/

namespace A062117.P9828420405109231309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070676 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A062117.P9828420405109231309

/-! ## A062117.P13555054602664190238

`A070676(record[A014963(n+2)])`
-/

namespace A062117.P13555054602664190238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070676 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A062117.P13555054602664190238

/-! ## A062117.P7351781504263158552

`A070676(record[A020639(n+2)])`
-/

namespace A062117.P7351781504263158552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070676 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A062117.P7351781504263158552

/-! ## A062117.P14358661430658249047

`A070676(p?[n-A033683(n)])`
-/

namespace A062117.P14358661430658249047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A033683 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070676 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A062117.P14358661430658249047

/-! ## A062117.P13674165242022692992

`A070676(eq[n, A000010(n+1)]+1)`
-/

namespace A062117.P13674165242022692992
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070676 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A062117.P13674165242022692992

/-! ## A062117.P8639297894098551020

`A007734(A000040(n+1))%A166519(n)²`
-/

namespace A062117.P8639297894098551020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007734 (A000040 (n + 1)).toNat) (A166519 n ^ 2)

end

end A062117.P8639297894098551020

/-! ## A062117.P7107668635402981752

`A054704(A000040(n+1))%p?[A004442(n)]`
-/

namespace A062117.P7107668635402981752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A054704 (A000040 (n + 1)).toNat) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A062117.P7107668635402981752

/-! ## A062117.P9376812285198921945

`lcm(A007734(A000040(n+1)), A134323(n+1))`
-/

namespace A062117.P9376812285198921945
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A007734 (A000040 (n + 1)).toNat) (A134323 (n + 1))

end

end A062117.P9376812285198921945

/-! ## A062117.P14972780675942628965

`A007734(A000040(n+1))*A057427(A028242(n))`
-/

namespace A062117.P14972780675942628965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007734 (A000040 (n + 1)).toNat * A057427 (A028242 n).toNat

end

end A062117.P14972780675942628965

/-! ## A062117.P16436819888140875307

`A070676(A077017(n+2))`
-/

namespace A062117.P16436819888140875307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070676 (A077017 (n + 2)).toNat

end

end A062117.P16436819888140875307

/-! ## A062117.P8591301539005739537

`A323376(∑[n+2])`
-/

namespace A062117.P8591301539005739537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323376 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A062117.P8591301539005739537

/-!
# A062118: Numbers k such that k^2 has k as its middle digits.

The programs for A062118, there is no canonical definition to state claims against.
-/

/-! ## A062118.P2153728559907015902

`sqrt(A062120(n+1))`
-/

namespace A062118.P2153728559907015902
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A062120 (n + 1) : ℝ)

end

end A062118.P2153728559907015902

/-! ## A062118.P2659008585919858460

`root(A062120(n+1), abs(A280560(n)))`
-/

namespace A062118.P2659008585919858460
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A062120 (n + 1) : ℝ) ^ (1 / (|A280560 n| : ℝ))

end

end A062118.P2659008585919858460

/-! ## A062118.P1476077687435933559

`root(A062120(n+1), p?[A089052(n)])`
-/

namespace A062118.P1476077687435933559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089052 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A062120 (n + 1) : ℝ) ^ (1 / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℝ))

end

end A062118.P1476077687435933559

/-! ## A062118.P8182708265233044897

`root(A062120(n+1), p?[A124765(n)])`
-/

namespace A062118.P8182708265233044897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124765 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A062120 (n + 1) : ℝ) ^ (1 / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℝ))

end

end A062118.P8182708265233044897

/-! ## A062118.P3401875045386808305

`root(A062120(n+1), p?[A226860(n)])`
-/

namespace A062118.P3401875045386808305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226860 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A062120 (n + 1) : ℝ) ^ (1 / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℝ))

end

end A062118.P3401875045386808305

/-!
# A062119: a(n) = n! * (n-1).

The programs for A062119, the canonical program `A062119.P6281908133648097894` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062119 has offset 1).

The definition of A062119 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)!*n` (program `A062119.P6281908133648097894`, by `A062119.P6281908133648097894.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A062119.P6281908133648097894

`(n+1)!*n`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A062119

/-- `(n+1)!*n` -/
def P6281908133648097894.Spec : Prop :=
  ∀ n, (P6281908133648097894.a n : ℤ) = A062119 (n + 1)

theorem P6281908133648097894.correct : P6281908133648097894.Spec := by
  intro n
  simp only [A062119, Nat.add_sub_cancel]

end A062119

/-! ## A062119.P10433297233299032485

`A001563(n+1)-A000142(n+1)`
-/

namespace A062119.P10433297233299032485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001563 (n + 1) - A000142 (n + 1)

end

end A062119.P10433297233299032485

namespace A062119

/-- `A001563(n+1)-A000142(n+1)` -/
def P10433297233299032485.Spec : Prop :=
  ∀ n, P10433297233299032485.a n = A062119 (n + 1)

theorem P10433297233299032485.correct : P10433297233299032485.Spec := by
  intro n
  simp only [A062119, Nat.add_sub_cancel, A062119.P10433297233299032485.a, A062119.P6281908133648097894.a, A000142, A000142.P3272619076580183195.a, A001563, A001563.P7265670906522758193.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A062119

/-! ## A062119.P187662009707493578

`n*(1+n)!`
-/

namespace A062119.P187662009707493578
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.factorial (1 + n)

end

end A062119.P187662009707493578

namespace A062119

/-- `n*(1+n)!` -/
def P187662009707493578.Spec : Prop :=
  ∀ n, (P187662009707493578.a n : ℤ) = A062119 (n + 1)

theorem P187662009707493578.correct : P187662009707493578.Spec := by
  intro n
  simp only [A062119, Nat.add_sub_cancel, A062119.P187662009707493578.a, A062119.P6281908133648097894.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A062119

/-! ## A062119.P16551425354847105995

`n*record[col(n)!]`
-/

namespace A062119.P16551425354847105995
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (SequenceMachineLib.triCol n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A062119.P16551425354847105995

namespace A062119

/-- `n*record[col(n)!]` -/
def P16551425354847105995.Spec : Prop :=
  ∀ n, (P16551425354847105995.a n : ℤ) = A062119 (n + 1)

end A062119

/-! ## A062119.P11462382634363481937

`2*n!*∑[n]`
-/

namespace A062119.P11462382634363481937
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (Nat.factorial n * (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A062119.P11462382634363481937

namespace A062119

/-- `2*n!*∑[n]` -/
def P11462382634363481937.Spec : Prop :=
  ∀ n, (P11462382634363481937.a n : ℤ) = A062119 (n + 1)

end A062119

/-! ## A062119.P16329954385714345928

`Δ[Δ[n!]]-n!`
-/

namespace A062119.P16329954385714345928
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (Nat.factorial n : ℤ)

end

end A062119.P16329954385714345928

namespace A062119

/-- `Δ[Δ[n!]]-n!` -/
def P16329954385714345928.Spec : Prop :=
  ∀ n, P16329954385714345928.a n = A062119 (n + 1)

theorem P16329954385714345928.correct : P16329954385714345928.Spec := by
  intro n
  simp only [A062119, Nat.add_sub_cancel, A062119.P16329954385714345928.f2, A062119.P16329954385714345928.f1, A062119.P16329954385714345928.a, A062119.P6281908133648097894.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A062119

/-! ## A062119.P13340029088545293068

`lcm(2, n*∏[n+1])`
-/

namespace A062119.P13340029088545293068
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (n * (∏ j ∈ Finset.range (n + 1), f1 j))

end

end A062119.P13340029088545293068

namespace A062119

/-- `lcm(2, n*∏[n+1])` -/
def P13340029088545293068.Spec : Prop :=
  ∀ n, (P13340029088545293068.a n : ℤ) = A062119 (n + 1)

end A062119

/-! ## A062119.P4651030134833821653

`n*abs(∏[-(n+1)])`
-/

namespace A062119.P4651030134833821653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * |∏ j ∈ Finset.range (n + 1), f1 j|

end

end A062119.P4651030134833821653

namespace A062119

/-- `n*abs(∏[-(n+1)])` -/
def P4651030134833821653.Spec : Prop :=
  ∀ n, P4651030134833821653.a n = A062119 (n + 1)

end A062119

/-! ## A062119.P3782105902036770941

`∑{#}[n, 2*#*n!]`
-/

namespace A062119.P3782105902036770941
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), 2 * k * Nat.factorial n

end

end A062119.P3782105902036770941

namespace A062119

/-- `∑{#}[n, 2*#*n!]` -/
def P3782105902036770941.Spec : Prop :=
  ∀ n, (P3782105902036770941.a n : ℤ) = A062119 (n + 1)

end A062119

/-! ## A062119.P794526858630117354

`and(n*∏[n+1], -2)`
-/

namespace A062119.P794526858630117354
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((n * (∏ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℤ) (-2)

end

end A062119.P794526858630117354

namespace A062119

/-- `and(n*∏[n+1], -2)` -/
def P794526858630117354.Spec : Prop :=
  ∀ n, P794526858630117354.a n = A062119 (n + 1)

end A062119

/-!
# A062120: Numbers k such that k has sqrt(k) as its middle digits.

The programs for A062120, there is no canonical definition to state claims against.
-/

/-! ## A062120.P11903067327713317000

`A062118(n+1)²`
-/

namespace A062120.P11903067327713317000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062118 (n + 1) ^ 2

end

end A062120.P11903067327713317000

/-! ## A062120.P15427874504771369229

`A062118(n+1)^p?[A124765(n)]`
-/

namespace A062120.P15427874504771369229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124765 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062118 (n + 1) : ℚ) ^ (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℤ)

end

end A062120.P15427874504771369229

/-! ## A062120.P7387621345723166835

`A062118(n+1)^A002203(Δ[ceil(n/ϕ)])`
-/

namespace A062120.P7387621345723166835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) / Real.goldenRatio⌉

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062118 (n + 1) : ℚ) ^ (A002203 (f1 (n + 1) - f1 n).toNat : ℤ)

end

end A062120.P7387621345723166835

/-! ## A062120.P728461073778545042

`A062118(n+1)^A020639(A004277(n))`
-/

namespace A062120.P728461073778545042
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062118 (n + 1) : ℚ) ^ (A020639 (A004277 n).toNat : ℤ)

end

end A062120.P728461073778545042

/-! ## A062120.P13038905641435401225

`A062118(n+1)^A020639(A193432(n))`
-/

namespace A062120.P13038905641435401225
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062118 (n + 1) : ℚ) ^ (A020639 (A193432 n).toNat : ℤ)

end

end A062120.P13038905641435401225

/-!
# A062121: a(n) = floor(exp(n/Pi)).

The programs for A062121, the canonical program `A062121.P11377876297193387401` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062121 has offset 1).

The definition of A062121 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 479 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A062121.P11377876297193387401

`floor(exp((n+1)/π))%A001612(n)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A062121

/-- `floor(exp((n+1)/π))%A001612(n)` -/
def P11377876297193387401.Spec : Prop :=
  ∀ n, P11377876297193387401.a n = A062121 (n + 1)

theorem P11377876297193387401.correct : P11377876297193387401.Spec := by
  intro n
  simp only [A062121, Nat.add_sub_cancel]

end A062121

/-! ## A062121.P216682148843419802

`floor(root(exp(n+1), π))`
-/

namespace A062121.P216682148843419802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.exp (n + 1 : ℝ) ^ (1 / Real.pi)⌋

end

end A062121.P216682148843419802

namespace A062121

/-- `floor(root(exp(n+1), π))` -/
def P216682148843419802.Spec : Prop :=
  ∀ n, P216682148843419802.a n = A062121 (n + 1)

end A062121

/-! ## A062121.P6731936976145090252

`A308778(n²)+ceil(exp((n+1)/π))`
-/

namespace A062121.P6731936976145090252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308778 (n ^ 2) + ⌈Real.exp ((n + 1 : ℝ) / Real.pi)⌉

end

end A062121.P6731936976145090252

namespace A062121

/-- `A308778(n²)+ceil(exp((n+1)/π))` -/
def P6731936976145090252.Spec : Prop :=
  ∀ n, P6731936976145090252.a n = A062121 (n + 1)

end A062121

/-! ## A062121.P11936655402036135603

`floor(exp((n+1)/π))*A057427(A002061(n))`
-/

namespace A062121.P11936655402036135603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.exp ((n + 1 : ℝ) / Real.pi)⌋ * A057427 (A002061 n).toNat

end

end A062121.P11936655402036135603

namespace A062121

/-- `floor(exp((n+1)/π))*A057427(A002061(n))` -/
def P11936655402036135603.Spec : Prop :=
  ∀ n, P11936655402036135603.a n = A062121 (n + 1)

end A062121

/-! ## A062121.P9001888749083068387

`floor(exp((n+1)/π))*A138243(A000096(n))`
-/

namespace A062121.P9001888749083068387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.exp ((n + 1 : ℝ) / Real.pi)⌋ * A138243 (A000096 n).toNat

end

end A062121.P9001888749083068387

namespace A062121

/-- `floor(exp((n+1)/π))*A138243(A000096(n))` -/
def P9001888749083068387.Spec : Prop :=
  ∀ n, P9001888749083068387.a n = A062121 (n + 1)

end A062121

/-! ## A062121.P6768525200424064680

`floor(exp((n+1)/π))*A280412(A063725(n²))`
-/

namespace A062121.P6768525200424064680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.exp ((n + 1 : ℝ) / Real.pi)⌋ * A280412 (A063725 (n ^ 2)).toNat

end

end A062121.P6768525200424064680

namespace A062121

/-- `floor(exp((n+1)/π))*A280412(A063725(n²))` -/
def P6768525200424064680.Spec : Prop :=
  ∀ n, P6768525200424064680.a n = A062121 (n + 1)

end A062121

/-! ## A062121.P8825152345236096435

`ceil(exp((n+1)/π))-A274651(A001844(n))`
-/

namespace A062121.P8825152345236096435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.exp ((n + 1 : ℝ) / Real.pi)⌉ - A274651 (A001844 n).toNat

end

end A062121.P8825152345236096435

namespace A062121

/-- `ceil(exp((n+1)/π))-A274651(A001844(n))` -/
def P8825152345236096435.Spec : Prop :=
  ∀ n, P8825152345236096435.a n = A062121 (n + 1)

end A062121

/-! ## A062121.P2515997992012547552

`floor(exp((n+1)/π))*A057427(A253909(n))`
-/

namespace A062121.P2515997992012547552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.exp ((n + 1 : ℝ) / Real.pi)⌋ * A057427 (A253909 n).toNat

end

end A062121.P2515997992012547552

namespace A062121

/-- `floor(exp((n+1)/π))*A057427(A253909(n))` -/
def P2515997992012547552.Spec : Prop :=
  ∀ n, P2515997992012547552.a n = A062121 (n + 1)

end A062121

/-! ## A062121.P13137948673269903715

`floor(exp((n+1)/π))*A294335(A014963(n+1))`
-/

namespace A062121.P13137948673269903715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.exp ((n + 1 : ℝ) / Real.pi)⌋ * A294335 (A014963 (n + 1)).toNat

end

end A062121.P13137948673269903715

namespace A062121

/-- `floor(exp((n+1)/π))*A294335(A014963(n+1))` -/
def P13137948673269903715.Spec : Prop :=
  ∀ n, P13137948673269903715.a n = A062121 (n + 1)

end A062121

/-! ## A062121.P15461845638283135525

`floor(exp((n+1)/π))*A057427(A143689(n))`
-/

namespace A062121.P15461845638283135525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.exp ((n + 1 : ℝ) / Real.pi)⌋ * A057427 (A143689 n).toNat

end

end A062121.P15461845638283135525

namespace A062121

/-- `floor(exp((n+1)/π))*A057427(A143689(n))` -/
def P15461845638283135525.Spec : Prop :=
  ∀ n, P15461845638283135525.a n = A062121 (n + 1)

end A062121

/-!
# A062122: Boustrophedon transform of 0, 1, 0, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144,... the Fibonacci numbers (F_0 = 0, F_1 = 1, A000045) with an erroneous term (F_2 = 0 instead of 1).

The programs for A062122, there is no canonical definition to state claims against.
-/

/-! ## A062122.P14160489095135424305

`Δ[A099741(∑[A187251(n)])]`
-/

namespace A062122.P14160489095135424305
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187251 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099741 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A062122.P14160489095135424305

/-! ## A062122.P2759616465934229093

`A162980(A089479(n))-A217596(n)`
-/

namespace A062122.P2759616465934229093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162980 (A089479 n).toNat - A217596 n

end

end A062122.P2759616465934229093

/-!
# A062123: a(n) = (9n^2 + 9n + 4)/2.

The programs for A062123, the canonical program `A062123.P6127161496996241349` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062123 has offset 0).

The definition of A062123 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(9*n²+9*n+4)/2` (program `A062123.P5683457507301532778`, by `A062123.P5683457507301532778.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A062123.P6127161496996241349

`9*n+a(n-1)` with `a(0)=2`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A062123

/-- `9*n+a(n-1)` -/
def P6127161496996241349.Spec : Prop :=
  ∀ n, (P6127161496996241349.a n : ℤ) = A062123 n

theorem P6127161496996241349.correct : P6127161496996241349.Spec := by
  intro n
  simp only [A062123]

end A062123

/-! ## A062123.P18200883711149253923

`ogf((2+5x+2x^2)/(1-3x+3x^2-x^3))`
-/

namespace A062123.P18200883711149253923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 5, 2] [1, -3, 3, -1] n

end

end A062123.P18200883711149253923

namespace A062123

/-- `ogf((2+5x+2x^2)/(1-3x+3x^2-x^3))` -/
def P18200883711149253923.Spec : Prop :=
  ∀ n, P18200883711149253923.a n = A062123 n

end A062123

/-! ## A062123.P10300496822817434913

`2+(n+n²)*9/2`
-/

namespace A062123.P10300496822817434913
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 + ((n + n ^ 2) * 9 : ℚ) / 2

end

end A062123.P10300496822817434913

namespace A062123

/-- `2+(n+n²)*9/2` -/
def P10300496822817434913.Spec : Prop :=
  ∀ n, P10300496822817434913.a n = (A062123 n : ℚ)

theorem P10300496822817434913.correct : P10300496822817434913.Spec := by
  intro n
  induction n with
  | zero => simp [A062123, A062123.P10300496822817434913.a, A062123.P6127161496996241349.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A062123, Nat.add_sub_cancel, A062123.P10300496822817434913.a, A062123.P6127161496996241349.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A062123

/-! ## A062123.P5683457507301532778

`(9*n²+9*n+4)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A062123.P5683457507301532778
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (9 * n ^ 2 + 9 * n + 4 : ℚ) / 2

end

end A062123.P5683457507301532778

namespace A062123

/-- `(9*n²+9*n+4)/2` -/
def P5683457507301532778.Spec : Prop :=
  ∀ n, P5683457507301532778.a n = (A062123 n : ℚ)

theorem P5683457507301532778.correct : P5683457507301532778.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A062123, Nat.add_sub_cancel, A062123.P5683457507301532778.a, A062123.P6127161496996241349.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A062123, Nat.add_sub_cancel, A062123.P5683457507301532778.a, A062123.P6127161496996241349.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A062123

/-! ## A062123.P5919234572319943616

`∑[round(3/acot(3*n))]`
-/

namespace A062123.P5919234572319943616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (3 / SequenceMachineLib.acot (3 * n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062123.P5919234572319943616

namespace A062123

/-- `∑[round(3/acot(3*n))]` -/
def P5919234572319943616.Spec : Prop :=
  ∀ n, P5919234572319943616.a n = A062123 n

end A062123

/-! ## A062123.P14260497884333634154

`∑[a(n-1)+9]` with `a(0)=2, a(1)=9`
-/

namespace A062123.P14260497884333634154
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 9] fun n f1 =>
  f1 (n - 1) + 9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062123.P14260497884333634154

namespace A062123

/-- `∑[a(n-1)+9]` -/
def P14260497884333634154.Spec : Prop :=
  ∀ n, (P14260497884333634154.a n : ℤ) = A062123 n

end A062123

/-! ## A062123.P4812628297960817916

`∑[ogf((2+5x+2x^2)/(1-2x+x^2))]`
-/

namespace A062123.P4812628297960817916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 5, 2] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062123.P4812628297960817916

namespace A062123

/-- `∑[ogf((2+5x+2x^2)/(1-2x+x^2))]` -/
def P4812628297960817916.Spec : Prop :=
  ∀ n, P4812628297960817916.a n = A062123 n

end A062123

/-! ## A062123.P14934180525563644277

`∑[9*n%a(n-1)]` with `a(0)=2`
-/

namespace A062123.P14934180525563644277
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f1 =>
  9 * (n % f1 (n - 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062123.P14934180525563644277

namespace A062123

/-- `∑[9*n%a(n-1)]` -/
def P14934180525563644277.Spec : Prop :=
  ∀ n, (P14934180525563644277.a n : ℤ) = A062123 n

end A062123

/-! ## A062123.P12634168475311232831

`floor((3*n)²-(a(n-1)-4))` with `a(0)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A062123.P12634168475311232831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  ((3 * n) ^ 2 : ℤ) - (a (n - 1) - 4)

end

end A062123.P12634168475311232831

namespace A062123

/-- `floor((3*n)²-(a(n-1)-4))` -/
def P12634168475311232831.Spec : Prop :=
  ∀ n, P12634168475311232831.a n = A062123 n

end A062123

/-! ## A062123.P17837573170019957469

`∑[n*(3*(-1)^a(n-1))²]` with `a(0)=2`
-/

namespace A062123.P17837573170019957469
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.rec [2] fun n f1 =>
  (n : ℝ) * (3 * (-1 : ℝ) ^ (f1 (n - 1))) ^ 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062123.P17837573170019957469

namespace A062123

/-- `∑[n*(3*(-1)^a(n-1))²]` -/
def P17837573170019957469.Spec : Prop :=
  ∀ n, P17837573170019957469.a n = (A062123 n : ℝ)

end A062123

/-! ## A062123.P16389540704515796950

`floor((2*n+1)²+C(n+1, 2)+ϕ)`
-/

namespace A062123.P16389540704515796950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((2 * n + 1) ^ 2 : ℝ) + ((Nat.choose (n + 1) 2 : ℝ) + Real.goldenRatio)⌋

end

end A062123.P16389540704515796950

namespace A062123

/-- `floor((2*n+1)²+C(n+1, 2)+ϕ)` -/
def P16389540704515796950.Spec : Prop :=
  ∀ n, P16389540704515796950.a n = A062123 n

end A062123

/-! ## A062123.P4989666289513730759

`∑[A133655(n)+1+n]`
-/

namespace A062123.P4989666289513730759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133655 n + 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062123.P4989666289513730759

namespace A062123

/-- `∑[A133655(n)+1+n]` -/
def P4989666289513730759.Spec : Prop :=
  ∀ n, P4989666289513730759.a n = A062123 n

end A062123

/-! ## A062123.P16353832961782807904

`∑[2*A008706(n)-n]`
-/

namespace A062123.P16353832961782807904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062123.P16353832961782807904

namespace A062123

/-- `∑[2*A008706(n)-n]` -/
def P16353832961782807904.Spec : Prop :=
  ∀ n, P16353832961782807904.a n = A062123 n

end A062123

/-! ## A062123.P4799428366276457765

`A061792(n)%A193448(n+1)`
-/

namespace A062123.P4799428366276457765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061792 n) (A193448 (n + 1))

end

end A062123.P4799428366276457765

namespace A062123

/-- `A061792(n)%A193448(n+1)` -/
def P4799428366276457765.Spec : Prop :=
  ∀ n, P4799428366276457765.a n = A062123 n

end A062123

/-! ## A062123.P13099929594927191382

`A157910(n+1)%A178977(n)`
-/

namespace A062123.P13099929594927191382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A157910 (n + 1)) (A178977 n)

end

end A062123.P13099929594927191382

namespace A062123

/-- `A157910(n+1)%A178977(n)` -/
def P13099929594927191382.Spec : Prop :=
  ∀ n, P13099929594927191382.a n = A062123 n

end A062123

/-! ## A062123.P2670301792955465881

`A154516(n+1)%A235332(n)`
-/

namespace A062123.P2670301792955465881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A154516 (n + 1)) (A235332 n)

end

end A062123.P2670301792955465881

namespace A062123

/-- `A154516(n+1)%A235332(n)` -/
def P2670301792955465881.Spec : Prop :=
  ∀ n, P2670301792955465881.a n = A062123 n

end A062123

/-! ## A062123.P11242653101828911301

`A304163(n+1)%A178977(n)`
-/

namespace A062123.P11242653101828911301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A304163 (n + 1)) (A178977 n)

end

end A062123.P11242653101828911301

namespace A062123

/-- `A304163(n+1)%A178977(n)` -/
def P11242653101828911301.Spec : Prop :=
  ∀ n, P11242653101828911301.a n = A062123 n

end A062123

/-! ## A062123.P10699930678121902344

`∑[record[A228967(n+1)]]`
-/

namespace A062123.P10699930678121902344
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228967 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062123.P10699930678121902344

namespace A062123

/-- `∑[record[A228967(n+1)]]` -/
def P10699930678121902344.Spec : Prop :=
  ∀ n, P10699930678121902344.a n = A062123 n

end A062123

/-! ## A062123.P2585305005812409747

`∑[record[A203648(n+2)]]`
-/

namespace A062123.P2585305005812409747
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203648 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062123.P2585305005812409747

namespace A062123

/-- `∑[record[A203648(n+2)]]` -/
def P2585305005812409747.Spec : Prop :=
  ∀ n, P2585305005812409747.a n = A062123 n

end A062123

/-! ## A062123.P11705179151330462740

`filter[∑[n], dr(#)]+1`
-/

namespace A062123.P11705179151330462740
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => SequenceMachineLib.digitalRoot (f1 j : ℤ) = 1) n) + 1

end

end A062123.P11705179151330462740

namespace A062123

/-- `filter[∑[n], dr(#)]+1` -/
def P11705179151330462740.Spec : Prop :=
  ∀ n, (P11705179151330462740.a n : ℤ) = A062123 n

end A062123

/-!
# A062124: Fourth column of A046741.

The programs for A062124, the canonical program `A062124.P6385922923817778960` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062124 has offset 0).

The definition of A062124 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A062124.P5849747279721841908

`ogf((3+14x+8x^2+2x^3)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A062124.P5849747279721841908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 14, 8, 2] [1, -4, 6, -4, 1] n

end

end A062124.P5849747279721841908

namespace A062124

/-- `ogf((3+14x+8x^2+2x^3)/(1-4x+6x^2-4x^3+x^4))` -/
def P5849747279721841908.Spec : Prop :=
  ∀ n, P5849747279721841908.a n = A062124 n

end A062124

/-! ## A062124.P2416423334632218429

`(6+19*n+18*n²+9*n^3)/2`
-/

namespace A062124.P2416423334632218429
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (6 + 19 * n + 18 * n ^ 2 + 9 * n ^ 3 : ℚ) / 2

end

end A062124.P2416423334632218429

namespace A062124

/-- `(6+19*n+18*n²+9*n^3)/2` -/
def P2416423334632218429.Spec : Prop :=
  ∀ n, P2416423334632218429.a n = (A062124 n : ℚ)

theorem P2416423334632218429.correct : P2416423334632218429.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A062124, Nat.add_sub_cancel, A062124.P2416423334632218429.a, A062124.P6385922923817778960.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A062124, Nat.add_sub_cancel, A062124.P2416423334632218429.a, A062124.P6385922923817778960.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A062124

/-! ## A062124.P6385922923817778960

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=3, a(1)=26, a(2)=94, a(3)=234`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A062124

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P6385922923817778960.Spec : Prop :=
  ∀ n, P6385922923817778960.a n = A062124 n

theorem P6385922923817778960.correct : P6385922923817778960.Spec := by
  intro n
  simp only [A062124]

end A062124

/-! ## A062124.P12509986473325792827

`C(3*(n+1), 3)+4*n+2`
-/

namespace A062124.P12509986473325792827
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (3 * (n + 1)) 3 + (4 * n + 2)

end

end A062124.P12509986473325792827

namespace A062124

/-- `C(3*(n+1), 3)+4*n+2` -/
def P12509986473325792827.Spec : Prop :=
  ∀ n, (P12509986473325792827.a n : ℤ) = A062124 n

end A062124

/-! ## A062124.P15568818950575025527

`A117560(n+2)+Δ[n²²]`
-/

namespace A062124.P15568818950575025527
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117560 (n + 2) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A062124.P15568818950575025527

namespace A062124

/-- `A117560(n+2)+Δ[n²²]` -/
def P15568818950575025527.Spec : Prop :=
  ∀ n, P15568818950575025527.a n = A062124 n

end A062124

/-! ## A062124.P1793548021324499574

`A228887(n+1)-A081267(n)`
-/

namespace A062124.P1793548021324499574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228887 (n + 1) - A081267 n

end

end A062124.P1793548021324499574

namespace A062124

/-- `A228887(n+1)-A081267(n)` -/
def P1793548021324499574.Spec : Prop :=
  ∀ n, P1793548021324499574.a n = A062124 n

end A062124

/-! ## A062124.P7317417206180321422

`A005843(n)+∑[A093485(n)+2]`
-/

namespace A062124.P7317417206180321422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093485 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062124.P7317417206180321422

namespace A062124

/-- `A005843(n)+∑[A093485(n)+2]` -/
def P7317417206180321422.Spec : Prop :=
  ∀ n, P7317417206180321422.a n = A062124 n

end A062124

/-! ## A062124.P2715628762626967457

`A228888(n+1)-A086640(n+1)`
-/

namespace A062124.P2715628762626967457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228888 (n + 1) - A086640 (n + 1)

end

end A062124.P2715628762626967457

namespace A062124

/-- `A228888(n+1)-A086640(n+1)` -/
def P2715628762626967457.Spec : Prop :=
  ∀ n, P2715628762626967457.a n = A062124 n

end A062124

/-! ## A062124.P5818015357069834678

`A016825(n)+∑[A016777(n)]*A016777(n)`
-/

namespace A062124.P5818015357069834678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 n + (∑ j ∈ Finset.range (n + 1), f1 j) * A016777 n

end

end A062124.P5818015357069834678

namespace A062124

/-- `A016825(n)+∑[A016777(n)]*A016777(n)` -/
def P5818015357069834678.Spec : Prop :=
  ∀ n, P5818015357069834678.a n = A062124 n

end A062124

/-! ## A062124.P14329880371776007823

`A154254(n+1)+A000326(n)*A016777(n)`
-/

namespace A062124.P14329880371776007823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154254 (n + 1) + A000326 n * A016777 n

end

end A062124.P14329880371776007823

namespace A062124

/-- `A154254(n+1)+A000326(n)*A016777(n)` -/
def P14329880371776007823.Spec : Prop :=
  ∀ n, P14329880371776007823.a n = A062124 n

end A062124

/-! ## A062124.P9807325039738171604

`A006566(n+1)+4*n+2`
-/

namespace A062124.P9807325039738171604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006566 (n + 1) + (4 * n + 2 : ℤ)

end

end A062124.P9807325039738171604

namespace A062124

/-- `A006566(n+1)+4*n+2` -/
def P9807325039738171604.Spec : Prop :=
  ∀ n, P9807325039738171604.a n = A062124 n

end A062124

/-! ## A062124.P2056685868098936651

`A006003(2*n+1)+A027480(n+1)-1`
-/

namespace A062124.P2056685868098936651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006003 (2 * n + 1) + (A027480 (n + 1) - 1)

end

end A062124.P2056685868098936651

namespace A062124

/-- `A006003(2*n+1)+A027480(n+1)-1` -/
def P2056685868098936651.Spec : Prop :=
  ∀ n, P2056685868098936651.a n = A062124 n

end A062124

/-! ## A062124.P9296571542013750617

`A005894(2*n+1)-A203551(n+1)+n`
-/

namespace A062124.P9296571542013750617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005894 (2 * n + 1) - A203551 (n + 1) + (n : ℤ)

end

end A062124.P9296571542013750617

namespace A062124

/-- `A005894(2*n+1)-A203551(n+1)+n` -/
def P9296571542013750617.Spec : Prop :=
  ∀ n, P9296571542013750617.a n = A062124 n

end A062124

/-! ## A062124.P18224029456235698815

`A027480(2*n)+A027480(n+1)+2*n`
-/

namespace A062124.P18224029456235698815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027480 (2 * n) + (A027480 (n + 1) + (2 * n : ℤ))

end

end A062124.P18224029456235698815

namespace A062124

/-- `A027480(2*n)+A027480(n+1)+2*n` -/
def P18224029456235698815.Spec : Prop :=
  ∀ n, P18224029456235698815.a n = A062124 n

end A062124

/-! ## A062124.P10106909972085282449

`A229183(2*n+1)+A059270(n+1)-A229183(n+1)`
-/

namespace A062124.P10106909972085282449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229183 (2 * n + 1) + (A059270 (n + 1) - A229183 (n + 1))

end

end A062124.P10106909972085282449

namespace A062124

/-- `A229183(2*n+1)+A059270(n+1)-A229183(n+1)` -/
def P10106909972085282449.Spec : Prop :=
  ∀ n, P10106909972085282449.a n = A062124 n

end A062124

/-! ## A062124.P16749769679326451670

`A068601(2*n+1)+A158842(n+2)-A158842(2*n+1)`
-/

namespace A062124.P16749769679326451670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068601 (2 * n + 1) + (A158842 (n + 2) - A158842 (2 * n + 1))

end

end A062124.P16749769679326451670

namespace A062124

/-- `A068601(2*n+1)+A158842(n+2)-A158842(2*n+1)` -/
def P16749769679326451670.Spec : Prop :=
  ∀ n, P16749769679326451670.a n = A062124 n

end A062124

/-! ## A062124.P6195335125292139182

`A341209(3*n)+n+2`
-/

namespace A062124.P6195335125292139182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341209 (3 * n) + (n + 2 : ℤ)

end

end A062124.P6195335125292139182

namespace A062124

/-- `A341209(3*n)+n+2` -/
def P6195335125292139182.Spec : Prop :=
  ∀ n, P6195335125292139182.a n = A062124 n

end A062124

/-! ## A062124.P5965197781467697817

`A177787(3*n+1)+A000124(3*n)+n`
-/

namespace A062124.P5965197781467697817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177787 (3 * n + 1) + (A000124 (3 * n) + (n : ℤ))

end

end A062124.P5965197781467697817

namespace A062124

/-- `A177787(3*n+1)+A000124(3*n)+n` -/
def P5965197781467697817.Spec : Prop :=
  ∀ n, P5965197781467697817.a n = A062124 n

end A062124

/-! ## A062124.P121224705439322829

`A008778(3*n)+A005449(n+1)-A005449(2*n)`
-/

namespace A062124.P121224705439322829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 (3 * n) + (A005449 (n + 1) - A005449 (2 * n))

end

end A062124.P121224705439322829

namespace A062124

/-- `A008778(3*n)+A005449(n+1)-A005449(2*n)` -/
def P121224705439322829.Spec : Prop :=
  ∀ n, P121224705439322829.a n = A062124 n

end A062124

/-! ## A062124.P12017109017518087328

`A004006(3*n+2)+n`
-/

namespace A062124.P12017109017518087328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004006 (3 * n + 2) + (n : ℤ)

end

end A062124.P12017109017518087328

namespace A062124

/-- `A004006(3*n+2)+n` -/
def P12017109017518087328.Spec : Prop :=
  ∀ n, P12017109017518087328.a n = A062124 n

end A062124

/-!
# A062125: Fifth column of A046741.

The programs for A062125, the canonical program `A062125.P11365887008401122323` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062125 has offset 0).

The definition of A062125 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A062125.P2175326768945467425

`ogf((5+31x+33x^2+10x^3+2x^4)/(1-5x+10x^2-10x^3+5x^4-x^5))`
-/

namespace A062125.P2175326768945467425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, 31, 33, 10, 2] [1, -5, 10, -10, 5, -1] n

end

end A062125.P2175326768945467425

namespace A062125

/-- `ogf((5+31x+33x^2+10x^3+2x^4)/(1-5x+10x^2-10x^3+5x^4-x^5))` -/
def P2175326768945467425.Spec : Prop :=
  ∀ n, P2175326768945467425.a n = A062125 n

end A062125

/-! ## A062125.P11365887008401122323

`(40+126*n+165*n²+90*n^3+27*n^4)/8`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A062125

/-- `(40+126*n+165*n²+90*n^3+27*n^4)/8` -/
def P11365887008401122323.Spec : Prop :=
  ∀ n, P11365887008401122323.a n = (A062125 n : ℚ)

end A062125

/-! ## A062125.P12034245521174472019

`A056106(n+1)+A051744(3*n+1)`
-/

namespace A062125.P12034245521174472019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056106 (n + 1) + A051744 (3 * n + 1)

end

end A062125.P12034245521174472019

namespace A062125

/-- `A056106(n+1)+A051744(3*n+1)` -/
def P12034245521174472019.Spec : Prop :=
  ∀ n, P12034245521174472019.a n = A062125 n

end A062125

/-! ## A062125.P1857375920229037655

`A223718(3*n+1)+∑[A016789(2*n)]`
-/

namespace A062125.P1857375920229037655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223718 (3 * n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062125.P1857375920229037655

namespace A062125

/-- `A223718(3*n+1)+∑[A016789(2*n)]` -/
def P1857375920229037655.Spec : Prop :=
  ∀ n, P1857375920229037655.a n = A062125 n

end A062125

/-! ## A062125.P9792929208568060581

`A223764(3*n+1)+A000124(n)-2*n²`
-/

namespace A062125.P9792929208568060581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223764 (3 * n + 1) + (A000124 n - (2 * n ^ 2 : ℤ))

end

end A062125.P9792929208568060581

namespace A062125

/-- `A223764(3*n+1)+A000124(n)-2*n²` -/
def P9792929208568060581.Spec : Prop :=
  ∀ n, P9792929208568060581.a n = A062125 n

end A062125

/-! ## A062125.P684935355886461542

`A223764(3*n+1)+A000217(n+1)-A000217(2*n)`
-/

namespace A062125.P684935355886461542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223764 (3 * n + 1) + (A000217 (n + 1) - A000217 (2 * n))

end

end A062125.P684935355886461542

namespace A062125

/-- `A223764(3*n+1)+A000217(n+1)-A000217(2*n)` -/
def P684935355886461542.Spec : Prop :=
  ∀ n, P684935355886461542.a n = A062125 n

end A062125

/-! ## A062125.P12361772654427954261

`A002522(3*n+2)+∑[A027480(3*n)]`
-/

namespace A062125.P12361772654427954261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027480 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 (3 * n + 2) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062125.P12361772654427954261

namespace A062125

/-- `A002522(3*n+2)+∑[A027480(3*n)]` -/
def P12361772654427954261.Spec : Prop :=
  ∀ n, P12361772654427954261.a n = A062125 n

end A062125

/-! ## A062125.P6011039306667819186

`A308244(A056115(n)+10)`
-/

namespace A062125.P6011039306667819186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308244 (A056115 n + 10).toNat

end

end A062125.P6011039306667819186

namespace A062125

/-- `A308244(A056115(n)+10)` -/
def P6011039306667819186.Spec : Prop :=
  ∀ n, P6011039306667819186.a n = A062125 n

end A062125

/-! ## A062125.P2672937491901586732

`A046741(A000217(n+5)-(n+1))`
-/

namespace A062125.P2672937491901586732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046741 (A000217 (n + 5) - (n + 1 : ℤ)).toNat

end

end A062125.P2672937491901586732

namespace A062125

/-- `A046741(A000217(n+5)-(n+1))` -/
def P2672937491901586732.Spec : Prop :=
  ∀ n, P2672937491901586732.a n = A062125 n

end A062125

/-! ## A062125.P1928913224760678385

`A308244(A167487(n)+A016825(n))`
-/

namespace A062125.P1928913224760678385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308244 (A167487 n + A016825 n).toNat

end

end A062125.P1928913224760678385

namespace A062125

/-- `A308244(A167487(n)+A016825(n))` -/
def P1928913224760678385.Spec : Prop :=
  ∀ n, P1928913224760678385.a n = A062125 n

end A062125

/-!
# A062126: Sixth column of A046741.

The programs for A062126, the canonical program `A062126.P13257868168334892390` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062126 has offset 0).

The definition of A062126 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A062126.P13257868168334892390

`ogf((8+66x+103x^2+52x^3+12x^4+2x^5)/(1-6x+15x^2-20x^3+15x^4-6x^5+x^6))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A062126

/-- `ogf((8+66x+103x^2+52x^3+12x^4+2x^5)/(1-6x+15x^2-20x^3+15x^4-6x^5+x^6))` -/
def P13257868168334892390.Spec : Prop :=
  ∀ n, P13257868168334892390.a n = A062126 n

theorem P13257868168334892390.correct : P13257868168334892390.Spec := by
  intro n
  simp only [A062126]

end A062126

/-! ## A062126.P6921550350445277409

`A046741(A167499(n+4))`
-/

namespace A062126.P6921550350445277409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046741 (A167499 (n + 4)).toNat

end

end A062126.P6921550350445277409

namespace A062126

/-- `A046741(A167499(n+4))` -/
def P6921550350445277409.Spec : Prop :=
  ∀ n, P6921550350445277409.a n = A062126 n

end A062126

/-! ## A062126.P16455364436187251277

`A046741(A000124(n+5)+4)`
-/

namespace A062126.P16455364436187251277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046741 (A000124 (n + 5) + 4).toNat

end

end A062126.P16455364436187251277

namespace A062126

/-- `A046741(A000124(n+5)+4)` -/
def P16455364436187251277.Spec : Prop :=
  ∀ n, P16455364436187251277.a n = A062126 n

end A062126

/-! ## A062126.P14982432884457832927

`A046741(A000096(n+4)+6)`
-/

namespace A062126.P14982432884457832927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046741 (A000096 (n + 4) + 6).toNat

end

end A062126.P14982432884457832927

namespace A062126

/-- `A046741(A000096(n+4)+6)` -/
def P14982432884457832927.Spec : Prop :=
  ∀ n, P14982432884457832927.a n = A062126 n

end A062126

/-! ## A062126.P18258308528773943595

`A046741(A000217(n+5)+5)`
-/

namespace A062126.P18258308528773943595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046741 (A000217 (n + 5) + 5).toNat

end

end A062126.P18258308528773943595

namespace A062126

/-- `A046741(A000217(n+5)+5)` -/
def P18258308528773943595.Spec : Prop :=
  ∀ n, P18258308528773943595.a n = A062126 n

end A062126

/-! ## A062126.P11679345740690842261

`A046741(A055998(n+1)+A004280(n+10))`
-/

namespace A062126.P11679345740690842261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046741 (A055998 (n + 1) + A004280 (n + 10)).toNat

end

end A062126.P11679345740690842261

namespace A062126

/-- `A046741(A055998(n+1)+A004280(n+10))` -/
def P11679345740690842261.Spec : Prop :=
  ∀ n, P11679345740690842261.a n = A062126 n

end A062126

/-!
# A062127: Seventh column of A046741.

The programs for A062127, the canonical program `A062127.P13274685116907699806` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062127 has offset 0).

The definition of A062127 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A062127.P13274685116907699806

`ogf((13+132x+289x^2+207x^3+72x^4+14x^5+2x^6)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A062127

/-- `ogf((13+132x+289x^2+207x^3+72x^4+14x^5+2x^6)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))` -/
def P13274685116907699806.Spec : Prop :=
  ∀ n, P13274685116907699806.a n = A062127 n

theorem P13274685116907699806.correct : P13274685116907699806.Spec := by
  intro n
  simp only [A062127]

end A062127

/-! ## A062127.P16887446141812264293

`A046741(A167499(n+5)+1)`
-/

namespace A062127.P16887446141812264293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046741 (A167499 (n + 5) + 1).toNat

end

end A062127.P16887446141812264293

namespace A062127

/-- `A046741(A167499(n+5)+1)` -/
def P16887446141812264293.Spec : Prop :=
  ∀ n, P16887446141812264293.a n = A062127 n

end A062127

/-! ## A062127.P9440934078756160808

`A046741(A000096(n+5)+7)`
-/

namespace A062127.P9440934078756160808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046741 (A000096 (n + 5) + 7).toNat

end

end A062127.P9440934078756160808

namespace A062127

/-- `A046741(A000096(n+5)+7)` -/
def P9440934078756160808.Spec : Prop :=
  ∀ n, P9440934078756160808.a n = A062127 n

end A062127

/-! ## A062127.P4976446549354188562

`A046741(A000217(n+6)+6)`
-/

namespace A062127.P4976446549354188562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046741 (A000217 (n + 6) + 6).toNat

end

end A062127.P4976446549354188562

namespace A062127

/-- `A046741(A000217(n+6)+6)` -/
def P4976446549354188562.Spec : Prop :=
  ∀ n, P4976446549354188562.a n = A062127 n

end A062127

/-! ## A062127.P15868452543256548200

`A308244(A000217(n+7)-7)`
-/

namespace A062127.P15868452543256548200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308244 (A000217 (n + 7) - 7).toNat

end

end A062127.P15868452543256548200

namespace A062127

/-- `A308244(A000217(n+7)-7)` -/
def P15868452543256548200.Spec : Prop :=
  ∀ n, P15868452543256548200.a n = A062127 n

end A062127

/-! ## A062127.P7157385107627716755

`A308244(n+1+A000096(n+5))`
-/

namespace A062127.P7157385107627716755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308244 ((n + 1 : ℤ) + A000096 (n + 5)).toNat

end

end A062127.P7157385107627716755

namespace A062127

/-- `A308244(n+1+A000096(n+5))` -/
def P7157385107627716755.Spec : Prop :=
  ∀ n, P7157385107627716755.a n = A062127 n

end A062127

/-! ## A062127.P8357563619126456007

`A046741(A046691(n+6)-A144396(n+2))`
-/

namespace A062127.P8357563619126456007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046741 (A046691 (n + 6) - A144396 (n + 2)).toNat

end

end A062127.P8357563619126456007

namespace A062127

/-- `A046741(A046691(n+6)-A144396(n+2))` -/
def P8357563619126456007.Spec : Prop :=
  ∀ n, P8357563619126456007.a n = A062127 n

end A062127

/-! ## A062127.P12819368014568084725

`A046741(A144396(n+10)+A046691(n+2))`
-/

namespace A062127.P12819368014568084725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046741 (A144396 (n + 10) + A046691 (n + 2)).toNat

end

end A062127.P12819368014568084725

namespace A062127

/-- `A046741(A144396(n+10)+A046691(n+2))` -/
def P12819368014568084725.Spec : Prop :=
  ∀ n, P12819368014568084725.a n = A062127 n

end A062127

/-!
# A062128: In base 2: start with n; if palindrome, stop; otherwise add to itself with digits reversed; a(n) gives palindrome at which it stops, or -1 if no palindrome is ever reached.

The programs for A062128, there is no canonical definition to state claims against.
-/

/-! ## A062128.P14826305422665221427

`A007088(and(A000225(n), A062130(n)))`
-/

namespace A062128.P14826305422665221427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.land (A000225 n) (A062130 n)).toNat

end

end A062128.P14826305422665221427

/-! ## A062128.P7312382192910541843

`A007088(and(A062130(n), A083420(n)))`
-/

namespace A062128.P7312382192910541843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.land (A062130 n) (A083420 n)).toNat

end

end A062128.P7312382192910541843

/-! ## A062128.P13065948510808600343

`A007088(and(A062130(n), A099393(n)))`
-/

namespace A062128.P13065948510808600343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.land (A062130 n) (A099393 n)).toNat

end

end A062128.P13065948510808600343

/-! ## A062128.P7919593140565814026

`A007088(and(A062130(n), A103454(n)))`
-/

namespace A062128.P7919593140565814026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.land (A062130 n) (A103454 n)).toNat

end

end A062128.P7919593140565814026

/-! ## A062128.P18160178637300350656

`A007088(and(A062130(n), A114569(n)))`
-/

namespace A062128.P18160178637300350656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.land (A062130 n) (A114569 n)).toNat

end

end A062128.P18160178637300350656

/-!
# A062129: In base 2: start with n; add to itself with digits reversed; if palindrome, stop; otherwise repeat; a(n) gives palindrome at which it stops, or -1 if no palindrome is ever reached.

The programs for A062129, there is no canonical definition to state claims against.
-/

/-! ## A062129.P2789348387711632418

`A062128(n*(char[A006995(n+1)]+1))`
-/

namespace A062129.P2789348387711632418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006995 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062128 (n * ((if ∃ j, f1 j = (n : ℤ) then 1 else 0) + 1))

end

end A062129.P2789348387711632418

/-! ## A062129.P16200191208876050129

`A062128(A055944(n))`
-/

namespace A062129.P16200191208876050129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062128 (A055944 n).toNat

end

end A062129.P16200191208876050129

/-! ## A062129.P10549477687772074620

`A062128(A030101(n)+n)`
-/

namespace A062129.P10549477687772074620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062128 (A030101 n + (n : ℤ)).toNat

end

end A062129.P10549477687772074620

/-! ## A062129.P7320554036875903518

`A062128(A325401(2*n)+n)`
-/

namespace A062129.P7320554036875903518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062128 (A325401 (2 * n) + (n : ℤ)).toNat

end

end A062129.P7320554036875903518

/-! ## A062129.P15530404621742287999

`A062128(2*n-A055945(n))`
-/

namespace A062129.P15530404621742287999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062128 ((2 * n : ℤ) - A055945 n).toNat

end

end A062129.P15530404621742287999

/-! ## A062129.P17377818216470894458

`A062128(n-A055945(n)+n)`
-/

namespace A062129.P17377818216470894458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062128 ((n : ℤ) - A055945 n + (n : ℤ)).toNat

end

end A062129.P17377818216470894458

/-! ## A062129.P16521452442160870429

`A062128(n-(A055945(n)-n))`
-/

namespace A062129.P16521452442160870429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062128 ((n : ℤ) - (A055945 n - (n : ℤ))).toNat

end

end A062129.P16521452442160870429

/-! ## A062129.P7441169723740088815

`A062128(A325402(n)+A325401(n))`
-/

namespace A062129.P7441169723740088815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062128 (A325402 n + A325401 n).toNat

end

end A062129.P7441169723740088815

/-!
# A062131: A062129 written in base 10.

The programs for A062131, there is no canonical definition to state claims against.
-/

/-! ## A062131.P16308835456674623013

`A062130(A055944(n))`
-/

namespace A062131.P16308835456674623013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062130 (A055944 n).toNat

end

end A062131.P16308835456674623013

/-! ## A062131.P11197626411655719975

`A062130(A030101(n)+n)`
-/

namespace A062131.P11197626411655719975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062130 (A030101 n + (n : ℤ)).toNat

end

end A062131.P11197626411655719975

/-! ## A062131.P8896219011408989547

`A062130(A325401(2*n)+n)`
-/

namespace A062131.P8896219011408989547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062130 (A325401 (2 * n) + (n : ℤ)).toNat

end

end A062131.P8896219011408989547

/-! ## A062131.P4580263256079671704

`A062130(2*n-A055945(n))`
-/

namespace A062131.P4580263256079671704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062130 ((2 * n : ℤ) - A055945 n).toNat

end

end A062131.P4580263256079671704

/-! ## A062131.P17869831221883058168

`A062130(n-A055945(n)+n)`
-/

namespace A062131.P17869831221883058168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062130 ((n : ℤ) - A055945 n + (n : ℤ)).toNat

end

end A062131.P17869831221883058168

/-! ## A062131.P9880540160162382942

`A062130(n-(A055945(n)-n))`
-/

namespace A062131.P9880540160162382942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062130 ((n : ℤ) - (A055945 n - (n : ℤ))).toNat

end

end A062131.P9880540160162382942

/-! ## A062131.P6225265675021678194

`A062130(A325402(n)+A325401(n))`
-/

namespace A062131.P6225265675021678194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062130 (A325402 n + A325401 n).toNat

end

end A062131.P6225265675021678194

/-!
# A062132: Digit sums of the primes resulting from A061248.

The programs for A062132, there is no canonical definition to state claims against.
-/

/-! ## A062132.P9058445228681552360

`∑{digits}[A061248(n+1), #]`
-/

namespace A062132.P9058445228681552360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061248 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A062132.P9058445228681552360

/-! ## A062132.P17279831916457166368

`record[∑{digits}[A069802(n+1), #]]`
-/

namespace A062132.P17279831916457166368
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069802 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n).natAbs).map fun (x : ℕ) => x).sum

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A062132.P17279831916457166368

/-! ## A062132.P13431162848665456216

`eq[A046765(n), A378989(A379044(n+4))]`
-/

namespace A062132.P13431162848665456216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046765 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378989 (A379044 (n + 4)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A062132.P13431162848665456216

/-! ## A062132.P12402022982297490322

`A133223(A212445(n+1)+A151909(3*n+2))`
-/

namespace A062132.P12402022982297490322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133223 (A212445 (n + 1) + A151909 (3 * n + 2)).toNat

end

end A062132.P12402022982297490322

/-! ## A062132.P8255764898812977908

`record[A007605(n+1)]`
-/

namespace A062132.P8255764898812977908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007605 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A062132.P8255764898812977908

/-!
# A062134: Triangle of coefficients of polynomials (rising powers) useful for convolutions of A001333(n+1), n >= 0 (associated Pell numbers).

The programs for A062134, there is no canonical definition to state claims against.
-/

/-! ## A062134.P11168944185609281324

`and(A186448(n+1), A195770(A002868(n)))`
-/

namespace A062134.P11168944185609281324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A186448 (n + 1)) (A195770 (A002868 n).toNat)

end

end A062134.P11168944185609281324

/-! ## A062134.P15737094426555189707

`and(A195770(A002868(n)), A327568(n+1))`
-/

namespace A062134.P15737094426555189707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A195770 (A002868 n).toNat) (A327568 (n + 1))

end

end A062134.P15737094426555189707

/-! ## A062134.P13809257959491131059

`lcm(A068456(A137861(n+1)), A068496(n+1))`
-/

namespace A062134.P13809257959491131059
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A068456 (A137861 (n + 1)).toNat) (A068496 (n + 1))

end

end A062134.P13809257959491131059

/-!
# A062135: Odd-numbered columns of Losanitsch triangle A034851 formatted as triangle with an additional first column.

The programs for A062135, there is no canonical definition to state claims against.
-/

/-! ## A062135.P6097162436959344107

`A048766(A000217(A060086(n))²)`
-/

namespace A062135.P6097162436959344107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A000217 (A060086 n).toNat ^ 2).toNat

end

end A062135.P6097162436959344107

/-! ## A062135.P12596854481353013385

`A122924(A289481(n))+A060086(n)`
-/

namespace A062135.P12596854481353013385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122924 (A289481 n).toNat + A060086 n

end

end A062135.P12596854481353013385

/-! ## A062135.P6124813965051752063

`A363733(n)+A178798(A064045(n))`
-/

namespace A062135.P6124813965051752063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363733 n + A178798 (A064045 n).toNat

end

end A062135.P6124813965051752063

/-! ## A062135.P17558455459001241410

`A363733(n)%A176465(n+1)`
-/

namespace A062135.P17558455459001241410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A363733 n) (A176465 (n + 1))

end

end A062135.P17558455459001241410

/-! ## A062135.P5517004201810658862

`A363733(n)+A097945(A083496(n))`
-/

namespace A062135.P5517004201810658862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363733 n + A097945 (A083496 n).toNat

end

end A062135.P5517004201810658862

/-!
# A062136: Twelfth column of Losanitsch's triangle A034851 (formatted as lower triangular matrix).

The programs for A062136, the canonical program `A062136.P11052727376008095055` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062136 has offset 0).

The definition of A062136 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A062136.P12601485414825100504

`A299338(n)+∑[A282078(n)]`
-/

namespace A062136.P12601485414825100504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282078 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299338 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062136.P12601485414825100504

namespace A062136

/-- `A299338(n)+∑[A282078(n)]` -/
def P12601485414825100504.Spec : Prop :=
  ∀ n, P12601485414825100504.a n = A062136 n

end A062136

/-! ## A062136.P11052727376008095055

`A299338(n)+∑[∑[A282077(n)]]`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A062136

/-- `A299338(n)+∑[∑[A282077(n)]]` -/
def P11052727376008095055.Spec : Prop :=
  ∀ n, P11052727376008095055.a n = A062136 n

theorem P11052727376008095055.correct : P11052727376008095055.Spec := by
  intro n
  simp only [A062136]

end A062136

/-! ## A062136.P950409283384160939

`∑[A282078(n)]+A299337((n+1)%2+n)/2`
-/

namespace A062136.P950409283384160939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282078 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) + (A299337 ((n + 1) % 2 + n) : ℚ) / 2

end

end A062136.P950409283384160939

namespace A062136

/-- `∑[A282078(n)]+A299337((n+1)%2+n)/2` -/
def P950409283384160939.Spec : Prop :=
  ∀ n, P950409283384160939.a n = (A062136 n : ℚ)

end A062136

/-! ## A062136.P2410009058072707757

`A000579(A110654(n+11))+∑[A282078(n)]`
-/

namespace A062136.P2410009058072707757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282078 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000579 (A110654 (n + 11)).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062136.P2410009058072707757

namespace A062136

/-- `A000579(A110654(n+11))+∑[A282078(n)]` -/
def P2410009058072707757.Spec : Prop :=
  ∀ n, P2410009058072707757.a n = A062136 n

end A062136

/-! ## A062136.P16916724272326522404

`A282011(A000124(n+11)+10)`
-/

namespace A062136.P16916724272326522404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282011 (A000124 (n + 11) + 10).toNat

end

end A062136.P16916724272326522404

namespace A062136

/-- `A282011(A000124(n+11)+10)` -/
def P16916724272326522404.Spec : Prop :=
  ∀ n, P16916724272326522404.a n = A062136 n

end A062136

/-! ## A062136.P10649170134119982570

`A282011(A167499(n)+A017281(n+7))`
-/

namespace A062136.P10649170134119982570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282011 (A167499 n + A017281 (n + 7)).toNat

end

end A062136.P10649170134119982570

namespace A062136

/-- `A282011(A167499(n)+A017281(n+7))` -/
def P10649170134119982570.Spec : Prop :=
  ∀ n, P10649170134119982570.a n = A062136 n

end A062136

/-! ## A062136.P5197188038708915619

`A034851(A055999(n+9)-6)`
-/

namespace A062136.P5197188038708915619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034851 (A055999 (n + 9) - 6).toNat

end

end A062136.P5197188038708915619

namespace A062136

/-- `A034851(A055999(n+9)-6)` -/
def P5197188038708915619.Spec : Prop :=
  ∀ n, P5197188038708915619.a n = A062136 n

end A062136

/-! ## A062136.P4795926016118482357

`A034851(A000217(n+11)+11)`
-/

namespace A062136.P4795926016118482357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034851 (A000217 (n + 11) + 11).toNat

end

end A062136.P4795926016118482357

namespace A062136

/-- `A034851(A000217(n+11)+11)` -/
def P4795926016118482357.Spec : Prop :=
  ∀ n, P4795926016118482357.a n = A062136 n

end A062136

/-! ## A062136.P12594968542731012490

`A034851(Δ[A000292(n+10)]+n)`
-/

namespace A062136.P12594968542731012490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 10)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034851 (f1 (n + 1) - f1 n + (n : ℤ)).toNat

end

end A062136.P12594968542731012490

namespace A062136

/-- `A034851(Δ[A000292(n+10)]+n)` -/
def P12594968542731012490.Spec : Prop :=
  ∀ n, P12594968542731012490.a n = A062136 n

end A062136

/-!
# A062137: Coefficient triangle of generalized Laguerre polynomials n!*L(n,3,x) (rising powers of x).

The programs for A062137, the canonical program `A062137.P15553256136544718021` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062137 has offset 0).

The definition of A062137 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A062137.P15553256136544718021

`(-1)^col(n)*row(n)!*C(row(n)+3, row(n)-col(n))/col(n)!`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A062137

/-- `(-1)^col(n)*row(n)!*C(row(n)+3, row(n)-col(n))/col(n)!` -/
def P15553256136544718021.Spec : Prop :=
  ∀ n, P15553256136544718021.a n = (A062137 n : ℚ)

end A062137

/-! ## A062137.P11236518600622181277

`(row(n)+col(n)+3)*T(n-1,k)-T(n-1,k-1)` with `a(0)=1`
-/

namespace A062137.P11236518600622181277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (SequenceMachineLib.triRow n + SequenceMachineLib.triCol n + 3 : ℤ) * SequenceMachineLib.triUp a n - SequenceMachineLib.triUpLeft a n

end

end A062137.P11236518600622181277

namespace A062137

/-- `(row(n)+col(n)+3)*T(n-1,k)-T(n-1,k-1)` -/
def P11236518600622181277.Spec : Prop :=
  ∀ n, P11236518600622181277.a n = A062137 n

end A062137

/-! ## A062137.P6184650230709915596

`A033999(A002262(n))*A143497(n+2)`
-/

namespace A062137.P6184650230709915596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A002262 n).toNat * A143497 (n + 2)

end

end A062137.P6184650230709915596

namespace A062137

/-- `A033999(A002262(n))*A143497(n+2)` -/
def P6184650230709915596.Spec : Prop :=
  ∀ n, P6184650230709915596.a n = A062137 n

end A062137

/-! ## A062137.P18322984865289628098

`A097807(A061579(n))*A143497(n+2)`
-/

namespace A062137.P18322984865289628098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 (A061579 n).toNat * A143497 (n + 2)

end

end A062137.P18322984865289628098

namespace A062137

/-- `A097807(A061579(n))*A143497(n+2)` -/
def P18322984865289628098.Spec : Prop :=
  ∀ n, P18322984865289628098.a n = A062137 n

end A062137

/-! ## A062137.P5144270439945115771

`A033999(A294317(n))*A143497(n+2)`
-/

namespace A062137.P5144270439945115771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A294317 n).toNat * A143497 (n + 2)

end

end A062137.P5144270439945115771

namespace A062137

/-- `A033999(A294317(n))*A143497(n+2)` -/
def P5144270439945115771.Spec : Prop :=
  ∀ n, P5144270439945115771.a n = A062137 n

end A062137

/-! ## A062137.P17704328241998256897

`A062157(A002260(n+1))*A143497(n+2)`
-/

namespace A062137.P17704328241998256897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (A002260 (n + 1)).toNat * A143497 (n + 2)

end

end A062137.P17704328241998256897

namespace A062137

/-- `A062157(A002260(n+1))*A143497(n+2)` -/
def P17704328241998256897.Spec : Prop :=
  ∀ n, P17704328241998256897.a n = A062137 n

end A062137

/-! ## A062137.P1537536448707981158

`A105278(n+1)/A066667(n)*A143497(n+2)`
-/

namespace A062137.P1537536448707981158
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A105278 (n + 1) : ℚ) / (A066667 n : ℚ) * (A143497 (n + 2) : ℚ)

end

end A062137.P1537536448707981158

namespace A062137

/-- `A105278(n+1)/A066667(n)*A143497(n+2)` -/
def P1537536448707981158.Spec : Prop :=
  ∀ n, P1537536448707981158.a n = (A062137 n : ℚ)

end A062137

/-! ## A062137.P10743663516615934769

`A143497(n+2)/A143498(n+3)*A062138(n)`
-/

namespace A062137.P10743663516615934769
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143497 (n + 2) : ℚ) / (A143498 (n + 3) : ℚ) * (A062138 n : ℚ)

end

end A062137.P10743663516615934769

namespace A062137

/-- `A143497(n+2)/A143498(n+3)*A062138(n)` -/
def P10743663516615934769.Spec : Prop :=
  ∀ n, P10743663516615934769.a n = (A062137 n : ℚ)

end A062137

/-! ## A062137.P17419806068740973035

`A143497(n+2)*A165586(A059268(n))`
-/

namespace A062137.P17419806068740973035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143497 (n + 2) * A165586 (A059268 n).toNat

end

end A062137.P17419806068740973035

namespace A062137

/-- `A143497(n+2)*A165586(A059268(n))` -/
def P17419806068740973035.Spec : Prop :=
  ∀ n, P17419806068740973035.a n = A062137 n

end A062137

/-!
# A062138: Coefficient triangle of generalized Laguerre polynomials n!*L(n,5,x)(rising powers of x).

The programs for A062138, the canonical program `A062138.P6879977391677607271` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062138 has offset 0).

The definition of A062138 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A062138.P6879977391677607271

`(-1)^col(n)*row(n)!*C(row(n)+5, row(n)-col(n))/col(n)!`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A062138

/-- `(-1)^col(n)*row(n)!*C(row(n)+5, row(n)-col(n))/col(n)!` -/
def P6879977391677607271.Spec : Prop :=
  ∀ n, P6879977391677607271.a n = (A062138 n : ℚ)

end A062138

/-! ## A062138.P10226293470753936397

`A033999(A002262(n))*A143498(n+3)`
-/

namespace A062138.P10226293470753936397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A002262 n).toNat * A143498 (n + 3)

end

end A062138.P10226293470753936397

namespace A062138

/-- `A033999(A002262(n))*A143498(n+3)` -/
def P10226293470753936397.Spec : Prop :=
  ∀ n, P10226293470753936397.a n = A062138 n

end A062138

/-! ## A062138.P15188099413782478749

`A033999(A061885(n))*A143498(n+3)`
-/

namespace A062138.P15188099413782478749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A061885 n).toNat * A143498 (n + 3)

end

end A062138.P15188099413782478749

namespace A062138

/-- `A033999(A061885(n))*A143498(n+3)` -/
def P15188099413782478749.Spec : Prop :=
  ∀ n, P15188099413782478749.a n = A062138 n

end A062138

/-! ## A062138.P9854582755147456828

`A021010(A112367(n))*A143498(n+3)`
-/

namespace A062138.P9854582755147456828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021010 (A112367 n).toNat * A143498 (n + 3)

end

end A062138.P9854582755147456828

namespace A062138

/-- `A021010(A112367(n))*A143498(n+3)` -/
def P9854582755147456828.Spec : Prop :=
  ∀ n, P9854582755147456828.a n = A062138 n

end A062138

/-! ## A062138.P18340257481881311803

`A097807(A061579(n))*A143498(n+3)`
-/

namespace A062138.P18340257481881311803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 (A061579 n).toNat * A143498 (n + 3)

end

end A062138.P18340257481881311803

namespace A062138

/-- `A097807(A061579(n))*A143498(n+3)` -/
def P18340257481881311803.Spec : Prop :=
  ∀ n, P18340257481881311803.a n = A062138 n

end A062138

/-! ## A062138.P4070707933610221260

`A033999(A294317(n))*A143498(n+3)`
-/

namespace A062138.P4070707933610221260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A294317 n).toNat * A143498 (n + 3)

end

end A062138.P4070707933610221260

namespace A062138

/-- `A033999(A294317(n))*A143498(n+3)` -/
def P4070707933610221260.Spec : Prop :=
  ∀ n, P4070707933610221260.a n = A062138 n

end A062138

/-! ## A062138.P10556080203728123636

`A062157(A002260(n+1))*A143498(n+3)`
-/

namespace A062138.P10556080203728123636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (A002260 (n + 1)).toNat * A143498 (n + 3)

end

end A062138.P10556080203728123636

namespace A062138

/-- `A062157(A002260(n+1))*A143498(n+3)` -/
def P10556080203728123636.Spec : Prop :=
  ∀ n, P10556080203728123636.a n = A062138 n

end A062138

/-! ## A062138.P13897407601545653580

`A143497(n+2)/A062137(n)*A143498(n+3)`
-/

namespace A062138.P13897407601545653580
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143497 (n + 2) : ℚ) / (A062137 n : ℚ) * (A143498 (n + 3) : ℚ)

end

end A062138.P13897407601545653580

namespace A062138

/-- `A143497(n+2)/A062137(n)*A143498(n+3)` -/
def P13897407601545653580.Spec : Prop :=
  ∀ n, P13897407601545653580.a n = (A062138 n : ℚ)

end A062138

/-! ## A062138.P12448455738337996516

`A097807(A002378(n)%A080036(n))*A143498(n+3)`
-/

namespace A062138.P12448455738337996516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 (Int.tmod (A002378 n) (A080036 n)).toNat * A143498 (n + 3)

end

end A062138.P12448455738337996516

namespace A062138

/-- `A097807(A002378(n)%A080036(n))*A143498(n+3)` -/
def P12448455738337996516.Spec : Prop :=
  ∀ n, P12448455738337996516.a n = A062138 n

end A062138

/-! ## A062138.P14618153940364915014

`A143498(n+3)*A165586(A059268(n))`
-/

namespace A062138.P14618153940364915014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143498 (n + 3) * A165586 (A059268 n).toNat

end

end A062138.P14618153940364915014

namespace A062138

/-- `A143498(n+3)*A165586(A059268(n))` -/
def P14618153940364915014.Spec : Prop :=
  ∀ n, P14618153940364915014.a n = A062138 n

end A062138

/-!
# A062139: Coefficient triangle of generalized Laguerre polynomials n!*L(n,2,x) (rising powers of x).

The programs for A062139, the canonical program `A062139.P5139035719276867560` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062139 has offset 0).

The definition of A062139 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A062139.P5139035719276867560

`(row(n)+col(n)+2)*T(n-1,k)-T(n-1,k-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A062139

/-- `(row(n)+col(n)+2)*T(n-1,k)-T(n-1,k-1)` -/
def P5139035719276867560.Spec : Prop :=
  ∀ n, P5139035719276867560.a n = A062139 n

theorem P5139035719276867560.correct : P5139035719276867560.Spec := by
  intro n
  simp only [A062139]

end A062139

/-! ## A062139.P11751246109148420655

`(-1)^col(n)*row(n)!*C(row(n)+2, row(n)-col(n))/col(n)!`
-/

namespace A062139.P11751246109148420655
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((-1) ^ SequenceMachineLib.triCol n * (Nat.factorial (SequenceMachineLib.triRow n) : ℤ) * (Nat.choose (SequenceMachineLib.triRow n + 2) ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ)).toNat : ℤ) : ℚ) / (Nat.factorial (SequenceMachineLib.triCol n) : ℚ)

end

end A062139.P11751246109148420655

namespace A062139

/-- `(-1)^col(n)*row(n)!*C(row(n)+2, row(n)-col(n))/col(n)!` -/
def P11751246109148420655.Spec : Prop :=
  ∀ n, P11751246109148420655.a n = (A062139 n : ℚ)

end A062139

/-!
# A062140: Coefficient triangle of generalized Laguerre polynomials n!*L(n,4,x) (rising powers of x).

The programs for A062140, the canonical program `A062140.P11036903139965022835` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062140 has offset 0).

The definition of A062140 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A062140.P11036903139965022835

`(-1)^col(n)*row(n)!*C(row(n)+4, row(n)-col(n))/col(n)!`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A062140

/-- `(-1)^col(n)*row(n)!*C(row(n)+4, row(n)-col(n))/col(n)!` -/
def P11036903139965022835.Spec : Prop :=
  ∀ n, P11036903139965022835.a n = (A062140 n : ℚ)

end A062140

/-! ## A062140.P16478638782775547300

`T(n-1,k)+(row(n)+col(n)+3)*T(n-1,k)-T(n-1,k-1)` with `a(0)=1`
-/

namespace A062140.P16478638782775547300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUp a n + (SequenceMachineLib.triRow n + SequenceMachineLib.triCol n + 3 : ℤ) * SequenceMachineLib.triUp a n - SequenceMachineLib.triUpLeft a n

end

end A062140.P16478638782775547300

namespace A062140

/-- `T(n-1,k)+(row(n)+col(n)+3)*T(n-1,k)-T(n-1,k-1)` -/
def P16478638782775547300.Spec : Prop :=
  ∀ n, P16478638782775547300.a n = A062140 n

end A062140

/-!
# A062141: Third column sequence of coefficient triangle A062137 of generalized Laguerre polynomials n!*L(n,3,x).

The programs for A062141, the canonical program `A062141.P17192027177821802703` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062141 has offset 0).

The definition of A062141 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A062141.P17192027177821802703

`(n+2)!*C(n+5, 5)/2`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A062141

/-- `(n+2)!*C(n+5, 5)/2` -/
def P17192027177821802703.Spec : Prop :=
  ∀ n, P17192027177821802703.a n = (A062141 n : ℚ)

end A062141

/-! ## A062141.P2096611951896278828

`C(n+5, 5)*∑[n+1]*n!`
-/

namespace A062141.P2096611951896278828
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 5) 5 * (∑ j ∈ Finset.range (n + 1), f1 j) * Nat.factorial n

end

end A062141.P2096611951896278828

namespace A062141

/-- `C(n+5, 5)*∑[n+1]*n!` -/
def P2096611951896278828.Spec : Prop :=
  ∀ n, (P2096611951896278828.a n : ℤ) = A062141 n

end A062141

/-! ## A062141.P2591726736971148919

`((n+3)²+n+1)*a(n-1)/n` with `a(0)=1`
-/

namespace A062141.P2591726736971148919
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  ((n + 3) ^ 2 + (n + 1) : ℚ) * (a (n - 1) / (n : ℚ))

end

end A062141.P2591726736971148919

namespace A062141

/-- `((n+3)²+n+1)*a(n-1)/n` -/
def P2591726736971148919.Spec : Prop :=
  ∀ n, P2591726736971148919.a n = (A062141 n : ℚ)

end A062141

/-! ## A062141.P3125027678236192369

`n!*A107417(n)`
-/

namespace A062141.P3125027678236192369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A107417 n

end

end A062141.P3125027678236192369

namespace A062141

/-- `n!*A107417(n)` -/
def P3125027678236192369.Spec : Prop :=
  ∀ n, P3125027678236192369.a n = A062141 n

end A062141

/-! ## A062141.P9010300108547438893

`A062137(∑[n+2]+3)`
-/

namespace A062141.P9010300108547438893
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062137 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A062141.P9010300108547438893

namespace A062141

/-- `A062137(∑[n+2]+3)` -/
def P9010300108547438893.Spec : Prop :=
  ∀ n, P9010300108547438893.a n = A062141 n

end A062141

/-! ## A062141.P9464459641686378587

`A143497(∑[n+2]+5)`
-/

namespace A062141.P9464459641686378587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143497 (∑ j ∈ Finset.range (n + 1), f1 j + 5)

end

end A062141.P9464459641686378587

namespace A062141

/-- `A143497(∑[n+2]+5)` -/
def P9464459641686378587.Spec : Prop :=
  ∀ n, P9464459641686378587.a n = A062141 n

end A062141

/-! ## A062141.P18001952635125832962

`∑[n+1]*A001725(n+5)`
-/

namespace A062141.P18001952635125832962
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A001725 (n + 5)

end

end A062141.P18001952635125832962

namespace A062141

/-- `∑[n+1]*A001725(n+5)` -/
def P18001952635125832962.Spec : Prop :=
  ∀ n, P18001952635125832962.a n = A062141 n

end A062141

/-! ## A062141.P13397512394096583280

`(A062199(n+1)-A061206(n+2))/2`
-/

namespace A062141.P13397512394096583280
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062199 (n + 1) - A061206 (n + 2) : ℚ) / 2

end

end A062141.P13397512394096583280

namespace A062141

/-- `(A062199(n+1)-A061206(n+2))/2` -/
def P13397512394096583280.Spec : Prop :=
  ∀ n, P13397512394096583280.a n = (A062141 n : ℚ)

end A062141

/-! ## A062141.P11160328437822148950

`A051923(n)*A066667(A000217(n))`
-/

namespace A062141.P11160328437822148950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051923 n * A066667 (A000217 n).toNat

end

end A062141.P11160328437822148950

namespace A062141

/-- `A051923(n)*A066667(A000217(n))` -/
def P11160328437822148950.Spec : Prop :=
  ∀ n, P11160328437822148950.a n = A062141 n

end A062141

/-! ## A062141.P15129942150420278267

`A000217(n+1)*A062138(A000217(n))`
-/

namespace A062141.P15129942150420278267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) * A062138 (A000217 n).toNat

end

end A062141.P15129942150420278267

namespace A062141

/-- `A000217(n+1)*A062138(A000217(n))` -/
def P15129942150420278267.Spec : Prop :=
  ∀ n, P15129942150420278267.a n = A062141 n

end A062141

/-!
# A062142: Fourth (unsigned) column sequence of coefficient triangle A062137 of generalized Laguerre polynomials n!*L(n,3,x).

The programs for A062142, the canonical program `A062142.P2601733907454891225` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062142 has offset 0).

The definition of A062142 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A062142.P2601733907454891225

`(n+3)!*C(n+6, 6)/6`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A062142

/-- `(n+3)!*C(n+6, 6)/6` -/
def P2601733907454891225.Spec : Prop :=
  ∀ n, P2601733907454891225.a n = (A062142 n : ℚ)

end A062142

/-! ## A062142.P2102568824780123469

`∏[n+6]/6*C(n+3, 3)`
-/

namespace A062142.P2102568824780123469
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 6

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 6 * (Nat.choose (n + 3) 3 : ℚ)

end

end A062142.P2102568824780123469

namespace A062142

/-- `∏[n+6]/6*C(n+3, 3)` -/
def P2102568824780123469.Spec : Prop :=
  ∀ n, P2102568824780123469.a n = (A062142 n : ℚ)

end A062142

/-! ## A062142.P349025010499074873

`∑[∑[n+1]]*∑[∑[∑[∑[∑[n+1]]]]]*n!`
-/

namespace A062142.P349025010499074873
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f7 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f7 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (∑ j ∈ Finset.range (n + 1), f3 j) * Nat.factorial n

end

end A062142.P349025010499074873

namespace A062142

/-- `∑[∑[n+1]]*∑[∑[∑[∑[∑[n+1]]]]]*n!` -/
def P349025010499074873.Spec : Prop :=
  ∀ n, (P349025010499074873.a n : ℤ) = A062142 n

end A062142

/-! ## A062142.P8515655705696298605

`A143497(∑[n+3]+8)`
-/

namespace A062142.P8515655705696298605
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143497 (∑ j ∈ Finset.range (n + 1), f1 j + 8)

end

end A062142.P8515655705696298605

namespace A062142

/-- `A143497(∑[n+3]+8)` -/
def P8515655705696298605.Spec : Prop :=
  ∀ n, P8515655705696298605.a n = A062142 n

end A062142

/-! ## A062142.P18039543077178959753

`∑[∑[n+1]]*A001730(n+6)`
-/

namespace A062142.P18039543077178959753
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A001730 (n + 6)

end

end A062142.P18039543077178959753

namespace A062142

/-- `∑[∑[n+1]]*A001730(n+6)` -/
def P18039543077178959753.Spec : Prop :=
  ∀ n, P18039543077178959753.a n = A062142 n

end A062142

/-! ## A062142.P12664164679371510875

`abs(A062137(A167614(n+2)))`
-/

namespace A062142.P12664164679371510875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A062137 (A167614 (n + 2)).toNat|

end

end A062142.P12664164679371510875

namespace A062142

/-- `abs(A062137(A167614(n+2)))` -/
def P12664164679371510875.Spec : Prop :=
  ∀ n, P12664164679371510875.a n = A062142 n

end A062142

/-!
# A062143: Fifth column sequence of coefficient triangle A062137 of generalized Laguerre polynomials n!*L(n,3,x).

The programs for A062143, there is no canonical definition to state claims against.
-/

/-! ## A062143.P11800521342332617185

`∏[n+4]/4*C(n+7, 7)`
-/

namespace A062143.P11800521342332617185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 4 * (Nat.choose (n + 7) 7 : ℚ)

end

end A062143.P11800521342332617185

/-! ## A062143.P15296446836327821932

`C(n+4, 4)*C(n+7, 7)*n!`
-/

namespace A062143.P15296446836327821932
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 4) 4 * Nat.choose (n + 7) 7 * Nat.factorial n

end

end A062143.P15296446836327821932

/-! ## A062143.P18068791704357161150

`C(n+7, 7)*∏[(3-ceil(acot(n)))²+n]`
-/

namespace A062143.P18068791704357161150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 - ⌈SequenceMachineLib.acot (n : ℝ)⌉) ^ 2 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 7) 7 : ℤ) * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A062143.P18068791704357161150

/-! ## A062143.P15109142630597383433

`C(n+7, 7)*∏[3%(n+3)+n+1]`
-/

namespace A062143.P15109142630597383433
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 % (n + 3) + (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 7) 7 * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A062143.P15109142630597383433

/-! ## A062143.P9491566122471227128

`n!*A107419(n)`
-/

namespace A062143.P9491566122471227128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A107419 n

end

end A062143.P9491566122471227128

/-! ## A062143.P4636187469599868368

`C(n+7, 7)*A001720(n+4)`
-/

namespace A062143.P4636187469599868368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 7) 7 : ℤ) * A001720 (n + 4)

end

end A062143.P4636187469599868368

/-! ## A062143.P5324564762318518094

`A143497(A166136(n+3))`
-/

namespace A062143.P5324564762318518094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143497 (A166136 (n + 3)).toNat

end

end A062143.P5324564762318518094

/-! ## A062143.P6844663474739744087

`A062137(eq[4, A002262(n)])`
-/

namespace A062143.P6844663474739744087
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062137 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A062143.P6844663474739744087

/-! ## A062143.P16279839433893021849

`A062137(eq[16, A059268(n)])`
-/

namespace A062143.P16279839433893021849
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062137 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A062143.P16279839433893021849

/-! ## A062143.P12272385802618322296

`A062137(A055998(n+2)+7)`
-/

namespace A062143.P12272385802618322296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062137 (A055998 (n + 2) + 7).toNat

end

end A062143.P12272385802618322296

/-!
# A062144: Sixth (unsigned) column sequence of coefficient triangle A062137 of generalized Laguerre polynomials n!*L(n,3,x).

The programs for A062144, there is no canonical definition to state claims against.
-/

/-! ## A062144.P17780260766411172592

`C(n+5, 5)*C(n+8, 8)*n!`
-/

namespace A062144.P17780260766411172592
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 5) 5 * Nat.choose (n + 8) 8 * Nat.factorial n

end

end A062144.P17780260766411172592

/-! ## A062144.P12511543966588977082

`n!*A107420(n)`
-/

namespace A062144.P12511543966588977082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A107420 n

end

end A062144.P12511543966588977082

/-! ## A062144.P18106946727556382215

`2*a(n-1)/n*A000096(n+5)` with `a(0)=1`
-/

namespace A062144.P18106946727556382215
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  2 * (a (n - 1) / (n : ℚ) * (A000096 (n + 5) : ℚ))

end

end A062144.P18106946727556382215

/-! ## A062144.P1465277355689521131

`A143497(A166136(n+4)+1)`
-/

namespace A062144.P1465277355689521131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143497 (A166136 (n + 4) + 1).toNat

end

end A062144.P1465277355689521131

/-! ## A062144.P12309286401087637794

`∑[A000580(n+7)]*A001725(n+5)`
-/

namespace A062144.P12309286401087637794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000580 (n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A001725 (n + 5)

end

end A062144.P12309286401087637794

/-! ## A062144.P3032680882788685183

`A001725(n+5)/A000142(n)*A049389(n)`
-/

namespace A062144.P3032680882788685183
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001725 (n + 5) : ℚ) / (A000142 n : ℚ) * (A049389 n : ℚ)

end

end A062144.P3032680882788685183

/-!
# A062145: Triangle read by rows: T(n, k) = [z^k] P(n, z) where P(n, z) = Sum_{k=0..n} binomial(n, k) * Pochhammer(n - k + c, k) * z^k / k! and c = 4.

The programs for A062145, the canonical program `A062145.P6455792719152663451` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062145 has offset 0).

The definition of A062145 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A062145.P6455792719152663451

`C(row(n), col(n))*C(row(n)+3, col(n))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A062145

/-- `C(row(n), col(n))*C(row(n)+3, col(n))` -/
def P6455792719152663451.Spec : Prop :=
  ∀ n, (P6455792719152663451.a n : ℤ) = A062145 n

theorem P6455792719152663451.correct : P6455792719152663451.Spec := by
  intro n
  simp only [A062145]

end A062145

/-! ## A062145.P13869614330531731082

`A007318(n)*A209518(comp[∑[n-1]])`
-/

namespace A062145.P13869614330531731082
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A209518 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A062145.P13869614330531731082

namespace A062145

/-- `A007318(n)*A209518(comp[∑[n-1]])` -/
def P13869614330531731082.Spec : Prop :=
  ∀ n, P13869614330531731082.a n = A062145 n

end A062145

/-! ## A062145.P12488241096073048170

`(A014473(n)+1)*A209518(comp[∑[n-1]])`
-/

namespace A062145.P12488241096073048170
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014473 n + 1) * A209518 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A062145.P12488241096073048170

namespace A062145

/-- `(A014473(n)+1)*A209518(comp[∑[n-1]])` -/
def P12488241096073048170.Spec : Prop :=
  ∀ n, P12488241096073048170.a n = A062145 n

end A062145

/-! ## A062145.P16567727697507053806

`abs(A108086(n)*A209518(A007401(n+1)))`
-/

namespace A062145.P16567727697507053806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A108086 n * A209518 (A007401 (n + 1)).toNat|

end

end A062145.P16567727697507053806

namespace A062145

/-- `abs(A108086(n)*A209518(A007401(n+1)))` -/
def P16567727697507053806.Spec : Prop :=
  ∀ n, P16567727697507053806.a n = A062145 n

end A062145

/-! ## A062145.P14553925477407832225

`abs(A130595(n)*A209518(A007401(n+1)))`
-/

namespace A062145.P14553925477407832225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A130595 n * A209518 (A007401 (n + 1)).toNat|

end

end A062145.P14553925477407832225

namespace A062145

/-- `abs(A130595(n)*A209518(A007401(n+1)))` -/
def P14553925477407832225.Spec : Prop :=
  ∀ n, P14553925477407832225.a n = A062145 n

end A062145

/-! ## A062145.P8545440906032123429

`A007318(lt[2, A025581(n)])*A007318(n)`
-/

namespace A062145.P8545440906032123429
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) * A007318 n

end

end A062145.P8545440906032123429

namespace A062145

/-- `A007318(lt[2, A025581(n)])*A007318(n)` -/
def P8545440906032123429.Spec : Prop :=
  ∀ n, P8545440906032123429.a n = A062145 n

end A062145

/-!
# A062146: Row sums of signed triangle A062137 (generalized Laguerre, a=3).

The programs for A062146, the canonical program `A062146.P11190952176520302228` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062146 has offset 0).

The definition of A062146 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A062146.P11190952176520302228

`(2*n+1)*a(n-1)-(n-1)*(n+2)*a(n-2)` with `a(0)=1, a(1)=3`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A062146

/-- `(2*n+1)*a(n-1)-(n-1)*(n+2)*a(n-2)` -/
def P11190952176520302228.Spec : Prop :=
  ∀ n, P11190952176520302228.a n = A062146 n

theorem P11190952176520302228.correct : P11190952176520302228.Spec := by
  intro n
  simp only [A062146]

end A062146

/-! ## A062146.P10459875577378020388

`A062197(n)+n*a(n-1)` with `a(0)=1`
-/

namespace A062146.P10459875577378020388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A062197 n + (n : ℤ) * a (n - 1)

end

end A062146.P10459875577378020388

namespace A062146

/-- `A062197(n)+n*a(n-1)` -/
def P10459875577378020388.Spec : Prop :=
  ∀ n, P10459875577378020388.a n = A062146 n

end A062146

/-! ## A062146.P12244716019602789360

`2*n*a(n-1)-A293116(n+2)` with `a(0)=1`
-/

namespace A062146.P12244716019602789360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * ((n : ℤ) * a (n - 1)) - A293116 (n + 2)

end

end A062146.P12244716019602789360

namespace A062146

/-- `2*n*a(n-1)-A293116(n+2)` -/
def P12244716019602789360.Spec : Prop :=
  ∀ n, P12244716019602789360.a n = A062146 n

end A062146

/-! ## A062146.P17514745683524969870

`2*A062197(n)-A066668(n+1)`
-/

namespace A062146.P17514745683524969870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A062197 n - A066668 (n + 1)

end

end A062146.P17514745683524969870

namespace A062146

/-- `2*A062197(n)-A066668(n+1)` -/
def P17514745683524969870.Spec : Prop :=
  ∀ n, P17514745683524969870.a n = A062146 n

end A062146

/-! ## A062146.P306493979495077684

`A009940(n+2)/A001478(n+1)+n*a(n-1)` with `a(0)=1`
-/

namespace A062146.P306493979495077684
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A009940 (n + 2) : ℚ) / (A001478 (n + 1) : ℚ) + (n : ℚ) * a (n - 1)

end

end A062146.P306493979495077684

namespace A062146

/-- `A009940(n+2)/A001478(n+1)+n*a(n-1)` -/
def P306493979495077684.Spec : Prop :=
  ∀ n, P306493979495077684.a n = (A062146 n : ℚ)

end A062146

/-!
# A062147: Row sums of unsigned triangle A062137 (generalized a=3 Laguerre).

The programs for A062147, the canonical program `A062147.P6442783690985145102` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062147 has offset 0).

The definition of A062147 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A062147.P6442783690985145102

`(2*n+3)*a(n-1)-(n-1)*(n+2)*a(n-2)` with `a(0)=1, a(1)=5`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A062147

/-- `(2*n+3)*a(n-1)-(n-1)*(n+2)*a(n-2)` -/
def P6442783690985145102.Spec : Prop :=
  ∀ n, P6442783690985145102.a n = A062147 n

theorem P6442783690985145102.correct : P6442783690985145102.Spec := by
  intro n
  simp only [A062147]

end A062147

/-! ## A062147.P2877126558737624321

`∑{#}[n, n!*C(n+3, n-#)/#!]`
-/

namespace A062147.P2877126558737624321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.factorial n * Nat.choose (n + 3) ((n : ℤ) - (k : ℤ)).toNat : ℚ) / (Nat.factorial k : ℚ)

end

end A062147.P2877126558737624321

namespace A062147

/-- `∑{#}[n, n!*C(n+3, n-#)/#!]` -/
def P2877126558737624321.Spec : Prop :=
  ∀ n, P2877126558737624321.a n = (A062147 n : ℚ)

end A062147

/-! ## A062147.P8543117952469813701

`A088699(A054000(n+2))`
-/

namespace A062147.P8543117952469813701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088699 (A054000 (n + 2)).toNat

end

end A062147.P8543117952469813701

namespace A062147

/-- `A088699(A054000(n+2))` -/
def P8543117952469813701.Spec : Prop :=
  ∀ n, P8543117952469813701.a n = A062147 n

end A062147

/-! ## A062147.P15127677796389014017

`A088699(A058331(n+2))`
-/

namespace A062147.P15127677796389014017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088699 (A058331 (n + 2)).toNat

end

end A062147.P15127677796389014017

namespace A062147

/-- `A088699(A058331(n+2))` -/
def P15127677796389014017.Spec : Prop :=
  ∀ n, P15127677796389014017.a n = A062147 n

end A062147

/-! ## A062147.P3171755912350333699

`A103194(n+1)-A105219(n)`
-/

namespace A062147.P3171755912350333699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103194 (n + 1) - A105219 n

end

end A062147.P3171755912350333699

namespace A062147

/-- `A103194(n+1)-A105219(n)` -/
def P3171755912350333699.Spec : Prop :=
  ∀ n, P3171755912350333699.a n = A062147 n

end A062147

/-! ## A062147.P11365325182321222681

`A006152(n+2)-A052852(n+1)`
-/

namespace A062147.P11365325182321222681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006152 (n + 2) - A052852 (n + 1)

end

end A062147.P11365325182321222681

namespace A062147

/-- `A006152(n+2)-A052852(n+1)` -/
def P11365325182321222681.Spec : Prop :=
  ∀ n, P11365325182321222681.a n = A062147 n

end A062147

/-! ## A062147.P15649076201933757138

`A000262(n+1)+A000262(n)*A002378(n)`
-/

namespace A062147.P15649076201933757138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000262 (n + 1) + A000262 n * A002378 n

end

end A062147.P15649076201933757138

namespace A062147

/-- `A000262(n+1)+A000262(n)*A002378(n)` -/
def P15649076201933757138.Spec : Prop :=
  ∀ n, P15649076201933757138.a n = A062147 n

end A062147

/-! ## A062147.P2383527263603422008

`A000262(n+1)+A103194(n+1)-A052852(n+1)`
-/

namespace A062147.P2383527263603422008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000262 (n + 1) + (A103194 (n + 1) - A052852 (n + 1))

end

end A062147.P2383527263603422008

namespace A062147

/-- `A000262(n+1)+A103194(n+1)-A052852(n+1)` -/
def P2383527263603422008.Spec : Prop :=
  ∀ n, P2383527263603422008.a n = A062147 n

end A062147

/-! ## A062147.P1080545332413245582

`A000262(n+1)+A006152(n+2)-A002720(n+1)`
-/

namespace A062147.P1080545332413245582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000262 (n + 1) + (A006152 (n + 2) - A002720 (n + 1))

end

end A062147.P1080545332413245582

namespace A062147

/-- `A000262(n+1)+A006152(n+2)-A002720(n+1)` -/
def P1080545332413245582.Spec : Prop :=
  ∀ n, P1080545332413245582.a n = A062147 n

end A062147

/-! ## A062147.P8589663532518259956

`A176120(∑[n+3]+n+3)`
-/

namespace A062147.P8589663532518259956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176120 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A062147.P8589663532518259956

namespace A062147

/-- `A176120(∑[n+3]+n+3)` -/
def P8589663532518259956.Spec : Prop :=
  ∀ n, P8589663532518259956.a n = A062147 n

end A062147

/-!
# A062148: Second (unsigned) column sequence of triangle A062138 (generalized a=5 Laguerre).

The programs for A062148, the canonical program `A062148.P13084586916641140267` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062148 has offset 0).

The definition of A062148 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A062148.P13084586916641140267

`(n+1)!*C(n+6, 6)`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A062148

/-- `(n+1)!*C(n+6, 6)` -/
def P13084586916641140267.Spec : Prop :=
  ∀ n, (P13084586916641140267.a n : ℤ) = A062148 n

theorem P13084586916641140267.correct : P13084586916641140267.Spec := by
  intro n
  simp only [A062148]

end A062148

/-! ## A062148.P16738626273738288429

`(n+1)/6*∏[n+6]`
-/

namespace A062148.P16738626273738288429
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 6

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 6 * ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)

end

end A062148.P16738626273738288429

namespace A062148

/-- `(n+1)/6*∏[n+6]` -/
def P16738626273738288429.Spec : Prop :=
  ∀ n, P16738626273738288429.a n = (A062148 n : ℚ)

end A062148

/-! ## A062148.P9326579322727805943

`∏[(n+2-abs(1-n))!+n]+a(n-1)*(n+6)` with `a(0)=1`
-/

namespace A062148.P9326579322727805943
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial ((n + 2 : ℤ) - |1 - (n : ℤ)|).toNat + n

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  ∏ j ∈ Finset.range (n + 1), f1 j + a (n - 1) * (n + 6)

end

end A062148.P9326579322727805943

namespace A062148

/-- `∏[(n+2-abs(1-n))!+n]+a(n-1)*(n+6)` -/
def P9326579322727805943.Spec : Prop :=
  ∀ n, (P9326579322727805943.a n : ℤ) = A062148 n

end A062148

/-! ## A062148.P9058937240718669126

`A143498(4+∑[n+1])`
-/

namespace A062148.P9058937240718669126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143498 (4 + ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A062148.P9058937240718669126

namespace A062148

/-- `A143498(4+∑[n+1])` -/
def P9058937240718669126.Spec : Prop :=
  ∀ n, P9058937240718669126.a n = A062148 n

end A062148

/-! ## A062148.P12610466026231509288

`abs(A051338(∑[n]))+(n+7)*a(n-1)` with `a(0)=1`
-/

namespace A062148.P12610466026231509288
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  |A051338 (∑ j ∈ Finset.range (n + 1), f1 j)| + (n + 7 : ℤ) * a (n - 1)

end

end A062148.P12610466026231509288

namespace A062148

/-- `abs(A051338(∑[n]))+(n+7)*a(n-1)` -/
def P12610466026231509288.Spec : Prop :=
  ∀ n, P12610466026231509288.a n = A062148 n

end A062148

/-! ## A062148.P12598631425061981317

`A001730(n+7)-A001725(n+6)`
-/

namespace A062148.P12598631425061981317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001730 (n + 7) - A001725 (n + 6)

end

end A062148.P12598631425061981317

namespace A062148

/-- `A001730(n+7)-A001725(n+6)` -/
def P12598631425061981317.Spec : Prop :=
  ∀ n, P12598631425061981317.a n = A062148 n

theorem P12598631425061981317.correct : P12598631425061981317.Spec := by
  intro n
  simp only [A062148, Nat.add_sub_cancel, A062148.P12598631425061981317.a, A062148.P13084586916641140267.a, A001725, A001725.P12650103513022263112.a, A001730, A001730.P18322420278793742515.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A062148

/-! ## A062148.P6517651882128430905

`2*a(n-1)*∑[n+3]/n` with `a(0)=1`
-/

namespace A062148.P6517651882128430905
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (n : ℚ)

end

end A062148.P6517651882128430905

namespace A062148

/-- `2*a(n-1)*∑[n+3]/n` -/
def P6517651882128430905.Spec : Prop :=
  ∀ n, P6517651882128430905.a n = (A062148 n : ℚ)

end A062148

/-! ## A062148.P17324723033784346969

`((n+3)²+n-3)*a(n-1)/n` with `a(0)=1`
-/

namespace A062148.P17324723033784346969
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (((n + 3) ^ 2 : ℤ) + ((n : ℤ) - 3) : ℚ) * a (n - 1) / (n : ℚ)

end

end A062148.P17324723033784346969

namespace A062148

/-- `((n+3)²+n-3)*a(n-1)/n` -/
def P17324723033784346969.Spec : Prop :=
  ∀ n, P17324723033784346969.a n = (A062148 n : ℚ)

end A062148

/-!
# A062149: Third column of triangle A062138 (generalized a=5 Laguerre).

The programs for A062149, the canonical program `A062149.P7701321079370823590` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062149 has offset 0).

The definition of A062149 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A062149.P7701321079370823590

`(n+2)!*C(n+7, 7)/2`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A062149

/-- `(n+2)!*C(n+7, 7)/2` -/
def P7701321079370823590.Spec : Prop :=
  ∀ n, P7701321079370823590.a n = (A062149 n : ℚ)

end A062149

/-! ## A062149.P16629598059951865418

`C(n+7, 7)*∑[n+1]*n!`
-/

namespace A062149.P16629598059951865418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 7) 7 * (∑ j ∈ Finset.range (n + 1), f1 j) * Nat.factorial n

end

end A062149.P16629598059951865418

namespace A062149

/-- `C(n+7, 7)*∑[n+1]*n!` -/
def P16629598059951865418.Spec : Prop :=
  ∀ n, (P16629598059951865418.a n : ℤ) = A062149 n

end A062149

/-! ## A062149.P670953272171174376

`∑[n+1]*∑[∑[∑[∑[∑[∑[n+1]]]]]]*n!`
-/

namespace A062149.P670953272171174376
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f7 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f7 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (∑ j ∈ Finset.range (n + 1), f2 j) * Nat.factorial n

end

end A062149.P670953272171174376

namespace A062149

/-- `∑[n+1]*∑[∑[∑[∑[∑[∑[n+1]]]]]]*n!` -/
def P670953272171174376.Spec : Prop :=
  ∀ n, (P670953272171174376.a n : ℤ) = A062149 n

end A062149

/-! ## A062149.P2882951548684108591

`n!*A104670(n)`
-/

namespace A062149.P2882951548684108591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A104670 n

end

end A062149.P2882951548684108591

namespace A062149

/-- `n!*A104670(n)` -/
def P2882951548684108591.Spec : Prop :=
  ∀ n, P2882951548684108591.a n = A062149 n

end A062149

/-! ## A062149.P3346799060033870728

`A062138(∑[n+2]+3)`
-/

namespace A062149.P3346799060033870728
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062138 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A062149.P3346799060033870728

namespace A062149

/-- `A062138(∑[n+2]+3)` -/
def P3346799060033870728.Spec : Prop :=
  ∀ n, P3346799060033870728.a n = A062149 n

end A062149

/-! ## A062149.P7167130502394186005

`(n+1)!*A052181(n)`
-/

namespace A062149.P7167130502394186005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℤ) * A052181 n

end

end A062149.P7167130502394186005

namespace A062149

/-- `(n+1)!*A052181(n)` -/
def P7167130502394186005.Spec : Prop :=
  ∀ n, P7167130502394186005.a n = A062149 n

end A062149

/-! ## A062149.P6514942850660192597

`∑[n+1]*A049388(n)`
-/

namespace A062149.P6514942850660192597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A049388 n

end

end A062149.P6514942850660192597

namespace A062149

/-- `∑[n+1]*A049388(n)` -/
def P6514942850660192597.Spec : Prop :=
  ∀ n, P6514942850660192597.a n = A062149 n

end A062149

/-! ## A062149.P7096711693701095417

`∏[n+7]/7*Δ[A000292(n)]`
-/

namespace A062149.P7096711693701095417
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 7 * (f2 (n + 1) - f2 n : ℚ)

end

end A062149.P7096711693701095417

namespace A062149

/-- `∏[n+7]/7*Δ[A000292(n)]` -/
def P7096711693701095417.Spec : Prop :=
  ∀ n, P7096711693701095417.a n = (A062149 n : ℚ)

end A062149

/-! ## A062149.P2407404140437706247

`∏[n+7]/7*A000217(n+1)`
-/

namespace A062149.P2407404140437706247
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 7

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 7 * (A000217 (n + 1) : ℚ)

end

end A062149.P2407404140437706247

namespace A062149

/-- `∏[n+7]/7*A000217(n+1)` -/
def P2407404140437706247.Spec : Prop :=
  ∀ n, P2407404140437706247.a n = (A062149 n : ℚ)

end A062149

/-! ## A062149.P6462344793368023903

`A143498(A167499(n+1))`
-/

namespace A062149.P6462344793368023903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143498 (A167499 (n + 1)).toNat

end

end A062149.P6462344793368023903

namespace A062149

/-- `A143498(A167499(n+1))` -/
def P6462344793368023903.Spec : Prop :=
  ∀ n, P6462344793368023903.a n = A062149 n

end A062149

/-!
# A062150: Fourth (unsigned) column of triangle A062138 (generalized a=5 Laguerre).

The programs for A062150, the canonical program `A062150.P16294897049425843233` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062150 has offset 0).

The definition of A062150 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A062150.P16294897049425843233

`(n+3)!*C(n+8, 8)/6`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A062150

/-- `(n+3)!*C(n+8, 8)/6` -/
def P16294897049425843233.Spec : Prop :=
  ∀ n, P16294897049425843233.a n = (A062150 n : ℚ)

end A062150

/-! ## A062150.P16103989538569154143

`n!*A104671(n)`
-/

namespace A062150.P16103989538569154143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A104671 n

end

end A062150.P16103989538569154143

namespace A062150

/-- `n!*A104671(n)` -/
def P16103989538569154143.Spec : Prop :=
  ∀ n, P16103989538569154143.a n = A062150 n

end A062150

/-! ## A062150.P59177179547500402

`∑[n+1]*A053310(n)*n!`
-/

namespace A062150.P59177179547500402
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A053310 n * (Nat.factorial n : ℤ)

end

end A062150.P59177179547500402

namespace A062150

/-- `∑[n+1]*A053310(n)*n!` -/
def P59177179547500402.Spec : Prop :=
  ∀ n, P59177179547500402.a n = A062150 n

end A062150

/-! ## A062150.P9416940141949341208

`A143498(A166136(n+2))`
-/

namespace A062150.P9416940141949341208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143498 (A166136 (n + 2)).toNat

end

end A062150.P9416940141949341208

namespace A062150

/-- `A143498(A166136(n+2))` -/
def P9416940141949341208.Spec : Prop :=
  ∀ n, P9416940141949341208.a n = A062150 n

end A062150

/-! ## A062150.P14129901887536933942

`A000142(n)*A104671(n)`
-/

namespace A062150.P14129901887536933942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A104671 n

end

end A062150.P14129901887536933942

namespace A062150

/-- `A000142(n)*A104671(n)` -/
def P14129901887536933942.Spec : Prop :=
  ∀ n, P14129901887536933942.a n = A062150 n

end A062150

/-! ## A062150.P6716348233485804426

`abs(A062138(A167614(n+2)))`
-/

namespace A062150.P6716348233485804426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A062138 (A167614 (n + 2)).toNat|

end

end A062150.P6716348233485804426

namespace A062150

/-- `abs(A062138(A167614(n+2)))` -/
def P6716348233485804426.Spec : Prop :=
  ∀ n, P6716348233485804426.a n = A062150 n

end A062150

/-! ## A062150.P670128224955427490

`A000581(n+8)*A001715(n+3)`
-/

namespace A062150.P670128224955427490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000581 (n + 8) * A001715 (n + 3)

end

end A062150.P670128224955427490

namespace A062150

/-- `A000581(n+8)*A001715(n+3)` -/
def P670128224955427490.Spec : Prop :=
  ∀ n, P670128224955427490.a n = A062150 n

end A062150

/-! ## A062150.P14012212200607405613

`∑[A000580(n+7)]*A001715(n+3)`
-/

namespace A062150.P14012212200607405613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000580 (n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A001715 (n + 3)

end

end A062150.P14012212200607405613

namespace A062150

/-- `∑[A000580(n+7)]*A001715(n+3)` -/
def P14012212200607405613.Spec : Prop :=
  ∀ n, P14012212200607405613.a n = A062150 n

end A062150

/-! ## A062150.P15552320908565635967

`A000581(n+8)*A062137(A000217(n))`
-/

namespace A062150.P15552320908565635967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000581 (n + 8) * A062137 (A000217 n).toNat

end

end A062150.P15552320908565635967

namespace A062150

/-- `A000581(n+8)*A062137(A000217(n))` -/
def P15552320908565635967.Spec : Prop :=
  ∀ n, P15552320908565635967.a n = A062150 n

end A062150

/-! ## A062150.P933338782367888939

`lcm(A059268(n), A062138(A167614(n+2)))`
-/

namespace A062150.P933338782367888939
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A059268 n) (A062138 (A167614 (n + 2)).toNat)

end

end A062150.P933338782367888939

namespace A062150

/-- `lcm(A059268(n), A062138(A167614(n+2)))` -/
def P933338782367888939.Spec : Prop :=
  ∀ n, (P933338782367888939.a n : ℤ) = A062150 n

end A062150

/-!
# A062151: Fifth column of triangle A062138 (generalized a=5 Laguerre).

The programs for A062151, there is no canonical definition to state claims against.
-/

/-! ## A062151.P17334888649553849321

`∏[n+4]/4*C(n+9, 9)`
-/

namespace A062151.P17334888649553849321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 4 * (Nat.choose (n + 9) 9 : ℚ)

end

end A062151.P17334888649553849321

/-! ## A062151.P14833321987017118574

`A000582(n+9)/4*∏[n+4]`
-/

namespace A062151.P14833321987017118574
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000582 (n + 9) : ℚ) / 4 * ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)

end

end A062151.P14833321987017118574

/-! ## A062151.P8092705772940621274

`A143498(A155212(n)+15)`
-/

namespace A062151.P8092705772940621274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143498 (A155212 n + 15).toNat

end

end A062151.P8092705772940621274

/-! ## A062151.P16567857266404951399

`A062138(eq[4, A002262(n)])`
-/

namespace A062151.P16567857266404951399
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062138 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A062151.P16567857266404951399

/-! ## A062151.P6191860845607317841

`A062138(eq[16, A059268(n)])`
-/

namespace A062151.P6191860845607317841
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062138 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A062151.P6191860845607317841

/-! ## A062151.P9840292265646578392

`A062138(A167614(n+3)+1)`
-/

namespace A062151.P9840292265646578392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062138 (A167614 (n + 3) + 1).toNat

end

end A062151.P9840292265646578392

/-! ## A062151.P11162580014468455716

`A062138(A166136(n+3)-2)`
-/

namespace A062151.P11162580014468455716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062138 (A166136 (n + 3) - 2).toNat

end

end A062151.P11162580014468455716

/-! ## A062151.P5988405105973256335

`A062138(A055998(n+2)+7)`
-/

namespace A062151.P5988405105973256335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062138 (A055998 (n + 2) + 7).toNat

end

end A062151.P5988405105973256335

/-! ## A062151.P17322706554045984395

`A062138(A055999(n+1)+10)`
-/

namespace A062151.P17322706554045984395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062138 (A055999 (n + 1) + 10).toNat

end

end A062151.P17322706554045984395

/-! ## A062151.P12928714427713091247

`A062138(eq[5, A002260(n+1)])`
-/

namespace A062151.P12928714427713091247
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062138 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A062151.P12928714427713091247

/-!
# A062152: Sixth (unsigned) column of triangle A062138 (generalized a=5 Laguerre).

The programs for A062152, there is no canonical definition to state claims against.
-/

/-! ## A062152.P1148404462819894727

`n!*C(n+5, 5)*C(n+10, 10)`
-/

namespace A062152.P1148404462819894727
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n * Nat.choose (n + 5) 5 * Nat.choose (n + 10) 10

end

end A062152.P1148404462819894727

/-! ## A062152.P1690390972839020832

`n!*A104673(n)`
-/

namespace A062152.P1690390972839020832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A104673 n

end

end A062152.P1690390972839020832

/-! ## A062152.P5824558675566416320

`C(n+10, 10)*A001725(n+5)`
-/

namespace A062152.P5824558675566416320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 10) 10 : ℤ) * A001725 (n + 5)

end

end A062152.P5824558675566416320

/-! ## A062152.P14819644456175824788

`A000142(n)*A104673(n)`
-/

namespace A062152.P14819644456175824788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A104673 n

end

end A062152.P14819644456175824788

/-! ## A062152.P15685203887032564759

`A051431(n)*A178822(∑[n])`
-/

namespace A062152.P15685203887032564759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051431 n * A178822 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A062152.P15685203887032564759

/-! ## A062152.P8629172613068169029

`A001725(n+5)/A000142(n)*A051431(n)`
-/

namespace A062152.P8629172613068169029
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001725 (n + 5) : ℚ) / (A000142 n : ℚ) * (A051431 n : ℚ)

end

end A062152.P8629172613068169029

/-! ## A062152.P9751373011964579553

`A007318(A167499(n+9)+5)*A001725(n+5)`
-/

namespace A062152.P9751373011964579553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A167499 (n + 9) + 5).toNat * A001725 (n + 5)

end

end A062152.P9751373011964579553

/-!
# A062153: a(n) = floor(log_3(n)).

The programs for A062153, the canonical program `A062153.P7840962928244100057` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062153 has offset 1).

The definition of A062153 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A062153.P7840962928244100057

`a(floor((n+1)/3)-1)+1` with `a(0)=0, a(1)=0`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A062153

/-- `a(floor((n+1)/3)-1)+1` -/
def P7840962928244100057.Spec : Prop :=
  ∀ n, (P7840962928244100057.a n : ℤ) = A062153 (n + 1)

theorem P7840962928244100057.correct : P7840962928244100057.Spec := by
  intro n
  simp only [A062153, Nat.add_sub_cancel]

end A062153

/-! ## A062153.P14772067728369841066

`floor(log(n+1)/log(3))`
-/

namespace A062153.P14772067728369841066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (n + 1 : ℝ) / Real.log (3 : ℝ)⌋

end

end A062153.P14772067728369841066

namespace A062153

/-- `floor(log(n+1)/log(3))` -/
def P14772067728369841066.Spec : Prop :=
  ∀ n, P14772067728369841066.a n = A062153 (n + 1)

end A062153

/-! ## A062153.P4171476595868845163

`∑[char[∑[lcm(2, 3^n)]]]`
-/

namespace A062153.P4171476595868845163
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (3 ^ n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062153.P4171476595868845163

namespace A062153

/-- `∑[char[∑[lcm(2, 3^n)]]]` -/
def P4171476595868845163.Spec : Prop :=
  ∀ n, (P4171476595868845163.a n : ℤ) = A062153 (n + 1)

end A062153

/-! ## A062153.P4890387940701948648

`∑[char[xor(1, 3^(n+1))]]`
-/

namespace A062153.P4890387940701948648
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (3 ^ (n + 1))

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062153.P4890387940701948648

namespace A062153

/-- `∑[char[xor(1, 3^(n+1))]]` -/
def P4890387940701948648.Spec : Prop :=
  ∀ n, (P4890387940701948648.a n : ℤ) = A062153 (n + 1)

end A062153

/-! ## A062153.P13182138173680452938

`∑[∏{p}[n+1, val(#, 3)]]-1`
-/

namespace A062153.P13182138173680452938
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), SequenceMachineLib.valuation p 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A062153.P13182138173680452938

namespace A062153

/-- `∑[∏{p}[n+1, val(#, 3)]]-1` -/
def P13182138173680452938.Spec : Prop :=
  ∀ n, P13182138173680452938.a n = A062153 (n + 1)

end A062153

/-! ## A062153.P4532541523611441736

`dr(∑[char[3^(n+1)-1]])`
-/

namespace A062153.P4532541523611441736
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ (n + 1) : ℤ) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A062153.P4532541523611441736

namespace A062153

/-- `dr(∑[char[3^(n+1)-1]])` -/
def P4532541523611441736.Spec : Prop :=
  ∀ n, (P4532541523611441736.a n : ℤ) = A062153 (n + 1)

end A062153

/-! ## A062153.P625774018582138025

`∑[char[∑[3*a(n-1)]]]` with `a(0)=2`
-/

namespace A062153.P625774018582138025
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f3 =>
  3 * f3 (n - 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062153.P625774018582138025

namespace A062153

/-- `∑[char[∑[3*a(n-1)]]]` -/
def P625774018582138025.Spec : Prop :=
  ∀ n, (P625774018582138025.a n : ℤ) = A062153 (n + 1)

end A062153

/-! ## A062153.P472548368566397174

`char[3^n-1]+a(n-1)` with `a(0)=0`
-/

namespace A062153.P472548368566397174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + a (n - 1)

end

end A062153.P472548368566397174

namespace A062153

/-- `char[3^n-1]+a(n-1)` -/
def P472548368566397174.Spec : Prop :=
  ∀ n, (P472548368566397174.a n : ℤ) = A062153 (n + 1)

end A062153

/-! ## A062153.P2936032943194360048

`∑[∑{e}[n+1, val(3^#, n+1)]]`
-/

namespace A062153.P2936032943194360048
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), SequenceMachineLib.valuation (3 ^ Nat.factorization (f2 n) p) (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062153.P2936032943194360048

namespace A062153

/-- `∑[∑{e}[n+1, val(3^#, n+1)]]` -/
def P2936032943194360048.Spec : Prop :=
  ∀ n, (P2936032943194360048.a n : ℤ) = A062153 (n + 1)

end A062153

/-! ## A062153.P18436012584570032547

`∑[A225569(n)]-1`
-/

namespace A062153.P18436012584570032547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225569 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A062153.P18436012584570032547

namespace A062153

/-- `∑[A225569(n)]-1` -/
def P18436012584570032547.Spec : Prop :=
  ∀ n, P18436012584570032547.a n = A062153 (n + 1)

end A062153

/-! ## A062153.P9684371831805183784

`∑[Δ[A081604(n)]²]`
-/

namespace A062153.P9684371831805183784
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081604 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062153.P9684371831805183784

namespace A062153

/-- `∑[Δ[A081604(n)]²]` -/
def P9684371831805183784.Spec : Prop :=
  ∀ n, P9684371831805183784.a n = A062153 (n + 1)

end A062153

/-! ## A062153.P10355790002703961400

`∑[floor(acot(A256293(n)))]`
-/

namespace A062153.P10355790002703961400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (A256293 n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062153.P10355790002703961400

namespace A062153

/-- `∑[floor(acot(A256293(n)))]` -/
def P10355790002703961400.Spec : Prop :=
  ∀ n, P10355790002703961400.a n = A062153 (n + 1)

end A062153

/-! ## A062153.P5368087556769207072

`A081604(n+1)-1`
-/

namespace A062153.P5368087556769207072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081604 (n + 1) - 1

end

end A062153.P5368087556769207072

namespace A062153

/-- `A081604(n+1)-1` -/
def P5368087556769207072.Spec : Prop :=
  ∀ n, P5368087556769207072.a n = A062153 (n + 1)

end A062153

/-! ## A062153.P11274302881171046650

`val(A365458(n+1), 3)`
-/

namespace A062153.P11274302881171046650
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A365458 (n + 1)).toNat 3

end

end A062153.P11274302881171046650

namespace A062153

/-- `val(A365458(n+1), 3)` -/
def P11274302881171046650.Spec : Prop :=
  ∀ n, (P11274302881171046650.a n : ℤ) = A062153 (n + 1)

end A062153

/-! ## A062153.P6801581076393139493

`∑[floor(A290825(n)/2)]`
-/

namespace A062153.P6801581076393139493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A290825 n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062153.P6801581076393139493

namespace A062153

/-- `∑[floor(A290825(n)/2)]` -/
def P6801581076393139493.Spec : Prop :=
  ∀ n, P6801581076393139493.a n = A062153 (n + 1)

end A062153

/-! ## A062153.P2142032847546138036

`∑[char[A024023(n+1)]]`
-/

namespace A062153.P2142032847546138036
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024023 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062153.P2142032847546138036

namespace A062153

/-- `∑[char[A024023(n+1)]]` -/
def P2142032847546138036.Spec : Prop :=
  ∀ n, (P2142032847546138036.a n : ℤ) = A062153 (n + 1)

end A062153

/-! ## A062153.P3202109643630157110

`∑[char[A024023(n)]]-1`
-/

namespace A062153.P3202109643630157110
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024023 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A062153.P3202109643630157110

namespace A062153

/-- `∑[char[A024023(n)]]-1` -/
def P3202109643630157110.Spec : Prop :=
  ∀ n, P3202109643630157110.a n = A062153 (n + 1)

end A062153

/-! ## A062153.P105655259604027948

`∑[char[2*A052993(n)]]`
-/

namespace A062153.P105655259604027948
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A052993 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062153.P105655259604027948

namespace A062153

/-- `∑[char[2*A052993(n)]]` -/
def P105655259604027948.Spec : Prop :=
  ∀ n, (P105655259604027948.a n : ℤ) = A062153 (n + 1)

end A062153

/-! ## A062153.P14382131224796542399

`∑[char[2*A261547(n)]]`
-/

namespace A062153.P14382131224796542399
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A261547 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062153.P14382131224796542399

namespace A062153

/-- `∑[char[2*A261547(n)]]` -/
def P14382131224796542399.Spec : Prop :=
  ∀ n, (P14382131224796542399.a n : ℤ) = A062153 (n + 1)

end A062153

/-! ## A062153.P1875451130903467146

`∑[A268340(3*(n+1))]`
-/

namespace A062153.P1875451130903467146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268340 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062153.P1875451130903467146

namespace A062153

/-- `∑[A268340(3*(n+1))]` -/
def P1875451130903467146.Spec : Prop :=
  ∀ n, P1875451130903467146.a n = A062153 (n + 1)

end A062153

/-!
# A062156: Number of n X n matrices over {0,1,2} with all row and column sums equal to 1 or 2.

The programs for A062156, there is no canonical definition to state claims against.
-/

/-! ## A062156.P15188324693463090364

`A062154(∑[2*n])`
-/

namespace A062156.P15188324693463090364
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062154 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A062156.P15188324693463090364

/-! ## A062156.P13317127005752083897

`record[A062154(A002620(n))]`
-/

namespace A062156.P13317127005752083897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062154 (A002620 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A062156.P13317127005752083897

/-! ## A062156.P8690526442471566649

`record[A062154(∑[A004526(n)])]`
-/

namespace A062156.P8690526442471566649
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062154 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A062156.P8690526442471566649

/-! ## A062156.P2808643782508061668

`record[A062154(n)/A145118(n)]`
-/

namespace A062156.P2808643782508061668
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062154 n : ℚ) / (A145118 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A062156.P2808643782508061668

/-! ## A062156.P3664576979503728631

`record[A062154(2*n)/A086645(n)]`
-/

namespace A062156.P3664576979503728631
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062154 (2 * n) : ℚ) / (A086645 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A062156.P3664576979503728631

/-!
# A062157: a(n) = 0^n - (-1)^n.

The programs for A062157, the canonical program `A062157.P13834877263571195293` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062157 has offset 0).

The definition of A062157 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `0^n-(-1)^n` (program `A062157.P13834877263571195293`, by `A062157.P13834877263571195293.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A062157.P16727149860299159457

`ogf(x/(1+x))`
-/

namespace A062157.P16727149860299159457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, 1] n

end

end A062157.P16727149860299159457

namespace A062157

/-- `ogf(x/(1+x))` -/
def P16727149860299159457.Spec : Prop :=
  ∀ n, P16727149860299159457.a n = A062157 n

end A062157

/-! ## A062157.P13834877263571195293

`0^n-(-1)^n`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A062157

/-- `0^n-(-1)^n` -/
def P13834877263571195293.Spec : Prop :=
  ∀ n, P13834877263571195293.a n = A062157 n

theorem P13834877263571195293.correct : P13834877263571195293.Spec := by
  intro n
  simp only [A062157]

end A062157

/-!
# A062158: a(n) = n^3 - n^2 + n - 1 = (n-1) * (n^2 + 1).

The programs for A062158, the canonical program `A062158.P5395940326210202878` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062158 has offset 0).

The definition of A062158 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n-1)*(n²+1)` (program `A062158.P5395940326210202878`, by `A062158.P5395940326210202878.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A062158.P5395940326210202878

`(n-1)*(n²+1)`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A062158

/-- `(n-1)*(n²+1)` -/
def P5395940326210202878.Spec : Prop :=
  ∀ n, P5395940326210202878.a n = A062158 n

theorem P5395940326210202878.correct : P5395940326210202878.Spec := by
  intro n
  simp only [A062158]

end A062158

/-! ## A062158.P9707478613763405069

`n^3-n²+n-1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A062158.P9707478613763405069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 3 : ℤ) - (n ^ 2 : ℤ) + (n : ℤ) - 1

end

end A062158.P9707478613763405069

namespace A062158

/-- `n^3-n²+n-1` -/
def P9707478613763405069.Spec : Prop :=
  ∀ n, P9707478613763405069.a n = A062158 n

theorem P9707478613763405069.correct : P9707478613763405069.Spec := by
  intro n
  simp only [A062158, Nat.add_sub_cancel, A062158.P9707478613763405069.a, A062158.P5395940326210202878.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A062158

/-! ## A062158.P11864764158975167948

`ogf((-1+4x-x^2+4x^3)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A062158.P11864764158975167948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [-1, 4, -1, 4] [1, -4, 6, -4, 1] n

end

end A062158.P11864764158975167948

namespace A062158

/-- `ogf((-1+4x-x^2+4x^3)/(1-4x+6x^2-4x^3+x^4))` -/
def P11864764158975167948.Spec : Prop :=
  ∀ n, P11864764158975167948.a n = A062158 n

end A062158

/-! ## A062158.P12186298012151562111

`(n-1)/cos(atan(n))²`
-/

namespace A062158.P12186298012151562111
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1 : ℝ) / Real.cos (Real.arctan (n : ℝ)) ^ 2

end

end A062158.P12186298012151562111

namespace A062158

/-- `(n-1)/cos(atan(n))²` -/
def P12186298012151562111.Spec : Prop :=
  ∀ n, P12186298012151562111.a n = (A062158 n : ℝ)

end A062158

/-! ## A062158.P12690867991099710258

`(n-1)/sin(acot(n))²`
-/

namespace A062158.P12690867991099710258
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1 : ℝ) / Real.sin (SequenceMachineLib.acot (n : ℝ)) ^ 2

end

end A062158.P12690867991099710258

namespace A062158

/-- `(n-1)/sin(acot(n))²` -/
def P12690867991099710258.Spec : Prop :=
  ∀ n, P12690867991099710258.a n = (A062158 n : ℝ)

end A062158

/-! ## A062158.P95717301261421138

`-((n-1)*xor(-1, n²))`
-/

namespace A062158.P95717301261421138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(((n : ℤ) - 1) * Int.xor (-1) (n ^ 2 : ℤ))

end

end A062158.P95717301261421138

namespace A062158

/-- `-((n-1)*xor(-1, n²))` -/
def P95717301261421138.Spec : Prop :=
  ∀ n, P95717301261421138.a n = A062158 n

end A062158

/-! ## A062158.P11517424979488971537

`(n²²-1)/C(n+1, n)`
-/

namespace A062158.P11517424979488971537
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n ^ 2) ^ 2 : ℤ) - 1 : ℚ) / (Nat.choose (n + 1) n : ℚ)

end

end A062158.P11517424979488971537

namespace A062158

/-- `(n²²-1)/C(n+1, n)` -/
def P11517424979488971537.Spec : Prop :=
  ∀ n, P11517424979488971537.a n = (A062158 n : ℚ)

end A062158

/-! ## A062158.P10985667651163596049

`floor(or(n-1, n^4)/(n+1))`
-/

namespace A062158.P10985667651163596049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Int.lor ((n : ℤ) - 1) (n ^ 4 : ℤ) : ℚ) / (n + 1 : ℚ)⌋

end

end A062158.P10985667651163596049

namespace A062158

/-- `floor(or(n-1, n^4)/(n+1))` -/
def P10985667651163596049.Spec : Prop :=
  ∀ n, P10985667651163596049.a n = A062158 n

end A062158

/-! ## A062158.P15070716835739246717

`(n²²-gcd(n, n+1))/(n+1)`
-/

namespace A062158.P15070716835739246717
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n ^ 2) ^ 2 : ℤ) - (Nat.gcd n (n + 1) : ℤ) : ℚ) / (n + 1 : ℚ)

end

end A062158.P15070716835739246717

namespace A062158

/-- `(n²²-gcd(n, n+1))/(n+1)` -/
def P15070716835739246717.Spec : Prop :=
  ∀ n, P15070716835739246717.a n = (A062158 n : ℚ)

end A062158

/-! ## A062158.P9530640795848131800

`floor((n-1)*∑[a(n-1)+2])` with `a(0)=1, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A062158.P9530640795848131800
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A062158.P9530640795848131800

namespace A062158

/-- `floor((n-1)*∑[a(n-1)+2])` -/
def P9530640795848131800.Spec : Prop :=
  ∀ n, P9530640795848131800.a n = A062158 n

end A062158

/-! ## A062158.P6536897409569626026

`-((2*n-record[(n-1)²])*(n-1))`
-/

namespace A062158.P6536897409569626026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(((2 * n : ℤ) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) * ((n : ℤ) - 1))

end

end A062158.P6536897409569626026

namespace A062158

/-- `-((2*n-record[(n-1)²])*(n-1))` -/
def P6536897409569626026.Spec : Prop :=
  ∀ n, P6536897409569626026.a n = A062158 n

end A062158

/-! ## A062158.P2101990163575278368

`(A000583(n)-1)/(n+1)`
-/

namespace A062158.P2101990163575278368
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000583 n - 1 : ℚ) / (n + 1 : ℚ)

end

end A062158.P2101990163575278368

namespace A062158

/-- `(A000583(n)-1)/(n+1)` -/
def P2101990163575278368.Spec : Prop :=
  ∀ n, P2101990163575278368.a n = (A062158 n : ℚ)

theorem P2101990163575278368.correct : P2101990163575278368.Spec := by
  intro n
  simp only [A062158, Nat.add_sub_cancel, A062158.P2101990163575278368.a, A062158.P5395940326210202878.a, A000583, A000583.P14547500281748394449.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A062158

/-! ## A062158.P16900248704347599422

`(A002523(n)-2)/(n+1)`
-/

namespace A062158.P16900248704347599422
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002523 n - 2 : ℚ) / (n + 1 : ℚ)

end

end A062158.P16900248704347599422

namespace A062158

/-- `(A002523(n)-2)/(n+1)` -/
def P16900248704347599422.Spec : Prop :=
  ∀ n, P16900248704347599422.a n = (A062158 n : ℚ)

theorem P16900248704347599422.correct : P16900248704347599422.Spec := by
  intro n
  simp only [A062158, Nat.add_sub_cancel, A062158.P16900248704347599422.a, A062158.P5395940326210202878.a, A002523, A002523.P178649398705969946.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A062158

/-! ## A062158.P1010852327533229711

`A062159(n)%A184537(n)`
-/

namespace A062158.P1010852327533229711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A062159 n) (A184537 n)

end

end A062158.P1010852327533229711

namespace A062158

/-- `A062159(n)%A184537(n)` -/
def P1010852327533229711.Spec : Prop :=
  ∀ n, P1010852327533229711.a n = A062158 n

end A062158

/-! ## A062158.P15589253337099043477

`∑{#}[n, (n-1)*n^(1-C(#, n))]`
-/

namespace A062158.P15589253337099043477
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), ((n : ℤ) - 1 : ℚ) * (n : ℚ) ^ (1 - (Nat.choose k n : ℤ) : ℤ)

end

end A062158.P15589253337099043477

namespace A062158

/-- `∑{#}[n, (n-1)*n^(1-C(#, n))]` -/
def P15589253337099043477.Spec : Prop :=
  ∀ n, P15589253337099043477.a n = (A062158 n : ℚ)

end A062158

/-! ## A062158.P11783325600800716144

`∑{#}[n, (n-1)*C(n, 1-C(#, n))]`
-/

namespace A062158.P11783325600800716144
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), ((n : ℤ) - 1) * (Nat.choose n (1 - (Nat.choose k n : ℤ)).toNat : ℤ)

end

end A062158.P11783325600800716144

namespace A062158

/-- `∑{#}[n, (n-1)*C(n, 1-C(#, n))]` -/
def P11783325600800716144.Spec : Prop :=
  ∀ n, P11783325600800716144.a n = A062158 n

end A062158

/-!
# A062159: a(n) = n^5 - n^4 + n^3 - n^2 + n - 1.

The programs for A062159, the canonical program `A062159.P693128724581151823` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062159 has offset 0).

The definition of A062159 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^5-n^4+n^3-n²+n-1` (program `A062159.P693128724581151823`, by `A062159.P693128724581151823.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A062159.P3051750146052472580

`(n^6-1)/(n+1)`
-/

namespace A062159.P3051750146052472580
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n ^ 6 : ℤ) - 1 : ℚ) / (n + 1 : ℚ)

end

end A062159.P3051750146052472580

namespace A062159

/-- `(n^6-1)/(n+1)` -/
def P3051750146052472580.Spec : Prop :=
  ∀ n, P3051750146052472580.a n = (A062159 n : ℚ)

theorem P3051750146052472580.correct : P3051750146052472580.Spec := by
  intro n
  simp only [A062159, Nat.add_sub_cancel, A062159.P3051750146052472580.a, A062159.P693128724581151823.a, SequenceMachineLib.memo_apply]
  try push_cast
  try field_simp
  try (first | ring1 | ring_nf)

end A062159

/-! ## A062159.P18230472984451463194

`ogf((-1+6x+6x^2+76x^3+27x^4+6x^5)/(1-6x+15x^2-20x^3+15x^4-6x^5+x^6))`
-/

namespace A062159.P18230472984451463194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [-1, 6, 6, 76, 27, 6] [1, -6, 15, -20, 15, -6, 1] n

end

end A062159.P18230472984451463194

namespace A062159

/-- `ogf((-1+6x+6x^2+76x^3+27x^4+6x^5)/(1-6x+15x^2-20x^3+15x^4-6x^5+x^6))` -/
def P18230472984451463194.Spec : Prop :=
  ∀ n, P18230472984451463194.a n = A062159 n

end A062159

/-! ## A062159.P693128724581151823

`n^5-n^4+n^3-n²+n-1`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A062159

/-- `n^5-n^4+n^3-n²+n-1` -/
def P693128724581151823.Spec : Prop :=
  ∀ n, P693128724581151823.a n = A062159 n

theorem P693128724581151823.correct : P693128724581151823.Spec := by
  intro n
  simp only [A062159]

end A062159

/-! ## A062159.P10708687390836092523

`(n-1)*A002061(n)*A002061(n+1)`
-/

namespace A062159.P10708687390836092523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * A002061 n * A002061 (n + 1)

end

end A062159.P10708687390836092523

namespace A062159

/-- `(n-1)*A002061(n)*A002061(n+1)` -/
def P10708687390836092523.Spec : Prop :=
  ∀ n, P10708687390836092523.a n = A062159 n

theorem P10708687390836092523.correct : P10708687390836092523.Spec := by
  intro n
  simp only [A062159, Nat.add_sub_cancel, A062159.P10708687390836092523.a, A062159.P693128724581151823.a, A002061, A002061.P13016590216674735232.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A062159

/-! ## A062159.P320349753861491969

`(n-1)*A059826(n)`
-/

namespace A062159.P320349753861491969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * A059826 n

end

end A062159.P320349753861491969

namespace A062159

/-- `(n-1)*A059826(n)` -/
def P320349753861491969.Spec : Prop :=
  ∀ n, P320349753861491969.a n = A062159 n

theorem P320349753861491969.correct : P320349753861491969.Spec := by
  intro n
  simp only [A062159, Nat.add_sub_cancel, A062159.P320349753861491969.a, A062159.P693128724581151823.a, A059826, A059826.P10107357562865888263.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A062159

/-! ## A062159.P317394027195386370

`(A071253(n)+1)*(n-1)`
-/

namespace A062159.P317394027195386370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A071253 n + 1) * ((n : ℤ) - 1)

end

end A062159.P317394027195386370

namespace A062159

/-- `(A071253(n)+1)*(n-1)` -/
def P317394027195386370.Spec : Prop :=
  ∀ n, P317394027195386370.a n = A062159 n

theorem P317394027195386370.correct : P317394027195386370.Spec := by
  intro n
  simp only [A062159, Nat.add_sub_cancel, A062159.P317394027195386370.a, A062159.P693128724581151823.a, A071253, A071253.P8759095852449772691.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A062159

/-! ## A062159.P1586807946273214142

`((A000290(n)+1)*n²+1)*(n-1)`
-/

namespace A062159.P1586807946273214142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A000290 n + 1) * (n ^ 2 : ℤ) + 1) * ((n : ℤ) - 1)

end

end A062159.P1586807946273214142

namespace A062159

/-- `((A000290(n)+1)*n²+1)*(n-1)` -/
def P1586807946273214142.Spec : Prop :=
  ∀ n, P1586807946273214142.a n = A062159 n

theorem P1586807946273214142.correct : P1586807946273214142.Spec := by
  intro n
  simp only [A062159, Nat.add_sub_cancel, A062159.P1586807946273214142.a, A062159.P693128724581151823.a, A000290, A000290.P12206242496348924484.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A062159

/-! ## A062159.P11375462472462959199

`(A027444(n)-A002061(n+1))*A002061(n)`
-/

namespace A062159.P11375462472462959199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A027444 n - A002061 (n + 1)) * A002061 n

end

end A062159.P11375462472462959199

namespace A062159

/-- `(A027444(n)-A002061(n+1))*A002061(n)` -/
def P11375462472462959199.Spec : Prop :=
  ∀ n, P11375462472462959199.a n = A062159 n

theorem P11375462472462959199.correct : P11375462472462959199.Spec := by
  intro n
  simp only [A062159, Nat.add_sub_cancel, A062159.P11375462472462959199.a, A062159.P693128724581151823.a, A002061, A002061.P13016590216674735232.a, A027444, A027444.P13486811862535796769.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A062159

/-!
# A062160: Square array T(n,k) = (n^k - (-1)^k)/(n+1), n >= 0, k >= 0, read by falling antidiagonals.

The programs for A062160, the canonical program `A062160.P57236969920351296` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062160 has offset 0).

The definition of A062160 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A062160.P57236969920351296

`(col(n)^(row(n)-col(n))-(-1)^(row(n)-col(n)))/(col(n)+1)`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A062160

/-- `(col(n)^(row(n)-col(n))-(-1)^(row(n)-col(n)))/(col(n)+1)` -/
def P57236969920351296.Spec : Prop :=
  ∀ n, P57236969920351296.a n = (A062160 n : ℚ)

end A062160

/-! ## A062160.P14663134409189145720

`A109502(A038722(n+1))-A097807(n)`
-/

namespace A062160.P14663134409189145720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109502 (A038722 (n + 1)).toNat - A097807 n

end

end A062160.P14663134409189145720

namespace A062160

/-- `A109502(A038722(n+1))-A097807(n)` -/
def P14663134409189145720.Spec : Prop :=
  ∀ n, P14663134409189145720.a n = A062160 n

end A062160

/-! ## A062160.P6607568501945257402

`A109502(A061579(n)+1)-A097807(n)`
-/

namespace A062160.P6607568501945257402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109502 (A061579 n + 1).toNat - A097807 n

end

end A062160.P6607568501945257402

namespace A062160

/-- `A109502(A061579(n)+1)-A097807(n)` -/
def P6607568501945257402.Spec : Prop :=
  ∀ n, P6607568501945257402.a n = A062160 n

end A062160

/-! ## A062160.P6895156242954068280

`A100047(2*A221200(n+1))`
-/

namespace A062160.P6895156242954068280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100047 (2 * A221200 (n + 1)).toNat

end

end A062160.P6895156242954068280

namespace A062160

/-- `A100047(2*A221200(n+1))` -/
def P6895156242954068280.Spec : Prop :=
  ∀ n, P6895156242954068280.a n = A062160 n

end A062160

/-! ## A062160.P11412910515690181285

`A080891(4*A221200(n+1))`
-/

namespace A062160.P11412910515690181285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080891 (4 * A221200 (n + 1)).toNat

end

end A062160.P11412910515690181285

namespace A062160

/-- `A080891(4*A221200(n+1))` -/
def P11412910515690181285.Spec : Prop :=
  ∀ n, P11412910515690181285.a n = A062160 n

end A062160

/-!
# A062161: Boustrophedon transform of n mod 2.

The programs for A062161, there is no canonical definition to state claims against.
-/

/-! ## A062161.P485553746837727139

`(A000667(n)-A062162(n))/2`
-/

namespace A062161.P485553746837727139
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000667 n - A062162 n : ℚ) / 2

end

end A062161.P485553746837727139

/-! ## A062161.P17583855579925981429

`A000667(n)-A062272(n)`
-/

namespace A062161.P17583855579925981429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000667 n - A062272 n

end

end A062161.P17583855579925981429

/-! ## A062161.P7140093435351003981

`A062272(n)-A062162(n)`
-/

namespace A062161.P7140093435351003981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062272 n - A062162 n

end

end A062161.P7140093435351003981

/-! ## A062161.P4714710296224800494

`A399332(∑[n])-A062272(n)`
-/

namespace A062161.P4714710296224800494
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399332 (∑ j ∈ Finset.range (n + 1), f1 j) - A062272 n

end

end A062161.P4714710296224800494

/-! ## A062161.P13643229585994648460

`A062272(n)-abs(Δ[A009334(n)])`
-/

namespace A062161.P13643229585994648460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009334 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062272 n - |f1 (n + 1) - f1 n|

end

end A062161.P13643229585994648460

/-! ## A062161.P16793983521900937283

`Δ[abs(A009337(n))]-A062272(n)`
-/

namespace A062161.P16793983521900937283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A009337 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A062272 n

end

end A062161.P16793983521900937283

/-! ## A062161.P12583809886872942540

`A292975(A034856(n+1))-A062272(n)`
-/

namespace A062161.P12583809886872942540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292975 (A034856 (n + 1)).toNat - A062272 n

end

end A062161.P12583809886872942540

/-! ## A062161.P8298694290113289985

`A230950(n)+A230951(n)-A062272(n)`
-/

namespace A062161.P8298694290113289985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230950 n + (A230951 n - A062272 n)

end

end A062161.P8298694290113289985

/-! ## A062161.P4759520328354076121

`A009739(n)-A000035(n)*A062162(n)`
-/

namespace A062161.P4759520328354076121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009739 n - A000035 n * A062162 n

end

end A062161.P4759520328354076121

/-!
# A062162: Boustrophedon transform of (-1)^n.

The programs for A062162, there is no canonical definition to state claims against.
-/

/-! ## A062162.P111539229328371354

`abs(Δ[A009334(n)])`
-/

namespace A062162.P111539229328371354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009334 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A062162.P111539229328371354

/-! ## A062162.P282558989381244824

`A186364(n-1)-a(n-1)` with `a(0)=1`
-/

namespace A062162.P282558989381244824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A186364 (n - 1) - a (n - 1)

end

end A062162.P282558989381244824

/-! ## A062162.P11385192745387922494

`Δ[A009334(n)]*A033999(n)`
-/

namespace A062162.P11385192745387922494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009334 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A033999 n

end

end A062162.P11385192745387922494

/-! ## A062162.P8149335277137655823

`gcd(Δ[A009334(n)], A000038(n))`
-/

namespace A062162.P8149335277137655823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009334 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A000038 n)

end

end A062162.P8149335277137655823

/-! ## A062162.P4592233574888630274

`abs(A009334(n+1)-A009334(n))`
-/

namespace A062162.P4592233574888630274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A009334 (n + 1) - A009334 n|

end

end A062162.P4592233574888630274

/-! ## A062162.P13611232802882269269

`(-A014963(82*(n+1)))^n*Δ[A009334(n)]`
-/

namespace A062162.P13611232802882269269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009334 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-A014963 (82 * (n + 1))) ^ n * (f1 (n + 1) - f1 n)

end

end A062162.P13611232802882269269

/-! ## A062162.P13648684092435557239

`Δ[A009334(n)]*A321632(A266073(n))`
-/

namespace A062162.P13648684092435557239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009334 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A321632 (A266073 n).toNat

end

end A062162.P13648684092435557239

/-! ## A062162.P13225023663186616388

`A399332(∑[n]+n)`
-/

namespace A062162.P13225023663186616388
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399332 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A062162.P13225023663186616388

/-! ## A062162.P4050199878882747115

`∑{#}[n, (-1)^(n-#)*C(n, #)*A000111(#)]`
-/

namespace A062162.P4050199878882747115
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose n k : ℚ) * (A000111 k : ℚ)

end

end A062162.P4050199878882747115

/-! ## A062162.P12407994702220931159

`A062272(n)-A062161(n)`
-/

namespace A062162.P12407994702220931159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062272 n - A062161 n

end

end A062162.P12407994702220931159

/-!
# A062164: Number of ways of placing n nonattacking (normal) queens on n X n board; solutions congruent on the torus count only once.

The programs for A062164, there is no canonical definition to state claims against.
-/

/-! ## A062164.P17695443987756103987

`A265572(A253853(n)-A087011(n+1))`
-/

namespace A062164.P17695443987756103987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265572 (A253853 n - A087011 (n + 1)).toNat

end

end A062164.P17695443987756103987

/-!
# A062165: Number of ways of placing n nonattacking (normal) queens on n X n board, solutions similar on the torus count only once.

The programs for A062165, there is no canonical definition to state claims against.
-/

/-! ## A062165.P7088662656828964636

`xor(A293449(n+1), A330015(A063895(n+1)))`
-/

namespace A062165.P7088662656828964636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A293449 (n + 1)) (A330015 (A063895 (n + 1)).toNat)

end

end A062165.P7088662656828964636

/-! ## A062165.P15000582039145456306

`A067595(A011784(n+1))-A360617(3*n+1)`
-/

namespace A062165.P15000582039145456306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067595 (A011784 (n + 1)).toNat - A360617 (3 * n + 1)

end

end A062165.P15000582039145456306

/-!
# A062167: Number of permutations with at most 2 queens on any torus diagonal, solutions congruent on the torus count only once.

The programs for A062167, there is no canonical definition to state claims against.
-/

/-! ## A062167.P12860541585015263502

`A182378(n)-A022307(A056712(n+1))`
-/

namespace A062167.P12860541585015263502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182378 n - A022307 (A056712 (n + 1)).toNat

end

end A062167.P12860541585015263502

/-!
# A062168: Number of permutations with at most 2 queens on any torus diagonal, solutions similar on the torus count only once.

The programs for A062168, there is no canonical definition to state claims against.
-/

/-! ## A062168.P35046272036268503

`A244561(3*n+4)%A002260(A014516(n))`
-/

namespace A062168.P35046272036268503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A244561 (3 * n + 4)) (A002260 (A014516 n).toNat)

end

end A062168.P35046272036268503

/-!
# A062169: Triangle T(n, k) = k! mod n for n >= 1, 1 <= k <= n.

The programs for A062169, the canonical program `A062169.P12616067392857093727` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062169 has offset 1).

The definition of A062169 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(col(n)+1)!%(row(n)+1)` (program `A062169.P12616067392857093727`, by `A062169.P12616067392857093727.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A062169.P12616067392857093727

`(col(n)+1)!%(row(n)+1)`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A062169

/-- `(col(n)+1)!%(row(n)+1)` -/
def P12616067392857093727.Spec : Prop :=
  ∀ n, (P12616067392857093727.a n : ℤ) = A062169 (n + 1)

theorem P12616067392857093727.correct : P12616067392857093727.Spec := by
  intro n
  simp only [A062169, Nat.add_sub_cancel]

end A062169

/-! ## A062169.P4857278936504075242

`A166350(n+1)%∑[char[∑[n]]]`
-/

namespace A062169.P4857278936504075242
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A166350 (n + 1)) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A062169.P4857278936504075242

namespace A062169

/-- `A166350(n+1)%∑[char[∑[n]]]` -/
def P4857278936504075242.Spec : Prop :=
  ∀ n, P4857278936504075242.a n = A062169 (n + 1)

end A062169

/-! ## A062169.P14923424659138943976

`A002260(n+1)!%A002024(n+1)`
-/

namespace A062169.P14923424659138943976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Nat.factorial (A002260 (n + 1)).toNat : ℤ) (A002024 (n + 1))

end

end A062169.P14923424659138943976

namespace A062169

/-- `A002260(n+1)!%A002024(n+1)` -/
def P14923424659138943976.Spec : Prop :=
  ∀ n, P14923424659138943976.a n = A062169 (n + 1)

end A062169

/-! ## A062169.P16043411549865073629

`(A002262(n)+1)!%A002024(n+1)`
-/

namespace A062169.P16043411549865073629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Nat.factorial (A002262 n + 1).toNat : ℤ) (A002024 (n + 1))

end

end A062169.P16043411549865073629

namespace A062169

/-- `(A002262(n)+1)!%A002024(n+1)` -/
def P16043411549865073629.Spec : Prop :=
  ∀ n, P16043411549865073629.a n = A062169 (n + 1)

end A062169

/-! ## A062169.P3173076213729351280

`A026100(A026098(n+1))!%A002024(n+1)`
-/

namespace A062169.P3173076213729351280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Nat.factorial (A026100 (A026098 (n + 1)).toNat).toNat : ℤ) (A002024 (n + 1))

end

end A062169.P3173076213729351280

namespace A062169

/-- `A026100(A026098(n+1))!%A002024(n+1)` -/
def P3173076213729351280.Spec : Prop :=
  ∀ n, P3173076213729351280.a n = A062169 (n + 1)

end A062169

/-! ## A062169.P13741160538733200787

`A054065(A054069(n+1))!%A002024(n+1)`
-/

namespace A062169.P13741160538733200787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Nat.factorial (A054065 (A054069 (n + 1)).toNat).toNat : ℤ) (A002024 (n + 1))

end

end A062169.P13741160538733200787

namespace A062169

/-- `A054065(A054069(n+1))!%A002024(n+1)` -/
def P13741160538733200787.Spec : Prop :=
  ∀ n, P13741160538733200787.a n = A062169 (n + 1)

end A062169

/-! ## A062169.P17266098703744395472

`(A288777(n+1)/A004736(n+1))%A002024(n+1)`
-/

namespace A062169.P17266098703744395472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A288777 (n + 1) : ℚ) / (A004736 (n + 1) : ℚ))) (A002024 (n + 1))

end

end A062169.P17266098703744395472

namespace A062169

/-- `(A288777(n+1)/A004736(n+1))%A002024(n+1)` -/
def P17266098703744395472.Spec : Prop :=
  ∀ n, P17266098703744395472.a n = A062169 (n + 1)

end A062169

/-! ## A062169.P16272460365940540451

`A066847(n)%A002024(n+1)`
-/

namespace A062169.P16272460365940540451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A066847 n) (A002024 (n + 1))

end

end A062169.P16272460365940540451

namespace A062169

/-- `A066847(n)%A002024(n+1)` -/
def P16272460365940540451.Spec : Prop :=
  ∀ n, P16272460365940540451.a n = A062169 (n + 1)

end A062169

/-! ## A062169.P16755451734440710173

`A301523(n+1)%A002024(n+1)`
-/

namespace A062169.P16755451734440710173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A301523 (n + 1)) (A002024 (n + 1))

end

end A062169.P16755451734440710173

namespace A062169

/-- `A301523(n+1)%A002024(n+1)` -/
def P16755451734440710173.Spec : Prop :=
  ∀ n, P16755451734440710173.a n = A062169 (n + 1)

end A062169

/-!
# A062170: Maximum value of factorials mod n.

The programs for A062170, there is no canonical definition to state claims against.
-/

/-! ## A062170.P6029315589593814778

`A221861(n+1)!%(n+1)`
-/

namespace A062170.P6029315589593814778
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A221861 (n + 1)).toNat % (n + 1)

end

end A062170.P6029315589593814778

/-! ## A062170.P2010458977685114851

`A000142(A221861(n+1))%A000027(n+1)`
-/

namespace A062170.P2010458977685114851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000142 (A221861 (n + 1)).toNat) (A000027 (n + 1))

end

end A062170.P2010458977685114851

/-! ## A062170.P4012621124717426498

`(A000142(A221861(n+1))*A000290(n))%(n+1)`
-/

namespace A062170.P4012621124717426498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000142 (A221861 (n + 1)).toNat * A000290 n) (n + 1 : ℤ)

end

end A062170.P4012621124717426498

/-! ## A062170.P1260986258786655975

`(A000142(A221861(n+1))*A057427(n))%(n+1)`
-/

namespace A062170.P1260986258786655975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000142 (A221861 (n + 1)).toNat * A057427 n) (n + 1 : ℤ)

end

end A062170.P1260986258786655975

/-! ## A062170.P17726096466714545039

`(A000142(A221861(n+1))+n*A046092(n))%(n+1)`
-/

namespace A062170.P17726096466714545039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000142 (A221861 (n + 1)).toNat + (n : ℤ) * A046092 n) (n + 1 : ℤ)

end

end A062170.P17726096466714545039

/-!
# A062171: Numbers k such that number of non-unitary divisors of k (A048105) > number of distinct prime divisors of k (A001221).

The programs for A062171, the canonical program `A062171.P776199650189384373` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062171 has offset 1).

The definition of A062171 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A062171.P3720754788053425045

`∪[A048108(n+1), A182855(n+1)]`
-/

namespace A062171.P3720754788053425045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048108 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182855 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A062171.P3720754788053425045

namespace A062171

/-- `∪[A048108(n+1), A182855(n+1)]` -/
def P3720754788053425045.Spec : Prop :=
  ∀ n, (P3720754788053425045.a n : ℤ) = A062171 (n + 1)

end A062171

/-! ## A062171.P13980650026107785994

`∪[A046099(n+1), A376271(n+1)]`
-/

namespace A062171.P13980650026107785994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046099 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376271 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A062171.P13980650026107785994

namespace A062171

/-- `∪[A046099(n+1), A376271(n+1)]` -/
def P13980650026107785994.Spec : Prop :=
  ∀ n, (P13980650026107785994.a n : ℤ) = A062171 (n + 1)

end A062171

/-! ## A062171.P10010651132625990967

`∪[A048108(n+1), A375055(n+1)]`
-/

namespace A062171.P10010651132625990967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048108 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375055 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A062171.P10010651132625990967

namespace A062171

/-- `∪[A048108(n+1), A375055(n+1)]` -/
def P10010651132625990967.Spec : Prop :=
  ∀ n, (P10010651132625990967.a n : ℤ) = A062171 (n + 1)

end A062171

/-! ## A062171.P15932464767218077431

`∪[A048108(n+1), A376271(n+1)]`
-/

namespace A062171.P15932464767218077431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048108 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376271 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A062171.P15932464767218077431

namespace A062171

/-- `∪[A048108(n+1), A376271(n+1)]` -/
def P15932464767218077431.Spec : Prop :=
  ∀ n, (P15932464767218077431.a n : ℤ) = A062171 (n + 1)

end A062171

/-! ## A062171.P2731350489886063976

`∪[A048108(n+1), A379336(n+1)]`
-/

namespace A062171.P2731350489886063976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048108 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379336 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A062171.P2731350489886063976

namespace A062171

/-- `∪[A048108(n+1), A379336(n+1)]` -/
def P2731350489886063976.Spec : Prop :=
  ∀ n, (P2731350489886063976.a n : ℤ) = A062171 (n + 1)

end A062171

/-! ## A062171.P12415948258430398502

`∪[A059172(n+1), A376271(n+1)]`
-/

namespace A062171.P12415948258430398502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059172 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376271 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A062171.P12415948258430398502

namespace A062171

/-- `∪[A059172(n+1), A376271(n+1)]` -/
def P12415948258430398502.Spec : Prop :=
  ∀ n, (P12415948258430398502.a n : ℤ) = A062171 (n + 1)

end A062171

/-! ## A062171.P12430159513392020434

`∪[A048108(n+1), A388305(n+1)]`
-/

namespace A062171.P12430159513392020434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048108 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388305 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A062171.P12430159513392020434

namespace A062171

/-- `∪[A048108(n+1), A388305(n+1)]` -/
def P12430159513392020434.Spec : Prop :=
  ∀ n, (P12430159513392020434.a n : ℤ) = A062171 (n + 1)

end A062171

/-! ## A062171.P776199650189384373

`∪[A046099(n+1), A392288(n+1)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A062171

/-- `∪[A046099(n+1), A392288(n+1)]` -/
def P776199650189384373.Spec : Prop :=
  ∀ n, (P776199650189384373.a n : ℤ) = A062171 (n + 1)

theorem P776199650189384373.correct : P776199650189384373.Spec := by
  intro n
  simp only [A062171, Nat.add_sub_cancel]

end A062171

/-! ## A062171.P12076310092441837266

`∪[A228957(n+1), A376271(n+1)]`
-/

namespace A062171.P12076310092441837266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228957 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376271 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A062171.P12076310092441837266

namespace A062171

/-- `∪[A228957(n+1), A376271(n+1)]` -/
def P12076310092441837266.Spec : Prop :=
  ∀ n, (P12076310092441837266.a n : ℤ) = A062171 (n + 1)

end A062171

/-! ## A062171.P5870375249999050947

`∪[A246549(n+1), A376271(n+1)]`
-/

namespace A062171.P5870375249999050947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246549 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376271 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A062171.P5870375249999050947

namespace A062171

/-- `∪[A246549(n+1), A376271(n+1)]` -/
def P5870375249999050947.Spec : Prop :=
  ∀ n, (P5870375249999050947.a n : ℤ) = A062171 (n + 1)

end A062171

/-! ## A062171.P6242353176444355500

`∪[A320966(n+1), A376271(n+1)]`
-/

namespace A062171.P6242353176444355500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376271 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A062171.P6242353176444355500

namespace A062171

/-- `∪[A320966(n+1), A376271(n+1)]` -/
def P6242353176444355500.Spec : Prop :=
  ∀ n, (P6242353176444355500.a n : ℤ) = A062171 (n + 1)

end A062171

/-! ## A062171.P4915623860286382812

`∪[A354561(n+1), A376271(n+1)]`
-/

namespace A062171.P4915623860286382812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354561 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376271 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A062171.P4915623860286382812

namespace A062171

/-- `∪[A354561(n+1), A376271(n+1)]` -/
def P4915623860286382812.Spec : Prop :=
  ∀ n, (P4915623860286382812.a n : ℤ) = A062171 (n + 1)

end A062171

/-! ## A062171.P14041211978071566155

`lt[2, A305193(n+1)]+1`
-/

namespace A062171.P14041211978071566155
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305193 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A062171.P14041211978071566155

namespace A062171

/-- `lt[2, A305193(n+1)]+1` -/
def P14041211978071566155.Spec : Prop :=
  ∀ n, (P14041211978071566155.a n : ℤ) = A062171 (n + 1)

end A062171

/-! ## A062171.P7285360327441648383

`lt[4, A293902(n+1)]+1`
-/

namespace A062171.P7285360327441648383
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293902 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A062171.P7285360327441648383

namespace A062171

/-- `lt[4, A293902(n+1)]+1` -/
def P7285360327441648383.Spec : Prop :=
  ∀ n, (P7285360327441648383.a n : ℤ) = A062171 (n + 1)

end A062171

/-! ## A062171.P15016453943001738698

`lt[2, A319786(n+1)]+1`
-/

namespace A062171.P15016453943001738698
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319786 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A062171.P15016453943001738698

namespace A062171

/-- `lt[2, A319786(n+1)]+1` -/
def P15016453943001738698.Spec : Prop :=
  ∀ n, (P15016453943001738698.a n : ℤ) = A062171 (n + 1)

end A062171

/-! ## A062171.P6509797496193751642

`lt[2, A330018(n+1)]+1`
-/

namespace A062171.P6509797496193751642
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330018 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A062171.P6509797496193751642

namespace A062171

/-- `lt[2, A330018(n+1)]+1` -/
def P6509797496193751642.Spec : Prop :=
  ∀ n, (P6509797496193751642.a n : ℤ) = A062171 (n + 1)

end A062171

/-! ## A062171.P1227493934507962584

`eq[5, 5%A112621(n+2)]+2`
-/

namespace A062171.P1227493934507962584
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 5 (A112621 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A062171.P1227493934507962584

namespace A062171

/-- `eq[5, 5%A112621(n+2)]+2` -/
def P1227493934507962584.Spec : Prop :=
  ∀ n, (P1227493934507962584.a n : ℤ) = A062171 (n + 1)

end A062171

/-! ## A062171.P13664545398691134911

`lt[2, A319786(A028310(n))]`
-/

namespace A062171.P13664545398691134911
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319786 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A062171.P13664545398691134911

namespace A062171

/-- `lt[2, A319786(A028310(n))]` -/
def P13664545398691134911.Spec : Prop :=
  ∀ n, (P13664545398691134911.a n : ℤ) = A062171 (n + 1)

end A062171

/-! ## A062171.P9474982975504097980

`lt[A066874(A028310(n)), A211110(n)]`
-/

namespace A062171.P9474982975504097980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066874 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211110 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A062171.P9474982975504097980

namespace A062171

/-- `lt[A066874(A028310(n)), A211110(n)]` -/
def P9474982975504097980.Spec : Prop :=
  ∀ n, (P9474982975504097980.a n : ℤ) = A062171 (n + 1)

end A062171

/-! ## A062171.P5807902337095760240

`lt[A066874(A028310(n)), A293813(n)]`
-/

namespace A062171.P5807902337095760240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066874 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293813 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A062171.P5807902337095760240

namespace A062171

/-- `lt[A066874(A028310(n)), A293813(n)]` -/
def P5807902337095760240.Spec : Prop :=
  ∀ n, (P5807902337095760240.a n : ℤ) = A062171 (n + 1)

end A062171

/-!
# A062172: Table T(n,k) by antidiagonals of n^(k-1) mod k [n,k > 0].

The programs for A062172, the canonical program `A062172.P4489819024102910936` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062172 has offset 1).

The definition of A062172 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4675 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A062172.P15325186038125815904

`((col(n)+1)^(row(n)-col(n)))%(row(n)-col(n)+1)`
-/

namespace A062172.P15325186038125815904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((SequenceMachineLib.triCol n + 1 : ℚ) ^ ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) : ℤ))) ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1)

end

end A062172.P15325186038125815904

namespace A062172

/-- `((col(n)+1)^(row(n)-col(n)))%(row(n)-col(n)+1)` -/
def P15325186038125815904.Spec : Prop :=
  ∀ n, P15325186038125815904.a n = A062172 (n + 1)

end A062172

/-! ## A062172.P4489819024102910936

`A009998(n)%A004736(n+1)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A062172

/-- `A009998(n)%A004736(n+1)` -/
def P4489819024102910936.Spec : Prop :=
  ∀ n, P4489819024102910936.a n = A062172 (n + 1)

theorem P4489819024102910936.correct : P4489819024102910936.Spec := by
  intro n
  simp only [A062172, Nat.add_sub_cancel]

end A062172

/-! ## A062172.P7044345148087182073

`A004248(A014132(n+1))%A004736(n+1)`
-/

namespace A062172.P7044345148087182073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004248 (A014132 (n + 1)).toNat) (A004736 (n + 1))

end

end A062172.P7044345148087182073

namespace A062172

/-- `A004248(A014132(n+1))%A004736(n+1)` -/
def P7044345148087182073.Spec : Prop :=
  ∀ n, P7044345148087182073.a n = A062172 (n + 1)

end A062172

/-! ## A062172.P16606301993482973424

`(A002260(n+1)^A025581(n))%A004736(n+1)`
-/

namespace A062172.P16606301993482973424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A002260 (n + 1) : ℚ) ^ (A025581 n : ℤ))) (A004736 (n + 1))

end

end A062172.P16606301993482973424

namespace A062172

/-- `(A002260(n+1)^A025581(n))%A004736(n+1)` -/
def P16606301993482973424.Spec : Prop :=
  ∀ n, P16606301993482973424.a n = A062172 (n + 1)

theorem P16606301993482973424.correct : P16606301993482973424.Spec := by
  intro n
  simp only [A062172, Nat.add_sub_cancel, A062172.P16606301993482973424.a, A062172.P4489819024102910936.a, A002260, A002260.P9170571874073898642.a, A004736, A004736.P10337537277358081527.a, A009998, A009998.P3531678836171477195.a, A025581, A025581.P16112744757063613497.a, A000217, A000217.P10269402890581615239.a, A002024, A002024.P11700297927830783882.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A062172

/-! ## A062172.P6466739299318068528

`(A002262(n+1)^A025581(n))%A004736(n+1)`
-/

namespace A062172.P6466739299318068528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A002262 (n + 1) : ℚ) ^ (A025581 n : ℤ))) (A004736 (n + 1))

end

end A062172.P6466739299318068528

namespace A062172

/-- `(A002262(n+1)^A025581(n))%A004736(n+1)` -/
def P6466739299318068528.Spec : Prop :=
  ∀ n, P6466739299318068528.a n = A062172 (n + 1)

end A062172

/-! ## A062172.P893996851972645413

`(A002262(n+1)^A004736(n+2))%A004736(n+1)`
-/

namespace A062172.P893996851972645413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A002262 (n + 1) : ℚ) ^ (A004736 (n + 2) : ℤ))) (A004736 (n + 1))

end

end A062172.P893996851972645413

namespace A062172

/-- `(A002262(n+1)^A004736(n+2))%A004736(n+1)` -/
def P893996851972645413.Spec : Prop :=
  ∀ n, P893996851972645413.a n = A062172 (n + 1)

end A062172

/-! ## A062172.P18345898574504616414

`(A002260(n+1)^A004736(n+2))%A004736(n+1)`
-/

namespace A062172.P18345898574504616414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A002260 (n + 1) : ℚ) ^ (A004736 (n + 2) : ℤ))) (A004736 (n + 1))

end

end A062172.P18345898574504616414

namespace A062172

/-- `(A002260(n+1)^A004736(n+2))%A004736(n+1)` -/
def P18345898574504616414.Spec : Prop :=
  ∀ n, P18345898574504616414.a n = A062172 (n + 1)

end A062172

/-! ## A062172.P9789040052801059163

`A009998(n)%A000005(A130321(n))`
-/

namespace A062172.P9789040052801059163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A009998 n) (A000005 (A130321 n).toNat)

end

end A062172.P9789040052801059163

namespace A062172

/-- `A009998(n)%A000005(A130321(n))` -/
def P9789040052801059163.Spec : Prop :=
  ∀ n, P9789040052801059163.a n = A062172 (n + 1)

end A062172

/-! ## A062172.P4884340430114097551

`A009999(A061579(n))%A000005(A130321(n))`
-/

namespace A062172.P4884340430114097551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A009999 (A061579 n).toNat) (A000005 (A130321 n).toNat)

end

end A062172.P4884340430114097551

namespace A062172

/-- `A009999(A061579(n))%A000005(A130321(n))` -/
def P4884340430114097551.Spec : Prop :=
  ∀ n, P4884340430114097551.a n = A062172 (n + 1)

end A062172

/-! ## A062172.P10908564653771269446

`A004248(A014132(n+1))%A000005(A130321(n))`
-/

namespace A062172.P10908564653771269446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004248 (A014132 (n + 1)).toNat) (A000005 (A130321 n).toNat)

end

end A062172.P10908564653771269446

namespace A062172

/-- `A004248(A014132(n+1))%A000005(A130321(n))` -/
def P10908564653771269446.Spec : Prop :=
  ∀ n, P10908564653771269446.a n = A062172 (n + 1)

end A062172

/-! ## A062172.P13875748275703633009

`A051129(A122797(n+1))%A000005(A130321(n))`
-/

namespace A062172.P13875748275703633009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051129 (A122797 (n + 1)).toNat) (A000005 (A130321 n).toNat)

end

end A062172.P13875748275703633009

namespace A062172

/-- `A051129(A122797(n+1))%A000005(A130321(n))` -/
def P13875748275703633009.Spec : Prop :=
  ∀ n, P13875748275703633009.a n = A062172 (n + 1)

end A062172

/-! ## A062172.P17153229300274913267

`A399450(n+1)%A004736(n+1)`
-/

namespace A062172.P17153229300274913267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A399450 (n + 1)) (A004736 (n + 1))

end

end A062172.P17153229300274913267

namespace A062172

/-- `A399450(n+1)%A004736(n+1)` -/
def P17153229300274913267.Spec : Prop :=
  ∀ n, P17153229300274913267.a n = A062172 (n + 1)

end A062172

/-!
# A062173: a(n) = 2^(n-1) mod n.

The programs for A062173, the canonical program `A062173.P13877006182644273004` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062173 has offset 1).

The definition of A062173 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2^n)%(n+1)` (program `A062173.P13877006182644273004`, by `A062173.P13877006182644273004.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A062173.P13877006182644273004

`(2^n)%(n+1)`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A062173

/-- `(2^n)%(n+1)` -/
def P13877006182644273004.Spec : Prop :=
  ∀ n, (P13877006182644273004.a n : ℤ) = A062173 (n + 1)

theorem P13877006182644273004.correct : P13877006182644273004.Spec := by
  intro n
  simp only [A062173, Nat.add_sub_cancel]

end A062173

/-! ## A062173.P9438473486359428014

`abs(((-2)^n)%(1-(n-2*n)))`
-/

namespace A062173.P9438473486359428014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod ((-2) ^ n) (1 - ((n : ℤ) - (2 * n : ℤ)))|

end

end A062173.P9438473486359428014

namespace A062173

/-- `abs(((-2)^n)%(1-(n-2*n)))` -/
def P9438473486359428014.Spec : Prop :=
  ∀ n, P9438473486359428014.a n = A062173 (n + 1)

end A062173

/-! ## A062173.P559554755194002434

`A000079(n)%(n+1)*A057427(n)`
-/

namespace A062173.P559554755194002434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000079 n) (n + 1 : ℤ) * A057427 n

end

end A062173.P559554755194002434

namespace A062173

/-- `A000079(n)%(n+1)*A057427(n)` -/
def P559554755194002434.Spec : Prop :=
  ∀ n, P559554755194002434.a n = A062173 (n + 1)

end A062173

/-! ## A062173.P52030565188325711

`A061467(A000120(n))+A030110(n)%(n+1)`
-/

namespace A062173.P52030565188325711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061467 (A000120 n).toNat + Int.tmod (A030110 n) (n + 1 : ℤ)

end

end A062173.P52030565188325711

namespace A062173

/-- `A061467(A000120(n))+A030110(n)%(n+1)` -/
def P52030565188325711.Spec : Prop :=
  ∀ n, P52030565188325711.a n = A062173 (n + 1)

end A062173

/-! ## A062173.P1806028681297747624

`A177207(∑[n]+1)`
-/

namespace A062173.P1806028681297747624
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177207 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A062173.P1806028681297747624

namespace A062173

/-- `A177207(∑[n]+1)` -/
def P1806028681297747624.Spec : Prop :=
  ∀ n, P1806028681297747624.a n = A062173 (n + 1)

end A062173

/-! ## A062173.P10290182686652756011

`A062172(∑[n+1]+2)`
-/

namespace A062173.P10290182686652756011
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062172 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A062173.P10290182686652756011

namespace A062173

/-- `A062172(∑[n+1]+2)` -/
def P10290182686652756011.Spec : Prop :=
  ∀ n, P10290182686652756011.a n = A062173 (n + 1)

end A062173

/-! ## A062173.P10240563826468051528

`A118759(A030110(n)%(n+1))`
-/

namespace A062173.P10240563826468051528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (Int.tmod (A030110 n) (n + 1 : ℤ)).toNat

end

end A062173.P10240563826468051528

namespace A062173

/-- `A118759(A030110(n)%(n+1))` -/
def P10240563826468051528.Spec : Prop :=
  ∀ n, P10240563826468051528.a n = A062173 (n + 1)

end A062173

/-!
# A062174: a(n) = 3^(n-1) mod n.

The programs for A062174, the canonical program `A062174.P17695015391598183262` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062174 has offset 1).

The definition of A062174 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(3^n)%(n+1)` (program `A062174.P17695015391598183262`, by `A062174.P17695015391598183262.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A062174.P17695015391598183262

`(3^n)%(n+1)`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A062174

/-- `(3^n)%(n+1)` -/
def P17695015391598183262.Spec : Prop :=
  ∀ n, (P17695015391598183262.a n : ℤ) = A062174 (n + 1)

theorem P17695015391598183262.correct : P17695015391598183262.Spec := by
  intro n
  simp only [A062174, Nat.add_sub_cancel]

end A062174

/-! ## A062174.P9078617726428698042

`abs(Δ[A115098(n)]%(n+1))`
-/

namespace A062174.P9078617726428698042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115098 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (f1 (n + 1) - f1 n) (n + 1 : ℤ)|

end

end A062174.P9078617726428698042

namespace A062174

/-- `abs(Δ[A115098(n)]%(n+1))` -/
def P9078617726428698042.Spec : Prop :=
  ∀ n, P9078617726428698042.a n = A062174 (n + 1)

end A062174

/-! ## A062174.P10125324102675671972

`abs((1-A034472(n))%(n+1))`
-/

namespace A062174.P10125324102675671972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (1 - A034472 n) (n + 1 : ℤ)|

end

end A062174.P10125324102675671972

namespace A062174

/-- `abs((1-A034472(n))%(n+1))` -/
def P10125324102675671972.Spec : Prop :=
  ∀ n, P10125324102675671972.a n = A062174 (n + 1)

end A062174

/-! ## A062174.P838301798426438337

`abs((1-A000244(n)+n)%(n+1))`
-/

namespace A062174.P838301798426438337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (1 - A000244 n + (n : ℤ)) (n + 1 : ℤ)|

end

end A062174.P838301798426438337

namespace A062174

/-- `abs((1-A000244(n)+n)%(n+1))` -/
def P838301798426438337.Spec : Prop :=
  ∀ n, P838301798426438337.a n = A062174 (n + 1)

end A062174

/-! ## A062174.P18386943324582167432

`A002265(4*(A024023(n)+1)%(n+1))`
-/

namespace A062174.P18386943324582167432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (4 * Int.tmod (A024023 n + 1) (n + 1 : ℤ)).toNat

end

end A062174.P18386943324582167432

namespace A062174

/-- `A002265(4*(A024023(n)+1)%(n+1))` -/
def P18386943324582167432.Spec : Prop :=
  ∀ n, P18386943324582167432.a n = A062174 (n + 1)

end A062174

/-! ## A062174.P4830887099887028207

`A000244(n)%(n+1)*A033999(2*n)`
-/

namespace A062174.P4830887099887028207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000244 n) (n + 1 : ℤ) * A033999 (2 * n)

end

end A062174.P4830887099887028207

namespace A062174

/-- `A000244(n)%(n+1)*A033999(2*n)` -/
def P4830887099887028207.Spec : Prop :=
  ∀ n, P4830887099887028207.a n = A062174 (n + 1)

end A062174

/-! ## A062174.P17148981124237124096

`or((A024024(n)-1)%(n+1), A000035(n))`
-/

namespace A062174.P17148981124237124096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Int.tmod (A024024 n - 1) (n + 1 : ℤ)) (A000035 n)

end

end A062174.P17148981124237124096

namespace A062174

/-- `or((A024024(n)-1)%(n+1), A000035(n))` -/
def P17148981124237124096.Spec : Prop :=
  ∀ n, P17148981124237124096.a n = A062174 (n + 1)

end A062174

/-! ## A062174.P5903245053278736788

`A014682(A008776(n)%(2*(n+1)))`
-/

namespace A062174.P5903245053278736788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (Int.tmod (A008776 n) (2 * (n + 1) : ℤ)).toNat

end

end A062174.P5903245053278736788

namespace A062174

/-- `A014682(A008776(n)%(2*(n+1)))` -/
def P5903245053278736788.Spec : Prop :=
  ∀ n, P5903245053278736788.a n = A062174 (n + 1)

end A062174

/-! ## A062174.P4876475894042633547

`abs((A140429(n+1)-A099856(n))%(n+1))`
-/

namespace A062174.P4876475894042633547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A140429 (n + 1) - A099856 n) (n + 1 : ℤ)|

end

end A062174.P4876475894042633547

namespace A062174

/-- `abs((A140429(n+1)-A099856(n))%(n+1))` -/
def P4876475894042633547.Spec : Prop :=
  ∀ n, P4876475894042633547.a n = A062174 (n + 1)

end A062174

/-! ## A062174.P13701245295186209476

`A004525(A008776(n)%A103517(n))`
-/

namespace A062174.P13701245295186209476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (Int.tmod (A008776 n) (A103517 n)).toNat

end

end A062174.P13701245295186209476

namespace A062174

/-- `A004525(A008776(n)%A103517(n))` -/
def P13701245295186209476.Spec : Prop :=
  ∀ n, P13701245295186209476.a n = A062174 (n + 1)

end A062174

/-! ## A062174.P6371181021138575776

`A026741(A110593(n+1)%A103517(n))`
-/

namespace A062174.P6371181021138575776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (Int.tmod (A110593 (n + 1)) (A103517 n)).toNat

end

end A062174.P6371181021138575776

namespace A062174

/-- `A026741(A110593(n+1)%A103517(n))` -/
def P6371181021138575776.Spec : Prop :=
  ∀ n, P6371181021138575776.a n = A062174 (n + 1)

end A062174

/-! ## A062174.P15786508899766442384

`A110654(A182522(A103517(n))%A103517(n))`
-/

namespace A062174.P15786508899766442384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (Int.tmod (A182522 (A103517 n).toNat) (A103517 n)).toNat

end

end A062174.P15786508899766442384

namespace A062174

/-- `A110654(A182522(A103517(n))%A103517(n))` -/
def P15786508899766442384.Spec : Prop :=
  ∀ n, P15786508899766442384.a n = A062174 (n + 1)

end A062174

/-! ## A062174.P5258922628603408983

`A062172(∑[n+2]+4)`
-/

namespace A062174.P5258922628603408983
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062172 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A062174.P5258922628603408983

namespace A062174

/-- `A062172(∑[n+2]+4)` -/
def P5258922628603408983.Spec : Prop :=
  ∀ n, P5258922628603408983.a n = A062174 (n + 1)

end A062174

/-! ## A062174.P17583534062823233602

`and(A000244(n)%(n+1), A198970(n))`
-/

namespace A062174.P17583534062823233602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (Int.tmod (A000244 n) (n + 1 : ℤ)) (A198970 n)

end

end A062174.P17583534062823233602

namespace A062174

/-- `and(A000244(n)%(n+1), A198970(n))` -/
def P17583534062823233602.Spec : Prop :=
  ∀ n, P17583534062823233602.a n = A062174 (n + 1)

end A062174

/-!
# A062175: a(n) = 4^(n-1) mod n.

The programs for A062175, the canonical program `A062175.P9780309333611397223` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062175 has offset 1).

The definition of A062175 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(4^n)%(n+1)` (program `A062175.P9780309333611397223`, by `A062175.P9780309333611397223.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A062175.P9780309333611397223

`(4^n)%(n+1)`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A062175

/-- `(4^n)%(n+1)` -/
def P9780309333611397223.Spec : Prop :=
  ∀ n, (P9780309333611397223.a n : ℤ) = A062175 (n + 1)

theorem P9780309333611397223.correct : P9780309333611397223.Spec := by
  intro n
  simp only [A062175, Nat.add_sub_cancel]

end A062175

/-! ## A062175.P4087655215737331968

`A062173(2*(n+1))/2`
-/

namespace A062175.P4087655215737331968
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062173 (2 * (n + 1)) : ℚ) / 2

end

end A062175.P4087655215737331968

namespace A062175

/-- `A062173(2*(n+1))/2` -/
def P4087655215737331968.Spec : Prop :=
  ∀ n, P4087655215737331968.a n = (A062175 (n + 1) : ℚ)

end A062175

/-! ## A062175.P4150509211696317180

`A004525(A062173(2*(n+1)))`
-/

namespace A062175.P4150509211696317180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A062173 (2 * (n + 1))).toNat

end

end A062175.P4150509211696317180

namespace A062175

/-- `A004525(A062173(2*(n+1)))` -/
def P4150509211696317180.Spec : Prop :=
  ∀ n, P4150509211696317180.a n = A062175 (n + 1)

end A062175

/-! ## A062175.P9259744527960736979

`A123108(A062173(2*(n+1))+1)`
-/

namespace A062175.P9259744527960736979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A062173 (2 * (n + 1)) + 1).toNat

end

end A062175.P9259744527960736979

namespace A062175

/-- `A123108(A062173(2*(n+1))+1)` -/
def P9259744527960736979.Spec : Prop :=
  ∀ n, P9259744527960736979.a n = A062175 (n + 1)

end A062175

/-! ## A062175.P15150274414915994262

`abs(abs(A000079(n)²%(n+1)-n)-n)`
-/

namespace A062175.P15150274414915994262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(|Int.tmod (A000079 n ^ 2) (n + 1 : ℤ) - (n : ℤ)| - (n : ℤ))|

end

end A062175.P15150274414915994262

namespace A062175

/-- `abs(abs(A000079(n)²%(n+1)-n)-n)` -/
def P15150274414915994262.Spec : Prop :=
  ∀ n, P15150274414915994262.a n = A062175 (n + 1)

end A062175

/-! ## A062175.P563761157529289516

`A000079(n)²%(n+1)*A057427(n)`
-/

namespace A062175.P563761157529289516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000079 n ^ 2) (n + 1 : ℤ) * A057427 n

end

end A062175.P563761157529289516

namespace A062175

/-- `A000079(n)²%(n+1)*A057427(n)` -/
def P563761157529289516.Spec : Prop :=
  ∀ n, P563761157529289516.a n = A062175 (n + 1)

end A062175

/-! ## A062175.P10032225807330015500

`A000027(Δ[A002450(n)]%(n+1)+1)-1`
-/

namespace A062175.P10032225807330015500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002450 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (Int.tmod (f1 (n + 1) - f1 n) (n + 1 : ℤ) + 1).toNat - 1

end

end A062175.P10032225807330015500

namespace A062175

/-- `A000027(Δ[A002450(n)]%(n+1)+1)-1` -/
def P10032225807330015500.Spec : Prop :=
  ∀ n, P10032225807330015500.a n = A062175 (n + 1)

end A062175

/-! ## A062175.P9050527815370087027

`(1-n*A000302(n))%(n+1)+n`
-/

namespace A062175.P9050527815370087027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (1 - (n : ℤ) * A000302 n) (n + 1 : ℤ) + (n : ℤ)

end

end A062175.P9050527815370087027

namespace A062175

/-- `(1-n*A000302(n))%(n+1)+n` -/
def P9050527815370087027.Spec : Prop :=
  ∀ n, P9050527815370087027.a n = A062175 (n + 1)

end A062175

/-! ## A062175.P8848798054912115926

`A062172(A167614(n+2)+1)`
-/

namespace A062175.P8848798054912115926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062172 (A167614 (n + 2) + 1).toNat

end

end A062175.P8848798054912115926

namespace A062175

/-- `A062172(A167614(n+2)+1)` -/
def P8848798054912115926.Spec : Prop :=
  ∀ n, P8848798054912115926.a n = A062175 (n + 1)

end A062175

/-!
# A062176: a(n) = 5^(n-1) mod n.

The programs for A062176, the canonical program `A062176.P5876340861125012495` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062176 has offset 1).

The definition of A062176 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(5^n)%(n+1)` (program `A062176.P5876340861125012495`, by `A062176.P5876340861125012495.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A062176.P5876340861125012495

`(5^n)%(n+1)`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A062176

/-- `(5^n)%(n+1)` -/
def P5876340861125012495.Spec : Prop :=
  ∀ n, (P5876340861125012495.a n : ℤ) = A062176 (n + 1)

theorem P5876340861125012495.correct : P5876340861125012495.Spec := by
  intro n
  simp only [A062176, Nat.add_sub_cancel]

end A062176

/-! ## A062176.P7468466831453008676

`abs((A104745(n)-n)%(n+1))`
-/

namespace A062176.P7468466831453008676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A104745 n - (n : ℤ)) (n + 1 : ℤ)|

end

end A062176.P7468466831453008676

namespace A062176

/-- `abs((A104745(n)-n)%(n+1))` -/
def P7468466831453008676.Spec : Prop :=
  ∀ n, P7468466831453008676.a n = A062176 (n + 1)

end A062176

/-! ## A062176.P13194245360733280290

`abs(Δ[A003463(n)]%(n+1))`
-/

namespace A062176.P13194245360733280290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003463 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (f1 (n + 1) - f1 n) (n + 1 : ℤ)|

end

end A062176.P13194245360733280290

namespace A062176

/-- `abs(Δ[A003463(n)]%(n+1))` -/
def P13194245360733280290.Spec : Prop :=
  ∀ n, P13194245360733280290.a n = A062176 (n + 1)

end A062176

/-! ## A062176.P13787887599095806219

`A004525(A020729(n)%A317108(n+1))`
-/

namespace A062176.P13787887599095806219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (Int.tmod (A020729 n) (A317108 (n + 1))).toNat

end

end A062176.P13787887599095806219

namespace A062176

/-- `A004525(A020729(n)%A317108(n+1))` -/
def P13787887599095806219.Spec : Prop :=
  ∀ n, P13787887599095806219.a n = A062176 (n + 1)

end A062176

/-! ## A062176.P16207060217242307560

`A062172(A167499(n+3))`
-/

namespace A062176.P16207060217242307560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062172 (A167499 (n + 3)).toNat

end

end A062176.P16207060217242307560

namespace A062176

/-- `A062172(A167499(n+3))` -/
def P16207060217242307560.Spec : Prop :=
  ∀ n, P16207060217242307560.a n = A062176 (n + 1)

end A062176

/-!
# A062177: Shifts left when MASKCONVolved with itself.

The programs for A062177, there is no canonical definition to state claims against.
-/

/-! ## A062177.P13549780697380022417

`A028310(A008621(n)*A282193(n+1))`
-/

namespace A062177.P13549780697380022417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A008621 n * A282193 (n + 1)).toNat

end

end A062177.P13549780697380022417

/-! ## A062177.P12819537855506623839

`A186421(A008621(n)*A282193(n+1))`
-/

namespace A062177.P12819537855506623839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186421 (A008621 n * A282193 (n + 1)).toNat

end

end A062177.P12819537855506623839

/-! ## A062177.P17648128371841839810

`A008619(n)*A051889(A000085(n))`
-/

namespace A062177.P17648128371841839810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n * A051889 (A000085 n).toNat

end

end A062177.P17648128371841839810

/-! ## A062177.P2748330318709452246

`A306921(or(A002426(n), A179327(n)))`
-/

namespace A062177.P2748330318709452246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306921 (Int.lor (A002426 n) (A179327 n)).toNat

end

end A062177.P2748330318709452246

/-!
# A062178: a(n+1) = 2a(n)-a([n/2]) starting with a(0)=0 and a(1)=1.

The programs for A062178, there is no canonical definition to state claims against.
-/

/-! ## A062178.P10939739823491296487

`a(n-1)+A002083(n)` with `a(0)=0`
-/

namespace A062178.P10939739823491296487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + A002083 n

end

end A062178.P10939739823491296487

/-! ## A062178.P5036133020343297767

`∑[A002083(abs(1-n)+1)]-1`
-/

namespace A062178.P5036133020343297767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002083 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A062178.P5036133020343297767

/-! ## A062178.P16416707878750360310

`A057427(n)+A005255(n-A057427(n))`
-/

namespace A062178.P16416707878750360310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A005255 ((n : ℤ) - A057427 n).toNat

end

end A062178.P16416707878750360310

/-! ## A062178.P13174554424124653789

`A005255(n)+1-A002083(n+1)`
-/

namespace A062178.P13174554424124653789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005255 n + (1 - A002083 (n + 1))

end

end A062178.P13174554424124653789

/-! ## A062178.P9237357772365037416

`∑[A002083(n+1)%A000051(n)]-A002083(n+1)`
-/

namespace A062178.P9237357772365037416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002083 (n + 1)) (A000051 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A002083 (n + 1)

end

end A062178.P9237357772365037416

/-!
# A062179: Harmonic mean of digits is an integer.

The programs for A062179, there is no canonical definition to state claims against.
-/

/-! ## A062179.P5986735562118205074

`filter[A392051(n+1), A168046(#)]`
-/

namespace A062179.P5986735562118205074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168046 (f1 j).toNat = 1) n)

end

end A062179.P5986735562118205074

/-! ## A062179.P16158542251597008787

`filter[A392051(n+2), A209929(#)]`
-/

namespace A062179.P16158542251597008787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392051 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A209929 (f1 j).toNat = 1) n)

end

end A062179.P16158542251597008787

/-! ## A062179.P12660925618938256039

`∩[A052382(n+1), A392051(n+1)]`
-/

namespace A062179.P12660925618938256039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052382 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392051 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062179.P12660925618938256039

/-! ## A062179.P12705631339446205942

`∩[A209931(n+1), A392051(n+1)]`
-/

namespace A062179.P12705631339446205942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209931 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392051 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062179.P12705631339446205942

/-! ## A062179.P2189660749810320454

`eq[A040790(n), A392050(n)]`
-/

namespace A062179.P2189660749810320454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040790 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392050 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A062179.P2189660749810320454

/-!
# A062186: a(n) = a(n-1) - a(floor(n/2)), with a(1)=1.

The programs for A062186, the canonical program `A062186.P18322411667248667480` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062186 has offset 1).

The definition of A062186 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)-a(floor((n+1)/2)-1)` (program `A062186.P18322411667248667480`, by `A062186.P18322411667248667480.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A062186.P18322411667248667480

`a(n-1)-a(floor((n+1)/2)-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A062186

/-- `a(n-1)-a(floor((n+1)/2)-1)` -/
def P18322411667248667480.Spec : Prop :=
  ∀ n, P18322411667248667480.a n = A062186 (n + 1)

theorem P18322411667248667480.correct : P18322411667248667480.Spec := by
  intro n
  simp only [A062186, Nat.add_sub_cancel]

end A062186

/-! ## A062186.P15029344801026230106

`a(n-1)-a(∑[n%2]-1)` with `a(0)=1`
-/

namespace A062186.P15029344801026230106
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - a (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A062186.P15029344801026230106

namespace A062186

/-- `a(n-1)-a(∑[n%2]-1)` -/
def P15029344801026230106.Spec : Prop :=
  ∀ n, P15029344801026230106.a n = A062186 (n + 1)

end A062186

/-! ## A062186.P2285928633153877895

`ceil(a(n-1)-a(ceil(n/2)-1))` with `a(0)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A062186.P2285928633153877895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - a (⌈(n : ℚ) / 2⌉ - 1).toNat

end

end A062186.P2285928633153877895

namespace A062186

/-- `ceil(a(n-1)-a(ceil(n/2)-1))` -/
def P2285928633153877895.Spec : Prop :=
  ∀ n, P2285928633153877895.a n = A062186 (n + 1)

end A062186

/-! ## A062186.P17033017237806150776

`floor(a(n-1)-a(A140106(n+1)))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A062186.P17033017237806150776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - a (A140106 (n + 1)).toNat

end

end A062186.P17033017237806150776

namespace A062186

/-- `floor(a(n-1)-a(A140106(n+1)))` -/
def P17033017237806150776.Spec : Prop :=
  ∀ n, P17033017237806150776.a n = A062186 (n + 1)

end A062186

/-! ## A062186.P14440048066471731280

`a(n-1)-floor(a(A065033(n)-1))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A062186.P14440048066471731280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - a (A065033 n - 1).toNat

end

end A062186.P14440048066471731280

namespace A062186

/-- `a(n-1)-floor(a(A065033(n)-1))` -/
def P14440048066471731280.Spec : Prop :=
  ∀ n, P14440048066471731280.a n = A062186 (n + 1)

end A062186

/-! ## A062186.P12769790938571404696

`a(n-1)-floor(a(n-A008619(n)))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A062186.P12769790938571404696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - a ((n : ℤ) - A008619 n).toNat

end

end A062186.P12769790938571404696

namespace A062186

/-- `a(n-1)-floor(a(n-A008619(n)))` -/
def P12769790938571404696.Spec : Prop :=
  ∀ n, P12769790938571404696.a n = A062186 (n + 1)

end A062186

/-! ## A062186.P5954724556049326418

`a(n-1)-ceil(a(A110655(2*n)-1))` with `a(0)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A062186.P5954724556049326418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - a (A110655 (2 * n) - 1).toNat

end

end A062186.P5954724556049326418

namespace A062186

/-- `a(n-1)-ceil(a(A110655(2*n)-1))` -/
def P5954724556049326418.Spec : Prop :=
  ∀ n, P5954724556049326418.a n = A062186 (n + 1)

end A062186

/-!
# A062187: a(n+1) = a(n) - a(floor(n/2)), with a(0)=0, a(1)=1.

The programs for A062187, the canonical program `A062187.P18293695425633580345` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062187 has offset 0).

The definition of A062187 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A062187.P18293695425633580345

`a(n-1)-a(floor((n-1)/2))` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A062187

/-- `a(n-1)-a(floor((n-1)/2))` -/
def P18293695425633580345.Spec : Prop :=
  ∀ n, P18293695425633580345.a n = A062187 n

theorem P18293695425633580345.correct : P18293695425633580345.Spec := by
  intro n
  simp only [A062187]

end A062187

/-! ## A062187.P9801084202133171288

`ceil(a(n-1)-a(ceil(n/2)-1))` with `a(0)=0, a(1)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A062187.P9801084202133171288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) - a (⌈(n : ℚ) / 2⌉ - 1).toNat

end

end A062187.P9801084202133171288

namespace A062187

/-- `ceil(a(n-1)-a(ceil(n/2)-1))` -/
def P9801084202133171288.Spec : Prop :=
  ∀ n, P9801084202133171288.a n = A062187 n

end A062187

/-! ## A062187.P17757676299957478381

`floor(a(n-1)-a(∑[n%2]-1))` with `a(0)=0, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A062187.P17757676299957478381
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) - a (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A062187.P17757676299957478381

namespace A062187

/-- `floor(a(n-1)-a(∑[n%2]-1))` -/
def P17757676299957478381.Spec : Prop :=
  ∀ n, P17757676299957478381.a n = A062187 n

end A062187

/-! ## A062187.P8778464059150331405

`floor(a(n-1)-a(A140106(n+1)))` with `a(0)=0, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A062187.P8778464059150331405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) - a (A140106 (n + 1)).toNat

end

end A062187.P8778464059150331405

namespace A062187

/-- `floor(a(n-1)-a(A140106(n+1)))` -/
def P8778464059150331405.Spec : Prop :=
  ∀ n, P8778464059150331405.a n = A062187 n

end A062187

/-! ## A062187.P6827505803257871110

`a(n-1)-floor(a(A065033(n)-1))` with `a(0)=0, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A062187.P6827505803257871110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) - a (A065033 n - 1).toNat

end

end A062187.P6827505803257871110

namespace A062187

/-- `a(n-1)-floor(a(A065033(n)-1))` -/
def P6827505803257871110.Spec : Prop :=
  ∀ n, P6827505803257871110.a n = A062187 n

end A062187

/-! ## A062187.P100868927701313663

`a(n-1)-floor(a(n-A008619(n)))` with `a(0)=0, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A062187.P100868927701313663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) - a ((n : ℤ) - A008619 n).toNat

end

end A062187.P100868927701313663

namespace A062187

/-- `a(n-1)-floor(a(n-A008619(n)))` -/
def P100868927701313663.Spec : Prop :=
  ∀ n, P100868927701313663.a n = A062187 n

end A062187

/-!
# A062188: a(n+1) = a(n) + a(floor(n/2)), with a(0)=0, a(1)=1.

The programs for A062188, the canonical program `A062188.P1699806789765351713` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062188 has offset 0).

The definition of A062188 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A062188.P1699806789765351713

`a(floor((n-1)/2))+a(n-1)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A062188

/-- `a(floor((n-1)/2))+a(n-1)` -/
def P1699806789765351713.Spec : Prop :=
  ∀ n, (P1699806789765351713.a n : ℤ) = A062188 n

theorem P1699806789765351713.correct : P1699806789765351713.Spec := by
  intro n
  simp only [A062188]

end A062188

/-! ## A062188.P14125869859403658928

`floor(a(n-1)+a(A140106(n+1)))` with `a(0)=0, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A062188.P14125869859403658928
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) + a (A140106 (n + 1)).toNat

end

end A062188.P14125869859403658928

namespace A062188

/-- `floor(a(n-1)+a(A140106(n+1)))` -/
def P14125869859403658928.Spec : Prop :=
  ∀ n, (P14125869859403658928.a n : ℤ) = A062188 n

end A062188

/-! ## A062188.P14522411937056993088

`A033485(n+1)-A075535(n+1)`
-/

namespace A062188.P14522411937056993088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033485 (n + 1) - A075535 (n + 1)

end

end A062188.P14522411937056993088

namespace A062188

/-- `A033485(n+1)-A075535(n+1)` -/
def P14522411937056993088.Spec : Prop :=
  ∀ n, P14522411937056993088.a n = A062188 n

end A062188

/-! ## A062188.P517829936166024761

`A102379(n+1)+1-A075535(n+1)`
-/

namespace A062188.P517829936166024761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102379 (n + 1) + (1 - A075535 (n + 1))

end

end A062188.P517829936166024761

namespace A062188

/-- `A102379(n+1)+1-A075535(n+1)` -/
def P517829936166024761.Spec : Prop :=
  ∀ n, P517829936166024761.a n = A062188 n

end A062188

/-! ## A062188.P836189072554455080

`Δ[A022905(n+1)/3]-A075535(n+1)`
-/

namespace A062188.P836189072554455080
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022905 (n + 1) : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (A075535 (n + 1) : ℚ)

end

end A062188.P836189072554455080

namespace A062188

/-- `Δ[A022905(n+1)/3]-A075535(n+1)` -/
def P836189072554455080.Spec : Prop :=
  ∀ n, P836189072554455080.a n = (A062188 n : ℚ)

end A062188

/-! ## A062188.P3174338977940578763

`A040039(2*n)-A075535(n+1)`
-/

namespace A062188.P3174338977940578763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040039 (2 * n) - A075535 (n + 1)

end

end A062188.P3174338977940578763

namespace A062188

/-- `A040039(2*n)-A075535(n+1)` -/
def P3174338977940578763.Spec : Prop :=
  ∀ n, P3174338977940578763.a n = A062188 n

end A062188

/-! ## A062188.P5535750904443845394

`A155077(A096376(n+1))`
-/

namespace A062188.P5535750904443845394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155077 (A096376 (n + 1)).toNat

end

end A062188.P5535750904443845394

namespace A062188

/-- `A155077(A096376(n+1))` -/
def P5535750904443845394.Spec : Prop :=
  ∀ n, P5535750904443845394.a n = A062188 n

end A062188

/-!
# A062189: a(n) = 2 * 3^(n-2)*n*(1+2*n).

The programs for A062189, the canonical program `A062189.P12838812206636362501` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062189 has offset 0).

The definition of A062189 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A062189.P12838812206636362501

`n*(4*n+2)*3^(n-2)`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A062189

/-- `n*(4*n+2)*3^(n-2)` -/
def P12838812206636362501.Spec : Prop :=
  ∀ n, P12838812206636362501.a n = (A062189 n : ℚ)

end A062189

/-! ## A062189.P11269891773941627931

`2*3^(n-2)*n*(1+2*n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A062189.P11269891773941627931
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * (3 : ℚ) ^ ((n : ℤ) - 2 : ℤ) * (n : ℚ) * (1 + 2 * n : ℚ)

end

end A062189.P11269891773941627931

namespace A062189

/-- `2*3^(n-2)*n*(1+2*n)` -/
def P11269891773941627931.Spec : Prop :=
  ∀ n, P11269891773941627931.a n = (A062189 n : ℚ)

end A062189

/-! ## A062189.P9045920042936920058

`ogf((2x+2x^2)/(1-9x+27x^2-27x^3))`
-/

namespace A062189.P9045920042936920058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, 2] [1, -9, 27, -27] n

end

end A062189.P9045920042936920058

namespace A062189

/-- `ogf((2x+2x^2)/(1-9x+27x^2-27x^3))` -/
def P9045920042936920058.Spec : Prop :=
  ∀ n, P9045920042936920058.a n = A062189 n

end A062189

/-! ## A062189.P4589871081871993909

`n*A167682(n)/2`
-/

namespace A062189.P4589871081871993909
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A167682 n : ℚ) / 2

end

end A062189.P4589871081871993909

namespace A062189

/-- `n*A167682(n)/2` -/
def P4589871081871993909.Spec : Prop :=
  ∀ n, P4589871081871993909.a n = (A062189 n : ℚ)

end A062189

/-! ## A062189.P17866861064163028647

`∑{#}[n, C(n, #)*A007758(#)]`
-/

namespace A062189.P17866861064163028647
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A007758 k

end

end A062189.P17866861064163028647

namespace A062189

/-- `∑{#}[n, C(n, #)*A007758(#)]` -/
def P17866861064163028647.Spec : Prop :=
  ∀ n, P17866861064163028647.a n = A062189 n

end A062189

/-! ## A062189.P7083136040342415157

`floor(2*n*A229277(n)/3)`
-/

namespace A062189.P7083136040342415157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 * n : ℚ) * ((A229277 n : ℚ) / 3)⌋

end

end A062189.P7083136040342415157

namespace A062189

/-- `floor(2*n*A229277(n)/3)` -/
def P7083136040342415157.Spec : Prop :=
  ∀ n, P7083136040342415157.a n = A062189 n

end A062189

/-! ## A062189.P13760526290068219419

`A086951(n)+lcm(n, n/3*3^n)`
-/

namespace A062189.P13760526290068219419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086951 n + (Int.lcm (n : ℤ) (SequenceMachineLib.roundAway ((n : ℚ) / 3 * (3 ^ n : ℚ))) : ℤ)

end

end A062189.P13760526290068219419

namespace A062189

/-- `A086951(n)+lcm(n, n/3*3^n)` -/
def P13760526290068219419.Spec : Prop :=
  ∀ n, P13760526290068219419.a n = A062189 n

end A062189

/-! ## A062189.P3231935252712643929

`A383136(n)+A069996(n)`
-/

namespace A062189.P3231935252712643929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383136 n + A069996 n

end

end A062189.P3231935252712643929

namespace A062189

/-- `A383136(n)+A069996(n)` -/
def P3231935252712643929.Spec : Prop :=
  ∀ n, P3231935252712643929.a n = A062189 n

end A062189

/-! ## A062189.P17947565862801172336

`A086951(n)+A027471(n+1)`
-/

namespace A062189.P17947565862801172336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086951 n + A027471 (n + 1)

end

end A062189.P17947565862801172336

namespace A062189

/-- `A086951(n)+A027471(n+1)` -/
def P17947565862801172336.Spec : Prop :=
  ∀ n, P17947565862801172336.a n = A062189 n

end A062189

/-! ## A062189.P14649476413951828027

`A084900(n+1)+A084900(n)-A077616(n+1)`
-/

namespace A062189.P14649476413951828027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084900 (n + 1) + (A084900 n - A077616 (n + 1))

end

end A062189.P14649476413951828027

namespace A062189

/-- `A084900(n+1)+A084900(n)-A077616(n+1)` -/
def P14649476413951828027.Spec : Prop :=
  ∀ n, P14649476413951828027.a n = A062189 n

end A062189

/-! ## A062189.P14813661240906708088

`n*A113071(n)/4`
-/

namespace A062189.P14813661240906708088
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A113071 n : ℚ) / 4

end

end A062189.P14813661240906708088

namespace A062189

/-- `n*A113071(n)/4` -/
def P14813661240906708088.Spec : Prop :=
  ∀ n, P14813661240906708088.a n = (A062189 n : ℚ)

end A062189

/-! ## A062189.P3135159248082754129

`2*n*A229277(n)/3`
-/

namespace A062189.P3135159248082754129
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * ((n : ℤ) * A229277 n) : ℚ) / 3

end

end A062189.P3135159248082754129

namespace A062189

/-- `2*n*A229277(n)/3` -/
def P3135159248082754129.Spec : Prop :=
  ∀ n, P3135159248082754129.a n = (A062189 n : ℚ)

end A062189

/-! ## A062189.P4243836504126473979

`A016825(n)*A027471(n+1)/3`
-/

namespace A062189.P4243836504126473979
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016825 n * A027471 (n + 1) : ℚ) / 3

end

end A062189.P4243836504126473979

namespace A062189

/-- `A016825(n)*A027471(n+1)/3` -/
def P4243836504126473979.Spec : Prop :=
  ∀ n, P4243836504126473979.a n = (A062189 n : ℚ)

end A062189

/-! ## A062189.P12487064831969395061

`A116138(2*n)/A000244(n+2)`
-/

namespace A062189.P12487064831969395061
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A116138 (2 * n) : ℚ) / (A000244 (n + 2) : ℚ)

end

end A062189.P12487064831969395061

namespace A062189

/-- `A116138(2*n)/A000244(n+2)` -/
def P12487064831969395061.Spec : Prop :=
  ∀ n, P12487064831969395061.a n = (A062189 n : ℚ)

end A062189

/-! ## A062189.P1045293265461537755

`A128797(2*n+1)/A000244(n+3)`
-/

namespace A062189.P1045293265461537755
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128797 (2 * n + 1) : ℚ) / (A000244 (n + 3) : ℚ)

end

end A062189.P1045293265461537755

namespace A062189

/-- `A128797(2*n+1)/A000244(n+3)` -/
def P1045293265461537755.Spec : Prop :=
  ∀ n, P1045293265461537755.a n = (A062189 n : ℚ)

end A062189

/-!
# A062190: Coefficient triangle of certain polynomials N(5; m,x).

The programs for A062190, the canonical program `A062190.P2101019393710643494` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062190 has offset 0).

The definition of A062190 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A062190.P2101019393710643494

`C(row(n), col(n))*C(row(n)+5, col(n))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A062190

/-- `C(row(n), col(n))*C(row(n)+5, col(n))` -/
def P2101019393710643494.Spec : Prop :=
  ∀ n, (P2101019393710643494.a n : ℤ) = A062190 n

theorem P2101019393710643494.correct : P2101019393710643494.Spec := by
  intro n
  simp only [A062190]

end A062190

/-! ## A062190.P12058370499941277202

`A007318(lt[4, A025581(n)])*A007318(n)`
-/

namespace A062190.P12058370499941277202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) * A007318 n

end

end A062190.P12058370499941277202

namespace A062190

/-- `A007318(lt[4, A025581(n)])*A007318(n)` -/
def P12058370499941277202.Spec : Prop :=
  ∀ n, P12058370499941277202.a n = A062190 n

end A062190

/-!
# A062191: Row sums of signed triangle A062138 (generalized a=5 Laguerre).

The programs for A062191, the canonical program `A062191.P533788233994810164` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062191 has offset 0).

The definition of A062191 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A062191.P533788233994810164

`∑{#}[n, (-1)^#*n!*C(n+5, n-#)/#!]`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A062191

/-- `∑{#}[n, (-1)^#*n!*C(n+5, n-#)/#!]` -/
def P533788233994810164.Spec : Prop :=
  ∀ n, P533788233994810164.a n = (A062191 n : ℚ)

end A062191

/-! ## A062191.P6144031027149242498

`A062265(n)+n*a(n-1)` with `a(0)=1`
-/

namespace A062191.P6144031027149242498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A062265 n + (n : ℤ) * a (n - 1)

end

end A062191.P6144031027149242498

namespace A062191

/-- `A062265(n)+n*a(n-1)` -/
def P6144031027149242498.Spec : Prop :=
  ∀ n, P6144031027149242498.a n = A062191 n

end A062191

/-!
# A062192: Row sums of unsigned triangle A062138 (generalized a=5 Laguerre).

The programs for A062192, the canonical program `A062192.P4624510889292422812` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062192 has offset 0).

The definition of A062192 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A062192.P4624510889292422812

`(2*n+5)*a(n-1)-(n-1)*(n+4)*a(n-2)` with `a(0)=1, a(1)=7`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A062192

/-- `(2*n+5)*a(n-1)-(n-1)*(n+4)*a(n-2)` -/
def P4624510889292422812.Spec : Prop :=
  ∀ n, P4624510889292422812.a n = A062192 n

theorem P4624510889292422812.correct : P4624510889292422812.Spec := by
  intro n
  simp only [A062192]

end A062192

/-! ## A062192.P7328880658508574793

`∑{#}[n, n!*C(n+5, n-#)/#!]`
-/

namespace A062192.P7328880658508574793
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.factorial n * Nat.choose (n + 5) ((n : ℤ) - (k : ℤ)).toNat : ℚ) / (Nat.factorial k : ℚ)

end

end A062192.P7328880658508574793

namespace A062192

/-- `∑{#}[n, n!*C(n+5, n-#)/#!]` -/
def P7328880658508574793.Spec : Prop :=
  ∀ n, P7328880658508574793.a n = (A062192 n : ℚ)

end A062192

/-! ## A062192.P15402117886275107149

`A062266(n)+n*a(n-1)` with `a(0)=1`
-/

namespace A062192.P15402117886275107149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A062266 n + (n : ℤ) * a (n - 1)

end

end A062192.P15402117886275107149

namespace A062192

/-- `A062266(n)+n*a(n-1)` -/
def P15402117886275107149.Spec : Prop :=
  ∀ n, P15402117886275107149.a n = A062192 n

end A062192

/-! ## A062192.P4885465398185601459

`A088699(A268581(n+1))`
-/

namespace A062192.P4885465398185601459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088699 (A268581 (n + 1)).toNat

end

end A062192.P4885465398185601459

namespace A062192

/-- `A088699(A268581(n+1))` -/
def P4885465398185601459.Spec : Prop :=
  ∀ n, P4885465398185601459.a n = A062192 n

end A062192

/-! ## A062192.P3418261308150134137

`A176120(A055999(n+3))`
-/

namespace A062192.P3418261308150134137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176120 (A055999 (n + 3)).toNat

end

end A062192.P3418261308150134137

namespace A062192

/-- `A176120(A055999(n+3))` -/
def P3418261308150134137.Spec : Prop :=
  ∀ n, P3418261308150134137.a n = A062192 n

end A062192

/-! ## A062192.P11819061905997728134

`A176120(Δ[A026054(n+3)])`
-/

namespace A062192.P11819061905997728134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176120 (f1 (n + 1) - f1 n).toNat

end

end A062192.P11819061905997728134

namespace A062192

/-- `A176120(Δ[A026054(n+3)])` -/
def P11819061905997728134.Spec : Prop :=
  ∀ n, P11819061905997728134.a n = A062192 n

end A062192

/-! ## A062192.P10919603546078309973

`A293985(Δ[A026054(n+4)]-1)`
-/

namespace A062192.P10919603546078309973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293985 (f1 (n + 1) - f1 n - 1).toNat

end

end A062192.P10919603546078309973

namespace A062192

/-- `A293985(Δ[A026054(n+4)]-1)` -/
def P10919603546078309973.Spec : Prop :=
  ∀ n, P10919603546078309973.a n = A062192 n

end A062192

/-!
# A062193: Fourth (unsigned) column sequence of triangle A062139 (generalized a=2 Laguerre).

The programs for A062193, there is no canonical definition to state claims against.
-/

/-! ## A062193.P12430469479719255916

`∑[∑[∑[∑[(n+1)²]]]]*∑[n+1]*n!`
-/

namespace A062193.P12430469479719255916
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (∑ j ∈ Finset.range (n + 1), f5 j) * Nat.factorial n

end

end A062193.P12430469479719255916

/-! ## A062193.P6535904172995177826

`∑[∑[n+1]]*A001725(n+5)`
-/

namespace A062193.P6535904172995177826
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A001725 (n + 5)

end

end A062193.P6535904172995177826

/-! ## A062193.P6777530392481823632

`A000142(n)*A105946(n)`
-/

namespace A062193.P6777530392481823632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A105946 n

end

end A062193.P6777530392481823632

/-! ## A062193.P11199393490335962609

`∏[A065475(n+1)]*A040977(n)`
-/

namespace A062193.P11199393490335962609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A040977 n

end

end A062193.P11199393490335962609

/-! ## A062193.P5776893372178116862

`A001725(n+5)*A190717(3*n+1)`
-/

namespace A062193.P5776893372178116862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001725 (n + 5) * A190717 (3 * n + 1)

end

end A062193.P5776893372178116862

/-! ## A062193.P9520667876249768435

`A000292(n+1)*A062138(A000217(n))`
-/

namespace A062193.P9520667876249768435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 1) * A062138 (A000217 n).toNat

end

end A062193.P9520667876249768435

/-! ## A062193.P8539398515978761838

`A007318(A056119(n)+15)*A001715(n+3)`
-/

namespace A062193.P8539398515978761838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A056119 n + 15).toNat * A001715 (n + 3)

end

end A062193.P8539398515978761838

/-! ## A062193.P11392642780186841834

`A005990(n+2)/A001563(n+1)*A062199(n)`
-/

namespace A062193.P11392642780186841834
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005990 (n + 2) : ℚ) / (A001563 (n + 1) : ℚ) * (A062199 n : ℚ)

end

end A062193.P11392642780186841834

/-! ## A062193.P17238694173402690419

`A001715(n+3)/A001720(n+4)*A001777(n+5)`
-/

namespace A062193.P17238694173402690419
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001715 (n + 3) : ℚ) / (A001720 (n + 4) : ℚ) * (A001777 (n + 5) : ℚ)

end

end A062193.P17238694173402690419

/-! ## A062193.P5119704479648525033

`A001755(n+4)/A001811(n+4)*A001777(n+5)`
-/

namespace A062193.P5119704479648525033
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001755 (n + 4) : ℚ) / (A001811 (n + 4) : ℚ) * (A001777 (n + 5) : ℚ)

end

end A062193.P5119704479648525033

/-!
# A062194: Fifth column sequence of triangle A062139 (generalized a=2 Laguerre).

The programs for A062194, the canonical program `A062194.P200788735862481995` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062194 has offset 0).

The definition of A062194 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A062194.P200788735862481995

`(n+4)!*C(n+6, 6)/24`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A062194

/-- `(n+4)!*C(n+6, 6)/24` -/
def P200788735862481995.Spec : Prop :=
  ∀ n, P200788735862481995.a n = (A062194 n : ℚ)

end A062194

/-! ## A062194.P8948891537578312269

`∑[∑[∑[n+1]]]*∑[∑[∑[∑[∑[n+1]]]]]*n!`
-/

namespace A062194.P8948891537578312269
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f8 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f7 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f8 j

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f7 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (∑ j ∈ Finset.range (n + 1), f4 j) * Nat.factorial n

end

end A062194.P8948891537578312269

namespace A062194

/-- `∑[∑[∑[n+1]]]*∑[∑[∑[∑[∑[n+1]]]]]*n!` -/
def P8948891537578312269.Spec : Prop :=
  ∀ n, (P8948891537578312269.a n : ℤ) = A062194 n

end A062194

/-! ## A062194.P6858006899267251630

`n!*A105947(n)`
-/

namespace A062194.P6858006899267251630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A105947 n

end

end A062194.P6858006899267251630

namespace A062194

/-- `n!*A105947(n)` -/
def P6858006899267251630.Spec : Prop :=
  ∀ n, P6858006899267251630.a n = A062194 n

end A062194

/-! ## A062194.P14955734236590181145

`∑[∑[∑[n+1]]]*A001730(n+6)`
-/

namespace A062194.P14955734236590181145
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A001730 (n + 6)

end

end A062194.P14955734236590181145

namespace A062194

/-- `∑[∑[∑[n+1]]]*A001730(n+6)` -/
def P14955734236590181145.Spec : Prop :=
  ∀ n, P14955734236590181145.a n = A062194 n

end A062194

/-! ## A062194.P8914769904811762301

`A062139(eq[4, A002262(n)])`
-/

namespace A062194.P8914769904811762301
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062139 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A062194.P8914769904811762301

namespace A062194

/-- `A062139(eq[4, A002262(n)])` -/
def P8914769904811762301.Spec : Prop :=
  ∀ n, P8914769904811762301.a n = A062194 n

end A062194

/-! ## A062194.P6314938769771615428

`A062139(A167614(n+1)+A020744(n))`
-/

namespace A062194.P6314938769771615428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062139 (A167614 (n + 1) + A020744 n).toNat

end

end A062194.P6314938769771615428

namespace A062194

/-- `A062139(A167614(n+1)+A020744(n))` -/
def P6314938769771615428.Spec : Prop :=
  ∀ n, P6314938769771615428.a n = A062194 n

end A062194

/-! ## A062194.P5136964286718828285

`A061206(n+1)/A001563(n+1)*A062148(n)`
-/

namespace A062194.P5136964286718828285
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061206 (n + 1) : ℚ) / (A001563 (n + 1) : ℚ) * (A062148 n : ℚ)

end

end A062194.P5136964286718828285

namespace A062194

/-- `A061206(n+1)/A001563(n+1)*A062148(n)` -/
def P5136964286718828285.Spec : Prop :=
  ∀ n, P5136964286718828285.a n = (A062194 n : ℚ)

end A062194

/-!
# A062195: Sixth (unsigned) column sequence of triangle A062139 (generalized a=2 Laguerre).

The programs for A062195, the canonical program `A062195.P10275021454558887543` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062195 has offset 0).

The definition of A062195 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A062195.P10275021454558887543

`(n+5)!*C(n+7, 7)/120`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A062195

/-- `(n+5)!*C(n+7, 7)/120` -/
def P10275021454558887543.Spec : Prop :=
  ∀ n, P10275021454558887543.a n = (A062195 n : ℚ)

end A062195

/-! ## A062195.P14224752591011129199

`((n+6)²-1)/n*a(n-1)` with `a(0)=1`
-/

namespace A062195.P14224752591011129199
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (((n + 6) ^ 2 : ℤ) - 1 : ℚ) / (n : ℚ) * a (n - 1)

end

end A062195.P14224752591011129199

namespace A062195

/-- `((n+6)²-1)/n*a(n-1)` -/
def P14224752591011129199.Spec : Prop :=
  ∀ n, P14224752591011129199.a n = (A062195 n : ℚ)

end A062195

/-! ## A062195.P10476062409285248641

`n!*C(n+5, 5)*C(n+7, 7)`
-/

namespace A062195.P10476062409285248641
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n * Nat.choose (n + 5) 5 * Nat.choose (n + 7) 7

end

end A062195.P10476062409285248641

namespace A062195

/-- `n!*C(n+5, 5)*C(n+7, 7)` -/
def P10476062409285248641.Spec : Prop :=
  ∀ n, (P10476062409285248641.a n : ℤ) = A062195 n

end A062195

/-! ## A062195.P17122346873626803092

`C(n+5, 5)*A049388(n)`
-/

namespace A062195.P17122346873626803092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 5) 5 : ℤ) * A049388 n

end

end A062195.P17122346873626803092

namespace A062195

/-- `C(n+5, 5)*A049388(n)` -/
def P17122346873626803092.Spec : Prop :=
  ∀ n, P17122346873626803092.a n = A062195 n

end A062195

/-! ## A062195.P1642569476543426712

`A000142(n)*A105948(n)`
-/

namespace A062195.P1642569476543426712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A105948 n

end

end A062195.P1642569476543426712

namespace A062195

/-- `A000142(n)*A105948(n)` -/
def P1642569476543426712.Spec : Prop :=
  ∀ n, P1642569476543426712.a n = A062195 n

end A062195

/-! ## A062195.P4438815445860538587

`A000580(n+7)*A001725(n+5)`
-/

namespace A062195.P4438815445860538587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000580 (n + 7) * A001725 (n + 5)

end

end A062195.P4438815445860538587

namespace A062195

/-- `A000580(n+7)*A001725(n+5)` -/
def P4438815445860538587.Spec : Prop :=
  ∀ n, P4438815445860538587.a n = A062195 n

end A062195

/-! ## A062195.P1722727311818777657

`∑[∑[A000389(n+5)]]*A001725(n+5)`
-/

namespace A062195.P1722727311818777657
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000389 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A001725 (n + 5)

end

end A062195.P1722727311818777657

namespace A062195

/-- `∑[∑[A000389(n+5)]]*A001725(n+5)` -/
def P1722727311818777657.Spec : Prop :=
  ∀ n, P1722727311818777657.a n = A062195 n

end A062195

/-! ## A062195.P114856099498709594

`A000580(n+7)*A062138(A000217(n))`
-/

namespace A062195.P114856099498709594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000580 (n + 7) * A062138 (A000217 n).toNat

end

end A062195.P114856099498709594

namespace A062195

/-- `A000580(n+7)*A062138(A000217(n))` -/
def P114856099498709594.Spec : Prop :=
  ∀ n, P114856099498709594.a n = A062195 n

end A062195

/-! ## A062195.P16989621041476642109

`A007318(eq[5, A002262(n)])*A049388(n)`
-/

namespace A062195.P16989621041476642109
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) * A049388 n

end

end A062195.P16989621041476642109

namespace A062195

/-- `A007318(eq[5, A002262(n)])*A049388(n)` -/
def P16989621041476642109.Spec : Prop :=
  ∀ n, P16989621041476642109.a n = A062195 n

end A062195

/-! ## A062195.P14271508426808812773

`A007318(Δ[A026054(n+3)])*A049388(n)`
-/

namespace A062195.P14271508426808812773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (f1 (n + 1) - f1 n).toNat * A049388 n

end

end A062195.P14271508426808812773

namespace A062195

/-- `A007318(Δ[A026054(n+3)])*A049388(n)` -/
def P14271508426808812773.Spec : Prop :=
  ∀ n, P14271508426808812773.a n = A062195 n

end A062195

/-!
# A062196: Triangle read by rows, T(n, k) = binomial(n, k)*binomial(n + 2, k).

The programs for A062196, the canonical program `A062196.P1600575490963878674` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062196 has offset 0).

The definition of A062196 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(row(n), col(n))*C(row(n)+2, col(n))` (program `A062196.P1600575490963878674`, by `A062196.P1600575490963878674.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A062196.P1600575490963878674

`C(row(n), col(n))*C(row(n)+2, col(n))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A062196

/-- `C(row(n), col(n))*C(row(n)+2, col(n))` -/
def P1600575490963878674.Spec : Prop :=
  ∀ n, (P1600575490963878674.a n : ℤ) = A062196 n

theorem P1600575490963878674.correct : P1600575490963878674.Spec := by
  intro n
  simp only [A062196]

end A062196

/-! ## A062196.P14838168206129609882

`C(row(n)+2, col(n))*C(row(n), col(n))`
-/

namespace A062196.P14838168206129609882
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.triRow n + 2) (SequenceMachineLib.triCol n) * Nat.choose (SequenceMachineLib.triRow n) (SequenceMachineLib.triCol n)

end

end A062196.P14838168206129609882

namespace A062196

/-- `C(row(n)+2, col(n))*C(row(n), col(n))` -/
def P14838168206129609882.Spec : Prop :=
  ∀ n, (P14838168206129609882.a n : ℤ) = A062196 n

theorem P14838168206129609882.correct : P14838168206129609882.Spec := by
  intro n
  simp only [A062196, Nat.add_sub_cancel, A062196.P14838168206129609882.a, A062196.P1600575490963878674.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A062196

/-! ## A062196.P11109113205754293241

`A007318(n)*A209518(n)`
-/

namespace A062196.P11109113205754293241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A209518 n

end

end A062196.P11109113205754293241

namespace A062196

/-- `A007318(n)*A209518(n)` -/
def P11109113205754293241.Spec : Prop :=
  ∀ n, P11109113205754293241.a n = A062196 n

end A062196

/-! ## A062196.P10588509215967528962

`abs(A108086(n)*A209518(n))`
-/

namespace A062196.P10588509215967528962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A108086 n * A209518 n|

end

end A062196.P10588509215967528962

namespace A062196

/-- `abs(A108086(n)*A209518(n))` -/
def P10588509215967528962.Spec : Prop :=
  ∀ n, P10588509215967528962.a n = A062196 n

end A062196

/-! ## A062196.P1623840495436634464

`abs(A117440(n)*A209518(n))`
-/

namespace A062196.P1623840495436634464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A117440 n * A209518 n|

end

end A062196.P1623840495436634464

namespace A062196

/-- `abs(A117440(n)*A209518(n))` -/
def P1623840495436634464.Spec : Prop :=
  ∀ n, P1623840495436634464.a n = A062196 n

end A062196

/-! ## A062196.P10432740951385945160

`abs(A130595(n)*A209518(n))`
-/

namespace A062196.P10432740951385945160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A130595 n * A209518 n|

end

end A062196.P10432740951385945160

namespace A062196

/-- `abs(A130595(n)*A209518(n))` -/
def P10432740951385945160.Spec : Prop :=
  ∀ n, P10432740951385945160.a n = A062196 n

end A062196

/-! ## A062196.P12366982225524703179

`sqrt(A008459(n))*A209518(n)`
-/

namespace A062196.P12366982225524703179
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A008459 n : ℝ) * (A209518 n : ℝ)

end

end A062196.P12366982225524703179

namespace A062196

/-- `sqrt(A008459(n))*A209518(n)` -/
def P12366982225524703179.Spec : Prop :=
  ∀ n, P12366982225524703179.a n = (A062196 n : ℝ)

end A062196

/-! ## A062196.P10701280348274472558

`Δ[A102363(n)]*A209518(n)`
-/

namespace A062196.P10701280348274472558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A209518 n

end

end A062196.P10701280348274472558

namespace A062196

/-- `Δ[A102363(n)]*A209518(n)` -/
def P10701280348274472558.Spec : Prop :=
  ∀ n, P10701280348274472558.a n = A062196 n

end A062196

/-! ## A062196.P11109161603691095622

`(A014473(n)+1)*A209518(n)`
-/

namespace A062196.P11109161603691095622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014473 n + 1) * A209518 n

end

end A062196.P11109161603691095622

namespace A062196

/-- `(A014473(n)+1)*A209518(n)` -/
def P11109161603691095622.Spec : Prop :=
  ∀ n, P11109161603691095622.a n = A062196 n

end A062196

/-! ## A062196.P3291537547421776815

`A028326(n)/2*A209518(n)`
-/

namespace A062196.P3291537547421776815
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028326 n : ℚ) / 2 * (A209518 n : ℚ)

end

end A062196.P3291537547421776815

namespace A062196

/-- `A028326(n)/2*A209518(n)` -/
def P3291537547421776815.Spec : Prop :=
  ∀ n, P3291537547421776815.a n = (A062196 n : ℚ)

end A062196

/-! ## A062196.P3092116863658250517

`A007318(n)*A074909(A007401(n+1))`
-/

namespace A062196.P3092116863658250517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A074909 (A007401 (n + 1)).toNat

end

end A062196.P3092116863658250517

namespace A062196

/-- `A007318(n)*A074909(A007401(n+1))` -/
def P3092116863658250517.Spec : Prop :=
  ∀ n, P3092116863658250517.a n = A062196 n

end A062196

/-! ## A062196.P15828735732175385002

`A007318(n)*A074909(A002024(n+1)+n)`
-/

namespace A062196.P15828735732175385002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A074909 (A002024 (n + 1) + (n : ℤ)).toNat

end

end A062196.P15828735732175385002

namespace A062196

/-- `A007318(n)*A074909(A002024(n+1)+n)` -/
def P15828735732175385002.Spec : Prop :=
  ∀ n, P15828735732175385002.a n = A062196 n

end A062196

/-! ## A062196.P5254325004560227767

`A007318(n)*A007318(A123578(n)+A014132(n+1))`
-/

namespace A062196.P5254325004560227767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A007318 (A123578 n + A014132 (n + 1)).toNat

end

end A062196.P5254325004560227767

namespace A062196

/-- `A007318(n)*A007318(A123578(n)+A014132(n+1))` -/
def P5254325004560227767.Spec : Prop :=
  ∀ n, P5254325004560227767.a n = A062196 n

end A062196

/-! ## A062196.P10729463690641760776

`A007318(lt[1, A242378(n)])*A007318(n)`
-/

namespace A062196.P10729463690641760776
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242378 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) * A007318 n

end

end A062196.P10729463690641760776

namespace A062196

/-- `A007318(lt[1, A242378(n)])*A007318(n)` -/
def P10729463690641760776.Spec : Prop :=
  ∀ n, P10729463690641760776.a n = A062196 n

end A062196

/-! ## A062196.P15254453720654064012

`A007318(lt[1, A007318(n+1)])*A007318(n)`
-/

namespace A062196.P15254453720654064012
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) * A007318 n

end

end A062196.P15254453720654064012

namespace A062196

/-- `A007318(lt[1, A007318(n+1)])*A007318(n)` -/
def P15254453720654064012.Spec : Prop :=
  ∀ n, P15254453720654064012.a n = A062196 n

end A062196

/-! ## A062196.P1435989754203704275

`A007318(n)*A135278(A003056(n)+n)`
-/

namespace A062196.P1435989754203704275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A135278 (A003056 n + (n : ℤ)).toNat

end

end A062196.P1435989754203704275

namespace A062196

/-- `A007318(n)*A135278(A003056(n)+n)` -/
def P1435989754203704275.Spec : Prop :=
  ∀ n, P1435989754203704275.a n = A062196 n

end A062196

/-! ## A062196.P16844481795934932761

`A007318(n)*A007318(A181133(A080036(n)))`
-/

namespace A062196.P16844481795934932761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A007318 (A181133 (A080036 n).toNat).toNat

end

end A062196.P16844481795934932761

namespace A062196

/-- `A007318(n)*A007318(A181133(A080036(n)))` -/
def P16844481795934932761.Spec : Prop :=
  ∀ n, P16844481795934932761.a n = A062196 n

end A062196

/-! ## A062196.P3364342999518783416

`A193554(lt[1, A209518(n)])*A209518(n)`
-/

namespace A062196.P3364342999518783416
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209518 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193554 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) * A209518 n

end

end A062196.P3364342999518783416

namespace A062196

/-- `A193554(lt[1, A209518(n)])*A209518(n)` -/
def P3364342999518783416.Spec : Prop :=
  ∀ n, P3364342999518783416.a n = A062196 n

end A062196

/-! ## A062196.P3197696605503892012

`A007318(lt[1, A025581(n)])*A007318(n)`
-/

namespace A062196.P3197696605503892012
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) * A007318 n

end

end A062196.P3197696605503892012

namespace A062196

/-- `A007318(lt[1, A025581(n)])*A007318(n)` -/
def P3197696605503892012.Spec : Prop :=
  ∀ n, P3197696605503892012.a n = A062196 n

end A062196

/-! ## A062196.P13232724975514046402

`A007318(lt[1, A061554(n)])*A007318(n)`
-/

namespace A062196.P13232724975514046402
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061554 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) * A007318 n

end

end A062196.P13232724975514046402

namespace A062196

/-- `A007318(lt[1, A061554(n)])*A007318(n)` -/
def P13232724975514046402.Spec : Prop :=
  ∀ n, P13232724975514046402.a n = A062196 n

end A062196

/-!
# A062197: Row sums of signed triangle A062139 (generalized a=2 Laguerre).

The programs for A062197, the canonical program `A062197.P3124611142207711875` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062197 has offset 0).

The definition of A062197 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A062197.P3124611142207711875

`2*n*a(n-1)-(n-1)*(n+1)*a(n-2)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A062197

/-- `2*n*a(n-1)-(n-1)*(n+1)*a(n-2)` -/
def P3124611142207711875.Spec : Prop :=
  ∀ n, P3124611142207711875.a n = A062197 n

theorem P3124611142207711875.correct : P3124611142207711875.Spec := by
  intro n
  simp only [A062197]

end A062197

/-! ## A062197.P3824140005248886439

`∑{#}[n, (-1)^#*n!*C(n+2, n-#)/#!]`
-/

namespace A062197.P3824140005248886439
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), ((-1) ^ k * (Nat.factorial n : ℤ) * (Nat.choose (n + 2) ((n : ℤ) - (k : ℤ)).toNat : ℤ) : ℚ) / (Nat.factorial k : ℚ)

end

end A062197.P3824140005248886439

namespace A062197

/-- `∑{#}[n, (-1)^#*n!*C(n+2, n-#)/#!]` -/
def P3824140005248886439.Spec : Prop :=
  ∀ n, P3824140005248886439.a n = (A062197 n : ℚ)

end A062197

/-! ## A062197.P556782499449877300

`A066668(n)+n*a(n-1)` with `a(0)=1`
-/

namespace A062197.P556782499449877300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A066668 n + (n : ℤ) * a (n - 1)

end

end A062197.P556782499449877300

namespace A062197

/-- `A066668(n)+n*a(n-1)` -/
def P556782499449877300.Spec : Prop :=
  ∀ n, P556782499449877300.a n = A062197 n

end A062197

/-! ## A062197.P345057465257049723

`n*a(n-1)-A293119(∑[n+2])` with `a(0)=1`
-/

namespace A062197.P345057465257049723
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) * a (n - 1) - A293119 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A062197.P345057465257049723

namespace A062197

/-- `n*a(n-1)-A293119(∑[n+2])` -/
def P345057465257049723.Spec : Prop :=
  ∀ n, P345057465257049723.a n = A062197 n

end A062197

/-! ## A062197.P7020706783915534652

`A066668(n)-A009940(n+1)`
-/

namespace A062197.P7020706783915534652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066668 n - A009940 (n + 1)

end

end A062197.P7020706783915534652

namespace A062197

/-- `A066668(n)-A009940(n+1)` -/
def P7020706783915534652.Spec : Prop :=
  ∀ n, P7020706783915534652.a n = A062197 n

end A062197

/-! ## A062197.P9802601609622197226

`(A293116(n+1)+A009940(n+1))*(1-4/2)`
-/

namespace A062197.P9802601609622197226
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A293116 (n + 1) + A009940 (n + 1) : ℚ) * (1 - (4 : ℚ) / 2)

end

end A062197.P9802601609622197226

namespace A062197

/-- `(A293116(n+1)+A009940(n+1))*(1-4/2)` -/
def P9802601609622197226.Spec : Prop :=
  ∀ n, P9802601609622197226.a n = (A062197 n : ℚ)

end A062197

/-! ## A062197.P14717810514520984539

`A009940(n+2)/A001478(n+1)`
-/

namespace A062197.P14717810514520984539
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009940 (n + 2) : ℚ) / (A001478 (n + 1) : ℚ)

end

end A062197.P14717810514520984539

namespace A062197

/-- `A009940(n+2)/A001478(n+1)` -/
def P14717810514520984539.Spec : Prop :=
  ∀ n, P14717810514520984539.a n = (A062197 n : ℚ)

end A062197

/-! ## A062197.P857171500879062605

`A087860(n+1)-(A293116(n+1)+A000142(n+1))`
-/

namespace A062197.P857171500879062605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087860 (n + 1) - (A293116 (n + 1) + A000142 (n + 1))

end

end A062197.P857171500879062605

namespace A062197

/-- `A087860(n+1)-(A293116(n+1)+A000142(n+1))` -/
def P857171500879062605.Spec : Prop :=
  ∀ n, P857171500879062605.a n = A062197 n

end A062197

/-!
# A062198: Sum of first n semiprimes.

The programs for A062198, the canonical program `A062198.P1219448793751360641` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062198 has offset 1).

The definition of A062198 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A062198.P6620871772784069033

`∑[A001358(1+n)]`
-/

namespace A062198.P6620871772784069033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062198.P6620871772784069033

namespace A062198

/-- `∑[A001358(1+n)]` -/
def P6620871772784069033.Spec : Prop :=
  ∀ n, P6620871772784069033.a n = A062198 (n + 1)

end A062198

/-! ## A062198.P15565617605736789497

`∑[sqrt(A074985(n+1))]`
-/

namespace A062198.P15565617605736789497
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A074985 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062198.P15565617605736789497

namespace A062198

/-- `∑[sqrt(A074985(n+1))]` -/
def P15565617605736789497.Spec : Prop :=
  ∀ n, P15565617605736789497.a n = (A062198 (n + 1) : ℝ)

end A062198

/-! ## A062198.P186391485113906691

`∑[A186621(n+1)+1]`
-/

namespace A062198.P186391485113906691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186621 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062198.P186391485113906691

namespace A062198

/-- `∑[A186621(n+1)+1]` -/
def P186391485113906691.Spec : Prop :=
  ∀ n, P186391485113906691.a n = A062198 (n + 1)

end A062198

/-! ## A062198.P12263112824417000745

`∑[A088707(n+1)-1]`
-/

namespace A062198.P12263112824417000745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088707 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062198.P12263112824417000745

namespace A062198

/-- `∑[A088707(n+1)-1]` -/
def P12263112824417000745.Spec : Prop :=
  ∀ n, P12263112824417000745.a n = A062198 (n + 1)

end A062198

/-! ## A062198.P295194930201409187

`∑[A075818(n+1)/2]`
-/

namespace A062198.P295194930201409187
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075818 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062198.P295194930201409187

namespace A062198

/-- `∑[A075818(n+1)/2]` -/
def P295194930201409187.Spec : Prop :=
  ∀ n, P295194930201409187.a n = (A062198 (n + 1) : ℚ)

end A062198

/-! ## A062198.P290500329261004531

`∑[eq[1, A064911(n+1)]+1]`
-/

namespace A062198.P290500329261004531
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064911 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062198.P290500329261004531

namespace A062198

/-- `∑[eq[1, A064911(n+1)]+1]` -/
def P290500329261004531.Spec : Prop :=
  ∀ n, (P290500329261004531.a n : ℤ) = A062198 (n + 1)

end A062198

/-! ## A062198.P3535653723452831950

`∑[eq[2, A001222(n+1)]+1]`
-/

namespace A062198.P3535653723452831950
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062198.P3535653723452831950

namespace A062198

/-- `∑[eq[2, A001222(n+1)]+1]` -/
def P3535653723452831950.Spec : Prop :=
  ∀ n, (P3535653723452831950.a n : ℤ) = A062198 (n + 1)

end A062198

/-! ## A062198.P1219448793751360641

`∑[eq[2, A318322(n+1)]+1]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A062198

/-- `∑[eq[2, A318322(n+1)]+1]` -/
def P1219448793751360641.Spec : Prop :=
  ∀ n, (P1219448793751360641.a n : ℤ) = A062198 (n + 1)

theorem P1219448793751360641.correct : P1219448793751360641.Spec := by
  intro n
  simp only [A062198, Nat.add_sub_cancel]

end A062198

/-! ## A062198.P7700578142997676436

`∑[A175708(n+1)+1+n]`
-/

namespace A062198.P7700578142997676436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175708 (n + 1) + 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062198.P7700578142997676436

namespace A062198

/-- `∑[A175708(n+1)+1+n]` -/
def P7700578142997676436.Spec : Prop :=
  ∀ n, P7700578142997676436.a n = A062198 (n + 1)

end A062198

/-! ## A062198.P12243188460456661397

`∑[A100493(n+1)-(n+1)]`
-/

namespace A062198.P12243188460456661397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100493 (n + 1) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062198.P12243188460456661397

namespace A062198

/-- `∑[A100493(n+1)-(n+1)]` -/
def P12243188460456661397.Spec : Prop :=
  ∀ n, P12243188460456661397.a n = A062198 (n + 1)

end A062198

/-! ## A062198.P8925606702078573014

`∑[eq[n-1-a(A001222(n))², n-2]]` with `a(0)=1, a(1)=0`
-/

namespace A062198.P8925606702078573014
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f2 =>
  (n : ℤ) - 1 - f2 (A001222 n).toNat ^ 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062198.P8925606702078573014

namespace A062198

/-- `∑[eq[n-1-a(A001222(n))², n-2]]` -/
def P8925606702078573014.Spec : Prop :=
  ∀ n, (P8925606702078573014.a n : ℤ) = A062198 (n + 1)

end A062198

/-! ## A062198.P3701991036248049837

`A186621(n+1)+A110208(n)`
-/

namespace A062198.P3701991036248049837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186621 (n + 1) + A110208 n

end

end A062198.P3701991036248049837

namespace A062198

/-- `A186621(n+1)+A110208(n)` -/
def P3701991036248049837.Spec : Prop :=
  ∀ n, P3701991036248049837.a n = A062198 (n + 1)

end A062198

/-! ## A062198.P11857855124675228835

`∑[A000040(n+1)-A065870(n+1)]`
-/

namespace A062198.P11857855124675228835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A065870 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062198.P11857855124675228835

namespace A062198

/-- `∑[A000040(n+1)-A065870(n+1)]` -/
def P11857855124675228835.Spec : Prop :=
  ∀ n, P11857855124675228835.a n = A062198 (n + 1)

end A062198

/-! ## A062198.P10506719552921043470

`∑[A084126(n+1)*A084127(n+1)]`
-/

namespace A062198.P10506719552921043470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084126 (n + 1) * A084127 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062198.P10506719552921043470

namespace A062198

/-- `∑[A084126(n+1)*A084127(n+1)]` -/
def P10506719552921043470.Spec : Prop :=
  ∀ n, P10506719552921043470.a n = A062198 (n + 1)

end A062198

/-! ## A062198.P7959513798517703953

`∑[A176540(2+n)]`
-/

namespace A062198.P7959513798517703953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176540 (2 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062198.P7959513798517703953

namespace A062198

/-- `∑[A176540(2+n)]` -/
def P7959513798517703953.Spec : Prop :=
  ∀ n, P7959513798517703953.a n = A062198 (n + 1)

end A062198

/-! ## A062198.P16168818150105858176

`A110208(n+1)-1`
-/

namespace A062198.P16168818150105858176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110208 (n + 1) - 1

end

end A062198.P16168818150105858176

namespace A062198

/-- `A110208(n+1)-1` -/
def P16168818150105858176.Spec : Prop :=
  ∀ n, P16168818150105858176.a n = A062198 (n + 1)

end A062198

/-! ## A062198.P14156885220849772121

`∑[A129767(2*(n+1))]`
-/

namespace A062198.P14156885220849772121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129767 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062198.P14156885220849772121

namespace A062198

/-- `∑[A129767(2*(n+1))]` -/
def P14156885220849772121.Spec : Prop :=
  ∀ n, P14156885220849772121.a n = A062198 (n + 1)

end A062198

/-! ## A062198.P5676776121178887851

`∑[A166133(A256563(n+1))]`
-/

namespace A062198.P5676776121178887851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166133 (A256563 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062198.P5676776121178887851

namespace A062198

/-- `∑[A166133(A256563(n+1))]` -/
def P5676776121178887851.Spec : Prop :=
  ∀ n, P5676776121178887851.a n = A062198 (n + 1)

end A062198

/-! ## A062198.P11146443753861979982

`∑[A165712(a(n-1))]` with `a(0)=4`
-/

namespace A062198.P11146443753861979982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f1 =>
  A165712 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062198.P11146443753861979982

namespace A062198

/-- `∑[A165712(a(n-1))]` -/
def P11146443753861979982.Spec : Prop :=
  ∀ n, P11146443753861979982.a n = A062198 (n + 1)

end A062198

/-! ## A062198.P8463876305770099428

`∑[eq[2, ∑{e}[n, #]]]`
-/

namespace A062198.P8463876305770099428
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f4 n), Nat.factorization (f4 n) p

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062198.P8463876305770099428

namespace A062198

/-- `∑[eq[2, ∑{e}[n, #]]]` -/
def P8463876305770099428.Spec : Prop :=
  ∀ n, (P8463876305770099428.a n : ℤ) = A062198 (n + 1)

end A062198

/-!
# A062199: Second (unsigned) column sequence of triangle A062140 (generalized a=4 Laguerre).

The programs for A062199, the canonical program `A062199.P17189199288028450226` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062199 has offset 0).

The definition of A062199 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A062199.P17189199288028450226

`(n+1)!*C(n+5, 5)`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A062199

/-- `(n+1)!*C(n+5, 5)` -/
def P17189199288028450226.Spec : Prop :=
  ∀ n, (P17189199288028450226.a n : ℤ) = A062199 n

theorem P17189199288028450226.correct : P17189199288028450226.Spec := by
  intro n
  simp only [A062199]

end A062199

/-! ## A062199.P9073337975209028698

`(n+1)/5*∏[n+5]`
-/

namespace A062199.P9073337975209028698
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 5 * ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)

end

end A062199.P9073337975209028698

namespace A062199

/-- `(n+1)/5*∏[n+5]` -/
def P9073337975209028698.Spec : Prop :=
  ∀ n, P9073337975209028698.a n = (A062199 n : ℚ)

end A062199

/-! ## A062199.P15063787764269154917

`∑[n!*∑[∑[∑[n+1]²]]]`
-/

namespace A062199.P15063787764269154917
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f4 j) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062199.P15063787764269154917

namespace A062199

/-- `∑[n!*∑[∑[∑[n+1]²]]]` -/
def P15063787764269154917.Spec : Prop :=
  ∀ n, (P15063787764269154917.a n : ℤ) = A062199 n

end A062199

/-! ## A062199.P4021540861177830002

`abs(∏[n-or(-5, (n+3)!)]*(n+1))`
-/

namespace A062199.P4021540861177830002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - Int.lor (-5) (Nat.factorial (n + 3) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(∏ j ∈ Finset.range (n + 1), f1 j) * (n + 1 : ℤ)|

end

end A062199.P4021540861177830002

namespace A062199

/-- `abs(∏[n-or(-5, (n+3)!)]*(n+1))` -/
def P4021540861177830002.Spec : Prop :=
  ∀ n, P4021540861177830002.a n = A062199 n

end A062199

/-! ## A062199.P2728516427855087902

`abs(A062140(∑[n+1]+1))`
-/

namespace A062199.P2728516427855087902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A062140 (∑ j ∈ Finset.range (n + 1), f1 j + 1)|

end

end A062199.P2728516427855087902

namespace A062199

/-- `abs(A062140(∑[n+1]+1))` -/
def P2728516427855087902.Spec : Prop :=
  ∀ n, P2728516427855087902.a n = A062199 n

end A062199

/-! ## A062199.P5688612264260593740

`A001725(n+6)-A001720(n+5)`
-/

namespace A062199.P5688612264260593740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001725 (n + 6) - A001720 (n + 5)

end

end A062199.P5688612264260593740

namespace A062199

/-- `A001725(n+6)-A001720(n+5)` -/
def P5688612264260593740.Spec : Prop :=
  ∀ n, P5688612264260593740.a n = A062199 n

end A062199

/-! ## A062199.P2450580941458791640

`(n+1)*(n+5)*a(n-1)/n` with `a(0)=1`
-/

namespace A062199.P2450580941458791640
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1 : ℚ) * ((n + 5 : ℚ) * a (n - 1)) / (n : ℚ)

end

end A062199.P2450580941458791640

namespace A062199

/-- `(n+1)*(n+5)*a(n-1)/n` -/
def P2450580941458791640.Spec : Prop :=
  ∀ n, P2450580941458791640.a n = (A062199 n : ℚ)

end A062199

/-! ## A062199.P13649404682717408795

`A154308(n)/A000583(n+1)`
-/

namespace A062199.P13649404682717408795
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A154308 n : ℚ) / (A000583 (n + 1) : ℚ)

end

end A062199.P13649404682717408795

namespace A062199

/-- `A154308(n)/A000583(n+1)` -/
def P13649404682717408795.Spec : Prop :=
  ∀ n, P13649404682717408795.a n = (A062199 n : ℚ)

end A062199

