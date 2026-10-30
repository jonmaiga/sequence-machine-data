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
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C045
import Seq.B000.C046
import Seq.B000.C048
import Seq.B000.C049
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B004.C004
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A378600: Signed variant of Zumkeller deficiency: a(n) = signum(A033879(n)) * A103977(n).

The programs for A378600, there is no canonical definition to state claims against.
-/

/-! ## A378600.P2548216223495004825

`A103977(n+1)*A378645(A378660(n+1))`
-/

namespace A378600.P2548216223495004825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103977 (n + 1) * A378645 (A378660 (n + 1)).toNat

end

end A378600.P2548216223495004825

/-! ## A378600.P17502966419384357040

`A033879(n+1)%A000079(A103977(n+1))`
-/

namespace A378600.P17502966419384357040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033879 (n + 1)) (A000079 (A103977 (n + 1)).toNat)

end

end A378600.P17502966419384357040

/-! ## A378600.P14221690947492253079

`-A033880(n+1)%A000079(2*A378647(n+1)-A378648(n+1))`
-/

namespace A378600.P14221690947492253079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (-A033880 (n + 1)) (A000079 (2 * A378647 (n + 1) - A378648 (n + 1)).toNat)

end

end A378600.P14221690947492253079

/-! ## A378600.P6011355481496099987

`(2*(n+1)-∑{d}[n+1, #])%A057858(A134332(3*(n+1)))`
-/

namespace A378600.P6011355481496099987
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((2 * (n + 1) : ℤ) - ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ)) (A057858 (A134332 (3 * (n + 1))).toNat)

end

end A378600.P6011355481496099987

/-! ## A378600.P16574886218939158618

`A395638(A369732(2*n))+A033879(n+1)`
-/

namespace A378600.P16574886218939158618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395638 (A369732 (2 * n)).toNat + A033879 (n + 1)

end

end A378600.P16574886218939158618

/-!
# A378601: Lexicographically earliest infinite sequence such that a(i) = a(j) => A046523(i) = A046523(j) and A083206(i) = A083206(j), for all i, j >= 1.

The programs for A378601, there is no canonical definition to state claims against.
-/

/-! ## A378601.P4100265339902627401

`A378602(n+1)%Δ[A124546(n)]`
-/

namespace A378601.P4100265339902627401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124546 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A378602 (n + 1)) (f1 (n + 1) - f1 n)

end

end A378601.P4100265339902627401

/-! ## A378601.P3576408330156446562

`A378602(n+1)+A179527(A001595(n))`
-/

namespace A378601.P3576408330156446562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378602 (n + 1) + A179527 (A001595 n).toNat

end

end A378601.P3576408330156446562

/-! ## A378601.P9115779925885755726

`A378602(n+1)+A000007(A378971(n))`
-/

namespace A378601.P9115779925885755726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378602 (n + 1) + A000007 (A378971 n).toNat

end

end A378601.P9115779925885755726

/-! ## A378601.P7424556869741289472

`A378602(n+1)+A056626(A002496(n+1))`
-/

namespace A378601.P7424556869741289472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378602 (n + 1) + A056626 (A002496 (n + 1)).toNat

end

end A378601.P7424556869741289472

/-! ## A378601.P4010642280168565404

`A378602(n+1)+A046660(A162652(n+1))`
-/

namespace A378601.P4010642280168565404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378602 (n + 1) + A046660 (A162652 (n + 1)).toNat

end

end A378601.P4010642280168565404

/-!
# A378603: Lexicographically earliest infinite sequence such that a(i) = a(j) => A046523(i) = A046523(j) and A033630(i) = A033630(j), for all i, j >= 1.

The programs for A378603, there is no canonical definition to state claims against.
-/

/-! ## A378603.P13924124253971309971

`A067029(3^A378601(n+1))`
-/

namespace A378603.P13924124253971309971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067029 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A378601 (n + 1) : ℤ))).toNat

end

end A378603.P13924124253971309971

/-! ## A378603.P16402126792807412674

`A072411(3^A378601(n+1))`
-/

namespace A378603.P16402126792807412674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072411 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A378601 (n + 1) : ℤ))).toNat

end

end A378603.P16402126792807412674

/-! ## A378603.P12496321472349502628

`A268387(3^A378602(n+1))`
-/

namespace A378603.P12496321472349502628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268387 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A378602 (n + 1) : ℤ))).toNat

end

end A378603.P12496321472349502628

/-! ## A378603.P2315998677615451877

`A378601(n+1)%A097925(n+4)`
-/

namespace A378603.P2315998677615451877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A378601 (n + 1)) (A097925 (n + 4))

end

end A378603.P2315998677615451877

/-! ## A378603.P8800230312468964845

`A378601(n+1)%A334937(A264905(n))`
-/

namespace A378603.P8800230312468964845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A378601 (n + 1)) (A334937 (A264905 n).toNat)

end

end A378603.P8800230312468964845

/-!
# A378604: Lexicographically earliest infinite sequence such that a(i) = a(j) => A033630(i) = A033630(j) and A083206(i) = A083206(j), for all i, j >= 1.

The programs for A378604, there is no canonical definition to state claims against.
-/

/-! ## A378604.P10539669561072466435

`A010553(C(A230197(3*n+2), A065205(n+1)))`
-/

namespace A378604.P10539669561072466435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010553 (Nat.choose (A230197 (3 * n + 2)).toNat (A065205 (n + 1)).toNat)

end

end A378604.P10539669561072466435

/-! ## A378604.P14537785194877026547

`gcd(A005854(n+6), A126071(n+1))`
-/

namespace A378604.P14537785194877026547
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A005854 (n + 6)) (A126071 (n + 1))

end

end A378604.P14537785194877026547

/-! ## A378604.P9981412257759776421

`gcd(A000194(n), A119829(A364084(n+1)))`
-/

namespace A378604.P9981412257759776421
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000194 n) (A119829 (A364084 (n + 1)).toNat)

end

end A378604.P9981412257759776421

/-! ## A378604.P7446434459256287000

`A340827(n+1)^A000002(A124506(n+1))`
-/

namespace A378604.P7446434459256287000
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A340827 (n + 1) : ℚ) ^ (A000002 (A124506 (n + 1)).toNat : ℤ)

end

end A378604.P7446434459256287000

/-! ## A378604.P10557935956259297215

`A358854(A225880(n+1)%A319137(n+1))`
-/

namespace A378604.P10557935956259297215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358854 (Int.tmod (A225880 (n + 1)) (A319137 (n + 1))).toNat

end

end A378604.P10557935956259297215

/-!
# A378605: Lexicographically earliest infinite sequence such that a(i) = a(j) => A001065(i) = A001065(j) and A033630(i) = A033630(j), for all i, j >= 1.

The programs for A378605, there is no canonical definition to state claims against.
-/

/-! ## A378605.P16775127173893799578

`A358680(A124350(n))*A374479(n+1)`
-/

namespace A378605.P16775127173893799578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358680 (A124350 n).toNat * A374479 (n + 1)

end

end A378605.P16775127173893799578

/-! ## A378605.P6528950568591897967

`A374479(n+1)%A016969(A027187(n))`
-/

namespace A378605.P6528950568591897967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A374479 (n + 1)) (A016969 (A027187 n).toNat)

end

end A378605.P6528950568591897967

/-! ## A378605.P2021846161408468348

`A374479(n+1)+A186685(A374505(3*(n+1)))`
-/

namespace A378605.P2021846161408468348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374479 (n + 1) + A186685 (A374505 (3 * (n + 1))).toNat

end

end A378605.P2021846161408468348

/-! ## A378605.P1817638466415740596

`A374479(n+1)+A010054(A374505(3*n+4))`
-/

namespace A378605.P1817638466415740596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374479 (n + 1) + A010054 (A374505 (3 * n + 4)).toNat

end

end A378605.P1817638466415740596

/-! ## A378605.P15593646480085383850

`A374479(n+1)%A002764(n)`
-/

namespace A378605.P15593646480085383850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A374479 (n + 1)) (A002764 n)

end

end A378605.P15593646480085383850

/-!
# A378606: Dirichlet convolution of A046692 and A003961, where A046692 is the Dirichlet inverse of sigma, and A003961 is fully multiplicative with a(prime(i)) = prime(i+1).

The programs for A378606, the canonical program `A378606.P1824987261939307766` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A378606 has offset 1).

The definition of A378606 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A349387, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A378606.P17275606370107008755

`∑{d}[n+1, A046692(#)*A003961((n+1)/#)]`
-/

namespace A378606.P17275606370107008755
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A046692 d * A003961 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A378606.P17275606370107008755

namespace A378606

/-- `∑{d}[n+1, A046692(#)*A003961((n+1)/#)]` -/
def P17275606370107008755.Spec : Prop :=
  ∀ n, P17275606370107008755.a n = A378606 (n + 1)

end A378606

/-! ## A378606.P1824987261939307766

