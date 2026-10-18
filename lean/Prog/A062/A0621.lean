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
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
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
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B009.C001
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

/-! ## A062101.P14819629097307223883

`∩[A330597(n+1), A360247(n+1)]`
-/

namespace A062101.P14819629097307223883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330597 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360247 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062101.P14819629097307223883

/-! ## A062101.P741076400923443744

`∩[A330597(n+1), A387181(n+1)]`
-/

namespace A062101.P741076400923443744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330597 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387181 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062101.P741076400923443744

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

The programs for A062107, the canonical program `A062107.P11800875836665992402` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062107 has offset 1).

The definition of A062107 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A062107.P11800875836665992402

`floor(10*3^(n-3))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A062107

/-- `floor(10*3^(n-3))` -/
def P11800875836665992402.Spec : Prop :=
  ∀ n, P11800875836665992402.a n = A062107 (n + 1)

theorem P11800875836665992402.correct : P11800875836665992402.Spec := by
  intro n
  simp only [A062107, Nat.add_sub_cancel]

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
# A062109: Expansion of ((1-x)/(1-2*x))^4.

The programs for A062109, the canonical program `A062109.P17511835628620694378` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062109 has offset 0).

The definition of A062109 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A062109.P17511835628620694378

`2*a(n-1)+A058396(n)-A058396(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A062109

/-- `2*a(n-1)+A058396(n)-A058396(n-1)` -/
def P17511835628620694378.Spec : Prop :=
  ∀ n, P17511835628620694378.a n = A062109 n

theorem P17511835628620694378.correct : P17511835628620694378.Spec := by
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

The programs for A062110, there is no canonical definition to state claims against.
-/

/-! ## A062110.P16816194879525427189

`2*A105306(n+1)-A106195(n)`
-/

namespace A062110.P16816194879525427189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A105306 (n + 1) - A106195 n

end

end A062110.P16816194879525427189

/-! ## A062110.P7758462093903872552

`A121462(n+1)/A208341(n)*A106195(n)`
-/

namespace A062110.P7758462093903872552
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A121462 (n + 1) : ℚ) / (A208341 n : ℚ) * (A106195 n : ℚ)

end

end A062110.P7758462093903872552

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

/-! ## A062110.P2170222808228017179

`A105306(n+1)-A049600(A061579(n))`
-/

namespace A062110.P2170222808228017179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105306 (n + 1) - A049600 (A061579 n).toNat

end

end A062110.P2170222808228017179

/-! ## A062110.P2515003367436467718

`A106195(n)-2*A049600(A061579(n))`
-/

namespace A062110.P2515003367436467718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106195 n - 2 * A049600 (A061579 n).toNat

end

end A062110.P2515003367436467718

/-! ## A062110.P9061073795546695081

`2*A160232(A038722(n+1))-A106195(n)`
-/

namespace A062110.P9061073795546695081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A160232 (A038722 (n + 1)).toNat - A106195 n

end

end A062110.P9061073795546695081

/-! ## A062110.P7380563568099090458

`A105306(n+1)-A049600(A038722(n+1)-1)`
-/

namespace A062110.P7380563568099090458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105306 (n + 1) - A049600 (A038722 (n + 1) - 1).toNat

end

end A062110.P7380563568099090458

/-! ## A062110.P5669410404936843837

`A160232(A038722(n+1))-A049600(A061579(n))`
-/

namespace A062110.P5669410404936843837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160232 (A038722 (n + 1)).toNat - A049600 (A061579 n).toNat

end

end A062110.P5669410404936843837

/-! ## A062110.P18426016870523935741

`A105306(n+1)-A049600(A038722(n+2))`
-/

namespace A062110.P18426016870523935741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105306 (n + 1) - A049600 (A038722 (n + 2)).toNat

end

end A062110.P18426016870523935741

/-! ## A062110.P9911287145977901197

`A277919(n)-A055807(A014132(n+1))`
-/

namespace A062110.P9911287145977901197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277919 n - A055807 (A014132 (n + 1)).toNat

end

end A062110.P9911287145977901197

/-! ## A062110.P2992391383736413904

`A055818(n)-A055807(n)%A000711(n)`
-/

namespace A062110.P2992391383736413904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055818 n - Int.tmod (A055807 n) (A000711 n)

end

end A062110.P2992391383736413904

/-!
# A062111: Upper-right triangle resulting from binomial transform calculation for nonnegative integers.

The programs for A062111, the canonical program `A062111.P7147497521445848615` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062111 has offset 0).

The definition of A062111 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

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

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A062111

/-- `floor(A130321(n)/2*A134478(n))` -/
def P7147497521445848615.Spec : Prop :=
  ∀ n, P7147497521445848615.a n = A062111 n

theorem P7147497521445848615.correct : P7147497521445848615.Spec := by
  intro n
  simp only [A062111]

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

The programs for A062112, the canonical program `A062112.P3126490636662587271` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062112 has offset 0).

The definition of A062112 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A062112.P3126490636662587271

`4*a(n-2)-2*a(n-4)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=2`

The canonical program, it is in `Seq.B000.C009`.
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

The programs for A062113, the canonical program `A062113.P10854462351995447684` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062113 has offset 0).

The definition of A062113 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A062113.P10854462351995447684

`4*a(n-2)-2*a(n-4)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=7`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A062113

/-- `4*a(n-2)-2*a(n-4)` -/
def P10854462351995447684.Spec : Prop :=
  ∀ n, P10854462351995447684.a n = A062113 n

theorem P10854462351995447684.correct : P10854462351995447684.Spec := by
  intro n
  simp only [A062113]

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

/-! ## A062113.P12733874406786729286

`∪[A020727(n)-A007070(n), A020727(n)]`
-/

namespace A062113.P12733874406786729286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020727 n - A007070 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020727 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A062113.P12733874406786729286

namespace A062113

/-- `∪[A020727(n)-A007070(n), A020727(n)]` -/
def P12733874406786729286.Spec : Prop :=
  ∀ n, (P12733874406786729286.a n : ℤ) = A062113 n

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

/-! ## A062113.P9315640897566011994

`A228405(A087327(n+2))`
-/

namespace A062113.P9315640897566011994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228405 (A087327 (n + 2)).toNat

end

end A062113.P9315640897566011994

namespace A062113

/-- `A228405(A087327(n+2))` -/
def P9315640897566011994.Spec : Prop :=
  ∀ n, P9315640897566011994.a n = A062113 n

end A062113

/-! ## A062113.P4258465170478235743

`A228405(A007590(n+1)+n+2)`
-/

namespace A062113.P4258465170478235743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228405 (A007590 (n + 1) + (n + 2 : ℤ)).toNat

end

end A062113.P4258465170478235743

namespace A062113

/-- `A228405(A007590(n+1)+n+2)` -/
def P4258465170478235743.Spec : Prop :=
  ∀ n, P4258465170478235743.a n = A062113 n

end A062113

/-!
# A062114: a(n) = 2*Fibonacci(n) - (1 - (-1)^n)/2.

The programs for A062114, the canonical program `A062114.P6297935527570528798` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062114 has offset 0).

The definition of A062114 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

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

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A062114

/-- `a(n-1)+2*a(n-2)-a(n-3)-a(n-4)` -/
def P6297935527570528798.Spec : Prop :=
  ∀ n, P6297935527570528798.a n = A062114 n

theorem P6297935527570528798.correct : P6297935527570528798.Spec := by
  intro n
  simp only [A062114]

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