`∑{d}[n+1, A008683(#)*A349387((n+1)/#)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A378606

/-- `∑{d}[n+1, A008683(#)*A349387((n+1)/#)]` -/
def P1824987261939307766.Spec : Prop :=
  ∀ n, P1824987261939307766.a n = A378606 (n + 1)

theorem P1824987261939307766.correct : P1824987261939307766.Spec := by
  intro n
  simp only [A378606, Nat.add_sub_cancel]

end A378606

/-! ## A378606.P8976975364913085167

`∑{d}[n+1, A003961(#)*A046692((n+1)/#)]`
-/

namespace A378606.P8976975364913085167
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003961 d * A046692 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A378606.P8976975364913085167

namespace A378606

/-- `∑{d}[n+1, A003961(#)*A046692((n+1)/#)]` -/
def P8976975364913085167.Spec : Prop :=
  ∀ n, P8976975364913085167.a n = A378606 (n + 1)

end A378606

/-! ## A378606.P2320663569019161939

`∑{d}[n+1, A003972(#)*A055615((n+1)/#)]`
-/

namespace A378606.P2320663569019161939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003972 d * A055615 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A378606.P2320663569019161939

namespace A378606

/-- `∑{d}[n+1, A003972(#)*A055615((n+1)/#)]` -/
def P2320663569019161939.Spec : Prop :=
  ∀ n, P2320663569019161939.a n = A378606 (n + 1)

end A378606

/-! ## A378606.P6964395657301756015

`∑{d}[n+1, A323910(#)*A337544((n+1)/#)]`
-/

namespace A378606.P6964395657301756015
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A323910 d * A337544 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A378606.P6964395657301756015

namespace A378606

/-- `∑{d}[n+1, A323910(#)*A337544((n+1)/#)]` -/
def P6964395657301756015.Spec : Prop :=
  ∀ n, P6964395657301756015.a n = A378606 (n + 1)

end A378606

/-! ## A378606.P903748632465488148

`∑{d}[n+1, A327960(#)*A347136((n+1)/#)]`
-/

namespace A378606.P903748632465488148
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A327960 d * A347136 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A378606.P903748632465488148

namespace A378606

/-- `∑{d}[n+1, A327960(#)*A347136((n+1)/#)]` -/
def P903748632465488148.Spec : Prop :=
  ∀ n, P903748632465488148.a n = A378606 (n + 1)

end A378606

/-! ## A378606.P12504507914292098759

`∑{d}[n+1, A328722(#)*A347137((n+1)/#)]`
-/

namespace A378606.P12504507914292098759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A328722 d * A347137 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A378606.P12504507914292098759

namespace A378606

/-- `∑{d}[n+1, A328722(#)*A347137((n+1)/#)]` -/
def P12504507914292098759.Spec : Prop :=
  ∀ n, P12504507914292098759.a n = A378606 (n + 1)

end A378606

/-! ## A378606.P10594444577631981912

`∑{d}[n+1, A344587(#)*A378432((n+1)/#)]`
-/

namespace A378606.P10594444577631981912
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A344587 d * A378432 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A378606.P10594444577631981912

namespace A378606

/-- `∑{d}[n+1, A344587(#)*A378432((n+1)/#)]` -/
def P10594444577631981912.Spec : Prop :=
  ∀ n, P10594444577631981912.a n = A378606 (n + 1)

end A378606

/-! ## A378606.P16980315223601084324

`∑{d}[n+1, A347125(#)*A378228((n+1)/#)]`
-/

namespace A378606.P16980315223601084324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A347125 d * A378228 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A378606.P16980315223601084324

namespace A378606

/-- `∑{d}[n+1, A347125(#)*A378228((n+1)/#)]` -/
def P16980315223601084324.Spec : Prop :=
  ∀ n, P16980315223601084324.a n = A378606 (n + 1)

end A378606

/-!
# A378607: Dirichlet convolution of sigma and the Dirichlet inverse of A003961 (A346234).

The programs for A378607, the canonical program `A378607.P10144459662400142962` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A378607 has offset 1).

The definition of A378607 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A349388, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A378607.P10144459662400142962

`∑{d}[n+1, A349388(#)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A378607

/-- `∑{d}[n+1, A349388(#)]` -/
def P10144459662400142962.Spec : Prop :=
  ∀ n, P10144459662400142962.a n = A378607 (n + 1)

theorem P10144459662400142962.correct : P10144459662400142962.Spec := by
  intro n
  simp only [A378607, Nat.add_sub_cancel]

end A378607

/-! ## A378607.P899824081276852454

`∑{d}[n+1, A000203(#)*A346234((n+1)/#)]`
-/

namespace A378607.P899824081276852454
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000203 d * A346234 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A378607.P899824081276852454

namespace A378607

/-- `∑{d}[n+1, A000203(#)*A346234((n+1)/#)]` -/
def P899824081276852454.Spec : Prop :=
  ∀ n, P899824081276852454.a n = A378607 (n + 1)

end A378607

/-! ## A378607.P13290725468814541408

`∑{d}[n+1, #*A378220((n+1)/#)]`
-/

namespace A378607.P13290725468814541408
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A378220 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A378607.P13290725468814541408

namespace A378607

/-- `∑{d}[n+1, #*A378220((n+1)/#)]` -/
def P13290725468814541408.Spec : Prop :=
  ∀ n, P13290725468814541408.a n = A378607 (n + 1)

end A378607

/-! ## A378607.P15328862369233658248

`∑{d}[n+1, A035316(#)*A347238((n+1)/#)]`
-/

namespace A378607.P15328862369233658248
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A035316 d * A347238 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A378607.P15328862369233658248

namespace A378607

/-- `∑{d}[n+1, A035316(#)*A347238((n+1)/#)]` -/
def P15328862369233658248.Spec : Prop :=
  ∀ n, P15328862369233658248.a n = A378607 (n + 1)

end A378607

/-! ## A378607.P5890827336543268838

`∑{d}[n+1, A007429(#)*A378221((n+1)/#)]`
-/

namespace A378607.P5890827336543268838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007429 d * A378221 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A378607.P5890827336543268838

namespace A378607

/-- `∑{d}[n+1, A007429(#)*A378221((n+1)/#)]` -/
def P5890827336543268838.Spec : Prop :=
  ∀ n, P5890827336543268838.a n = A378607 (n + 1)

end A378607

/-! ## A378607.P6587842661874980846

`∑{d}[n+1, A296075(#)*A346246((n+1)/#)]`
-/

namespace A378607.P6587842661874980846
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A296075 d * A346246 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A378607.P6587842661874980846

namespace A378607

/-- `∑{d}[n+1, A296075(#)*A346246((n+1)/#)]` -/
def P6587842661874980846.Spec : Prop :=
  ∀ n, P6587842661874980846.a n = A378607 (n + 1)

end A378607

/-!
# A378608: Number of maximal chains in the poset of all compositions with weight <= n, ordered by A covers B iff A_i >= B_{i+k} for all i in B and some k >= 0.

The programs for A378608, there is no canonical definition to state claims against.
-/

/-! ## A378608.P13164871916367962862

`A378588(A179865(n+1))`
-/

namespace A378608.P13164871916367962862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378588 (A179865 (n + 1)).toNat

end

end A378608.P13164871916367962862

/-! ## A378608.P3223172979354444288

`A378588(C(n+1, A040000(n)))`
-/

namespace A378608.P3223172979354444288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378588 (Nat.choose (n + 1) (A040000 n).toNat)

end

end A378608.P3223172979354444288

/-! ## A378608.P3005179745406610988

`A378588(A129186(3*n)+∑[n])`
-/

namespace A378608.P3005179745406610988
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378588 (A129186 (3 * n) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A378608.P3005179745406610988

/-! ## A378608.P2783089733667544449

`A378588(A112314(n)+A000217(n))`
-/

namespace A378608.P2783089733667544449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378588 (A112314 n + A000217 n).toNat

end

end A378608.P2783089733667544449

/-! ## A378608.P14528074258181828087

`A378588(eq[A319501(n), A380872(n)])`
-/

namespace A378608.P14528074258181828087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319501 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380872 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378588 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A378608.P14528074258181828087

/-!
# A378609: Number of weak orderings of (i,j), 1 <= i,j <= n, for which there is a set X = {x_1<...<x_n} of n real numbers with (i,j) < (k,m) if and only if x_i + x_j < x_k + x_m.

The programs for A378609, there is no canonical definition to state claims against.
-/

/-! ## A378609.P15224180815216916020

`A340804(A003024(n))`
-/

namespace A378609.P15224180815216916020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340804 (A003024 n).toNat

end

end A378609.P15224180815216916020

/-!
# A378610: Expansion of (1/x) * Series_Reversion( x * (1 - x/(1 - x))^4 ).

The programs for A378610, there is no canonical definition to state claims against.
-/

/-! ## A378610.P14767174367462741101

`A056171(A007716(2*n)*A064052(3*n+1))`
-/

namespace A378610.P14767174367462741101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056171 (A007716 (2 * n) * A064052 (3 * n + 1)).toNat

end

end A378610.P14767174367462741101

/-!
# A378611: a(n) = Sum_{k=0..n} binomial(2*n+k-1,k) * binomial(n-1,n-k).

The programs for A378611, there is no canonical definition to state claims against.
-/

/-! ## A378611.P15051377349562832940

`A208660(A058331(n))`
-/

namespace A378611.P15051377349562832940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208660 (A058331 n).toNat

end

end A378611.P15051377349562832940

/-! ## A378611.P13019934051426604801

`A208752(A004277(n²))`
-/

namespace A378611.P13019934051426604801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208752 (A004277 (n ^ 2)).toNat

end

end A378611.P13019934051426604801

/-! ## A378611.P9356011093031047963

`A062110(A062728(n))`
-/

namespace A378611.P9356011093031047963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062110 (A062728 n).toNat

end

end A378611.P9356011093031047963

/-! ## A378611.P14654163101063955213

`A210554(A117625(n))`
-/

namespace A378611.P14654163101063955213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210554 (A117625 n).toNat

end

end A378611.P14654163101063955213

/-! ## A378611.P4220322442581543617

`A160232(A276819(n))`
-/

namespace A378611.P4220322442581543617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160232 (A276819 n).toNat

end

end A378611.P4220322442581543617

/-!
# A378612: a(n) = Sum_{k=0..n} binomial(3*n+k-1,k) * binomial(n-1,n-k).

The programs for A378612, there is no canonical definition to state claims against.
-/

/-! ## A378612.P7845766694379664002

`A062110(A139277(n))`
-/

namespace A378612.P7845766694379664002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062110 (A139277 n).toNat

end

end A378612.P7845766694379664002

/-! ## A378612.P16196149687823910557

`A062110(A139098(n)+5*n)`
-/

namespace A378612.P16196149687823910557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062110 (A139098 n + (5 * n : ℤ)).toNat

end

end A378612.P16196149687823910557

/-! ## A378612.P16448006927674176791

`A105306(A139098(n)+round(sqrt(n²+1)))`
-/

namespace A378612.P16448006927674176791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105306 (A139098 n + SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

end

end A378612.P16448006927674176791

/-! ## A378612.P7247573681223659430

`A210554(A383464(n))`
-/

namespace A378612.P7247573681223659430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210554 (A383464 n).toNat

end

end A378612.P7247573681223659430

/-! ## A378612.P2073409627363559117

`A160232(A058331(2*n)-n)`
-/

namespace A378612.P2073409627363559117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160232 (A058331 (2 * n) - (n : ℤ)).toNat

end

end A378612.P2073409627363559117

/-!
# A378613: a(n) = Sum_{k=0..n} binomial(4*n+k-1,k) * binomial(n-1,n-k).

The programs for A378613, there is no canonical definition to state claims against.
-/

/-! ## A378613.P9243137118147792055

`A160232(A383464(n)+A062728(n))`
-/

namespace A378613.P9243137118147792055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160232 (A383464 n + A062728 n).toNat

end

end A378613.P9243137118147792055

/-!
# A378615: Number of non prime powers <= prime(n).

The programs for A378615, the canonical program `A378615.P14217085017096801148` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A378615 has offset 1).

The definition of A378615 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A027883, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A378615.P14217085017096801148

`A000040(n+1)-A027883(n+1)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A378615

/-- `A000040(n+1)-A027883(n+1)` -/
def P14217085017096801148.Spec : Prop :=
  ∀ n, P14217085017096801148.a n = A378615 (n + 1)

theorem P14217085017096801148.correct : P14217085017096801148.Spec := by
  intro n
  simp only [A378615, Nat.add_sub_cancel]

end A378615

/-! ## A378615.P10846133080896541724

`A368748(n)+a(n-1)` with `a(0)=1`
-/

namespace A378615.P10846133080896541724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A368748 n + a (n - 1)

end

end A378615.P10846133080896541724

namespace A378615

/-- `A368748(n)+a(n-1)` -/
def P10846133080896541724.Spec : Prop :=
  ∀ n, P10846133080896541724.a n = A378615 (n + 1)

end A378615

/-! ## A378615.P2062436589284374860

`A008864(n+1)-A024620(n+1)`
-/

namespace A378615.P2062436589284374860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) - A024620 (n + 1)

end

end A378615.P2062436589284374860

namespace A378615

/-- `A008864(n+1)-A024620(n+1)` -/
def P2062436589284374860.Spec : Prop :=
  ∀ n, P2062436589284374860.a n = A378615 (n + 1)

theorem P2062436589284374860.correct : P2062436589284374860.Spec := by
  intro n
  simp only [A378615, Nat.add_sub_cancel, A378615.P2062436589284374860.a, A378615.P14217085017096801148.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A008864, A008864.P9177617808325052279.a, A024620, A024620.P8536977387799856667.a, A027883, A027883.P3043507636580154283.a, A065515, A065515.P15129427044826637405.a, A025528, A025528.P16801658268274976616.f1, A025528.P16801658268274976616.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A002321, A002321.P7713085837087473323.f2, A002321.P7713085837087473323.f1, A002321.P7713085837087473323.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A378615

/-! ## A378615.P3784884631018058338

`A000961(A024620(n+1))-A027883(n+1)`
-/

namespace A378615.P3784884631018058338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (A024620 (n + 1)).toNat - A027883 (n + 1)

end

end A378615.P3784884631018058338

namespace A378615

/-- `A000961(A024620(n+1))-A027883(n+1)` -/
def P3784884631018058338.Spec : Prop :=
  ∀ n, P3784884631018058338.a n = A378615 (n + 1)

end A378615

/-! ## A378615.P13506283426794821029

`A322841(A000040(n+1))+1`
-/

namespace A378615.P13506283426794821029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322841 (A000040 (n + 1)).toNat + 1

end

end A378615.P13506283426794821029

namespace A378615

/-- `A322841(A000040(n+1))+1` -/
def P13506283426794821029.Spec : Prop :=
  ∀ n, P13506283426794821029.a n = A378615 (n + 1)

end A378615

/-! ## A378615.P5784491511450638452

`A356068(Δ[A007504(n)])`
-/

namespace A378615.P5784491511450638452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356068 (f1 (n + 1) - f1 n).toNat

end

end A378615.P5784491511450638452

namespace A378615

/-- `A356068(Δ[A007504(n)])` -/
def P5784491511450638452.Spec : Prop :=
  ∀ n, P5784491511450638452.a n = A378615 (n + 1)

end A378615

/-! ## A378615.P2183208877359018733

`A070962(A000040(n+1))`
-/

namespace A378615.P2183208877359018733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070962 (A000040 (n + 1)).toNat

end

end A378615.P2183208877359018733

namespace A378615

/-- `A070962(A000040(n+1))` -/
def P2183208877359018733.Spec : Prop :=
  ∀ n, P2183208877359018733.a n = A378615 (n + 1)

end A378615

/-! ## A378615.P9521206768613633163

`A356068(A006005(n+1))`
-/

namespace A378615.P9521206768613633163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356068 (A006005 (n + 1)).toNat

end

end A378615.P9521206768613633163

namespace A378615

/-- `A356068(A006005(n+1))` -/
def P9521206768613633163.Spec : Prop :=
  ∀ n, P9521206768613633163.a n = A378615 (n + 1)

end A378615

/-! ## A378615.P18413270519995106413

`A356068(A006093(n+1))`
-/

namespace A378615.P18413270519995106413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356068 (A006093 (n + 1)).toNat

end

end A378615.P18413270519995106413

namespace A378615

/-- `A356068(A006093(n+1))` -/
def P18413270519995106413.Spec : Prop :=
  ∀ n, P18413270519995106413.a n = A378615 (n + 1)

end A378615

/-! ## A378615.P288025875829785800

`A356068(A039915(n+1))`
-/

namespace A378615.P288025875829785800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356068 (A039915 (n + 1)).toNat

end

end A378615.P288025875829785800

namespace A378615

/-- `A356068(A039915(n+1))` -/
def P288025875829785800.Spec : Prop :=
  ∀ n, P288025875829785800.a n = A378615 (n + 1)

end A378615

/-! ## A378615.P3688364896013201438

`A356068(A156037(n+1))`
-/

namespace A378615.P3688364896013201438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356068 (A156037 (n + 1)).toNat

end

end A378615.P3688364896013201438

namespace A378615

/-- `A356068(A156037(n+1))` -/
def P3688364896013201438.Spec : Prop :=
  ∀ n, P3688364896013201438.a n = A378615 (n + 1)

end A378615

/-! ## A378615.P11486923903244002316

`A356068(A161847(n+1))`
-/

namespace A378615.P11486923903244002316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356068 (A161847 (n + 1)).toNat

end

end A378615.P11486923903244002316

namespace A378615

/-- `A356068(A161847(n+1))` -/
def P11486923903244002316.Spec : Prop :=
  ∀ n, P11486923903244002316.a n = A378615 (n + 1)

end A378615

/-! ## A378615.P6878162556326850770

`A070962(A008578(n+2))`
-/

namespace A378615.P6878162556326850770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070962 (A008578 (n + 2)).toNat

end

end A378615.P6878162556326850770

namespace A378615

/-- `A070962(A008578(n+2))` -/
def P6878162556326850770.Spec : Prop :=
  ∀ n, P6878162556326850770.a n = A378615 (n + 1)

end A378615

/-! ## A378615.P17427617707753194069

`A070962(A175787(n+2))`
-/

namespace A378615.P17427617707753194069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070962 (A175787 (n + 2)).toNat

end

end A378615.P17427617707753194069

namespace A378615

/-- `A070962(A175787(n+2))` -/
def P17427617707753194069.Spec : Prop :=
  ∀ n, P17427617707753194069.a n = A378615 (n + 1)

end A378615

/-! ## A378615.P1904587785331304946

`A356068(A075643(n+2))`
-/

namespace A378615.P1904587785331304946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356068 (A075643 (n + 2)).toNat

end

end A378615.P1904587785331304946

namespace A378615

/-- `A356068(A075643(n+2))` -/
def P1904587785331304946.Spec : Prop :=
  ∀ n, P1904587785331304946.a n = A378615 (n + 1)

end A378615

/-! ## A378615.P16132298359204984142

`A356068(A171525(n+2))`
-/

namespace A378615.P16132298359204984142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356068 (A171525 (n + 2)).toNat

end

end A378615.P16132298359204984142

namespace A378615

/-- `A356068(A171525(n+2))` -/
def P16132298359204984142.Spec : Prop :=
  ∀ n, P16132298359204984142.a n = A378615 (n + 1)

end A378615

/-! ## A378615.P16511991106484141964

`A356068(A000961(A024620(n+1)))`
-/

namespace A378615.P16511991106484141964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356068 (A000961 (A024620 (n + 1)).toNat).toNat

end

end A378615.P16511991106484141964

namespace A378615

/-- `A356068(A000961(A024620(n+1)))` -/
def P16511991106484141964.Spec : Prop :=
  ∀ n, P16511991106484141964.a n = A378615 (n + 1)

end A378615

/-! ## A378615.P10373294680773027404

`A356068(A247665(A248387(n+1)))`
-/

namespace A378615.P10373294680773027404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356068 (A247665 (A248387 (n + 1)).toNat).toNat

end

end A378615.P10373294680773027404

namespace A378615

/-- `A356068(A247665(A248387(n+1)))` -/
def P10373294680773027404.Spec : Prop :=
  ∀ n, P10373294680773027404.a n = A378615 (n + 1)

end A378615

/-! ## A378615.P13505604067884920746

`A085972(A085818(A085971(n+1)))-n`
-/

namespace A378615.P13505604067884920746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085972 (A085818 (A085971 (n + 1)).toNat).toNat - (n : ℤ)

end

end A378615.P13505604067884920746

namespace A378615

/-- `A085972(A085818(A085971(n+1)))-n` -/
def P13505604067884920746.Spec : Prop :=
  ∀ n, P13505604067884920746.a n = A378615 (n + 1)

end A378615

/-! ## A378615.P13092113043468846596

`A356068(A378086(n+1)+A071403(n+1))`
-/

namespace A378615.P13092113043468846596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356068 (A378086 (n + 1) + A071403 (n + 1)).toNat

end

end A378615.P13092113043468846596

namespace A378615

/-- `A356068(A378086(n+1)+A071403(n+1))` -/
def P13092113043468846596.Spec : Prop :=
  ∀ n, P13092113043468846596.a n = A378615 (n + 1)

end A378615

/-!
# A378616: Greatest non prime power <= prime(n).

The programs for A378616, there is no canonical definition to state claims against.
-/

/-! ## A378616.P10975549505634205181

`A361102(A378615(n+1))`
-/

namespace A378616.P10975549505634205181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361102 (A378615 (n + 1)).toNat

end

end A378616.P10975549505634205181

/-! ## A378616.P15450117339904276894

`∏{p}[A000040(n+1), A361102(A356068(#))]`
-/

namespace A378616.P15450117339904276894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A361102 (A356068 p).toNat

end

end A378616.P15450117339904276894

/-! ## A378616.P1126939109998761964

`A361102(Δ[A007504(n)]-A027883(n+1))`
-/

namespace A378616.P1126939109998761964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361102 (f1 (n + 1) - f1 n - A027883 (n + 1)).toNat

end

end A378616.P1126939109998761964

/-! ## A378616.P18099012866436371401

`A361102(A014688(n+1)-(n+1)-A027883(n+1))`
-/

namespace A378616.P18099012866436371401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361102 (A014688 (n + 1) - (n + 1 : ℤ) - A027883 (n + 1)).toNat

end

end A378616.P18099012866436371401

/-! ## A378616.P1875686565909721918

`A000040(n+1)-A070084(A051424(3*n+4))`
-/

namespace A378616.P1875686565909721918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A070084 (A051424 (3 * n + 4)).toNat

end

end A378616.P1875686565909721918

/-!
# A378617: First differences of A378249 (next perfect power after prime(n)).

The programs for A378617, there is no canonical definition to state claims against.
-/

/-! ## A378617.P4133042117244568162

`Δ[A378249(n+1)]`
-/

namespace A378617.P4133042117244568162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378249 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A378617.P4133042117244568162

/-! ## A378617.P2193619081730612535

`A378249(n+2)-A378249(n+1)`
-/

namespace A378617.P2193619081730612535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378249 (n + 2) - A378249 (n + 1)

end

end A378617.P2193619081730612535

/-! ## A378617.P8819138443995328615

`Δ[A074984(A000040(n+1))+A000040(n+1)]`
-/

namespace A378617.P8819138443995328615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074984 (A000040 (n + 1)).toNat + A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A378617.P8819138443995328615

/-! ## A378617.P15222156232993416545

`Δ[A377468(A378035(n+1)+1)]`
-/

namespace A378617.P15222156232993416545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377468 (A378035 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A378617.P15222156232993416545

/-! ## A378617.P11334710398341252528

`Δ[A377468(Δ[A007504(n)])]`
-/

namespace A378617.P11334710398341252528
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377468 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A378617.P11334710398341252528

/-!
# A378618: Sum of nonsquarefree numbers between prime(n) and prime(n+1).

The programs for A378618, there is no canonical definition to state claims against.
-/

/-! ## A378618.P2402850286092770916

`Δ[A294246(A000040(n+1))]`
-/

namespace A378618.P2402850286092770916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294246 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A378618.P2402850286092770916

/-! ## A378618.P468346742883646998

`Δ[A294246(A006005(n+1))]`
-/

namespace A378618.P468346742883646998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294246 (A006005 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A378618.P468346742883646998

/-! ## A378618.P10688566405918314688

`Δ[A294246(A006093(n+1))]`
-/

namespace A378618.P10688566405918314688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294246 (A006093 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A378618.P10688566405918314688

/-! ## A378618.P12866071086662732667

`Δ[A294246(A378032(n+1))]`
-/

namespace A378618.P12866071086662732667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294246 (A378032 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A378618.P12866071086662732667

/-! ## A378618.P5160378797895503373

`A371201(n+1)-A373197(n+1)`
-/

namespace A378618.P5160378797895503373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371201 (n + 1) - A373197 (n + 1)

end

end A378618.P5160378797895503373

/-!
# A378619: Distance between n and the greatest squarefree number <= n.

The programs for A378619, the canonical program `A378619.P2385869951809444344` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A378619 has offset 1).

The definition of A378619 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A378619.P2385869951809444344

`n+1-A070321(n+1)`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A378619

/-- `n+1-A070321(n+1)` -/
def P2385869951809444344.Spec : Prop :=
  ∀ n, P2385869951809444344.a n = A378619 (n + 1)

theorem P2385869951809444344.correct : P2385869951809444344.Spec := by
  intro n
  simp only [A378619, Nat.add_sub_cancel]

end A378619

/-! ## A378619.P11539688597753958083

`1-A070321(n+1)+n`
-/

namespace A378619.P11539688597753958083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A070321 (n + 1) + (n : ℤ)

end

end A378619.P11539688597753958083

namespace A378619

/-- `1-A070321(n+1)+n` -/
def P11539688597753958083.Spec : Prop :=
  ∀ n, P11539688597753958083.a n = A378619 (n + 1)

theorem P11539688597753958083.correct : P11539688597753958083.Spec := by
  intro n
  simp only [A378619, Nat.add_sub_cancel, A378619.P11539688597753958083.a, A378619.P2385869951809444344.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A378619

/-! ## A378619.P2403624010162556030

`n-A023443(A070321(n+1))`
-/

namespace A378619.P2403624010162556030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A023443 (A070321 (n + 1)).toNat

end

end A378619.P2403624010162556030

namespace A378619

/-- `n-A023443(A070321(n+1))` -/
def P2403624010162556030.Spec : Prop :=
  ∀ n, P2403624010162556030.a n = A378619 (n + 1)

end A378619

/-! ## A378619.P5351692957457677193

`A076260(n+1)-A081221(n+1)`
-/

namespace A378619.P5351692957457677193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076260 (n + 1) - A081221 (n + 1)

end

end A378619.P5351692957457677193

namespace A378619

/-- `A076260(n+1)-A081221(n+1)` -/
def P5351692957457677193.Spec : Prop :=
  ∀ n, P5351692957457677193.a n = A378619 (n + 1)

theorem P5351692957457677193.correct : P5351692957457677193.Spec := by
  intro n
  simp only [A378619, Nat.add_sub_cancel, A378619.P5351692957457677193.a, A378619.P2385869951809444344.a, A070321, A070321.P7130479332265893626.a, A076260, A076260.P4040486207589010762.a, A081221, A081221.P6243088705239368053.a, A005117, A005117.P8954503998193661401.f1, A005117.P8954503998193661401.a, A013928, A013928.P10879382919085182663.f1, A013928.P10879382919085182663.a, A067535, A067535.P4022981712752583231.f2, A067535.P4022981712752583231.f1, A067535.P4022981712752583231.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A378619

/-! ## A378619.P8539529194849470770

`n+1-A005117(A013928(n+2))`
-/

namespace A378619.P8539529194849470770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A005117 (A013928 (n + 2)).toNat

end

end A378619.P8539529194849470770

namespace A378619

/-- `n+1-A005117(A013928(n+2))` -/
def P8539529194849470770.Spec : Prop :=
  ∀ n, P8539529194849470770.a n = A378619 (n + 1)

end A378619

/-! ## A378619.P7734681830813195826

`A000027(n+1)%A070321(n+1)`
-/

namespace A378619.P7734681830813195826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000027 (n + 1)) (A070321 (n + 1))

end

end A378619.P7734681830813195826

namespace A378619

/-- `A000027(n+1)%A070321(n+1)` -/
def P7734681830813195826.Spec : Prop :=
  ∀ n, P7734681830813195826.a n = A378619 (n + 1)

end A378619

/-! ## A378619.P6832054295828534776

`A061669(n+1)%A070321(n+1)`
-/

namespace A378619.P6832054295828534776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061669 (n + 1)) (A070321 (n + 1))

end

end A378619.P6832054295828534776

namespace A378619

/-- `A061669(n+1)%A070321(n+1)` -/
def P6832054295828534776.Spec : Prop :=
  ∀ n, P6832054295828534776.a n = A378619 (n + 1)

end A378619

/-! ## A378619.P7843309098251040382

`A066560(n+1)%A070321(n+1)`
-/

namespace A378619.P7843309098251040382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A066560 (n + 1)) (A070321 (n + 1))

end

end A378619.P7843309098251040382

namespace A378619

/-- `A066560(n+1)%A070321(n+1)` -/
def P7843309098251040382.Spec : Prop :=
  ∀ n, P7843309098251040382.a n = A378619 (n + 1)

end A378619

/-! ## A378619.P9342583105395243040

`A087156(n+1)%A070321(n+1)`
-/

namespace A378619.P9342583105395243040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A087156 (n + 1)) (A070321 (n + 1))

end

end A378619.P9342583105395243040

namespace A378619

/-- `A087156(n+1)%A070321(n+1)` -/
def P9342583105395243040.Spec : Prop :=
  ∀ n, P9342583105395243040.a n = A378619 (n + 1)

end A378619

/-! ## A378619.P13396446908586414311

`A095208(n+1)%A070321(n+1)`
-/

namespace A378619.P13396446908586414311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A095208 (n + 1)) (A070321 (n + 1))

end

end A378619.P13396446908586414311

namespace A378619

/-- `A095208(n+1)%A070321(n+1)` -/
def P13396446908586414311.Spec : Prop :=
  ∀ n, P13396446908586414311.a n = A378619 (n + 1)

end A378619

/-! ## A378619.P10326721687771990799

`A143545(n+1)%A070321(n+1)`
-/

namespace A378619.P10326721687771990799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A143545 (n + 1)) (A070321 (n + 1))

end

end A378619.P10326721687771990799

namespace A378619

/-- `A143545(n+1)%A070321(n+1)` -/
def P10326721687771990799.Spec : Prop :=
  ∀ n, P10326721687771990799.a n = A378619 (n + 1)

end A378619

/-! ## A378619.P16021518480188205669

`A178915(n+1)%A070321(n+1)`
-/

namespace A378619.P16021518480188205669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A178915 (n + 1)) (A070321 (n + 1))

end

end A378619.P16021518480188205669

namespace A378619

/-- `A178915(n+1)%A070321(n+1)` -/
def P16021518480188205669.Spec : Prop :=
  ∀ n, P16021518480188205669.a n = A378619 (n + 1)

end A378619

/-! ## A378619.P17902739380687967152

`A081221(A081221(n+1)+A070321(n+1))`
-/

namespace A378619.P17902739380687967152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081221 (A081221 (n + 1) + A070321 (n + 1)).toNat

end

end A378619.P17902739380687967152

namespace A378619

/-- `A081221(A081221(n+1)+A070321(n+1))` -/
def P17902739380687967152.Spec : Prop :=
  ∀ n, P17902739380687967152.a n = A378619 (n + 1)

end A378619

/-! ## A378619.P18404657016328324905

`A088613(n+1)%A070321(n+1)`
-/

namespace A378619.P18404657016328324905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A088613 (n + 1)) (A070321 (n + 1))

end

end A378619.P18404657016328324905

namespace A378619

/-- `A088613(n+1)%A070321(n+1)` -/
def P18404657016328324905.Spec : Prop :=
  ∀ n, P18404657016328324905.a n = A378619 (n + 1)

end A378619

/-! ## A378619.P16411592789876673165

`val(A344432(n+1), 2)`
-/

namespace A378619.P16411592789876673165
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A344432 (n + 1)).toNat 2

end

end A378619.P16411592789876673165

namespace A378619

/-- `val(A344432(n+1), 2)` -/
def P16411592789876673165.Spec : Prop :=
  ∀ n, (P16411592789876673165.a n : ℤ) = A378619 (n + 1)

end A378619

/-! ## A378619.P4434606304133959378

`val(A074988(n+1), 2)`
-/

namespace A378619.P4434606304133959378
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A074988 (n + 1)).toNat 2

end

end A378619.P4434606304133959378

namespace A378619

/-- `val(A074988(n+1), 2)` -/
def P4434606304133959378.Spec : Prop :=
  ∀ n, (P4434606304133959378.a n : ℤ) = A378619 (n + 1)

end A378619

/-! ## A378619.P17347738449595169824

`A124260(n+1)%A070321(n+1)`
-/

namespace A378619.P17347738449595169824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A124260 (n + 1)) (A070321 (n + 1))

end

end A378619.P17347738449595169824

namespace A378619

/-- `A124260(n+1)%A070321(n+1)` -/
def P17347738449595169824.Spec : Prop :=
  ∀ n, P17347738449595169824.a n = A378619 (n + 1)

end A378619

/-! ## A378619.P10311580816381621662

`A060401(n+1)%A070321(n+1)`
-/

namespace A378619.P10311580816381621662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A060401 (n + 1)) (A070321 (n + 1))

end

end A378619.P10311580816381621662

namespace A378619

/-- `A060401(n+1)%A070321(n+1)` -/
def P10311580816381621662.Spec : Prop :=
  ∀ n, P10311580816381621662.a n = A378619 (n + 1)

end A378619

/-! ## A378619.P1944734314156429785

`val(A292524(n+1), 3)`
-/

namespace A378619.P1944734314156429785
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A292524 (n + 1)).toNat 3

end

end A378619.P1944734314156429785

namespace A378619

/-- `val(A292524(n+1), 3)` -/
def P1944734314156429785.Spec : Prop :=
  ∀ n, (P1944734314156429785.a n : ℤ) = A378619 (n + 1)

end A378619

/-!
# A378620: Lesser prime index of twin primes with nonsquarefree mean.

The programs for A378620, the canonical program `A378620.P6069083703779704707` is in `Seq.B004.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A378620 has offset 1).

The definition of A378620 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A378620.P13483291448029261365

`∩[A029707(n+1), A068360(n+1)]`
-/

namespace A378620.P13483291448029261365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029707 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068360 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378620.P13483291448029261365

namespace A378620

/-- `∩[A029707(n+1), A068360(n+1)]` -/
def P13483291448029261365.Spec : Prop :=
  ∀ n, (P13483291448029261365.a n : ℤ) = A378620 (n + 1)

end A378620

/-! ## A378620.P6069083703779704707

`∩[A068360(n+1), A270192(n+1)]`

The canonical program, it is in `Seq.B004.C004`.
-/

namespace A378620

/-- `∩[A068360(n+1), A270192(n+1)]` -/
def P6069083703779704707.Spec : Prop :=
  ∀ n, (P6069083703779704707.a n : ℤ) = A378620 (n + 1)

theorem P6069083703779704707.correct : P6069083703779704707.Spec := by
  intro n
  simp only [A378620, Nat.add_sub_cancel]

end A378620

/-! ## A378620.P9483365113233315368

`filter[A068360(n+1), A100821(#)]`
-/

namespace A378620.P9483365113233315368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068360 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A100821 (f1 j).toNat = 1) n)

end

end A378620.P9483365113233315368

namespace A378620

/-- `filter[A068360(n+1), A100821(#)]` -/
def P9483365113233315368.Spec : Prop :=
  ∀ n, P9483365113233315368.a n = A378620 (n + 1)

end A378620

/-! ## A378620.P4919446948941968218

`eq[A112925(n+1), A334971(n+1)]`
-/

namespace A378620.P4919446948941968218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112925 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334971 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A378620.P4919446948941968218

namespace A378620

/-- `eq[A112925(n+1), A334971(n+1)]` -/
def P4919446948941968218.Spec : Prop :=
  ∀ n, (P4919446948941968218.a n : ℤ) = A378620 (n + 1)

end A378620

/-! ## A378620.P16781617607641041677

`A000720(A061368(n+1))`
-/

namespace A378620.P16781617607641041677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A061368 (n + 1)).toNat

end

end A378620.P16781617607641041677

namespace A378620

/-- `A000720(A061368(n+1))` -/
def P16781617607641041677.Spec : Prop :=
  ∀ n, P16781617607641041677.a n = A378620 (n + 1)

end A378620

/-! ## A378620.P8976363957633482927

`eq[A112925(n+1), A263769(n+1)]`
-/

namespace A378620.P8976363957633482927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112925 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263769 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A378620.P8976363957633482927

namespace A378620

/-- `eq[A112925(n+1), A263769(n+1)]` -/
def P8976363957633482927.Spec : Prop :=
  ∀ n, (P8976363957633482927.a n : ℤ) = A378620 (n + 1)

end A378620

/-! ## A378620.P15865911748999383959

`A061395(2*A061368(n+1))`
-/

namespace A378620.P15865911748999383959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * A061368 (n + 1)).toNat

end

end A378620.P15865911748999383959

namespace A378620

/-- `A061395(2*A061368(n+1))` -/
def P15865911748999383959.Spec : Prop :=
  ∀ n, P15865911748999383959.a n = A378620 (n + 1)

end A378620

/-! ## A378620.P9466001396554359831

`A061395(lcm(2, A061368(n+1)))`
-/

namespace A378620.P9466001396554359831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.lcm 2 (A061368 (n + 1)))

end

end A378620.P9466001396554359831

namespace A378620

/-- `A061395(lcm(2, A061368(n+1)))` -/
def P9466001396554359831.Spec : Prop :=
  ∀ n, P9466001396554359831.a n = A378620 (n + 1)

end A378620

/-! ## A378620.P12522714040029836487

`A344616(or(1, A061368(n+1)))`
-/

namespace A378620.P12522714040029836487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344616 (Int.lor 1 (A061368 (n + 1))).toNat

end

end A378620.P12522714040029836487

namespace A378620

/-- `A344616(or(1, A061368(n+1)))` -/
def P12522714040029836487.Spec : Prop :=
  ∀ n, P12522714040029836487.a n = A378620 (n + 1)

end A378620

/-! ## A378620.P2793398875315928377

`eq[A112925(n+1), A370635(n+1)]`
-/

namespace A378620.P2793398875315928377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112925 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370635 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A378620.P2793398875315928377

namespace A378620

/-- `eq[A112925(n+1), A370635(n+1)]` -/
def P2793398875315928377.Spec : Prop :=
  ∀ n, (P2793398875315928377.a n : ℤ) = A378620 (n + 1)

end A378620

/-! ## A378620.P275186727403195959

`A257541(A061368(n+1)+2)`
-/

namespace A378620.P275186727403195959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257541 (A061368 (n + 1) + 2).toNat

end

end A378620.P275186727403195959

namespace A378620

/-- `A257541(A061368(n+1)+2)` -/
def P275186727403195959.Spec : Prop :=
  ∀ n, P275186727403195959.a n = A378620 (n + 1)

end A378620

/-! ## A378620.P4177635983673323105

`A056239(or(1, A061368(n+1)))`
-/

namespace A378620.P4177635983673323105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (Int.lor 1 (A061368 (n + 1))).toNat

end

end A378620.P4177635983673323105

namespace A378620

/-- `A056239(or(1, A061368(n+1)))` -/
def P4177635983673323105.Spec : Prop :=
  ∀ n, P4177635983673323105.a n = A378620 (n + 1)

end A378620

/-!
# A378624: Numbers whose binary representation interpreted as being base-3 is divisible by 5.

The programs for A378624, the canonical program `A378624.P4838368887206382302` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A378624 has offset 1).

The definition of A378624 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A378624.P10106257053481986452

`eq[1, A079998(A057889(n))]`
-/

namespace A378624.P10106257053481986452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079998 (A057889 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A378624.P10106257053481986452

namespace A378624

/-- `eq[1, A079998(A057889(n))]` -/
def P10106257053481986452.Spec : Prop :=
  ∀ n, (P10106257053481986452.a n : ℤ) = A378624 (n + 1)

end A378624

/-! ## A378624.P15653324434019156641

`lt[A030101(n)%5, 1]`
-/

namespace A378624.P15653324434019156641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030101 n) 5

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A378624.P15653324434019156641

namespace A378624

/-- `lt[A030101(n)%5, 1]` -/
def P15653324434019156641.Spec : Prop :=
  ∀ n, (P15653324434019156641.a n : ℤ) = A378624 (n + 1)

end A378624

/-! ## A378624.P5542055653128021493

`lt[A097259(n)%10, 1]`
-/

namespace A378624.P5542055653128021493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A097259 n) 10

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A378624.P5542055653128021493

namespace A378624

/-- `lt[A097259(n)%10, 1]` -/
def P5542055653128021493.Spec : Prop :=
  ∀ n, (P5542055653128021493.a n : ℤ) = A378624 (n + 1)

end A378624

/-! ## A378624.P4838368887206382302

`lt[(2*(A003278(n+1)-1)+1)%10, 2]`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A378624

/-- `lt[(2*(A003278(n+1)-1)+1)%10, 2]` -/
def P4838368887206382302.Spec : Prop :=
  ∀ n, (P4838368887206382302.a n : ℤ) = A378624 (n + 1)

theorem P4838368887206382302.correct : P4838368887206382302.Spec := by
  intro n
  simp only [A378624, Nat.add_sub_cancel]

end A378624

/-! ## A378624.P1141452712707641740

`eq[0, A100047(A030101(n))]`
-/

namespace A378624.P1141452712707641740
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100047 (A030101 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A378624.P1141452712707641740

namespace A378624

/-- `eq[0, A100047(A030101(n))]` -/
def P1141452712707641740.Spec : Prop :=
  ∀ n, (P1141452712707641740.a n : ℤ) = A378624 (n + 1)

end A378624

/-! ## A378624.P1319315086044596838

`eq[1, A269266(A030101(2*n))]`
-/

namespace A378624.P1319315086044596838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269266 (A030101 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A378624.P1319315086044596838

namespace A378624

/-- `eq[1, A269266(A030101(2*n))]` -/
def P1319315086044596838.Spec : Prop :=
  ∀ n, (P1319315086044596838.a n : ℤ) = A378624 (n + 1)

end A378624

/-! ## A378624.P13204838836615195707

`lt[A011558(A005836(n+1)), 1]`
-/

namespace A378624.P13204838836615195707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011558 (A005836 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A378624.P13204838836615195707

namespace A378624

/-- `lt[A011558(A005836(n+1)), 1]` -/
def P13204838836615195707.Spec : Prop :=
  ∀ n, (P13204838836615195707.a n : ℤ) = A378624 (n + 1)

end A378624

/-! ## A378624.P16934411282889601508

`eq[5, A111863(A003278(n+1))]`
-/

namespace A378624.P16934411282889601508
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111863 (A003278 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A378624.P16934411282889601508

namespace A378624

/-- `eq[5, A111863(A003278(n+1))]` -/
def P16934411282889601508.Spec : Prop :=
  ∀ n, (P16934411282889601508.a n : ℤ) = A378624 (n + 1)

end A378624

/-! ## A378624.P8574314065762971437

`lt[A091703(A005836(n+1)), A028310(n)]`
-/

namespace A378624.P8574314065762971437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091703 (A005836 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A378624.P8574314065762971437

namespace A378624

/-- `lt[A091703(A005836(n+1)), A028310(n)]` -/
def P8574314065762971437.Spec : Prop :=
  ∀ n, (P8574314065762971437.a n : ℤ) = A378624 (n + 1)

end A378624

/-! ## A378624.P8860731034441943835

`lt[A091703(A005836(n+1)), A161826(n+1)]`
-/

namespace A378624.P8860731034441943835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091703 (A005836 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161826 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A378624.P8860731034441943835

namespace A378624

/-- `lt[A091703(A005836(n+1)), A161826(n+1)]` -/
def P8860731034441943835.Spec : Prop :=
  ∀ n, (P8860731034441943835.a n : ℤ) = A378624 (n + 1)

end A378624

/-! ## A378624.P8584232108104817454

`lt[A091703(A005836(n+1)), A001285(3*n+2)]`
-/

namespace A378624.P8584232108104817454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091703 (A005836 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001285 (3 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A378624.P8584232108104817454

namespace A378624

/-- `lt[A091703(A005836(n+1)), A001285(3*n+2)]` -/
def P8584232108104817454.Spec : Prop :=
  ∀ n, (P8584232108104817454.a n : ℤ) = A378624 (n + 1)

end A378624

/-!
# A378625: The first subsequence starting at the first digit after the decimal point in the decimal expansion of Pi that is divisible by n.

The programs for A378625, there is no canonical definition to state claims against.
-/

/-! ## A378625.P6572059526559267500

`(n+1)*A088143(n+1)`
-/

namespace A378625.P6572059526559267500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A088143 (n + 1)

end

end A378625.P6572059526559267500

/-!
# A378629: Powerful numbers k such that both k-1 and k+1 are in A126706.

The programs for A378629, there is no canonical definition to state claims against.
-/

/-! ## A378629.P6978965401991383065

`∩[A001694(n+1), A235578(n+1)]`
-/

namespace A378629.P6978965401991383065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235578 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378629.P6978965401991383065

/-! ## A378629.P7788487406626531579

`∩[A070258(n+1)+1, A224866(n+1)-1]`
-/

namespace A378629.P7788487406626531579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070258 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224866 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378629.P7788487406626531579

/-! ## A378629.P12341709312076548244

`∩[A001694(n+1), A281192(n+1)]`
-/

namespace A378629.P12341709312076548244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281192 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378629.P12341709312076548244

/-! ## A378629.P3153607901308979130

`filter[A235578(n+1), A075802(#)]`
-/

namespace A378629.P3153607901308979130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235578 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A075802 (f1 j).toNat = 1) n)

end

end A378629.P3153607901308979130

/-! ## A378629.P16962021030879666769

`filter[A235578(n+1), A112526(#)]`
-/

namespace A378629.P16962021030879666769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235578 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A112526 (f1 j).toNat = 1) n)

end

end A378629.P16962021030879666769

/-!
# A378630: Numbers that set records in A376567.

The programs for A378630, there is no canonical definition to state claims against.
-/

/-! ## A378630.P6698850836857109059

`A003160(A378632(n+1))`
-/

namespace A378630.P6698850836857109059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003160 (A378632 (n + 1)).toNat

end

end A378630.P6698850836857109059

/-! ## A378630.P7038861889422513779

`∩[A233264(n+1), A380146(n+1)]`
-/

namespace A378630.P7038861889422513779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233264 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380146 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378630.P7038861889422513779

/-! ## A378630.P4326657179573600906

`filter[A380146(n+1), A071036(#)]`
-/

namespace A378630.P4326657179573600906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380146 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A071036 (f1 j).toNat = 1) n)

end

end A378630.P4326657179573600906

/-! ## A378630.P10855561720840052635

`filter[A380146(n+1), A071038(#)]`
-/

namespace A378630.P10855561720840052635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380146 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A071038 (f1 j).toNat = 1) n)