/-! ## A062114.P9264911764494986996

`2*A000045(n)-n%2`
-/

namespace A062114.P9264911764494986996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000045 n - ((n % 2 : ℕ) : ℤ)

end

end A062114.P9264911764494986996

namespace A062114

/-- `2*A000045(n)-n%2` -/
def P9264911764494986996.Spec : Prop :=
  ∀ n, P9264911764494986996.a n = A062114 n

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

/-! ## A062115.P1385503658216310265

`eq[1, A039997(A017317(n))+1]`
-/

namespace A062115.P1385503658216310265
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039997 (A017317 n).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A062115.P1385503658216310265

/-! ## A062115.P18025830318719148884

`eq[1, A039997(A017341(n))+1]`
-/

namespace A062115.P18025830318719148884
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039997 (A017341 n).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A062115.P18025830318719148884

/-!
# A062116: a(n) = 2^n mod 17.

The programs for A062116, the canonical program `A062116.P9995290021891852679` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062116 has offset 0).

The definition of A062116 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A062116.P9995290021891852679

`a(n-1)-a(n-4)+a(n-5)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=8, a(4)=16`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A062116

/-- `a(n-1)-a(n-4)+a(n-5)` -/
def P9995290021891852679.Spec : Prop :=
  ∀ n, P9995290021891852679.a n = A062116 n

theorem P9995290021891852679.correct : P9995290021891852679.Spec := by
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

The programs for A062119, the canonical program `A062119.P6281908133648097894` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062119 has offset 1).

The definition of A062119 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)!*n` (program `A062119.P6281908133648097894`, by `A062119.P6281908133648097894.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A062119.P6281908133648097894

`(n+1)!*n`

The canonical program, it is in `Seq.B000.C009`.
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

end A062119

/-! ## A062119.P11625225920063529642

`∏[n+1]*n`
-/

namespace A062119.P11625225920063529642
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * n

end

end A062119.P11625225920063529642

namespace A062119

/-- `∏[n+1]*n` -/
def P11625225920063529642.Spec : Prop :=
  ∀ n, (P11625225920063529642.a n : ℤ) = A062119 (n + 1)

theorem P11625225920063529642.correct : P11625225920063529642.Spec := by
  intro n
  simp only [A062119, Nat.add_sub_cancel, A062119.P11625225920063529642.f1, A062119.P11625225920063529642.a, A062119.P6281908133648097894.a, SequenceMachineLib.memo_apply]
  try simp

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

/-! ## A062119.P13495345892765860101

`lcm((n+1)!, Δ[n!])`
-/

namespace A062119.P13495345892765860101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (Nat.factorial (n + 1) : ℤ) ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A062119.P13495345892765860101

namespace A062119

/-- `lcm((n+1)!, Δ[n!])` -/
def P13495345892765860101.Spec : Prop :=
  ∀ n, (P13495345892765860101.a n : ℤ) = A062119 (n + 1)

end A062119

/-! ## A062119.P13938636749953134550

`-n*Δ[-∑[n!]]`
-/

namespace A062119.P13938636749953134550
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((n : ℤ) * (f1 (n + 1) - f1 n))

end

end A062119.P13938636749953134550

namespace A062119

/-- `-n*Δ[-∑[n!]]` -/
def P13938636749953134550.Spec : Prop :=
  ∀ n, P13938636749953134550.a n = A062119 (n + 1)

end A062119

/-! ## A062119.P13932809540445902607

`lcm(2, n!*∑[2*n])`
-/

namespace A062119.P13932809540445902607
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (Nat.factorial n * (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A062119.P13932809540445902607

namespace A062119

/-- `lcm(2, n!*∑[2*n])` -/
def P13932809540445902607.Spec : Prop :=
  ∀ n, (P13932809540445902607.a n : ℤ) = A062119 (n + 1)

end A062119

/-! ## A062119.P7351898364146629527

`lcm(n, 1-(n+1)!)+n`
-/

namespace A062119.P7351898364146629527
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (1 - (Nat.factorial (n + 1) : ℤ)) + n

end

end A062119.P7351898364146629527

namespace A062119

/-- `lcm(n, 1-(n+1)!)+n` -/
def P7351898364146629527.Spec : Prop :=
  ∀ n, (P7351898364146629527.a n : ℤ) = A062119 (n + 1)

end A062119

/-! ## A062119.P4131188673375925101

`Δ[n!]/(n+1)^-1`
-/

namespace A062119.P4131188673375925101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ) / (n + 1 : ℚ) ^ (-1 : ℤ)

end

end A062119.P4131188673375925101

namespace A062119

/-- `Δ[n!]/(n+1)^-1` -/
def P4131188673375925101.Spec : Prop :=
  ∀ n, P4131188673375925101.a n = (A062119 (n + 1) : ℚ)

theorem P4131188673375925101.correct : P4131188673375925101.Spec := by
  intro n
  simp only [A062119, Nat.add_sub_cancel, A062119.P4131188673375925101.f1, A062119.P4131188673375925101.a, A062119.P6281908133648097894.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A062119

/-! ## A062119.P1366288912603561429

`∑[2*n]/n!^-1`
-/

namespace A062119.P1366288912603561429
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (Nat.factorial n : ℚ) ^ (-1 : ℤ)

end

end A062119.P1366288912603561429

namespace A062119

/-- `∑[2*n]/n!^-1` -/
def P1366288912603561429.Spec : Prop :=
  ∀ n, P1366288912603561429.a n = (A062119 (n + 1) : ℚ)

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

/-! ## A062120.P5201705941803366802

`A062118(n+1)^A020639(A278222(n))`
-/

namespace A062120.P5201705941803366802
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062118 (n + 1) : ℚ) ^ (A020639 (A278222 n).toNat : ℤ)

end

end A062120.P5201705941803366802

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

The programs for A062123, the canonical program `A062123.P6127161496996241349` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062123 has offset 0).

The definition of A062123 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(9*n²+9*n+4)/2` (program `A062123.P5683457507301532778`, by `A062123.P5683457507301532778.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A062123.P6127161496996241349

`9*n+a(n-1)` with `a(0)=2`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A062123

/-- `9*n+a(n-1)` -/
def P6127161496996241349.Spec : Prop :=
  ∀ n, (P6127161496996241349.a n : ℤ) = A062123 n

theorem P6127161496996241349.correct : P6127161496996241349.Spec := by
  intro n
  simp only [A062123]

end A062123

/-! ## A062123.P13858274547273572221

`2+(n+n²)*9/2`
-/

namespace A062123.P13858274547273572221
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 + (n + n ^ 2 : ℚ) * ((9 : ℚ) / 2)

end

end A062123.P13858274547273572221

namespace A062123

/-- `2+(n+n²)*9/2` -/
def P13858274547273572221.Spec : Prop :=
  ∀ n, P13858274547273572221.a n = (A062123 n : ℚ)

theorem P13858274547273572221.correct : P13858274547273572221.Spec := by
  intro n
  induction n with
  | zero => simp [A062123, A062123.P13858274547273572221.a, A062123.P6127161496996241349.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A062123, Nat.add_sub_cancel, A062123.P13858274547273572221.a, A062123.P6127161496996241349.a, SequenceMachineLib.memo_apply] at ih ⊢
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
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

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

/-! ## A062123.P16763569596583759719

`A000124(3*n+1)`
-/

namespace A062123.P16763569596583759719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (3 * n + 1)

end

end A062123.P16763569596583759719

namespace A062123

/-- `A000124(3*n+1)` -/
def P16763569596583759719.Spec : Prop :=
  ∀ n, P16763569596583759719.a n = A062123 n

end A062123

/-!
# A062124: Fourth column of A046741.

The programs for A062124, the canonical program `A062124.P6385922923817778960` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062124 has offset 0).

The definition of A062124 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

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
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A062124

/-! ## A062124.P6385922923817778960

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=3, a(1)=26, a(2)=94, a(3)=234`

The canonical program, it is in `Seq.B000.C009`.
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

/-! ## A062124.P12233034216552437764

`A011826(3*(n+1))+n-2`
-/

namespace A062124.P12233034216552437764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011826 (3 * (n + 1)) + ((n : ℤ) - 2)

end

end A062124.P12233034216552437764

namespace A062124

/-- `A011826(3*(n+1))+n-2` -/
def P12233034216552437764.Spec : Prop :=
  ∀ n, P12233034216552437764.a n = A062124 n

end A062124

/-! ## A062124.P8793748634116081481

`A004006(A016777(n)+1)+n`
-/

namespace A062124.P8793748634116081481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004006 (A016777 n + 1).toNat + (n : ℤ)

end

end A062124.P8793748634116081481

namespace A062124

/-- `A004006(A016777(n)+1)+n` -/
def P8793748634116081481.Spec : Prop :=
  ∀ n, P8793748634116081481.a n = A062124 n

end A062124

/-!
# A062125: Fifth column of A046741.

The programs for A062125, the canonical program `A062125.P11365887008401122323` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062125 has offset 0).

The definition of A062125 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A062125.P11365887008401122323

`(40+126*n+165*n²+90*n^3+27*n^4)/8`

The canonical program, it is in `Seq.B000.C009`.
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

/-! ## A062125.P15426338154225907426

`A140090(A000326(n+1))+A000326(n)`
-/

namespace A062125.P15426338154225907426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140090 (A000326 (n + 1)).toNat + A000326 n

end

end A062125.P15426338154225907426

namespace A062125

/-- `A140090(A000326(n+1))+A000326(n)` -/
def P15426338154225907426.Spec : Prop :=
  ∀ n, P15426338154225907426.a n = A062125 n

end A062125

/-!
# A062126: Sixth column of A046741.

The programs for A062126, there is no canonical definition to state claims against.
-/

/-! ## A062126.P6921550350445277409

`A046741(A167499(n+4))`
-/

namespace A062126.P6921550350445277409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046741 (A167499 (n + 4)).toNat

end

end A062126.P6921550350445277409

/-! ## A062126.P16455364436187251277

`A046741(A000124(n+5)+4)`
-/

namespace A062126.P16455364436187251277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046741 (A000124 (n + 5) + 4).toNat

end

end A062126.P16455364436187251277

/-! ## A062126.P14982432884457832927

`A046741(A000096(n+4)+6)`
-/

namespace A062126.P14982432884457832927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046741 (A000096 (n + 4) + 6).toNat

end

end A062126.P14982432884457832927

/-! ## A062126.P18258308528773943595

`A046741(A000217(n+5)+5)`
-/

namespace A062126.P18258308528773943595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046741 (A000217 (n + 5) + 5).toNat

end

end A062126.P18258308528773943595

/-! ## A062126.P11679345740690842261

`A046741(A055998(n+1)+A004280(n+10))`
-/

namespace A062126.P11679345740690842261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046741 (A055998 (n + 1) + A004280 (n + 10)).toNat

end

end A062126.P11679345740690842261

/-!
# A062127: Seventh column of A046741.

The programs for A062127, there is no canonical definition to state claims against.
-/

/-! ## A062127.P16887446141812264293

`A046741(A167499(n+5)+1)`
-/

namespace A062127.P16887446141812264293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046741 (A167499 (n + 5) + 1).toNat

end

end A062127.P16887446141812264293

/-! ## A062127.P9440934078756160808

`A046741(A000096(n+5)+7)`
-/

namespace A062127.P9440934078756160808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046741 (A000096 (n + 5) + 7).toNat

end

end A062127.P9440934078756160808

/-! ## A062127.P4976446549354188562

`A046741(A000217(n+6)+6)`
-/

namespace A062127.P4976446549354188562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046741 (A000217 (n + 6) + 6).toNat

end

end A062127.P4976446549354188562

/-! ## A062127.P15868452543256548200

`A308244(A000217(n+7)-7)`
-/

namespace A062127.P15868452543256548200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308244 (A000217 (n + 7) - 7).toNat

end

end A062127.P15868452543256548200

/-! ## A062127.P7157385107627716755

`A308244(n+1+A000096(n+5))`
-/

namespace A062127.P7157385107627716755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308244 ((n + 1 : ℤ) + A000096 (n + 5)).toNat

end

end A062127.P7157385107627716755

/-! ## A062127.P8357563619126456007

`A046741(A046691(n+6)-A144396(n+2))`
-/

namespace A062127.P8357563619126456007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046741 (A046691 (n + 6) - A144396 (n + 2)).toNat

end

end A062127.P8357563619126456007

/-! ## A062127.P12819368014568084725

`A046741(A144396(n+10)+A046691(n+2))`
-/

namespace A062127.P12819368014568084725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046741 (A144396 (n + 10) + A046691 (n + 2)).toNat

end

end A062127.P12819368014568084725

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

/-! ## A062135.P8709531397456209441

`A363733(n)/A363741(A016825(n))`
-/

namespace A062135.P8709531397456209441
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A363733 n : ℚ) / (A363741 (A016825 n).toNat : ℚ)

end

end A062135.P8709531397456209441

/-!
# A062136: Twelfth column of Losanitsch's triangle A034851 (formatted as lower triangular matrix).

The programs for A062136, there is no canonical definition to state claims against.
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

/-! ## A062136.P11052727376008095055

`A299338(n)+∑[∑[A282077(n)]]`
-/

namespace A062136.P11052727376008095055
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282077 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299338 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062136.P11052727376008095055

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

/-! ## A062136.P16916724272326522404

`A282011(A000124(n+11)+10)`
-/

namespace A062136.P16916724272326522404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282011 (A000124 (n + 11) + 10).toNat

end

end A062136.P16916724272326522404

/-! ## A062136.P10649170134119982570

`A282011(A167499(n)+A017281(n+7))`
-/

namespace A062136.P10649170134119982570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282011 (A167499 n + A017281 (n + 7)).toNat

end

end A062136.P10649170134119982570

/-! ## A062136.P5197188038708915619

`A034851(A055999(n+9)-6)`
-/

namespace A062136.P5197188038708915619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034851 (A055999 (n + 9) - 6).toNat

end

end A062136.P5197188038708915619

/-! ## A062136.P4795926016118482357

`A034851(A000217(n+11)+11)`
-/

namespace A062136.P4795926016118482357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034851 (A000217 (n + 11) + 11).toNat

end

end A062136.P4795926016118482357

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

/-!
# A062137: Coefficient triangle of generalized Laguerre polynomials n!*L(n,3,x) (rising powers of x).

The programs for A062137, the canonical program `A062137.P6184650230709915596` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062137 has offset 0).

The definition of A062137 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2214 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A062137.P6184650230709915596

`A033999(A002262(n))*A143497(n+2)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A062137

/-- `A033999(A002262(n))*A143497(n+2)` -/
def P6184650230709915596.Spec : Prop :=
  ∀ n, P6184650230709915596.a n = A062137 n