end

end A378630.P10855561720840052635

/-! ## A378630.P3426640536063007537

`∩[A004744(n+1), A265719(n+1)]`
-/

namespace A378630.P3426640536063007537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004744 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265719 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378630.P3426640536063007537

/-!
# A378631: Numbers that set records in A377071.

The programs for A378631, there is no canonical definition to state claims against.
-/

/-! ## A378631.P10256806266068878602

`gcd(A056594(A378139(n+1)), A378133(n+2))`
-/

namespace A378631.P10256806266068878602
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A056594 (A378139 (n + 1)).toNat) (A378133 (n + 2))

end

end A378631.P10256806266068878602

/-! ## A378631.P14234624751804914020

`∩[A004760(n+1), A378133(n)]`
-/

namespace A378631.P14234624751804914020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004760 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378133 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378631.P14234624751804914020

/-! ## A378631.P122540043053988472

`∩[A060702(n+1), A378133(n)]`
-/

namespace A378631.P122540043053988472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060702 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378133 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378631.P122540043053988472

/-! ## A378631.P15558452284874261625

`∩[A079905(n+1), A378133(n)]`
-/

namespace A378631.P15558452284874261625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079905 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378133 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378631.P15558452284874261625

/-! ## A378631.P5141279576962834966

`∩[A296484(n), A378133(n)]`
-/

namespace A378631.P5141279576962834966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296484 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378133 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378631.P5141279576962834966

/-!
# A378632: Numbers that set records in A378181.

The programs for A378632, there is no canonical definition to state claims against.
-/

/-! ## A378632.P18042675107603186020

`∩[A168267(n+1), A350864(n+1)]`
-/

namespace A378632.P18042675107603186020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168267 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350864 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378632.P18042675107603186020

/-! ## A378632.P13874382101071598449

`∩[A250270(n+1), A350864(n+1)]`
-/

namespace A378632.P13874382101071598449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250270 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350864 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378632.P13874382101071598449

/-! ## A378632.P2300983508240335028

`∩[A308912(n+1), A350864(n+1)]`
-/

namespace A378632.P2300983508240335028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308912 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350864 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378632.P2300983508240335028

/-! ## A378632.P17699460841282979255

`∩[A330813(n+1), A350864(n+1)]`
-/

namespace A378632.P17699460841282979255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350864 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378632.P17699460841282979255

/-! ## A378632.P1412901108166194746

`∩[A350864(n+1), A367463(n+1)]`
-/

namespace A378632.P1412901108166194746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350864 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367463 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378632.P1412901108166194746

/-!
# A378633: Numbers having a self-conjugate multiplicative partition into primes.

The programs for A378633, there is no canonical definition to state claims against.
-/

/-! ## A378633.P11158712967506478412

`∩[A071929(n+1), A378667(n+1)]`
-/

namespace A378633.P11158712967506478412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071929 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378667 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378633.P11158712967506478412

/-! ## A378633.P17172744218455209398

`A378667(A106131(n+1))`
-/

namespace A378633.P17172744218455209398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378667 (A106131 (n + 1)).toNat

end

end A378633.P17172744218455209398

/-!
# A378635: Triangle T(n,k) read by rows, where row n is a permutation of numbers 1 through n, such that if the deck of n cards is prepared in this order, and under-down dealing is used, then the resulting cards are put down in increasing order.

The programs for A378635, there is no canonical definition to state claims against.
-/

/-! ## A378635.P16855534551509531606

`A378674(A066182(n+1))`
-/

namespace A378635.P16855534551509531606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378674 (A066182 (n + 1)).toNat

end

end A378635.P16855534551509531606

/-! ## A378635.P5866893546117968301

`A003057(n+2)-A003602(A053218(n+1))`
-/

namespace A378635.P5866893546117968301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003057 (n + 2) - A003602 (A053218 (n + 1)).toNat

end

end A378635.P5866893546117968301

/-! ## A378635.P11077809807673402921

`A129968(A006530(n+1)^A266878(n+1))`
-/

namespace A378635.P11077809807673402921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129968 (SequenceMachineLib.roundAway ((A006530 (n + 1) : ℚ) ^ (A266878 (n + 1) : ℤ))).toNat

end

end A378635.P11077809807673402921

/-! ## A378635.P17323630237468467262

`A066099(A218510(n+2)²)`
-/

namespace A378635.P17323630237468467262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066099 (A218510 (n + 2) ^ 2).toNat

end

end A378635.P17323630237468467262

/-! ## A378635.P16066796683810278726

`A007862(A066895(n+1)+n)`
-/

namespace A378635.P16066796683810278726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007862 (A066895 (n + 1) + (n : ℤ)).toNat

end

end A378635.P16066796683810278726

/-!
# A378637: Largest m <= n such that phi(m) divides n, where phi is the Euler totient function (A000010).

The programs for A378637, there is no canonical definition to state claims against.
-/

/-! ## A378637.P3189822815168250589

`A378636(∑[A069932(n+1)])`
-/

namespace A378637.P3189822815168250589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069932 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378636 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A378637.P3189822815168250589

/-! ## A378637.P17241325217471110694

`A378636(eq[2, A378636(n+2)])`
-/

namespace A378637.P17241325217471110694
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378636 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378636 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A378637.P17241325217471110694

/-! ## A378637.P3137138769015778637

`A378636(lt[A378636(n+1), A040000(n)])`
-/

namespace A378637.P3137138769015778637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378636 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040000 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378636 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A378637.P3137138769015778637

/-! ## A378637.P624975460308270302

`gcd(A071364(n+1), A094348(A266722(n)))`
-/

namespace A378637.P624975460308270302
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A071364 (n + 1)) (A094348 (A266722 n).toNat)

end

end A378637.P624975460308270302

/-! ## A378637.P12528372057827816984

`A020639(A083720(n+1))*A193267(n+1)`
-/

namespace A378637.P12528372057827816984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A083720 (n + 1)).toNat * A193267 (n + 1)

end

end A378637.P12528372057827816984

/-!
# A378639: a(n) = sum of all m such that phi(m) divides n, where phi is the Euler totient function (A000010).

The programs for A378639, there is no canonical definition to state claims against.
-/

/-! ## A378639.P9782422015417009381

`∑{d}[n+1, A215240(#)]`
-/

namespace A378639.P9782422015417009381
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A215240 d

end

end A378639.P9782422015417009381

/-! ## A378639.P17275223576836560418

`A362469(A004928(n+1))`
-/

namespace A378639.P17275223576836560418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362469 (A004928 (n + 1)).toNat

end

end A378639.P17275223576836560418

/-! ## A378639.P2264775918764111406

`A362469(A004948(n+1))`
-/

namespace A378639.P2264775918764111406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362469 (A004948 (n + 1)).toNat

end

end A378639.P2264775918764111406

/-! ## A378639.P7259004279632383993

`A362469(A135639(n+1))`
-/

namespace A378639.P7259004279632383993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362469 (A135639 (n + 1)).toNat

end

end A378639.P7259004279632383993

/-! ## A378639.P9626847845120941597

`A362469(A009474(n+1))`
-/

namespace A378639.P9626847845120941597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362469 (A009474 (n + 1)).toNat

end

end A378639.P9626847845120941597

/-!
# A378642: Number of numbers m <= n such that phi(m) does not divide n, where phi is the Euler totient function (A000010).

The programs for A378642, the canonical program `A378642.P15085417897948943503` is in `Seq.B004.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A378642 has offset 1).

The definition of A378642 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A378642.P15085417897948943503

`n+1-A069932(n+1)`

The canonical program, it is in `Seq.B004.C004`.
-/

namespace A378642

/-- `n+1-A069932(n+1)` -/
def P15085417897948943503.Spec : Prop :=
  ∀ n, P15085417897948943503.a n = A378642 (n + 1)

theorem P15085417897948943503.correct : P15085417897948943503.Spec := by
  intro n
  simp only [A378642, Nat.add_sub_cancel]

end A378642

/-! ## A378642.P9302833127156197951

`n-A023443(A069932(n+1))`
-/

namespace A378642.P9302833127156197951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A023443 (A069932 (n + 1)).toNat

end

end A378642.P9302833127156197951

namespace A378642

/-- `n-A023443(A069932(n+1))` -/
def P9302833127156197951.Spec : Prop :=
  ∀ n, P9302833127156197951.a n = A378642 (n + 1)

end A378642

/-! ## A378642.P4432725993028356761

`A024000(Δ[eq[1, A378636(n+1)]])+n`
-/

namespace A378642.P4432725993028356761
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378636 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + (n : ℤ)

end

end A378642.P4432725993028356761

namespace A378642

/-- `A024000(Δ[eq[1, A378636(n+1)]])+n` -/
def P4432725993028356761.Spec : Prop :=
  ∀ n, P4432725993028356761.a n = A378642 (n + 1)

end A378642

/-!
# A378643: Dirichlet inverse of A103977.

The programs for A378643, there is no canonical definition to state claims against.
-/

/-! ## A378643.P16576577568432540283

`∑{d}[n+1, A055615(#)*A378646((n+1)/#)]`
-/

namespace A378643.P16576577568432540283
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A055615 d * A378646 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A378643.P16576577568432540283

/-! ## A378643.P236509134760621821

`∑{d}[n+1, A002033(#-1)*A378655((n+1)/#)]`
-/

namespace A378643.P236509134760621821
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A002033 (d - 1) * A378655 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A378643.P236509134760621821

/-! ## A378643.P5420291368751486471

`A323910(n+1)-A327201(A143632(n+2))`
-/

namespace A378643.P5420291368751486471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323910 (n + 1) - A327201 (A143632 (n + 2)).toNat

end

end A378643.P5420291368751486471

/-! ## A378643.P9797668066964424814

`A323910(n+1)+A119558(A037217(n))`
-/

namespace A378643.P9797668066964424814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323910 (n + 1) + A119558 (A037217 n).toNat

end

end A378643.P9797668066964424814

/-! ## A378643.P9369990291245759412

`A131561(A026003(n))*A323910(n+1)`
-/

namespace A378643.P9369990291245759412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131561 (A026003 n).toNat * A323910 (n + 1)

end

end A378643.P9369990291245759412

/-!
# A378644: Möbius transform of A103977.

The programs for A378644, there is no canonical definition to state claims against.
-/

/-! ## A378644.P3342950497988951177

`∑{d}[n+1, A008683(#)*A103977((n+1)/#)]`
-/

namespace A378644.P3342950497988951177
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A103977 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A378644.P3342950497988951177

/-! ## A378644.P7301500255612524078

`2*A378649(n+1)-A378647(n+1)`
-/

namespace A378644.P7301500255612524078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A378649 (n + 1) - A378647 (n + 1)

end

end A378644.P7301500255612524078

/-! ## A378644.P16569759058870959911

`∑{d}[n+1, A000010(#)*A378645((n+1)/#)]`
-/

namespace A378644.P16569759058870959911
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A378645 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A378644.P16569759058870959911

/-! ## A378644.P10448543730789909999

`∑{d}[n+1, A378219(#)*A378648((n+1)/#)]`
-/

namespace A378644.P10448543730789909999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A378219 d * A378648 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A378644.P10448543730789909999

/-! ## A378644.P4994521097505148271

`∑{d}[n+1, A378225(#)*A378647((n+1)/#)]`
-/

namespace A378644.P4994521097505148271
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A378225 d * A378647 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A378644.P4994521097505148271

/-!
# A378645: Dirichlet convolution of A055615 and A103977.

The programs for A378645, there is no canonical definition to state claims against.
-/

/-! ## A378645.P1168044638845367052

`∑{d}[n+1, A055615(#)*A103977((n+1)/#)]`
-/

namespace A378645.P1168044638845367052
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A055615 d * A103977 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A378645.P1168044638845367052

/-! ## A378645.P17893487770635238042

`∑{d}[n+1, A023900(#)*A378644((n+1)/#)]`
-/

namespace A378645.P17893487770635238042
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A023900 d * A378644 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A378645.P17893487770635238042

/-! ## A378645.P12189867183328822132

`∑{d}[n+1, A378211(#)*A378648((n+1)/#)]`
-/

namespace A378645.P12189867183328822132
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A378211 d * A378648 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A378645.P12189867183328822132

/-! ## A378645.P4343018677346580908

`∑{d}[n+1, A378217(#)*A378647((n+1)/#)]`
-/

namespace A378645.P4343018677346580908
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A378217 d * A378647 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A378645.P4343018677346580908

/-!
# A378646: Dirichlet convolution of A000027 and A378643.

The programs for A378646, there is no canonical definition to state claims against.
-/

/-! ## A378646.P6771066998269269534

`∑{d}[n+1, #*A378643((n+1)/#)]`
-/

namespace A378646.P6771066998269269534
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A378643 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A378646.P6771066998269269534

/-! ## A378646.P1701594136833439467

`∑{d}[n+1, A330575(#)*A378655((n+1)/#)]`
-/

namespace A378646.P1701594136833439467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A330575 d * A378655 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A378646.P1701594136833439467

/-! ## A378646.P8841142125157022397

`∑{digits}[A349059(∏{p}[n+1, #]^∏{e}[n+1, #]), #]`
-/

namespace A378646.P8841142125157022397
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349059 ((∏ p ∈ Nat.primeFactors (f2 n), p) ^ (∏ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A378646.P8841142125157022397

/-! ## A378646.P11435541472199847411

`gcd(A002033(n), A093036(A026136(n+1)))`
-/

namespace A378646.P11435541472199847411
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002033 n) (A093036 (A026136 (n + 1)).toNat)

end

end A378646.P11435541472199847411

/-! ## A378646.P16822872148077487403

`gcd(A347892(A303761(n)), A349059(n+1))`
-/

namespace A378646.P16822872148077487403
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A347892 (A303761 n).toNat) (A349059 (n + 1))

end

end A378646.P16822872148077487403

/-!
# A378647: Dirichlet convolution of A074206 and A103977, where A074206 is the number of ordered factorizations of n, and A103977 is the Zumkeller deficiency of n.

The programs for A378647, there is no canonical definition to state claims against.
-/

/-! ## A378647.P384784161092680940

`A378650(n+1)+n+1`
-/

namespace A378647.P384784161092680940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378650 (n + 1) + (n + 1 : ℤ)

end

end A378647.P384784161092680940

/-! ## A378647.P10975072532180904519

`∑{d}[n+1, A074206(#)*A103977((n+1)/#)]`
-/

namespace A378647.P10975072532180904519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A074206 d * A103977 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A378647.P10975072532180904519

/-! ## A378647.P1526015276950324074

`∑{d}[n+1, A008683(#)*A378648((n+1)/#)]`
-/

namespace A378647.P1526015276950324074
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A378648 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A378647.P1526015276950324074

/-! ## A378647.P1259348621220995381

`∑{d}[n+1, A067824(#)*A378644((n+1)/#)]`
-/

namespace A378647.P1259348621220995381
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A067824 d * A378644 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A378647.P1259348621220995381

/-! ## A378647.P11492999864344295410

`∑{d}[n+1, A378649(#)]`
-/

namespace A378647.P11492999864344295410
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A378649 d

end

end A378647.P11492999864344295410

/-! ## A378647.P9564326568153360899

`2*A378649(n+1)-A378644(n+1)`
-/

namespace A378647.P9564326568153360899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A378649 (n + 1) - A378644 (n + 1)

end

end A378647.P9564326568153360899

/-! ## A378647.P17339577742508833645

`∑{d}[n+1, A330575(#)*A378645((n+1)/#)]`
-/

namespace A378647.P17339577742508833645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A330575 d * A378645 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A378647.P17339577742508833645

/-! ## A378647.P17757261228315085304

`∑{d}[n+1, A002033(#-1)*A103977((n+1)/#)]`
-/

namespace A378647.P17757261228315085304
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A002033 (d - 1) * A103977 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A378647.P17757261228315085304

/-!
# A378648: Dirichlet convolution of A067824 and A103977, where A067824 is the number of strict chains of divisors starting with n, and A103977 is the Zumkeller deficiency of n.

The programs for A378648, there is no canonical definition to state claims against.
-/

/-! ## A378648.P6563850834638170117

`∑{d}[n+1, A378647(#)]`
-/

namespace A378648.P6563850834638170117
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A378647 d

end

end A378648.P6563850834638170117

/-! ## A378648.P12689503187726828137

`A000203(n+1)+A378653(n+1)`
-/

namespace A378648.P12689503187726828137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + A378653 (n + 1)

end

end A378648.P12689503187726828137

/-! ## A378648.P13734097601892482921

`∑{d}[n+1, A067824(#)*A103977((n+1)/#)]`
-/

namespace A378648.P13734097601892482921
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A067824 d * A103977 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A378648.P13734097601892482921

/-! ## A378648.P12987038514485526426

`A378653(n+1)+A039653(n+1)+1`
-/

namespace A378648.P12987038514485526426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378653 (n + 1) + (A039653 (n + 1) + 1)

end

end A378648.P12987038514485526426

/-! ## A378648.P8977419722182030753

`A378653(n+1)+A088580(n+1)-1`
-/

namespace A378648.P8977419722182030753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378653 (n + 1) + (A088580 (n + 1) - 1)

end

end A378648.P8977419722182030753

/-! ## A378648.P11217308354974258761

`A378653(n+1)+A245092(2*n+1)`
-/

namespace A378648.P11217308354974258761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378653 (n + 1) + A245092 (2 * n + 1)

end

end A378648.P11217308354974258761

/-! ## A378648.P1529502179228350953

`2*A378647(n+1)-A103977(n+1)`
-/

namespace A378648.P1529502179228350953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A378647 (n + 1) - A103977 (n + 1)

end

end A378648.P1529502179228350953

/-! ## A378648.P10105407137550442148

`∑{d}[n+1, A000005(#)*A378649((n+1)/#)]`
-/

namespace A378648.P10105407137550442148
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A378649 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A378648.P10105407137550442148

/-! ## A378648.P7363013142525926858

`∑{d}[n+1, A191161(#)*A378645((n+1)/#)]`
-/

namespace A378648.P7363013142525926858
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A191161 d * A378645 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A378648.P7363013142525926858

/-! ## A378648.P13101868922403687703

`∑{d}[n+1, A253249(#)*A378644((n+1)/#)]`
-/

namespace A378648.P13101868922403687703
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A253249 d * A378644 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A378648.P13101868922403687703

/-!
# A378649: Möbius transform of A378647.

The programs for A378649, there is no canonical definition to state claims against.
-/

/-! ## A378649.P5520992350011124444

`(A378644(n+1)+A378647(n+1))/2`
-/

namespace A378649.P5520992350011124444
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A378644 (n + 1) + A378647 (n + 1) : ℚ) / 2

end

end A378649.P5520992350011124444

/-! ## A378649.P661449818599004723

`∑{d}[n+1, A008683(#)*A378647((n+1)/#)]`
-/

namespace A378649.P661449818599004723
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A378647 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A378649.P661449818599004723

/-! ## A378649.P2848841858435490103

`∑{d}[n+1, A103977(#)*A174725((n+1)/#)]`
-/

namespace A378649.P2848841858435490103
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A103977 d * A174725 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A378649.P2848841858435490103

/-! ## A378649.P14274625744318413702

`∑{d}[n+1, A007427(#)*A378648((n+1)/#)]`
-/

namespace A378649.P14274625744318413702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A378648 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A378649.P14274625744318413702

/-! ## A378649.P18156425650246420169

`∑{d}[n+1, A002033(#-1)*A378644((n+1)/#)]`
-/

namespace A378649.P18156425650246420169
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A002033 (d - 1) * A378644 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A378649.P18156425650246420169

/-!
# A378650: a(n) = A378647(n) - n.

The programs for A378650, there is no canonical definition to state claims against.
-/

/-! ## A378650.P12073843814082899127

`A378647(n+1)-(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A378650.P12073843814082899127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378647 (n + 1) - (n + 1 : ℤ)

end

end A378650.P12073843814082899127

/-! ## A378650.P10223579047956135489

`∑{d}[n+1, A378649(#)]-(n+1)`
-/

namespace A378650.P10223579047956135489
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A378649 d - (n + 1 : ℤ)

end

end A378650.P10223579047956135489

/-! ## A378650.P9814575946033927187

`∑{d}[n+1, A008683(#)*A378653((n+1)/#)]`
-/

namespace A378650.P9814575946033927187
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A378653 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A378650.P9814575946033927187

/-! ## A378650.P11398173679717969311

`∑{d}[n+1, A067824(#)*A378644((n+1)/#)]-(n+1)`
-/

namespace A378650.P11398173679717969311
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A067824 d * A378644 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat - (n + 1 : ℤ)

end

end A378650.P11398173679717969311

/-! ## A378650.P17594974044028221530

`A023443(A378647(n+1)-n)`
-/

namespace A378650.P17594974044028221530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A378647 (n + 1) - (n : ℤ)).toNat

end

end A378650.P17594974044028221530

/-!
# A378651: a(n) = 1 if the divisors of n can be partitioned in exactly two ways into two disjoint sets with the same sum, otherwise 0.

The programs for A378651, there is no canonical definition to state claims against.
-/

/-! ## A378651.P14449417266020759449

`char[A378652(n+1)-1]`
-/

namespace A378651.P14449417266020759449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378652 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A378651.P14449417266020759449

/-! ## A378651.P8390938991753283815

`char[eq[2, A083206(n+1)]]`
-/

namespace A378651.P8390938991753283815
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083206 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A378651.P8390938991753283815

/-! ## A378651.P6748009217127768010

`A221150(C(4, A083206(n+1)))`
-/

namespace A378651.P6748009217127768010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221150 (Nat.choose 4 (A083206 (n + 1)).toNat)

end

end A378651.P6748009217127768010

/-! ## A378651.P2626652938727335639

`A316867(C(4, A083206(n+1)))`
-/

namespace A378651.P2626652938727335639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316867 (Nat.choose 4 (A083206 (n + 1)).toNat)

end

end A378651.P2626652938727335639

/-! ## A378651.P1883950914923323051

`A334204(C(4, A083206(n+1)))`
-/

namespace A378651.P1883950914923323051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334204 (Nat.choose 4 (A083206 (n + 1)).toNat)

end

end A378651.P1883950914923323051

/-! ## A378651.P12888738104115057783

`A010052(A083206(n+1)+7)`
-/

namespace A378651.P12888738104115057783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A083206 (n + 1) + 7).toNat

end

end A378651.P12888738104115057783

/-! ## A378651.P17403092076983938721

`A000007(xor(2, A083206(n+1)))`
-/

namespace A378651.P17403092076983938721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (Int.xor 2 (A083206 (n + 1))).toNat

end

end A378651.P17403092076983938721

/-! ## A378651.P2588437958861926684

`A371737(gcd(A133430(n+1), A182891(n)))`
-/

namespace A378651.P2588437958861926684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371737 (Int.gcd (A133430 (n + 1)) (A182891 n))

end

end A378651.P2588437958861926684

/-! ## A378651.P4851239856540248880

`val(A000041(n), A035359(A165930(n+3)))`
-/

namespace A378651.P4851239856540248880
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000041 n).toNat (A035359 (A165930 (n + 3)).toNat).toNat