theorem P6184650230709915596.correct : P6184650230709915596.Spec := by
  intro n
  simp only [A062137]

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

The programs for A062138, there is no canonical definition to state claims against.
-/

/-! ## A062138.P10226293470753936397

`A033999(A002262(n))*A143498(n+3)`
-/

namespace A062138.P10226293470753936397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A002262 n).toNat * A143498 (n + 3)

end

end A062138.P10226293470753936397

/-! ## A062138.P15188099413782478749

`A033999(A061885(n))*A143498(n+3)`
-/

namespace A062138.P15188099413782478749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A061885 n).toNat * A143498 (n + 3)

end

end A062138.P15188099413782478749

/-! ## A062138.P9854582755147456828

`A021010(A112367(n))*A143498(n+3)`
-/

namespace A062138.P9854582755147456828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021010 (A112367 n).toNat * A143498 (n + 3)

end

end A062138.P9854582755147456828

/-! ## A062138.P18340257481881311803

`A097807(A061579(n))*A143498(n+3)`
-/

namespace A062138.P18340257481881311803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 (A061579 n).toNat * A143498 (n + 3)

end

end A062138.P18340257481881311803

/-! ## A062138.P4070707933610221260

`A033999(A294317(n))*A143498(n+3)`
-/

namespace A062138.P4070707933610221260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A294317 n).toNat * A143498 (n + 3)

end

end A062138.P4070707933610221260

/-! ## A062138.P10556080203728123636

`A062157(A002260(n+1))*A143498(n+3)`
-/

namespace A062138.P10556080203728123636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (A002260 (n + 1)).toNat * A143498 (n + 3)

end

end A062138.P10556080203728123636

/-! ## A062138.P13897407601545653580

`A143497(n+2)/A062137(n)*A143498(n+3)`
-/

namespace A062138.P13897407601545653580
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143497 (n + 2) : ℚ) / (A062137 n : ℚ) * (A143498 (n + 3) : ℚ)

end

end A062138.P13897407601545653580

/-! ## A062138.P12448455738337996516

`A097807(A002378(n)%A080036(n))*A143498(n+3)`
-/

namespace A062138.P12448455738337996516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 (Int.tmod (A002378 n) (A080036 n)).toNat * A143498 (n + 3)

end

end A062138.P12448455738337996516

/-! ## A062138.P14618153940364915014

`A143498(n+3)*A165586(A059268(n))`
-/

namespace A062138.P14618153940364915014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143498 (n + 3) * A165586 (A059268 n).toNat

end

end A062138.P14618153940364915014

/-! ## A062138.P12947782435952075481

`A143498(n+3)*A165586(A133214(n))`
-/

namespace A062138.P12947782435952075481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143498 (n + 3) * A165586 (A133214 n).toNat

end

end A062138.P12947782435952075481

/-!
# A062141: Third column sequence of coefficient triangle A062137 of generalized Laguerre polynomials n!*L(n,3,x).

The programs for A062141, there is no canonical definition to state claims against.
-/

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

/-! ## A062141.P2591726736971148919

`((n+3)²+n+1)*a(n-1)/n` with `a(0)=1`
-/

namespace A062141.P2591726736971148919
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  ((n + 3) ^ 2 + (n + 1) : ℚ) * (a (n - 1) / (n : ℚ))

end

end A062141.P2591726736971148919

/-! ## A062141.P3125027678236192369

`n!*A107417(n)`
-/

namespace A062141.P3125027678236192369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A107417 n

end

end A062141.P3125027678236192369

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

/-! ## A062141.P13397512394096583280

`(A062199(n+1)-A061206(n+2))/2`
-/

namespace A062141.P13397512394096583280
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062199 (n + 1) - A061206 (n + 2) : ℚ) / 2

end

end A062141.P13397512394096583280

/-! ## A062141.P11160328437822148950

`A051923(n)*A066667(A000217(n))`
-/

namespace A062141.P11160328437822148950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051923 n * A066667 (A000217 n).toNat

end

end A062141.P11160328437822148950

/-! ## A062141.P15129942150420278267

`A000217(n+1)*A062138(A000217(n))`
-/

namespace A062141.P15129942150420278267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) * A062138 (A000217 n).toNat

end

end A062141.P15129942150420278267

/-! ## A062141.P12851693993943577350

`A001286(n+2)/A001563(n+1)*A062199(n)`
-/

namespace A062141.P12851693993943577350
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001286 (n + 2) : ℚ) / (A001563 (n + 1) : ℚ) * (A062199 n : ℚ)

end

end A062141.P12851693993943577350

/-!
# A062142: Fourth (unsigned) column sequence of coefficient triangle A062137 of generalized Laguerre polynomials n!*L(n,3,x).

The programs for A062142, there is no canonical definition to state claims against.
-/

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

/-! ## A062142.P18311605216767535826

`A143497(A167499(n+2))`
-/

namespace A062142.P18311605216767535826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143497 (A167499 (n + 2)).toNat

end

end A062142.P18311605216767535826

/-! ## A062142.P12664164679371510875

`abs(A062137(A167614(n+2)))`
-/

namespace A062142.P12664164679371510875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A062137 (A167614 (n + 2)).toNat|

end

end A062142.P12664164679371510875

/-! ## A062142.P7888105885397542284

`A143497(A166136(n+2)-1)`
-/

namespace A062142.P7888105885397542284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143497 (A166136 (n + 2) - 1).toNat

end

end A062142.P7888105885397542284

/-! ## A062142.P15475057655029877306

`A143497(A167614(n+2)+2)`
-/

namespace A062142.P15475057655029877306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143497 (A167614 (n + 2) + 2).toNat

end

end A062142.P15475057655029877306

/-! ## A062142.P662695057650382358

`A143497(A000096(n+2)+6)`
-/

namespace A062142.P662695057650382358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143497 (A000096 (n + 2) + 6).toNat

end

end A062142.P662695057650382358

/-! ## A062142.P9376401972424574111

`A143497(A166136(n+1)+2+n)`
-/

namespace A062142.P9376401972424574111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143497 (A166136 (n + 1) + 2 + (n : ℤ)).toNat

end

end A062142.P9376401972424574111

/-! ## A062142.P11364986652145851639

`lcm(A000142(n), A062137(A167614(n+2)))`
-/

namespace A062142.P11364986652145851639
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000142 n) (A062137 (A167614 (n + 2)).toNat)

end

end A062142.P11364986652145851639

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

/-! ## A062143.P13903376030435824118

`C(n+7, 7)*∏[gcd(2, (n+1)!)²+n]`
-/

namespace A062143.P13903376030435824118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 (Nat.factorial (n + 1)) ^ 2 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 7) 7 * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A062143.P13903376030435824118

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

/-! ## A062144.P5652628435687465069

`n!*C(n+5, 5)*C(n+8, 8)`
-/

namespace A062144.P5652628435687465069
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n * Nat.choose (n + 5) 5 * Nat.choose (n + 8) 8

end

end A062144.P5652628435687465069

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

The programs for A062145, the canonical program `A062145.P16567727697507053806` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062145 has offset 0).

The definition of A062145 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9860 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

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

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A062145

/-- `abs(A108086(n)*A209518(A007401(n+1)))` -/
def P16567727697507053806.Spec : Prop :=
  ∀ n, P16567727697507053806.a n = A062145 n

theorem P16567727697507053806.correct : P16567727697507053806.Spec := by
  intro n
  simp only [A062145]

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

The programs for A062146, the canonical program `A062146.P9960580888265487706` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062146 has offset 0).

The definition of A062146 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A062146.P9960580888265487706

`(2*n+1)*a(n-1)-(n-1)*(n+2)*a(n-2)` with `a(0)=1, a(1)=3`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A062146

/-- `(2*n+1)*a(n-1)-(n-1)*(n+2)*a(n-2)` -/
def P9960580888265487706.Spec : Prop :=
  ∀ n, P9960580888265487706.a n = A062146 n

theorem P9960580888265487706.correct : P9960580888265487706.Spec := by
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

The programs for A062147, the canonical program `A062147.P2117779543974269794` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062147 has offset 0).

The definition of A062147 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A062147.P2117779543974269794

`(2*n+3)*a(n-1)-(n-1)*(n+2)*a(n-2)` with `a(0)=1, a(1)=5`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A062147

/-- `(2*n+3)*a(n-1)-(n-1)*(n+2)*a(n-2)` -/
def P2117779543974269794.Spec : Prop :=
  ∀ n, P2117779543974269794.a n = A062147 n

theorem P2117779543974269794.correct : P2117779543974269794.Spec := by
  intro n
  simp only [A062147]

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

/-! ## A062147.P9596617522474567864

`A293985(A055999(n+1)+A020715(n))`
-/

namespace A062147.P9596617522474567864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293985 (A055999 (n + 1) + A020715 n).toNat

end

end A062147.P9596617522474567864

namespace A062147

/-- `A293985(A055999(n+1)+A020715(n))` -/
def P9596617522474567864.Spec : Prop :=
  ∀ n, P9596617522474567864.a n = A062147 n

end A062147

/-!
# A062148: Second (unsigned) column sequence of triangle A062138 (generalized a=5 Laguerre).

The programs for A062148, there is no canonical definition to state claims against.
-/

/-! ## A062148.P13084586916641140267

`(n+1)!*C(n+6, 6)`
-/

namespace A062148.P13084586916641140267
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (n + 1) * Nat.choose (n + 6) 6

end

end A062148.P13084586916641140267

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

/-! ## A062148.P11007525996382613550

`A143498(∑[n+1]+4)`
-/

namespace A062148.P11007525996382613550
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143498 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A062148.P11007525996382613550

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

/-! ## A062148.P12598631425061981317

`A001730(n+7)-A001725(n+6)`
-/

namespace A062148.P12598631425061981317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001730 (n + 7) - A001725 (n + 6)

end

end A062148.P12598631425061981317

/-! ## A062148.P17324723033784346969

`((n+3)²+n-3)*a(n-1)/n` with `a(0)=1`
-/

namespace A062148.P17324723033784346969
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (((n + 3) ^ 2 : ℤ) + ((n : ℤ) - 3) : ℚ) * a (n - 1) / (n : ℚ)

end

end A062148.P17324723033784346969

/-!
# A062149: Third column of triangle A062138 (generalized a=5 Laguerre).

The programs for A062149, there is no canonical definition to state claims against.
-/

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

/-! ## A062149.P2882951548684108591

`n!*A104670(n)`
-/

namespace A062149.P2882951548684108591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A104670 n

end

end A062149.P2882951548684108591

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

/-! ## A062149.P7167130502394186005

`(n+1)!*A052181(n)`
-/

namespace A062149.P7167130502394186005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℤ) * A052181 n

end

end A062149.P7167130502394186005

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

/-! ## A062149.P6462344793368023903

`A143498(A167499(n+1))`
-/

namespace A062149.P6462344793368023903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143498 (A167499 (n + 1)).toNat

end

end A062149.P6462344793368023903

/-! ## A062149.P15623368191120849494

`A143498(A166136(n+1)-1)`
-/

namespace A062149.P15623368191120849494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143498 (A166136 (n + 1) - 1).toNat

end

end A062149.P15623368191120849494

/-!
# A062150: Fourth (unsigned) column of triangle A062138 (generalized a=5 Laguerre).

The programs for A062150, there is no canonical definition to state claims against.
-/

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

/-! ## A062150.P9416940141949341208

`A143498(A166136(n+2))`
-/

namespace A062150.P9416940141949341208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143498 (A166136 (n + 2)).toNat

end

end A062150.P9416940141949341208

/-! ## A062150.P6716348233485804426

`abs(A062138(A167614(n+2)))`
-/

namespace A062150.P6716348233485804426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A062138 (A167614 (n + 2)).toNat|

end

end A062150.P6716348233485804426

/-! ## A062150.P670128224955427490

`A000581(n+8)*A001715(n+3)`
-/

namespace A062150.P670128224955427490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000581 (n + 8) * A001715 (n + 3)

end

end A062150.P670128224955427490

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

/-! ## A062150.P15552320908565635967

`A000581(n+8)*A062137(A000217(n))`
-/

namespace A062150.P15552320908565635967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000581 (n + 8) * A062137 (A000217 n).toNat

end

end A062150.P15552320908565635967

/-! ## A062150.P933338782367888939

`lcm(A059268(n), A062138(A167614(n+2)))`
-/

namespace A062150.P933338782367888939
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A059268 n) (A062138 (A167614 (n + 2)).toNat)

end

end A062150.P933338782367888939

/-! ## A062150.P17427136284636012628

`A001715(n+3)/A000142(n)*A049389(n)`
-/

namespace A062150.P17427136284636012628
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001715 (n + 3) : ℚ) / (A000142 n : ℚ) * (A049389 n : ℚ)

end

end A062150.P17427136284636012628

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

/-! ## A062152.P2823407361140772549

`∏[A028310(n)]*A104673(n)`
-/

namespace A062152.P2823407361140772549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A104673 n

end

end A062152.P2823407361140772549

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

The programs for A062153, the canonical program `A062153.P7840962928244100057` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062153 has offset 1).

The definition of A062153 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A062153.P7840962928244100057

`a(floor((n+1)/3)-1)+1` with `a(0)=0, a(1)=0`

The canonical program, it is in `Seq.B000.C009`.
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

/-! ## A062153.P18208382546947681887

`∑[A154271(n+1)²]-1`
-/

namespace A062153.P18208382546947681887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154271 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A062153.P18208382546947681887

namespace A062153

/-- `∑[A154271(n+1)²]-1` -/
def P18208382546947681887.Spec : Prop :=
  ∀ n, P18208382546947681887.a n = A062153 (n + 1)

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

/-! ## A062156.P15494163084489339040

`record[A062154(A005843(n))/A086645(n)²]`
-/

namespace A062156.P15494163084489339040
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062154 (A005843 n).toNat : ℚ) / (A086645 n ^ 2 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A062156.P15494163084489339040

/-!
# A062157: a(n) = 0^n - (-1)^n.

The programs for A062157, the canonical program `A062157.P11174747228682245844` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062157 has offset 0).

The definition of A062157 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A062157.P11174747228682245844