end

end A378651.P4851239856540248880

/-! ## A378651.P16164722100491741588

`A002264(and(A265192(n+1), A353698(n)))`
-/

namespace A378651.P16164722100491741588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (Int.land (A265192 (n + 1)) (A353698 n)).toNat

end

end A378651.P16164722100491741588

/-!
# A378652: Numbers whose divisors can be partitioned in exactly two ways into two disjoint sets with the same sum.

The programs for A378652, there is no canonical definition to state claims against.
-/

/-! ## A378652.P2232743404853138205

`filter[A305811(n+1), A378651(#)]`
-/

namespace A378652.P2232743404853138205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305811 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A378651 (f1 j).toNat = 1) n)

end

end A378652.P2232743404853138205

/-! ## A378652.P1144027837408774943

`filter[A305810(n+1), A378651(#)]`
-/

namespace A378652.P1144027837408774943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305810 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A378651 (f1 j).toNat = 1) n)

end

end A378652.P1144027837408774943

/-! ## A378652.P2639027155630279111

`filter[A305894(n+1), A378651(#)]`
-/

namespace A378652.P2639027155630279111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305894 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A378651 (f1 j).toNat = 1) n)

end

end A378652.P2639027155630279111

/-! ## A378652.P15249460887256544677

`filter[A305904(n+1), A378651(#)]`
-/

namespace A378652.P15249460887256544677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305904 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A378651 (f1 j).toNat = 1) n)

end

end A378652.P15249460887256544677

/-! ## A378652.P8199027122392770424

`filter[A305903(n+1), A378651(#)]`
-/

namespace A378652.P8199027122392770424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305903 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A378651 (f1 j).toNat = 1) n)

end

end A378652.P8199027122392770424

/-! ## A378652.P10711425784161355833

`filter[A319707(n+1), A378651(#)]`
-/

namespace A378652.P10711425784161355833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319707 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A378651 (f1 j).toNat = 1) n)

end

end A378652.P10711425784161355833

/-! ## A378652.P961183143292921644

`filter[A379000(n+1), A378651(#)]`
-/

namespace A378652.P961183143292921644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379000 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A378651 (f1 j).toNat = 1) n)

end

end A378652.P961183143292921644

/-! ## A378652.P5865549901608237849

`filter[A305800(n+1), A378651(#)]`
-/

namespace A378652.P5865549901608237849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305800 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A378651 (f1 j).toNat = 1) n)

end

end A378652.P5865549901608237849

/-! ## A378652.P9902233401351523167

`filter[A305801(n+1), A378651(#)]`
-/

namespace A378652.P9902233401351523167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305801 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A378651 (f1 j).toNat = 1) n)

end

end A378652.P9902233401351523167

/-! ## A378652.P6004691430543678927

`filter[A305900(n+1), A378651(#)]`
-/

namespace A378652.P6004691430543678927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305900 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A378651 (f1 j).toNat = 1) n)

end

end A378652.P6004691430543678927

/-! ## A378652.P12902791114790225725

`filter[A319704(n+1), A378651(#)]`
-/

namespace A378652.P12902791114790225725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319704 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A378651 (f1 j).toNat = 1) n)

end

end A378652.P12902791114790225725

/-! ## A378652.P12778723786805317672

`filter[A331304(n+1), A378651(#)]`
-/

namespace A378652.P12778723786805317672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331304 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A378651 (f1 j).toNat = 1) n)

end

end A378652.P12778723786805317672

/-! ## A378652.P4399768317589285365

`filter[A305890(n+1), A378651(#)]`
-/

namespace A378652.P4399768317589285365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305890 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A378651 (f1 j).toNat = 1) n)

end

end A378652.P4399768317589285365

/-! ## A378652.P4536717484677144852

`filter[A305979(n+1), A378651(#)]`
-/

namespace A378652.P4536717484677144852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305979 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A378651 (f1 j).toNat = 1) n)

end

end A378652.P4536717484677144852

/-! ## A378652.P18212731016746719832

`filter[A305975(n+1), A378651(#)]`
-/

namespace A378652.P18212731016746719832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305975 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A378651 (f1 j).toNat = 1) n)

end

end A378652.P18212731016746719832

/-! ## A378652.P5060679328941165978

`filter[A305976(n+1), A378651(#)]`
-/

namespace A378652.P5060679328941165978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305976 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A378651 (f1 j).toNat = 1) n)

end

end A378652.P5060679328941165978

/-! ## A378652.P9528788376658932467

`filter[A324400(n+1), A378651(#)]`
-/

namespace A378652.P9528788376658932467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324400 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A378651 (f1 j).toNat = 1) n)

end

end A378652.P9528788376658932467

/-! ## A378652.P1784279644518761392

`filter[A326133(n+1), A378651(#)]`
-/

namespace A378652.P1784279644518761392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326133 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A378651 (f1 j).toNat = 1) n)

end

end A378652.P1784279644518761392

/-! ## A378652.P1897281108040847400

`filter[A332900(n+1), A378651(#)]`
-/

namespace A378652.P1897281108040847400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332900 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A378651 (f1 j).toNat = 1) n)

end

end A378652.P1897281108040847400

/-! ## A378652.P792272967344733056

`filter[A344180(n), A378651(#)]`
-/

namespace A378652.P792272967344733056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344180 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A378651 (f1 j).toNat = 1) n)

end

end A378652.P792272967344733056

/-!
# A378653: a(n) = A378648(n) - sigma(n).

The programs for A378653, there is no canonical definition to state claims against.
-/

/-! ## A378653.P12449466598675959351

`∑{d}[n+1, A378650(#)]`
-/

namespace A378653.P12449466598675959351
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A378650 d

end

end A378653.P12449466598675959351

/-! ## A378653.P5804256259191939974

`A378648(n+1)-A000203(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A378653.P5804256259191939974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378648 (n + 1) - A000203 (n + 1)

end

end A378653.P5804256259191939974

/-! ## A378653.P14756679898339837930

`A378648(n+1)-sqrt(A072861(n+1))`
-/

namespace A378653.P14756679898339837930
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A378648 (n + 1) : ℝ) - Real.sqrt (A072861 (n + 1) : ℝ)

end

end A378653.P14756679898339837930

/-! ## A378653.P7648926946278622672

`A378648(n+1)-A274536(n+1)/6`
-/

namespace A378653.P7648926946278622672
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A378648 (n + 1) : ℚ) - (A274536 (n + 1) : ℚ) / 6

end

end A378653.P7648926946278622672

/-! ## A378653.P17692400569551336580

`A378648(n+1)-sqrt(sqrt(A361179(n+1)))`
-/

namespace A378653.P17692400569551336580
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A378648 (n + 1) : ℝ) - Real.sqrt (Real.sqrt (A361179 (n + 1) : ℝ))

end

end A378653.P17692400569551336580

/-! ## A378653.P16752471409722725964

`A052928(A378648(n+1)-∑{d}[n+1, #])`
-/

namespace A378653.P16752471409722725964
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052928 (A378648 (n + 1) - ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ)).toNat

end

end A378653.P16752471409722725964

/-! ## A378653.P15431178355989655709

`A265228(A378648(n+1)-∑{d}[n+1, #])`
-/

namespace A378653.P15431178355989655709
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265228 (A378648 (n + 1) - ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ)).toNat

end

end A378653.P15431178355989655709

/-!
# A378655: Dirichlet convolution of A153881 with the Dirichlet inverse of A103977.

The programs for A378655, there is no canonical definition to state claims against.
-/

/-! ## A378655.P13907692367181367241

`∑{d}[n+1, A153881(#)*A378643((n+1)/#)]`
-/

namespace A378655.P13907692367181367241
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A153881 d * A378643 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A378655.P13907692367181367241

/-! ## A378655.P9588254281630281932

`∑{d}[n+1, A378217(#)*A378646((n+1)/#)]`
-/

namespace A378655.P9588254281630281932
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A378217 d * A378646 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A378655.P9588254281630281932

/-! ## A378655.P3221149433768376500

`A055615(n+1)-A378036(A372186(3*n+5))`
-/

namespace A378655.P3221149433768376500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055615 (n + 1) - A378036 (A372186 (3 * n + 5)).toNat

end

end A378655.P3221149433768376500

/-! ## A378655.P6179147530126874954

`A055615(n+1)-A091269(A157152(n+1))`
-/

namespace A378655.P6179147530126874954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055615 (n + 1) - A091269 (A157152 (n + 1)).toNat

end

end A378655.P6179147530126874954

/-! ## A378655.P3270989622027608788

`A055615(n+1)-A336107(A000041(n))`
-/

namespace A378655.P3270989622027608788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055615 (n + 1) - A336107 (A000041 n).toNat

end

end A378655.P3270989622027608788

/-!
# A378657: Numbers that are primitive Zumkeller, but not primitive non-deficient.

The programs for A378657, there is no canonical definition to state claims against.
-/

/-! ## A378657.P875005192420381374

`∩[A180332(n+1), A378538(n+1)]`
-/

namespace A378657.P875005192420381374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180332 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378538 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378657.P875005192420381374

/-! ## A378657.P2247982761514348714

`∩[A376881(n+1), A378538(n+1)]`
-/

namespace A378657.P2247982761514348714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376881 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378538 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378657.P2247982761514348714

/-! ## A378657.P9640566641895738412

`filter[A378538(n+1), A378537(#)]`
-/

namespace A378657.P9640566641895738412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378538 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A378537 (f1 j).toNat = 1) n)

end

end A378657.P9640566641895738412

/-! ## A378657.P12567808774304157431

`filter[A378538(n+1), A378539(#)]`
-/

namespace A378657.P12567808774304157431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378538 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A378539 (f1 j).toNat = 1) n)

end

end A378657.P12567808774304157431

/-! ## A378657.P10644596494395707469

`filter[A378538(n+1), A359787(#)]`
-/

namespace A378657.P10644596494395707469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378538 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359787 (f1 j).toNat = 1) n)

end

end A378657.P10644596494395707469

/-!
# A378658: a(n) = A337345(A091191(n)), where A337345 is the number of divisors d of n for which A003961(d) > 2*d, and A091191 lists the primitive abundant numbers.

The programs for A378658, the canonical program `A378658.P13927000025378427146` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A378658 has offset 1).

The definition of A378658 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A378658.P4134946624785825054