`A000007(n)-A033999(n)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A062157

/-- `A000007(n)-A033999(n)` -/
def P11174747228682245844.Spec : Prop :=
  ∀ n, P11174747228682245844.a n = A062157 n

theorem P11174747228682245844.correct : P11174747228682245844.Spec := by
  intro n
  simp only [A062157]

end A062157

/-!
# A062158: a(n) = n^3 - n^2 + n - 1 = (n-1) * (n^2 + 1).

The programs for A062158, the canonical program `A062158.P5395940326210202878` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062158 has offset 0).

The definition of A062158 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n-1)*(n²+1)` (program `A062158.P5395940326210202878`, by `A062158.P5395940326210202878.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A062158.P5395940326210202878

`(n-1)*(n²+1)`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A062158

/-- `(n-1)*(n²+1)` -/
def P5395940326210202878.Spec : Prop :=
  ∀ n, P5395940326210202878.a n = A062158 n

theorem P5395940326210202878.correct : P5395940326210202878.Spec := by
  intro n
  simp only [A062158]

end A062158

/-! ## A062158.P10270993859623751368

`n^3-n²+n-1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A062158.P10270993859623751368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 3 : ℤ) - (n ^ 2 : ℤ) + ((n : ℤ) - 1)

end

end A062158.P10270993859623751368

namespace A062158

/-- `n^3-n²+n-1` -/
def P10270993859623751368.Spec : Prop :=
  ∀ n, P10270993859623751368.a n = A062158 n

theorem P10270993859623751368.correct : P10270993859623751368.Spec := by
  intro n
  simp only [A062158, Nat.add_sub_cancel, A062158.P10270993859623751368.a, A062158.P5395940326210202878.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

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

`-(n-1)*xor(-1, n²)`
-/

namespace A062158.P95717301261421138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(((n : ℤ) - 1) * Int.xor (-1) (n ^ 2 : ℤ))

end

end A062158.P95717301261421138

namespace A062158

/-- `-(n-1)*xor(-1, n²)` -/
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

/-! ## A062158.P6536897409569626026

`-(2*n-record[(n-1)²])*(n-1)`
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

/-- `-(2*n-record[(n-1)²])*(n-1)` -/
def P6536897409569626026.Spec : Prop :=
  ∀ n, P6536897409569626026.a n = A062158 n

end A062158

/-!
# A062159: a(n) = n^5 - n^4 + n^3 - n^2 + n - 1.

The programs for A062159, the canonical program `A062159.P9441639756331604176` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062159 has offset 0).

The definition of A062159 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^5-n^4+n^3-n²+n-1` (program `A062159.P9441639756331604176`, by `A062159.P9441639756331604176.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
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
  simp only [A062159, Nat.add_sub_cancel, A062159.P3051750146052472580.a, A062159.P9441639756331604176.a, SequenceMachineLib.memo_apply]
  try push_cast
  try field_simp
  try (first | ring1 | ring_nf)

end A062159

/-! ## A062159.P9441639756331604176

`n^5-n^4+n^3-n²+n-1`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A062159

/-- `n^5-n^4+n^3-n²+n-1` -/
def P9441639756331604176.Spec : Prop :=
  ∀ n, P9441639756331604176.a n = A062159 n

theorem P9441639756331604176.correct : P9441639756331604176.Spec := by
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

end A062159

/-!
# A062160: Square array T(n,k) = (n^k - (-1)^k)/(n+1), n >= 0, k >= 0, read by falling antidiagonals.

The programs for A062160, there is no canonical definition to state claims against.
-/

/-! ## A062160.P14663134409189145720

`A109502(A038722(n+1))-A097807(n)`
-/

namespace A062160.P14663134409189145720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109502 (A038722 (n + 1)).toNat - A097807 n

end

end A062160.P14663134409189145720

/-! ## A062160.P6607568501945257402

`A109502(A061579(n)+1)-A097807(n)`
-/

namespace A062160.P6607568501945257402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109502 (A061579 n + 1).toNat - A097807 n

end

end A062160.P6607568501945257402

/-! ## A062160.P6895156242954068280

`A100047(2*A221200(n+1))`
-/

namespace A062160.P6895156242954068280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100047 (2 * A221200 (n + 1)).toNat

end

end A062160.P6895156242954068280

/-! ## A062160.P11412910515690181285

`A080891(4*A221200(n+1))`
-/

namespace A062160.P11412910515690181285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080891 (4 * A221200 (n + 1)).toNat

end

end A062160.P11412910515690181285

/-! ## A062160.P13485856997998988683

`A056594(A108045(n)+A035008(2*(n+1)))`
-/

namespace A062160.P13485856997998988683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (A108045 n + A035008 (2 * (n + 1))).toNat

end

end A062160.P13485856997998988683

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

/-! ## A062162.P12407994702220931159

`A062272(n)-A062161(n)`
-/

namespace A062162.P12407994702220931159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062272 n - A062161 n

end

end A062162.P12407994702220931159

/-! ## A062162.P570514324187652277

`abs(A003701(n)-A009739(n))`
-/

namespace A062162.P570514324187652277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A003701 n - A009739 n|

end

end A062162.P570514324187652277

/-! ## A062162.P4202496157832183248

`A000667(n)-2*A062161(n)`
-/

namespace A062162.P4202496157832183248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000667 n - 2 * A062161 n

end

end A062162.P4202496157832183248

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

/-! ## A062165.P13751200472298003292

`A350893(A237800(A237800(n+2))+2*n)`
-/

namespace A062165.P13751200472298003292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350893 (A237800 (A237800 (n + 2)).toNat + (2 * n : ℤ)).toNat

end

end A062165.P13751200472298003292

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

The programs for A062169, the canonical program `A062169.P14923424659138943976` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062169 has offset 1).

The definition of A062169 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2484 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

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

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A062169

/-- `A002260(n+1)!%A002024(n+1)` -/
def P14923424659138943976.Spec : Prop :=
  ∀ n, P14923424659138943976.a n = A062169 (n + 1)

theorem P14923424659138943976.correct : P14923424659138943976.Spec := by
  intro n
  simp only [A062169, Nat.add_sub_cancel]

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

The programs for A062171, the canonical program `A062171.P776199650189384373` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062171 has offset 1).

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

/-! ## A062171.P776199650189384373

`∪[A046099(n+1), A392288(n+1)]`

The canonical program, it is in `Seq.B012.C000`.
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

The programs for A062172, the canonical program `A062172.P4489819024102910936` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062172 has offset 1).

The definition of A062172 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4675 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A062172.P4489819024102910936

`A009998(n)%A004736(n+1)`

The canonical program, it is in `Seq.B005.C000`.
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

/-!
# A062173: a(n) = 2^(n-1) mod n.

The programs for A062173, the canonical program `A062173.P12803886350549463179` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062173 has offset 1).

The definition of A062173 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A062173.P12803886350549463179

`A220105(n+1)%(n+1)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A062173

/-- `A220105(n+1)%(n+1)` -/
def P12803886350549463179.Spec : Prop :=
  ∀ n, P12803886350549463179.a n = A062173 (n + 1)

theorem P12803886350549463179.correct : P12803886350549463179.Spec := by
  intro n
  simp only [A062173, Nat.add_sub_cancel]

end A062173

/-! ## A062173.P1634054325432440663

`A320440(n)%(n+1)`
-/

namespace A062173.P1634054325432440663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A320440 n) (n + 1 : ℤ)

end

end A062173.P1634054325432440663

namespace A062173

/-- `A320440(n)%(n+1)` -/
def P1634054325432440663.Spec : Prop :=
  ∀ n, P1634054325432440663.a n = A062173 (n + 1)

end A062173

/-! ## A062173.P10731353543160829421

`A378514(n+1)%A181440(n+1)`
-/

namespace A062173.P10731353543160829421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A378514 (n + 1)) (A181440 (n + 1))

end

end A062173.P10731353543160829421

namespace A062173

/-- `A378514(n+1)%A181440(n+1)` -/
def P10731353543160829421.Spec : Prop :=
  ∀ n, P10731353543160829421.a n = A062173 (n + 1)

end A062173

/-! ## A062173.P13877006182644273004

`(2^n)%(n+1)`
-/

namespace A062173.P13877006182644273004
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n % (n + 1)

end

end A062173.P13877006182644273004

namespace A062173

/-- `(2^n)%(n+1)` -/
def P13877006182644273004.Spec : Prop :=
  ∀ n, (P13877006182644273004.a n : ℤ) = A062173 (n + 1)

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

/-! ## A062173.P6685716352137886097

`--A000079(n)%(n+1)`
-/

namespace A062173.P6685716352137886097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.tmod (-A000079 n) (n + 1 : ℤ)

end

end A062173.P6685716352137886097

namespace A062173

/-- `--A000079(n)%(n+1)` -/
def P6685716352137886097.Spec : Prop :=
  ∀ n, P6685716352137886097.a n = A062173 (n + 1)

end A062173

/-! ## A062173.P6673661469851681032

`--A000295(n)%(n+1)`
-/

namespace A062173.P6673661469851681032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.tmod (-A000295 n) (n + 1 : ℤ)

end

end A062173.P6673661469851681032

namespace A062173

/-- `--A000295(n)%(n+1)` -/
def P6673661469851681032.Spec : Prop :=
  ∀ n, P6673661469851681032.a n = A062173 (n + 1)

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

The programs for A062174, the canonical program `A062174.P17695015391598183262` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062174 has offset 1).

The definition of A062174 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A062174.P17695015391598183262

`(3^n)%(n+1)`

The canonical program, it is in `Seq.B000.C009`.
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

/-! ## A062174.P6623925363708496923

`abs(A140429(n+1)%A001057(2*n+1))`
-/

namespace A062174.P6623925363708496923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A140429 (n + 1)) (A001057 (2 * n + 1))|

end

end A062174.P6623925363708496923

namespace A062174

/-- `abs(A140429(n+1)%A001057(2*n+1))` -/
def P6623925363708496923.Spec : Prop :=
  ∀ n, P6623925363708496923.a n = A062174 (n + 1)

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

/-! ## A062174.P15709518593205146264

`abs(A229277(n+1)%A024000(n+2))`
-/

namespace A062174.P15709518593205146264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A229277 (n + 1)) (A024000 (n + 2))|

end

end A062174.P15709518593205146264

namespace A062174

/-- `abs(A229277(n+1)%A024000(n+2))` -/
def P15709518593205146264.Spec : Prop :=
  ∀ n, P15709518593205146264.a n = A062174 (n + 1)

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

The programs for A062175, the canonical program `A062175.P9780309333611397223` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062175 has offset 1).

The definition of A062175 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A062175.P9780309333611397223

`(4^n)%(n+1)`

The canonical program, it is in `Seq.B000.C009`.
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

The programs for A062176, the canonical program `A062176.P5876340861125012495` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062176 has offset 1).

The definition of A062176 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A062176.P5876340861125012495

`(5^n)%(n+1)`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A062176

/-- `(5^n)%(n+1)` -/
def P5876340861125012495.Spec : Prop :=
  ∀ n, (P5876340861125012495.a n : ℤ) = A062176 (n + 1)

theorem P5876340861125012495.correct : P5876340861125012495.Spec := by
  intro n
  simp only [A062176, Nat.add_sub_cancel]

end A062176

/-! ## A062176.P13002627490983802833

`abs(A000351(n)%-(n+1))`
-/

namespace A062176.P13002627490983802833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A000351 n) (-(n + 1 : ℤ))|

end

end A062176.P13002627490983802833

namespace A062176

/-- `abs(A000351(n)%-(n+1))` -/
def P13002627490983802833.Spec : Prop :=
  ∀ n, P13002627490983802833.a n = A062176 (n + 1)

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

/-! ## A062179.P4682072431700682383

`eq[A168046(n), A392050(n)]`
-/

namespace A062179.P4682072431700682383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168046 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392050 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A062179.P4682072431700682383

/-! ## A062179.P17650256490345415945

`eq[A168184(n), A392050(n)]`
-/

namespace A062179.P17650256490345415945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168184 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392050 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A062179.P17650256490345415945

/-!
# A062186: a(n) = a(n-1) - a(floor(n/2)), with a(1)=1.

The programs for A062186, the canonical program `A062186.P18322411667248667480` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062186 has offset 1).

The definition of A062186 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)-a(floor((n+1)/2)-1)` (program `A062186.P18322411667248667480`, by `A062186.P18322411667248667480.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A062186.P18322411667248667480

`a(n-1)-a(floor((n+1)/2)-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A062186

/-- `a(n-1)-a(floor((n+1)/2)-1)` -/
def P18322411667248667480.Spec : Prop :=
  ∀ n, P18322411667248667480.a n = A062186 (n + 1)

theorem P18322411667248667480.correct : P18322411667248667480.Spec := by
  intro n
  simp only [A062186, Nat.add_sub_cancel]

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

/-! ## A062186.P12190508340177828530

`floor(a(n-1)-a(∑[n%2]-1))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A062186.P12190508340177828530
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - a (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A062186.P12190508340177828530

namespace A062186

/-- `floor(a(n-1)-a(∑[n%2]-1))` -/
def P12190508340177828530.Spec : Prop :=
  ∀ n, P12190508340177828530.a n = A062186 (n + 1)

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

The programs for A062187, the canonical program `A062187.P18293695425633580345` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062187 has offset 0).

The definition of A062187 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A062187.P18293695425633580345

`a(n-1)-a(floor((n-1)/2))` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C009`.
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

The programs for A062188, the canonical program `A062188.P1699806789765351713` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062188 has offset 0).

The definition of A062188 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A062188.P1699806789765351713

`a(floor((n-1)/2))+a(n-1)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C009`.
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

The programs for A062189, the canonical program `A062189.P9950364958128550730` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062189 has offset 0).

The definition of A062189 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A062189.P9950364958128550730

`n*(4*n+2)*3^(n-2)`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A062189

/-- `n*(4*n+2)*3^(n-2)` -/
def P9950364958128550730.Spec : Prop :=
  ∀ n, P9950364958128550730.a n = (A062189 n : ℚ)

end A062189

/-! ## A062189.P7725317463447573155

`2*3^(n-2)*n*(1+2*n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A062189.P7725317463447573155
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * (3 : ℚ) ^ ((n : ℤ) - 2 : ℤ) * (n * (1 + 2 * n) : ℚ)

end

end A062189.P7725317463447573155

namespace A062189

/-- `2*3^(n-2)*n*(1+2*n)` -/
def P7725317463447573155.Spec : Prop :=
  ∀ n, P7725317463447573155.a n = (A062189 n : ℚ)

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

The programs for A062190, the canonical program `A062190.P12058370499941277202` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062190 has offset 0).

The definition of A062190 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9310 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A062190.P12058370499941277202

`A007318(lt[4, A025581(n)])*A007318(n)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A062190

/-- `A007318(lt[4, A025581(n)])*A007318(n)` -/
def P12058370499941277202.Spec : Prop :=
  ∀ n, P12058370499941277202.a n = A062190 n

theorem P12058370499941277202.correct : P12058370499941277202.Spec := by
  intro n
  simp only [A062190]

end A062190

/-!
# A062191: Row sums of signed triangle A062138 (generalized a=5 Laguerre).

The programs for A062191, there is no canonical definition to state claims against.
-/