`A337345(A091191(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A378658.P4134946624785825054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337345 (A091191 (n + 1)).toNat

end

end A378658.P4134946624785825054

namespace A378658

/-- `A337345(A091191(n+1))` -/
def P4134946624785825054.Spec : Prop :=
  ∀ n, P4134946624785825054.a n = A378658 (n + 1)

end A378658

/-! ## A378658.P16614421377716588407

`A337345(record[A091196(n+1)])`
-/

namespace A378658.P16614421377716588407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091196 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337345 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A378658.P16614421377716588407

namespace A378658

/-- `A337345(record[A091196(n+1)])` -/
def P16614421377716588407.Spec : Prop :=
  ∀ n, P16614421377716588407.a n = A378658 (n + 1)

end A378658

/-! ## A378658.P13927000025378427146

`A337345(filter[A103288(n+1), A294930(#)])`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A378658

/-- `A337345(filter[A103288(n+1), A294930(#)])` -/
def P13927000025378427146.Spec : Prop :=
  ∀ n, P13927000025378427146.a n = A378658 (n + 1)

theorem P13927000025378427146.correct : P13927000025378427146.Spec := by
  intro n
  simp only [A378658, Nat.add_sub_cancel]

end A378658

/-! ## A378658.P14816085413658626698

`A337345(filter[A177085(n+1), A294930(#)])`
-/

namespace A378658.P14816085413658626698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177085 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337345 (f1 (SequenceMachineLib.nth (fun j => A294930 (f1 j).toNat = 1) n)).toNat

end

end A378658.P14816085413658626698

namespace A378658

/-- `A337345(filter[A177085(n+1), A294930(#)])` -/
def P14816085413658626698.Spec : Prop :=
  ∀ n, P14816085413658626698.a n = A378658 (n + 1)

end A378658

/-! ## A378658.P15376474004232660389

`A337345(filter[A005279(n+1), A294930(#)])`
-/

namespace A378658.P15376474004232660389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005279 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337345 (f1 (SequenceMachineLib.nth (fun j => A294930 (f1 j).toNat = 1) n)).toNat

end

end A378658.P15376474004232660389

namespace A378658

/-- `A337345(filter[A005279(n+1), A294930(#)])` -/
def P15376474004232660389.Spec : Prop :=
  ∀ n, P15376474004232660389.a n = A378658 (n + 1)

end A378658

/-! ## A378658.P13594787655048644395

`A337345(eq[n+1, A187795(n+1)]+1)`
-/

namespace A378658.P13594787655048644395
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187795 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337345 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A378658.P13594787655048644395

namespace A378658

/-- `A337345(eq[n+1, A187795(n+1)]+1)` -/
def P13594787655048644395.Spec : Prop :=
  ∀ n, P13594787655048644395.a n = A378658 (n + 1)

end A378658

/-!
# A378659: Positions of records for ratio A003961(n)/sigma(n), where A003961 is fully multiplicative with a(p) = nextprime(p) and sigma is the sum of the divisors function.

The programs for A378659, there is no canonical definition to state claims against.
-/

/-! ## A378659.P8678930602134431853

`record[gcd(A246655(n+1), A282019(3*n))]`
-/

namespace A378659.P8678930602134431853
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A246655 (n + 1)) (A282019 (3 * n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A378659.P8678930602134431853

/-! ## A378659.P15764318136604648985

`lt[A341975(n), A322661(A253641(n))]`
-/

namespace A378659.P15764318136604648985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341975 (n + 11)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322661 (A253641 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A378659.P15764318136604648985

/-!
# A378660: Smallest divisor d of n for which n/d is non-abundant, i.e. sigma(n/d) <= 2*(n/d).

The programs for A378660, there is no canonical definition to state claims against.
-/

/-! ## A378660.P98317144215128125

`(n+1)/A378665(n+1)`
-/

namespace A378660.P98317144215128125
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A378665 (n + 1) : ℚ)

end

end A378660.P98317144215128125

/-! ## A378660.P8580780134325112612

`A055642(A138263(n+4)^A080224(n+1))`
-/

namespace A378660.P8580780134325112612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (SequenceMachineLib.roundAway ((A138263 (n + 4) : ℚ) ^ (A080224 (n + 1) : ℤ))).toNat

end

end A378660.P8580780134325112612

/-! ## A378660.P10639285588138800868

`A055642(C(A245499(3*n+1), A080224(n+1)))`
-/

namespace A378660.P10639285588138800868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (Nat.choose (A245499 (3 * n + 1)).toNat (A080224 (n + 1)).toNat)

end

end A378660.P10639285588138800868

/-! ## A378660.P9839852201927261714

`A080224(n+1)+A000120(A335434(2*n+3))`
-/

namespace A378660.P9839852201927261714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080224 (n + 1) + A000120 (A335434 (2 * n + 3)).toNat

end

end A378660.P9839852201927261714

/-! ## A378660.P13357874040969905896

`A080224(n+1)^A210545(3*n+2)+1`
-/

namespace A378660.P13357874040969905896
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080224 (n + 1) : ℚ) ^ (A210545 (3 * n + 2) : ℤ) + 1

end

end A378660.P13357874040969905896

/-!
# A378661: Characteristic function of A083211: a(n) = 1 if n is abundant and is not Zumkeller, otherwise 0.

The programs for A378661, there is no canonical definition to state claims against.
-/

/-! ## A378661.P617334574031120234

`A294937(n+1)*(1-A179527(n+1))`
-/

namespace A378661.P617334574031120234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294937 (n + 1) * (1 - A179527 (n + 1))

end

end A378661.P617334574031120234

/-! ## A378661.P8132785928069325835

`char[A083211(n+1)-1]`
-/

namespace A378661.P8132785928069325835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083211 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A378661.P8132785928069325835

/-! ## A378661.P7369133731496056607

`A079944(A179527(n+1)+floor(∑{d}[n+1, 1/(2*#)]))`
-/

namespace A378661.P7369133731496056607
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079944 (A179527 (n + 1) + ⌊∑ d ∈ Nat.divisors (f1 n), 1 / (2 * d : ℚ)⌋).toNat

end

end A378661.P7369133731496056607

/-! ## A378661.P16891447697348607267

`A005614(floor(∑{d}[n+1, #]/(n+1)))-A179527(n+1)`
-/

namespace A378661.P16891447697348607267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005614 ⌊((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℚ) / (n + 1 : ℚ)⌋.toNat - A179527 (n + 1)

end

end A378661.P16891447697348607267

/-! ## A378661.P1579048695621235804

`A053121(floor(∑{d}[n+1, #]/(n+1)))-A179527(n+1)`
-/

namespace A378661.P1579048695621235804
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053121 ⌊((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℚ) / (n + 1 : ℚ)⌋.toNat - A179527 (n + 1)

end

end A378661.P1579048695621235804

/-! ## A378661.P9386459772451137684

`char[A380866(n+1)-1]`
-/

namespace A378661.P9386459772451137684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380866 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A378661.P9386459772451137684

/-! ## A378661.P2902510135858352789

`and(A081468((n+4)²), A319988(n+1))`
-/

namespace A378661.P2902510135858352789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A081468 ((n + 4) ^ 2)) (A319988 (n + 1))

end

end A378661.P2902510135858352789

/-! ## A378661.P15865825885701546197

`A025469(A055999(2*n+1)+3)`
-/

namespace A378661.P15865825885701546197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025469 (A055999 (2 * n + 1) + 3).toNat

end

end A378661.P15865825885701546197

/-! ## A378661.P4558051431886771933

`C(A007949(n+1), A037445(A001844(n)))`
-/

namespace A378661.P4558051431886771933
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A007949 (n + 1)).toNat (A037445 (A001844 n).toNat).toNat

end

end A378661.P4558051431886771933

/-! ## A378661.P11433327218610608366

`A235145(A337596(n+1)+A112798(n+2))`
-/

namespace A378661.P11433327218610608366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235145 (A337596 (n + 1) + A112798 (n + 2)).toNat

end

end A378661.P11433327218610608366

/-!
# A378662: Number of divisors d of n such that sigma(d) <= 2*d < A003961(d), where A003961 is fully multiplicative with a(p) = nextprime(p).

The programs for A378662, the canonical program `A378662.P11219609030214075406` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A378662 has offset 1).

The definition of A378662 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A341612, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A378662.P11219609030214075406

`∑{d}[n+1, A341612(#)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A378662

/-- `∑{d}[n+1, A341612(#)]` -/
def P11219609030214075406.Spec : Prop :=
  ∀ n, P11219609030214075406.a n = A378662 (n + 1)

theorem P11219609030214075406.correct : P11219609030214075406.Spec := by
  intro n
  simp only [A378662, Nat.add_sub_cancel]

end A378662

/-! ## A378662.P6229395677825455793

`A080225(n+1)+A378663(n+1)`
-/

namespace A378662.P6229395677825455793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080225 (n + 1) + A378663 (n + 1)

end

end A378662.P6229395677825455793

namespace A378662

/-- `A080225(n+1)+A378663(n+1)` -/
def P6229395677825455793.Spec : Prop :=
  ∀ n, P6229395677825455793.a n = A378662 (n + 1)

theorem P6229395677825455793.correct : P6229395677825455793.Spec := by
  intro n
  simp only [A378662, Nat.add_sub_cancel, A378662.P6229395677825455793.a, A378662.P11219609030214075406.f1, A378662.P11219609030214075406.a, A080225, A080225.P3972253355863549371.f1, A080225.P3972253355863549371.a, A341612, A341612.P3068073104531840485.a, A378663, A378663.P6986709549582363223.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A252742, A252742.P12034946379470004791.a, A294935, A294935.P4767353041558056281.f1, A294935.P4767353041558056281.a, A003961, A003961.P5996473960037614004.a, A253885, A253885.P16715555451856890624.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A378662

/-! ## A378662.P5838969480774769283

`A337345(n+1)-A080224(n+1)`
-/

namespace A378662.P5838969480774769283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337345 (n + 1) - A080224 (n + 1)

end

end A378662.P5838969480774769283

namespace A378662

/-- `A337345(n+1)-A080224(n+1)` -/
def P5838969480774769283.Spec : Prop :=
  ∀ n, P5838969480774769283.a n = A378662 (n + 1)

theorem P5838969480774769283.correct : P5838969480774769283.Spec := by
  intro n
  simp only [A378662, Nat.add_sub_cancel, A378662.P5838969480774769283.a, A378662.P11219609030214075406.f1, A378662.P11219609030214075406.a, A080224, A080224.P15248761020012364030.f1, A080224.P15248761020012364030.a, A337345, A337345.P1594935461271935527.a, A341612, A341612.P3068073104531840485.a, A252742, A252742.P12034946379470004791.a, A294935, A294935.P4767353041558056281.f1, A294935.P4767353041558056281.a, A294937, A294937.P16064831210993750001.a, A003961, A003961.P5996473960037614004.a, A253885, A253885.P16715555451856890624.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A378662

/-! ## A378662.P5854899060259386276

`A252742(n+1)+A337346(n+1)-A080224(n+1)`
-/

namespace A378662.P5854899060259386276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252742 (n + 1) + (A337346 (n + 1) - A080224 (n + 1))

end

end A378662.P5854899060259386276

namespace A378662

/-- `A252742(n+1)+A337346(n+1)-A080224(n+1)` -/
def P5854899060259386276.Spec : Prop :=
  ∀ n, P5854899060259386276.a n = A378662 (n + 1)

theorem P5854899060259386276.correct : P5854899060259386276.Spec := by
  intro n
  simp only [A378662, Nat.add_sub_cancel, A378662.P5854899060259386276.a, A378662.P11219609030214075406.f1, A378662.P11219609030214075406.a, A080224, A080224.P15248761020012364030.f1, A080224.P15248761020012364030.a, A252742, A252742.P12034946379470004791.a, A337346, A337346.P2412165337189814597.a, A341612, A341612.P3068073104531840485.a, A003961, A003961.P5996473960037614004.a, A294935, A294935.P4767353041558056281.f1, A294935.P4767353041558056281.a, A294937, A294937.P16064831210993750001.a, A337345, A337345.P1594935461271935527.a, A253885, A253885.P16715555451856890624.a, A243501, A243501.P10707292738867961998.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A378662

/-! ## A378662.P17137222191149164995

`A080225(n+1)+A337345(n+1)-A341620(n+1)`
-/

namespace A378662.P17137222191149164995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080225 (n + 1) + (A337345 (n + 1) - A341620 (n + 1))

end

end A378662.P17137222191149164995

namespace A378662

/-- `A080225(n+1)+A337345(n+1)-A341620(n+1)` -/
def P17137222191149164995.Spec : Prop :=
  ∀ n, P17137222191149164995.a n = A378662 (n + 1)

theorem P17137222191149164995.correct : P17137222191149164995.Spec := by
  intro n
  simp only [A378662, Nat.add_sub_cancel, A378662.P17137222191149164995.a, A378662.P11219609030214075406.f1, A378662.P11219609030214075406.a, A080225, A080225.P3972253355863549371.f1, A080225.P3972253355863549371.a, A337345, A337345.P1594935461271935527.a, A341612, A341612.P3068073104531840485.a, A341620, A341620.P4191397084300056986.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A080224, A080224.P15248761020012364030.f1, A080224.P15248761020012364030.a, A252742, A252742.P12034946379470004791.a, A294935, A294935.P4767353041558056281.f1, A294935.P4767353041558056281.a, A003961, A003961.P5996473960037614004.a, A294937, A294937.P16064831210993750001.a, A253885, A253885.P16715555451856890624.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A378662

/-!
# A378663: Number of divisors d of n such that sigma(d) < 2*d < A003961(d), where A003961 is fully multiplicative with a(p) = nextprime(p).

The programs for A378663, the canonical program `A378663.P6986709549582363223` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A378663 has offset 1).

The definition of A378663 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A080225, A378662, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A378663.P14886842961403948668

`∑{d}[n+1, A341613(#)]`
-/

namespace A378663.P14886842961403948668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A341613 d

end

end A378663.P14886842961403948668

namespace A378663

/-- `∑{d}[n+1, A341613(#)]` -/
def P14886842961403948668.Spec : Prop :=
  ∀ n, P14886842961403948668.a n = A378663 (n + 1)

end A378663

/-! ## A378663.P6986709549582363223

`A378662(n+1)-A080225(n+1)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A378663

/-- `A378662(n+1)-A080225(n+1)` -/
def P6986709549582363223.Spec : Prop :=
  ∀ n, P6986709549582363223.a n = A378663 (n + 1)

theorem P6986709549582363223.correct : P6986709549582363223.Spec := by
  intro n
  simp only [A378663, Nat.add_sub_cancel]

end A378663

/-! ## A378663.P12518738686736392019

`A337345(n+1)-A341620(n+1)`
-/

namespace A378663.P12518738686736392019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337345 (n + 1) - A341620 (n + 1)

end

end A378663.P12518738686736392019

namespace A378663

/-- `A337345(n+1)-A341620(n+1)` -/
def P12518738686736392019.Spec : Prop :=
  ∀ n, P12518738686736392019.a n = A378663 (n + 1)

theorem P12518738686736392019.correct : P12518738686736392019.Spec := by
  intro n
  simp only [A378663, Nat.add_sub_cancel, A378663.P12518738686736392019.a, A378663.P6986709549582363223.a, A080225, A080225.P3972253355863549371.f1, A080225.P3972253355863549371.a, A337345, A337345.P1594935461271935527.a, A341620, A341620.P4191397084300056986.a, A378662, A378662.P11219609030214075406.f1, A378662.P11219609030214075406.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A080224, A080224.P15248761020012364030.f1, A080224.P15248761020012364030.a, A341612, A341612.P3068073104531840485.a, A252742, A252742.P12034946379470004791.a, A294935, A294935.P4767353041558056281.f1, A294935.P4767353041558056281.a, A294937, A294937.P16064831210993750001.a, A003961, A003961.P5996473960037614004.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A378663

/-! ## A378663.P12470159222577509902

`A337345(n+1)-A174341(n)*A341624(n+1)`
-/

namespace A378663.P12470159222577509902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337345 (n + 1) - A174341 n * A341624 (n + 1)

end

end A378663.P12470159222577509902

namespace A378663

/-- `A337345(n+1)-A174341(n)*A341624(n+1)` -/
def P12470159222577509902.Spec : Prop :=
  ∀ n, P12470159222577509902.a n = A378663 (n + 1)

end A378663

/-! ## A378663.P16576520058242396380

`A118977(A381603(n+4))%A001055(n+1)`
-/

namespace A378663.P16576520058242396380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A118977 (A381603 (n + 4)).toNat) (A001055 (n + 1))

end

end A378663.P16576520058242396380

namespace A378663

/-- `A118977(A381603(n+4))%A001055(n+1)` -/
def P16576520058242396380.Spec : Prop :=
  ∀ n, P16576520058242396380.a n = A378663 (n + 1)

end A378663

/-!
# A378664: Greatest divisor d of n such that sigma(d) <= 2*d < A003961(d), or 1 if no such divisor exists, where A003961 is fully multiplicative with a(p) = nextprime(p).

The programs for A378664, there is no canonical definition to state claims against.
-/

/-! ## A378664.P14691173023372045571

`(n*∏{p}[n+1, C(#%n, #)]+1)/A104706(A078536(n))`
-/

namespace A378664.P14691173023372045571
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n * (∏ p ∈ Nat.primeFactors (f1 n), Nat.choose (p % n) p) + 1 : ℕ) : ℚ) / (A104706 (A078536 n).toNat : ℚ)

end

end A378664.P14691173023372045571

/-! ## A378664.P6483286295394727938

`A005451(n+1)/A309913(A073675(3*n+5))`
-/

namespace A378664.P6483286295394727938
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005451 (n + 1) : ℚ) / (A309913 (A073675 (3 * n + 5)).toNat : ℚ)

end

end A378664.P6483286295394727938

/-! ## A378664.P3388519871667411091

`A308993(A176029(n+1))`
-/

namespace A378664.P3388519871667411091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308993 (A176029 (n + 1)).toNat

end

end A378664.P3388519871667411091

/-! ## A378664.P17192914077183417633

`A308993((n+1)^A001222(n+1))`
-/

namespace A378664.P17192914077183417633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308993 (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ (A001222 (n + 1) : ℤ))).toNat

end

end A378664.P17192914077183417633

/-!
# A378665: Greatest non-abundant divisor of n.

The programs for A378665, there is no canonical definition to state claims against.
-/

/-! ## A378665.P14673225372833263499

`(n+1)/A378660(n+1)`
-/

namespace A378665.P14673225372833263499
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A378660 (n + 1) : ℚ)

end

end A378665.P14673225372833263499

/-! ## A378665.P6732684709789898127

`(n+1)/(A371895(A291166(2*n+3))%A371921(n+1)+1)`
-/

namespace A378665.P6732684709789898127
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.tmod (A371895 (A291166 (2 * n + 3)).toNat) (A371921 (n + 1)) + 1 : ℚ)

end

end A378665.P6732684709789898127

/-! ## A378665.P15965608750177207453

`A340008(2*(n+1)/(A080224(n+1)+1))`
-/

namespace A378665.P15965608750177207453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340008 (SequenceMachineLib.roundAway ((2 * (n + 1) : ℚ) / (A080224 (n + 1) + 1 : ℚ))).toNat

end

end A378665.P15965608750177207453

/-!
# A378666: Triangular array read by rows: T(n,k) is the number of n X n idempotent matrices over GF(3) having rank k, n>=0, 0<=k<=n.

The programs for A378666, the canonical program `A378666.P8706782011902530861` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A378666 has offset 0).

The definition of A378666 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A022167, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A378666.P8706782011902530861

`A022167(C(row(n)+1, 2)+col(n))*A118180(C(row(n)+1, 2)+col(n))`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A378666

/-- `A022167(C(row(n)+1, 2)+col(n))*A118180(C(row(n)+1, 2)+col(n))` -/
def P8706782011902530861.Spec : Prop :=
  ∀ n, P8706782011902530861.a n = A378666 n

theorem P8706782011902530861.correct : P8706782011902530861.Spec := by
  intro n
  simp only [A378666]

end A378666

/-! ## A378666.P3019444189393416080

`3^((row(n)-col(n))*col(n))*A022167(n)`
-/

namespace A378666.P3019444189393416080
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ)) * (SequenceMachineLib.triCol n : ℤ) : ℤ) * (A022167 n : ℚ)

end

end A378666.P3019444189393416080

namespace A378666

/-- `3^((row(n)-col(n))*col(n))*A022167(n)` -/
def P3019444189393416080.Spec : Prop :=
  ∀ n, P3019444189393416080.a n = (A378666 n : ℚ)

end A378666

/-! ## A378666.P7272823608854183462

`A022167(n)*A118180(n)`
-/

namespace A378666.P7272823608854183462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022167 n * A118180 n

end

end A378666.P7272823608854183462

namespace A378666

/-- `A022167(n)*A118180(n)` -/
def P7272823608854183462.Spec : Prop :=
  ∀ n, P7272823608854183462.a n = A378666 n

end A378666

/-! ## A378666.P9039982916047125196

`3^(1-A176270(n))*A022167(n)`
-/

namespace A378666.P9039982916047125196
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (1 - A176270 n : ℤ) * (A022167 n : ℚ)

end

end A378666.P9039982916047125196

namespace A378666

/-- `3^(1-A176270(n))*A022167(n)` -/
def P9039982916047125196.Spec : Prop :=
  ∀ n, P9039982916047125196.a n = (A378666 n : ℚ)

end A378666

/-! ## A378666.P15285994715762918534

`A000244(A004247(n))*A022167(n)`
-/

namespace A378666.P15285994715762918534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (A004247 n).toNat * A022167 n

end

end A378666.P15285994715762918534

namespace A378666

/-- `A000244(A004247(n))*A022167(n)` -/
def P15285994715762918534.Spec : Prop :=
  ∀ n, P15285994715762918534.a n = A378666 n

end A378666

/-!
# A378668: G.f. A(x) satisfies A(x) = 1/( 1 - x*A(x)^2/(1 - x*A(x)^2) )^2.

The programs for A378668, there is no canonical definition to state claims against.
-/

/-! ## A378668.P4195808366565909262

`A087069(A087069((n+1)^n))`
-/

namespace A378668.P4195808366565909262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087069 (A087069 ((n + 1) ^ n)).toNat

end

end A378668.P4195808366565909262

/-!
# A378669: G.f. A(x) satisfies A(x) = 1/( 1 - x*A(x)^(4/3)/(1 - x*A(x)^(4/3)) )^3.

The programs for A378669, there is no canonical definition to state claims against.
-/

/-! ## A378669.P8559258946392417236

`A036537(A331397(n))+n`
-/

namespace A378669.P8559258946392417236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036537 (A331397 n).toNat + (n : ℤ)

end

end A378669.P8559258946392417236

/-!
# A378670: G.f. A(x) satisfies A(x) = 1/( 1 - x*A(x)^(3/2)/(1 - x*A(x)^(3/2)) )^2.

The programs for A378670, there is no canonical definition to state claims against.
-/

/-! ## A378670.P653517988821094365

`A200738(A150244(n))`
-/

namespace A378670.P653517988821094365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200738 (A150244 n).toNat

end

end A378670.P653517988821094365

/-!
# A378671: a(n) is the number of cases in which prime(n) is either one of the three primes in the p, p + k and p + 2k arithmetic progressions in A120627.

The programs for A378671, there is no canonical definition to state claims against.
-/

/-! ## A378671.P17807972867033188159

`A251141(A089897(n+1))`
-/

namespace A378671.P17807972867033188159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251141 (A089897 (n + 1)).toNat

end

end A378671.P17807972867033188159

/-! ## A378671.P15318885614901942956

`A058061(A226870(2*n+1)-1)`
-/

namespace A378671.P15318885614901942956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058061 (A226870 (2 * n + 1) - 1).toNat

end

end A378671.P15318885614901942956

/-! ## A378671.P10342453915507029072

`A064547(A048854(n)+A001106(n))`
-/

namespace A378671.P10342453915507029072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064547 (A048854 n + A001106 n).toNat

end

end A378671.P10342453915507029072

/-! ## A378671.P13895947087016241727

`A124765(A279262(n+1)-A264986(n))`
-/

namespace A378671.P13895947087016241727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124765 (A279262 (n + 1) - A264986 n).toNat

end

end A378671.P13895947087016241727

/-! ## A378671.P11128981794449159681

`A001221(∪[A094309(n+3), A231412(n)])`
-/

namespace A378671.P11128981794449159681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094309 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231412 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A378671.P11128981794449159681

/-!
# A378672: Numbers of uniquely embeddable trees on n vertices.

The programs for A378672, there is no canonical definition to state claims against.
-/

/-! ## A378672.P14041563644474859841

`A000055(n+1)-A378673(n+1)`
-/

namespace A378672.P14041563644474859841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000055 (n + 1) - A378673 (n + 1)

end

end A378672.P14041563644474859841

/-! ## A378672.P4765028419117711316

`A371170(A005627(n))`
-/

namespace A378672.P4765028419117711316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371170 (A005627 n).toNat

end

end A378672.P4765028419117711316

/-! ## A378672.P7734571704521294570

`A329133(A192677(n))`
-/

namespace A378672.P7734571704521294570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329133 (A192677 n).toNat

end

end A378672.P7734571704521294570

/-! ## A378672.P18014361603145691480

`A363997(A227375(n))`
-/

namespace A378672.P18014361603145691480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363997 (A227375 n).toNat

end

end A378672.P18014361603145691480

/-! ## A378672.P635830410896908246

`A351846(A148173(n+1))`
-/

namespace A378672.P635830410896908246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351846 (A148173 (n + 1)).toNat

end

end A378672.P635830410896908246

/-!
# A378673: Numbers of not uniquely embeddable trees on n vertices.

The programs for A378673, there is no canonical definition to state claims against.
-/

/-! ## A378673.P1893940315813646139

`A000055(n+1)-A378672(n+1)`
-/

namespace A378673.P1893940315813646139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000055 (n + 1) - A378672 (n + 1)

end

end A378673.P1893940315813646139

/-! ## A378673.P4920740402140177252

`A121385(A001611(n))`
-/

namespace A378673.P4920740402140177252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121385 (A001611 n).toNat

end

end A378673.P4920740402140177252

/-! ## A378673.P18430555926885919367

`A089864(A036677(n))`
-/

namespace A378673.P18430555926885919367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089864 (A036677 n).toNat

end

end A378673.P18430555926885919367

/-! ## A378673.P13098333688519599817

`A121385(A111077(n))`
-/

namespace A378673.P13098333688519599817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121385 (A111077 n).toNat

end

end A378673.P13098333688519599817

/-! ## A378673.P13920694956910176229

`A369324(A036657(n))`
-/

namespace A378673.P13920694956910176229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369324 (A036657 n).toNat

end

end A378673.P13920694956910176229

/-!
# A378674: Triangle T(n,k) read by rows, where row n is a permutation of numbers 1 through n, such that if the deck of n cards is prepared in this order, and down-under dealing is used, then the resulting cards are put down in increasing order.

The programs for A378674, there is no canonical definition to state claims against.
-/

/-! ## A378674.P1601814824628427400

`A378635(C(row(n)+1, 2)+(col(n)+1)%(row(n)+1)+1)`
-/

namespace A378674.P1601814824628427400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378635 (Nat.choose (SequenceMachineLib.triRow n + 1) 2 + ((SequenceMachineLib.triCol n + 1) % (SequenceMachineLib.triRow n + 1) + 1))

end

end A378674.P1601814824628427400

/-! ## A378674.P4243028838718836500

`A378635(A066181(n+1))`
-/

namespace A378674.P4243028838718836500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378635 (A066181 (n + 1)).toNat

end

end A378674.P4243028838718836500

/-! ## A378674.P6470390967496302727

`A330896(n+1)+A141728(A344740(n))`
-/

namespace A378674.P6470390967496302727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330896 (n + 1) + A141728 (A344740 n).toNat

end

end A378674.P6470390967496302727

/-! ## A378674.P5038676653661970757

`A256440(A256474(n+1))%A256471(3*n+5)`
-/

namespace A378674.P5038676653661970757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A256440 (A256474 (n + 1)).toNat) (A256471 (3 * n + 5))

end

end A378674.P5038676653661970757

/-! ## A378674.P15582530956709697803

`A088433(A017915(n+1))`
-/

namespace A378674.P15582530956709697803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088433 (A017915 (n + 1)).toNat

end

end A378674.P15582530956709697803

/-!
# A378676: a(n) = J(n) * J(n+2) where J(n) = Jacobsthal(n) = A001045(n).

The programs for A378676, the canonical program `A378676.P5766645490257253451` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A378676 has offset 0).

The definition of A378676 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A378676.P3565255645559367084

`ogf((3x-4x^2)/(1-3x-6x^2+8x^3))`
-/

namespace A378676.P3565255645559367084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 3, -4] [1, -3, -6, 8] n

end

end A378676.P3565255645559367084

namespace A378676

/-- `ogf((3x-4x^2)/(1-3x-6x^2+8x^3))` -/
def P3565255645559367084.Spec : Prop :=
  ∀ n, P3565255645559367084.a n = A378676 n

end A378676

/-! ## A378676.P5766645490257253451

`3*a(n-1)+6*a(n-2)-8*a(n-3)` with `a(0)=0, a(1)=3, a(2)=5`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A378676

/-- `3*a(n-1)+6*a(n-2)-8*a(n-3)` -/
def P5766645490257253451.Spec : Prop :=
  ∀ n, P5766645490257253451.a n = A378676 n

theorem P5766645490257253451.correct : P5766645490257253451.Spec := by
  intro n
  simp only [A378676]

end A378676

/-! ## A378676.P16500840835993172352

`(4^(n+1)-5*(-2)^n+1)/9`
-/

namespace A378676.P16500840835993172352
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((4 ^ (n + 1) : ℤ) - 5 * (-2) ^ n + 1 : ℚ) / 9

end

end A378676.P16500840835993172352

namespace A378676

/-- `(4^(n+1)-5*(-2)^n+1)/9` -/
def P16500840835993172352.Spec : Prop :=
  ∀ n, P16500840835993172352.a n = (A378676 n : ℚ)

theorem P16500840835993172352.correct : P16500840835993172352.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A378676, Nat.add_sub_cancel, A378676.P16500840835993172352.a, A378676.P5766645490257253451.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A378676, Nat.add_sub_cancel, A378676.P16500840835993172352.a, A378676.P5766645490257253451.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A378676

/-! ## A378676.P11483763440876922843

`∑[ogf((-3x+4x^2)/(-1+2x+8x^2))]`
-/

namespace A378676.P11483763440876922843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 3, -4] [1, -2, -8] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A378676.P11483763440876922843

namespace A378676

/-- `∑[ogf((-3x+4x^2)/(-1+2x+8x^2))]` -/
def P11483763440876922843.Spec : Prop :=
  ∀ n, P11483763440876922843.a n = A378676 n

end A378676

/-! ## A378676.P8163644136318409893

`2*(a(n-1)+4*a(n-2))-1` with `a(0)=0, a(1)=3`
-/

namespace A378676.P8163644136318409893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 3] fun n a =>
  2 * (a (n - 1) + 4 * a (n - 2)) - 1

end

end A378676.P8163644136318409893

namespace A378676

/-- `2*(a(n-1)+4*a(n-2))-1` -/
def P8163644136318409893.Spec : Prop :=
  ∀ n, P8163644136318409893.a n = A378676 n

end A378676

/-! ## A378676.P359699012727379671

`A241685(n)+A095129(n)`
-/

namespace A378676.P359699012727379671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241685 n + A095129 n

end

end A378676.P359699012727379671

namespace A378676

/-- `A241685(n)+A095129(n)` -/
def P359699012727379671.Spec : Prop :=
  ∀ n, P359699012727379671.a n = A378676 n

end A378676

/-! ## A378676.P11318719760816867038

`A003674(n)-A084152(n)`
-/

namespace A378676.P11318719760816867038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003674 n - A084152 n

end

end A378676.P11318719760816867038

namespace A378676

/-- `A003674(n)-A084152(n)` -/
def P11318719760816867038.Spec : Prop :=
  ∀ n, P11318719760816867038.a n = A378676 n

end A378676

/-! ## A378676.P10443258769369723103

`A001045(n)*A283642(n)`
-/

namespace A378676.P10443258769369723103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 n * A283642 n

end

end A378676.P10443258769369723103

namespace A378676

/-- `A001045(n)*A283642(n)` -/
def P10443258769369723103.Spec : Prop :=
  ∀ n, P10443258769369723103.a n = A378676 n

end A378676

/-! ## A378676.P15618006679641022469

`A192382(n+1)+A139818(n)`
-/

namespace A378676.P15618006679641022469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192382 (n + 1) + A139818 n

end

end A378676.P15618006679641022469

namespace A378676

/-- `A192382(n+1)+A139818(n)` -/
def P15618006679641022469.Spec : Prop :=
  ∀ n, P15618006679641022469.a n = A378676 n

end A378676

/-! ## A378676.P9690950858756783035

`A054881(n+1)-A084175(n)`
-/

namespace A378676.P9690950858756783035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054881 (n + 1) - A084175 n

end

end A378676.P9690950858756783035

namespace A378676

/-- `A054881(n+1)-A084175(n)` -/
def P9690950858756783035.Spec : Prop :=
  ∀ n, P9690950858756783035.a n = A378676 n

end A378676

/-! ## A378676.P883895316327874284

`A001045(n+2)*A001045(n)`
-/

namespace A378676.P883895316327874284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (n + 2) * A001045 n

end

end A378676.P883895316327874284

namespace A378676

/-- `A001045(n+2)*A001045(n)` -/
def P883895316327874284.Spec : Prop :=
  ∀ n, P883895316327874284.a n = A378676 n

end A378676

/-! ## A378676.P4952207624019366479

`A084175(n)+2*A139818(n)`
-/

namespace A378676.P4952207624019366479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084175 n + 2 * A139818 n

end

end A378676.P4952207624019366479

namespace A378676

/-- `A084175(n)+2*A139818(n)` -/
def P4952207624019366479.Spec : Prop :=
  ∀ n, P4952207624019366479.a n = A378676 n

end A378676

/-! ## A378676.P12762597409342218307

`A001045(n)*A112447(2*n)`
-/

namespace A378676.P12762597409342218307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 n * A112447 (2 * n)

end

end A378676.P12762597409342218307

namespace A378676

/-- `A001045(n)*A112447(2*n)` -/
def P12762597409342218307.Spec : Prop :=
  ∀ n, P12762597409342218307.a n = A378676 n

end A378676

/-! ## A378676.P685154861421340094

`A001045(n)*A356050(2*n)`
-/

namespace A378676.P685154861421340094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 n * A356050 (2 * n)

end

end A378676.P685154861421340094

namespace A378676

/-- `A001045(n)*A356050(2*n)` -/
def P685154861421340094.Spec : Prop :=
  ∀ n, P685154861421340094.a n = A378676 n

end A378676

/-! ## A378676.P3925318906529656486

`A084183(n+1)*A092808(n+1)`
-/

namespace A378676.P3925318906529656486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084183 (n + 1) * A092808 (n + 1)

end

end A378676.P3925318906529656486

namespace A378676

/-- `A084183(n+1)*A092808(n+1)` -/
def P3925318906529656486.Spec : Prop :=
  ∀ n, P3925318906529656486.a n = A378676 n

end A378676

/-! ## A378676.P9385720338351345441

`A112447(2*n)*A133684(2*n)`
-/

namespace A378676.P9385720338351345441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112447 (2 * n) * A133684 (2 * n)

end

end A378676.P9385720338351345441

namespace A378676

/-- `A112447(2*n)*A133684(2*n)` -/
def P9385720338351345441.Spec : Prop :=
  ∀ n, P9385720338351345441.a n = A378676 n

end A378676

/-! ## A378676.P9936222249514241297

`A133684(2*n)*A356050(2*n)`
-/

namespace A378676.P9936222249514241297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133684 (2 * n) * A356050 (2 * n)

end

end A378676.P9936222249514241297

namespace A378676

/-- `A133684(2*n)*A356050(2*n)` -/
def P9936222249514241297.Spec : Prop :=
  ∀ n, P9936222249514241297.a n = A378676 n

end A378676

/-! ## A378676.P674237348441388551

`A003683(n)+A139818(n)+A003683(n)`
-/

namespace A378676.P674237348441388551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003683 n + (A139818 n + A003683 n)

end

end A378676.P674237348441388551

namespace A378676

/-- `A003683(n)+A139818(n)+A003683(n)` -/
def P674237348441388551.Spec : Prop :=
  ∀ n, P674237348441388551.a n = A378676 n

end A378676

/-! ## A378676.P363389906578934874

`(A048573(n)-A078008(n))*A001045(n)`
-/

namespace A378676.P363389906578934874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A048573 n - A078008 n) * A001045 n

end

end A378676.P363389906578934874

namespace A378676

/-- `(A048573(n)-A078008(n))*A001045(n)` -/
def P363389906578934874.Spec : Prop :=
  ∀ n, P363389906578934874.a n = A378676 n

end A378676

/-! ## A378676.P5486057035262127682

`(A344109(n)-A154879(n))*A001045(n)`
-/

namespace A378676.P5486057035262127682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A344109 n - A154879 n) * A001045 n

end

end A378676.P5486057035262127682

namespace A378676

/-- `(A344109(n)-A154879(n))*A001045(n)` -/
def P5486057035262127682.Spec : Prop :=
  ∀ n, P5486057035262127682.a n = A378676 n

end A378676

/-!
# A378679: a(n) = denominator(Sum_{k=1..n} 1/P(k)), where P(k) = A006530(k) is the greatest prime dividing k for k >= 2, and P(1) = 1.

The programs for A378679, there is no canonical definition to state claims against.
-/

/-! ## A378679.P14104255107826223808

`lcm(A007913(A058312(n+1)), A300518(n+1))`
-/

namespace A378679.P14104255107826223808
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A007913 (A058312 (n + 1)).toNat) (A300518 (n + 1))

end

end A378679.P14104255107826223808

/-! ## A378679.P8769567916675931934

`lcm(A007913(A109935(n+1)), A376427(n+1))`
-/

namespace A378679.P8769567916675931934
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A007913 (A109935 (n + 1)).toNat) (A376427 (n + 1))

end

end A378679.P8769567916675931934

/-! ## A378679.P7593514623613849611

`A056839(A061497(n+1))`
-/

namespace A378679.P7593514623613849611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056839 (A061497 (n + 1)).toNat

end

end A378679.P7593514623613849611

/-! ## A378679.P6054161236025434528

`A056839(A077741(n+1))`
-/

namespace A378679.P6054161236025434528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056839 (A077741 (n + 1)).toNat

end

end A378679.P6054161236025434528

/-! ## A378679.P3882601526413524973

`A056839(A133233(A034386(n))+n)`
-/

namespace A378679.P3882601526413524973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056839 (A133233 (A034386 n).toNat + (n : ℤ)).toNat

end

end A378679.P3882601526413524973

/-!
# A378682: Triangle T(n,k) read by rows: where T(n,k) is the number of the k-th eliminated person in the variation of the Josephus elimination process for n people, where the first person is eliminated, and after that, every second person is eliminated.

The programs for A378682, there is no canonical definition to state claims against.
-/

/-! ## A378682.P10671696390101847616

`A364663(A129161(n+1))`
-/

namespace A378682.P10671696390101847616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364663 (A129161 (n + 1)).toNat

end

end A378682.P10671696390101847616

/-! ## A378682.P34707408184612192

`A132283(n+1)^A366134(A366154(3*n+1))`
-/

namespace A378682.P34707408184612192
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132283 (n + 1) : ℚ) ^ (A366134 (A366154 (3 * n + 1)).toNat : ℤ)