/-! ## A062191.P6144031027149242498

`A062265(n)+n*a(n-1)` with `a(0)=1`
-/

namespace A062191.P6144031027149242498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A062265 n + (n : ℤ) * a (n - 1)

end

end A062191.P6144031027149242498

/-!
# A062192: Row sums of unsigned triangle A062138 (generalized a=5 Laguerre).

The programs for A062192, the canonical program `A062192.P7847448587072839889` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062192 has offset 0).

The definition of A062192 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A062192.P7847448587072839889

`(2*n+5)*a(n-1)-(n-1)*(n+4)*a(n-2)` with `a(0)=1, a(1)=7`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A062192

/-- `(2*n+5)*a(n-1)-(n-1)*(n+4)*a(n-2)` -/
def P7847448587072839889.Spec : Prop :=
  ∀ n, P7847448587072839889.a n = A062192 n

theorem P7847448587072839889.correct : P7847448587072839889.Spec := by
  intro n
  simp only [A062192]

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

The programs for A062194, there is no canonical definition to state claims against.
-/

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

/-! ## A062194.P6858006899267251630

`n!*A105947(n)`
-/

namespace A062194.P6858006899267251630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A105947 n

end

end A062194.P6858006899267251630

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

/-! ## A062194.P6314938769771615428

`A062139(A167614(n+1)+A020744(n))`
-/

namespace A062194.P6314938769771615428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062139 (A167614 (n + 1) + A020744 n).toNat

end

end A062194.P6314938769771615428

/-! ## A062194.P5136964286718828285

`A061206(n+1)/A001563(n+1)*A062148(n)`
-/

namespace A062194.P5136964286718828285
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061206 (n + 1) : ℚ) / (A001563 (n + 1) : ℚ) * (A062148 n : ℚ)

end

end A062194.P5136964286718828285

/-!
# A062195: Sixth (unsigned) column sequence of triangle A062139 (generalized a=2 Laguerre).

The programs for A062195, there is no canonical definition to state claims against.
-/

/-! ## A062195.P14224752591011129199

`((n+6)²-1)/n*a(n-1)` with `a(0)=1`
-/

namespace A062195.P14224752591011129199
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (((n + 6) ^ 2 : ℤ) - 1 : ℚ) / (n : ℚ) * a (n - 1)

end

end A062195.P14224752591011129199

/-! ## A062195.P10476062409285248641

`n!*C(n+5, 5)*C(n+7, 7)`
-/

namespace A062195.P10476062409285248641
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n * Nat.choose (n + 5) 5 * Nat.choose (n + 7) 7

end

end A062195.P10476062409285248641

/-! ## A062195.P17122346873626803092

`C(n+5, 5)*A049388(n)`
-/

namespace A062195.P17122346873626803092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 5) 5 : ℤ) * A049388 n

end

end A062195.P17122346873626803092

/-! ## A062195.P4438815445860538587

`A000580(n+7)*A001725(n+5)`
-/

namespace A062195.P4438815445860538587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000580 (n + 7) * A001725 (n + 5)

end

end A062195.P4438815445860538587

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

/-! ## A062195.P114856099498709594

`A000580(n+7)*A062138(A000217(n))`
-/

namespace A062195.P114856099498709594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000580 (n + 7) * A062138 (A000217 n).toNat

end

end A062195.P114856099498709594

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

/-! ## A062195.P8735992345733441686

`A001725(n+5)/A000142(n)*A049388(n)`
-/

namespace A062195.P8735992345733441686
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001725 (n + 5) : ℚ) / (A000142 n : ℚ) * (A049388 n : ℚ)

end

end A062195.P8735992345733441686

/-!
# A062196: Triangle read by rows, T(n, k) = binomial(n, k)*binomial(n + 2, k).

The programs for A062196, the canonical program `A062196.P3092116863658250517` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062196 has offset 0).

The definition of A062196 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

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

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A062196

/-- `A007318(n)*A074909(A007401(n+1))` -/
def P3092116863658250517.Spec : Prop :=
  ∀ n, P3092116863658250517.a n = A062196 n

theorem P3092116863658250517.correct : P3092116863658250517.Spec := by
  intro n
  simp only [A062196]

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

/-! ## A062196.P6000725872257985018

`A007318(lt[2, A130321(n)])*A007318(n)`
-/

namespace A062196.P6000725872257985018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) * A007318 n

end

end A062196.P6000725872257985018

namespace A062196

/-- `A007318(lt[2, A130321(n)])*A007318(n)` -/
def P6000725872257985018.Spec : Prop :=
  ∀ n, P6000725872257985018.a n = A062196 n

end A062196

/-! ## A062196.P8140087529789446570

`A004526(A028326(n))*A209518(n)`
-/

namespace A062196.P8140087529789446570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A028326 n).toNat * A209518 n

end

end A062196.P8140087529789446570

namespace A062196

/-- `A004526(A028326(n))*A209518(n)` -/
def P8140087529789446570.Spec : Prop :=
  ∀ n, P8140087529789446570.a n = A062196 n

end A062196

/-!
# A062197: Row sums of signed triangle A062139 (generalized a=2 Laguerre).

The programs for A062197, the canonical program `A062197.P229244139164795461` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062197 has offset 0).

The definition of A062197 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A062197.P229244139164795461

`2*n*a(n-1)-(n-1)*(n+1)*a(n-2)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A062197

/-- `2*n*a(n-1)-(n-1)*(n+1)*a(n-2)` -/
def P229244139164795461.Spec : Prop :=
  ∀ n, P229244139164795461.a n = A062197 n

theorem P229244139164795461.correct : P229244139164795461.Spec := by
  intro n
  simp only [A062197]

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

/-! ## A062198.P3255651872847546958

`∑[A001358(n+1)]`
-/

namespace A062198.P3255651872847546958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062198.P3255651872847546958

namespace A062198

/-- `∑[A001358(n+1)]` -/
def P3255651872847546958.Spec : Prop :=
  ∀ n, P3255651872847546958.a n = A062198 (n + 1)

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

/-! ## A062198.P6893232533380013968

`∑[A176540(n+2)]`
-/

namespace A062198.P6893232533380013968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176540 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062198.P6893232533380013968

namespace A062198

/-- `∑[A176540(n+2)]` -/
def P6893232533380013968.Spec : Prop :=
  ∀ n, P6893232533380013968.a n = A062198 (n + 1)

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

The programs for A062199, there is no canonical definition to state claims against.
-/

/-! ## A062199.P17189199288028450226

`(n+1)!*C(n+5, 5)`
-/

namespace A062199.P17189199288028450226
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (n + 1) * Nat.choose (n + 5) 5

end

end A062199.P17189199288028450226

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

/-! ## A062199.P5688612264260593740

`A001725(n+6)-A001720(n+5)`
-/

namespace A062199.P5688612264260593740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001725 (n + 6) - A001720 (n + 5)

end

end A062199.P5688612264260593740

/-! ## A062199.P2450580941458791640

`(n+1)*(n+5)*a(n-1)/n` with `a(0)=1`
-/

namespace A062199.P2450580941458791640
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1 : ℚ) * ((n + 5 : ℚ) * a (n - 1)) / (n : ℚ)

end

end A062199.P2450580941458791640

/-! ## A062199.P13649404682717408795

`A154308(n)/A000583(n+1)`
-/

namespace A062199.P13649404682717408795
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A154308 n : ℚ) / (A000583 (n + 1) : ℚ)

end

end A062199.P13649404682717408795