end

end A378682.P34707408184612192

/-! ## A378682.P9053382427152383541

`A132283(A043318(n+1))`
-/

namespace A378682.P9053382427152383541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132283 (A043318 (n + 1)).toNat

end

end A378682.P9053382427152383541

/-! ## A378682.P6492630962560159397

`A132283(A044915(n+1))`
-/

namespace A378682.P6492630962560159397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132283 (A044915 (n + 1)).toNat

end

end A378682.P6492630962560159397

/-! ## A378682.P5234590865351816567

`A132283(A055647(n+1))`
-/

namespace A378682.P5234590865351816567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132283 (A055647 (n + 1)).toNat

end

end A378682.P5234590865351816567

/-!
# A378684: a(n) = A378200(A378200(n)).

The programs for A378684, the canonical program `A378684.P885690523636202921` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A378684 has offset 1).

The definition of A378684 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A378200, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A378684.P885690523636202921

`A378200(A378200(n+1))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A378684

/-- `A378200(A378200(n+1))` -/
def P885690523636202921.Spec : Prop :=
  ∀ n, P885690523636202921.a n = A378684 (n + 1)

theorem P885690523636202921.correct : P885690523636202921.Spec := by
  intro n
  simp only [A378684, Nat.add_sub_cancel]

end A378684

/-! ## A378684.P7375272940768316929

`A379343(A376214(n+1))`
-/

namespace A378684.P7375272940768316929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379343 (A376214 (n + 1)).toNat

end

end A378684.P7375272940768316929

namespace A378684

/-- `A379343(A376214(n+1))` -/
def P7375272940768316929.Spec : Prop :=
  ∀ n, P7375272940768316929.a n = A378684 (n + 1)

end A378684

/-! ## A378684.P15035094557996605895

`A378762(A378705(n+1))`
-/

namespace A378684.P15035094557996605895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378762 (A378705 (n + 1)).toNat

end

end A378684.P15035094557996605895

namespace A378684

/-- `A378762(A378705(n+1))` -/
def P15035094557996605895.Spec : Prop :=
  ∀ n, P15035094557996605895.a n = A378684 (n + 1)

end A378684

/-! ## A378684.P5243128853113351008

`A376214(A381664(n+1))`
-/

namespace A378684.P5243128853113351008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376214 (A381664 (n + 1)).toNat

end

end A378684.P5243128853113351008

namespace A378684

/-- `A376214(A381664(n+1))` -/
def P5243128853113351008.Spec : Prop :=
  ∀ n, P5243128853113351008.a n = A378684 (n + 1)

end A378684

/-! ## A378684.P5895277159504973137

`A379342(A379342(1+n))`
-/

namespace A378684.P5895277159504973137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379342 (A379342 (1 + n)).toNat

end

end A378684.P5895277159504973137

namespace A378684

/-- `A379342(A379342(1+n))` -/
def P5895277159504973137.Spec : Prop :=
  ∀ n, P5895277159504973137.a n = A378684 (n + 1)

end A378684

/-! ## A378684.P1906086661873367597

`A380245(A380200(n+1))`
-/

namespace A378684.P1906086661873367597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380245 (A380200 (n + 1)).toNat

end

end A378684.P1906086661873367597

namespace A378684

/-- `A380245(A380200(n+1))` -/
def P1906086661873367597.Spec : Prop :=
  ∀ n, P1906086661873367597.a n = A378684 (n + 1)

end A378684

/-! ## A378684.P18360864573475423438

`A381662(A379343(n+1))`
-/

namespace A378684.P18360864573475423438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381662 (A379343 (n + 1)).toNat

end

end A378684.P18360864573475423438

namespace A378684

/-- `A381662(A379343(n+1))` -/
def P18360864573475423438.Spec : Prop :=
  ∀ n, P18360864573475423438.a n = A378684 (n + 1)

end A378684

/-! ## A378684.P13926225621392104348

`A380200(A380815(n+1))`
-/

namespace A378684.P13926225621392104348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380200 (A380815 (n + 1)).toNat

end

end A378684.P13926225621392104348

namespace A378684

/-- `A380200(A380815(n+1))` -/
def P13926225621392104348.Spec : Prop :=
  ∀ n, P13926225621392104348.a n = A378684 (n + 1)

end A378684

/-! ## A378684.P264420785106275733

`A380815(A380245(n+1))`
-/

namespace A378684.P264420785106275733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380815 (A380245 (n + 1)).toNat

end

end A378684.P264420785106275733

namespace A378684

/-- `A380815(A380245(n+1))` -/
def P264420785106275733.Spec : Prop :=
  ∀ n, P264420785106275733.a n = A378684 (n + 1)

end A378684

/-! ## A378684.P1182611149720891870

`A380817(A381663(n+1))`
-/

namespace A378684.P1182611149720891870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380817 (A381663 (n + 1)).toNat

end

end A378684.P1182611149720891870

namespace A378684

/-- `A380817(A381663(n+1))` -/
def P1182611149720891870.Spec : Prop :=
  ∀ n, P1182611149720891870.a n = A378684 (n + 1)

end A378684

/-! ## A378684.P5830903334770370099

`A381664(A380817(n+1))`
-/

namespace A378684.P5830903334770370099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381664 (A380817 (n + 1)).toNat

end

end A378684.P5830903334770370099

namespace A378684

/-- `A381664(A380817(n+1))` -/
def P5830903334770370099.Spec : Prop :=
  ∀ n, P5830903334770370099.a n = A378684 (n + 1)

end A378684

/-! ## A378684.P14259510115161455196

`A381663(A381662(n+1))`
-/

namespace A378684.P14259510115161455196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381663 (A381662 (n + 1)).toNat

end

end A378684.P14259510115161455196

namespace A378684

/-- `A381663(A381662(n+1))` -/
def P14259510115161455196.Spec : Prop :=
  ∀ n, P14259510115161455196.a n = A378684 (n + 1)

end A378684

/-! ## A378684.P6474414393278125893

`A381664(A378762(A056023(n+1)))`
-/

namespace A378684.P6474414393278125893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381664 (A378762 (A056023 (n + 1)).toNat).toNat

end

end A378684.P6474414393278125893

namespace A378684

/-- `A381664(A378762(A056023(n+1)))` -/
def P6474414393278125893.Spec : Prop :=
  ∀ n, P6474414393278125893.a n = A378684 (n + 1)

end A378684

/-! ## A378684.P17250192975081371434

`A383589(A379343(A378762(n+1)))`
-/

namespace A378684.P17250192975081371434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383589 (A379343 (A378762 (n + 1)).toNat).toNat

end

end A378684.P17250192975081371434

namespace A378684

/-- `A383589(A379343(A378762(n+1)))` -/
def P17250192975081371434.Spec : Prop :=
  ∀ n, P17250192975081371434.a n = A378684 (n + 1)

end A378684

/-! ## A378684.P7279430813738350549

`A379343(A382679(A381968(n+1)))`
-/

namespace A378684.P7279430813738350549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379343 (A382679 (A381968 (n + 1)).toNat).toNat

end

end A378684.P7279430813738350549

namespace A378684

/-- `A379343(A382679(A381968(n+1)))` -/
def P7279430813738350549.Spec : Prop :=
  ∀ n, P7279430813738350549.a n = A378684 (n + 1)

end A378684

/-! ## A378684.P4120917532764698388

`A379343(A381968(A382680(n+1)))`
-/

namespace A378684.P4120917532764698388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379343 (A381968 (A382680 (n + 1)).toNat).toNat

end

end A378684.P4120917532764698388

namespace A378684

/-- `A379343(A381968(A382680(n+1)))` -/
def P4120917532764698388.Spec : Prop :=
  ∀ n, P4120917532764698388.a n = A378684 (n + 1)

end A378684

/-! ## A378684.P17396330323679650699

`A381663(A378762(A383589(n+1)))`
-/

namespace A378684.P17396330323679650699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381663 (A378762 (A383589 (n + 1)).toNat).toNat

end

end A378684.P17396330323679650699

namespace A378684

/-- `A381663(A378762(A383589(n+1)))` -/
def P17396330323679650699.Spec : Prop :=
  ∀ n, P17396330323679650699.a n = A378684 (n + 1)

end A378684

/-! ## A378684.P8382314187714630429

`A379343(A382499(A382679(n+1)))`
-/

namespace A378684.P8382314187714630429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379343 (A382499 (A382679 (n + 1)).toNat).toNat

end

end A378684.P8382314187714630429

namespace A378684

/-- `A379343(A382499(A382679(n+1)))` -/
def P8382314187714630429.Spec : Prop :=
  ∀ n, P8382314187714630429.a n = A378684 (n + 1)

end A378684

/-! ## A378684.P600204042026197824

`A379343(A382680(A382499(n+1)))`
-/

namespace A378684.P600204042026197824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379343 (A382680 (A382499 (n + 1)).toNat).toNat

end

end A378684.P600204042026197824

namespace A378684

/-- `A379343(A382680(A382499(n+1)))` -/
def P600204042026197824.Spec : Prop :=
  ∀ n, P600204042026197824.a n = A378684 (n + 1)

end A378684

/-! ## A378684.P4633311742145779960

`A383419(A380200(A383590(n+1)))`
-/

namespace A378684.P4633311742145779960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383419 (A380200 (A383590 (n + 1)).toNat).toNat

end

end A378684.P4633311742145779960

namespace A378684

/-- `A383419(A380200(A383590(n+1)))` -/
def P4633311742145779960.Spec : Prop :=
  ∀ n, P4633311742145779960.a n = A378684 (n + 1)

end A378684

/-!
# A378685: G.f. A(x) satisfies A(x) = 1 + x*A(x)^7/(1 - x*A(x)^3).

The programs for A378685, there is no canonical definition to state claims against.
-/

/-! ## A378685.P17901045442999866319

`A263267(A352118(n))`
-/

namespace A378685.P17901045442999866319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263267 (A352118 n).toNat

end

end A378685.P17901045442999866319

/-!
# A378687: Number of graph minors in the (2n-1)-triangular snake graph.

The programs for A378687, there is no canonical definition to state claims against.
-/

/-! ## A378687.P1839129706766885818

`A334966(A018026(n))+A000351(n)`
-/

namespace A378687.P1839129706766885818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334966 (A018026 n).toNat + A000351 n

end

end A378687.P1839129706766885818

/-!
# A378688: G.f. A(x) satisfies A(x) = 1 + x*A(x)^7/(1 - x*A(x)^2).

The programs for A378688, there is no canonical definition to state claims against.
-/

/-! ## A378688.P16111689834693629397

`A099033(A007811(n!))`
-/

namespace A378688.P16111689834693629397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099033 (A007811 (Nat.factorial n)).toNat

end

end A378688.P16111689834693629397

/-!
# A378689: a(n) = product of divisors d of n that are not coreful.

The programs for A378689, the canonical program `A378689.P1510602258272592055` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A378689 has offset 1).

The definition of A378689 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A378689.P1510602258272592055

`A007955(n+1)/A308360(n+1)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A378689

/-- `A007955(n+1)/A308360(n+1)` -/
def P1510602258272592055.Spec : Prop :=
  ∀ n, P1510602258272592055.a n = (A378689 (n + 1) : ℚ)

end A378689

/-! ## A378689.P13070624043313933637

`A183091(A290480(n+1))`
-/

namespace A378689.P13070624043313933637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183091 (A290480 (n + 1)).toNat

end

end A378689.P13070624043313933637

namespace A378689

/-- `A183091(A290480(n+1))` -/
def P13070624043313933637.Spec : Prop :=
  ∀ n, P13070624043313933637.a n = A378689 (n + 1)

end A378689

/-! ## A378689.P4170516762277241025

`A007955(A290480(n+1))/A183092(n+1)`
-/

namespace A378689.P4170516762277241025
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007955 (A290480 (n + 1)).toNat : ℚ) / (A183092 (n + 1) : ℚ)

end

end A378689.P4170516762277241025

namespace A378689

/-- `A007955(A290480(n+1))/A183092(n+1)` -/
def P4170516762277241025.Spec : Prop :=
  ∀ n, P4170516762277241025.a n = (A378689 (n + 1) : ℚ)

end A378689

/-! ## A378689.P6122094642845602099

`gcd(A000290(A183092(n+1)), A183091(n+1))`
-/

namespace A378689.P6122094642845602099
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000290 (A183092 (n + 1)).toNat) (A183091 (n + 1))

end

end A378689.P6122094642845602099

namespace A378689

/-- `gcd(A000290(A183092(n+1)), A183091(n+1))` -/
def P6122094642845602099.Spec : Prop :=
  ∀ n, (P6122094642845602099.a n : ℤ) = A378689 (n + 1)

end A378689

/-! ## A378689.P1495636982879507950

`A000188(∏{d}[(n+1)%∏{p}[n+1, lcm(#, n+1)], #])`
-/

namespace A378689.P1495636982879507950
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) % (∏ p ∈ Nat.primeFactors (f2 n), Nat.lcm p (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (∏ d ∈ Nat.divisors (f1 n), d)

end

end A378689.P1495636982879507950

namespace A378689

/-- `A000188(∏{d}[(n+1)%∏{p}[n+1, lcm(#, n+1)], #])` -/
def P1495636982879507950.Spec : Prop :=
  ∀ n, P1495636982879507950.a n = A378689 (n + 1)

end A378689

/-!
# A378690: G.f. A(x) satisfies A(x) = ( 1 + x*A(x)^(7/2)/(1 - x*A(x)) )^2.

The programs for A378690, there is no canonical definition to state claims against.
-/

/-! ## A378690.P651299428990015536

`A064598(A217360(n)+A003415(n))`
-/

namespace A378690.P651299428990015536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064598 (A217360 n + A003415 n).toNat

end

end A378690.P651299428990015536

/-!
# A378691: G.f. A(x) satisfies A(x) = 1 + x*A(x)^6/(1 - x*A(x)).

The programs for A378691, there is no canonical definition to state claims against.
-/

/-! ## A378691.P16892047814593568130

`A231348(A084782(n))`
-/

namespace A378691.P16892047814593568130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231348 (A084782 n).toNat

end

end A378691.P16892047814593568130

/-!
# A378692: G.f. A(x) satisfies A(x) = 1 + x*A(x)^7/(1 - x*A(x)).

The programs for A378692, there is no canonical definition to state claims against.
-/

/-! ## A378692.P12510124773842794631

`A256417(n^∑[and(n, -n)%3])`
-/

namespace A378692.P12510124773842794631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.land (n : ℤ) (-(n : ℤ))) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256417 (SequenceMachineLib.roundAway ((n : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ))).toNat

end

end A378692.P12510124773842794631

/-!
# A378694: G.f. A(x) satisfies A(x) = 1 + x*A(x)^7/(1 - x*A(x)^6).

The programs for A378694, there is no canonical definition to state claims against.
-/

/-! ## A378694.P16649026318474193104

`A336573(A056115(n+2)+8)`
-/

namespace A378694.P16649026318474193104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336573 (A056115 (n + 2) + 8).toNat

end

end A378694.P16649026318474193104

/-!
# A378696: Numbers k such that omega(k)^k == omega(k) (mod k), where omega = A001221.

The programs for A378696, there is no canonical definition to state claims against.
-/

/-! ## A378696.P18336802546621398944

`∪[A246655(n+1), C(n+10, 10)]`
-/

namespace A378696.P18336802546621398944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246655 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 10) 10

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = x) n

end

end A378696.P18336802546621398944

/-! ## A378696.P2711788561755475850

`∪[A000961(n+1), A001287(n)]`
-/

namespace A378696.P2711788561755475850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001287 (n + 10)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A378696.P2711788561755475850

/-! ## A378696.P13255533958397764320

`∪[A000961(n+1), A008493(n)]`
-/

namespace A378696.P13255533958397764320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008493 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A378696.P13255533958397764320

/-! ## A378696.P5370359597038415834

`∪[A000961(n+1), A008503(n)]`
-/

namespace A378696.P5370359597038415834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008503 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A378696.P5370359597038415834

/-! ## A378696.P7942744123301048158

`∪[A000961(n+1), A022113(n)]`
-/

namespace A378696.P7942744123301048158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022113 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A378696.P7942744123301048158

/-! ## A378696.P14760876376704381233

`∪[A000961(n+1), A022576(n)]`
-/

namespace A378696.P14760876376704381233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022576 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A378696.P14760876376704381233

/-! ## A378696.P8294708901332942312

`∪[A000961(n+1), A027785(n)]`
-/

namespace A378696.P8294708901332942312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027785 (n + 10)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A378696.P8294708901332942312

/-! ## A378696.P1911177494169127878

`∪[A000961(n+1), A034721(n)]`
-/

namespace A378696.P1911177494169127878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034721 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A378696.P1911177494169127878

/-! ## A378696.P4332470421425777745

`∪[A000961(n+1), A063842(n)]`
-/

namespace A378696.P4332470421425777745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063842 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A378696.P4332470421425777745

/-! ## A378696.P11564456046498511812

`∪[A000961(n+1), A124633(n)]`
-/

namespace A378696.P11564456046498511812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124633 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A378696.P11564456046498511812

/-!
# A378697: Table T(n,k), 0 < n and 0 <= k < n, where the n-th row contains the smallest n-digit primes that remain prime even if any k of their digits are deleted, or -1 if no such prime exists.

The programs for A378697, there is no canonical definition to state claims against.
-/

/-! ## A378697.P16868088514519160722

`A090707(A211703(n+1)%A211677(n+4))`
-/

namespace A378697.P16868088514519160722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090707 (Int.tmod (A211703 (n + 1)) (A211677 (n + 4))).toNat

end

end A378697.P16868088514519160722

/-!
# A378698: Number of compositions of n into parts whose sizes are Fibonacci or Lucas numbers.

The programs for A378698, there is no canonical definition to state claims against.
-/

/-! ## A378698.P4817626106821249745

`A011782(n)-A122287(A349053(n))`
-/

namespace A378698.P4817626106821249745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n - A122287 (A349053 n).toNat

end

end A378698.P4817626106821249745

/-! ## A378698.P8895821552030289152

`A280543(n)+A121373(A210645(n+1))`
-/

namespace A378698.P8895821552030289152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280543 n + A121373 (A210645 (n + 1)).toNat

end

end A378698.P8895821552030289152

/-! ## A378698.P7286003426253673453

`A011782(n)-A276150(A241705(n+1))`
-/

namespace A378698.P7286003426253673453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n - A276150 (A241705 (n + 1)).toNat

end

end A378698.P7286003426253673453

