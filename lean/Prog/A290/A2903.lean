import SequenceMachineLib
import Mathlib.Tactic
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
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
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
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C034
import Seq.B000.C035
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
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
# A290301: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 782", based on the 5-celled von Neumann neighborhood.

The programs for A290301, there is no canonical definition to state claims against.
-/

/-! ## A290301.P7070134455713904383

`A175386(A326079(n))`
-/

namespace A290301.P7070134455713904383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175386 (A326079 n).toNat

end

end A290301.P7070134455713904383

/-! ## A290301.P3589709356171351551

`A175386(A222193(n+1))`
-/

namespace A290301.P3589709356171351551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175386 (A222193 (n + 1)).toNat

end

end A290301.P3589709356171351551

/-! ## A290301.P10611123607914585865

`A281007(A032279(n+5))*A326079(n)`
-/

namespace A290301.P10611123607914585865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281007 (A032279 (n + 5)).toNat * A326079 n

end

end A290301.P10611123607914585865

/-! ## A290301.P11660953880734724702

`A023022(A047073(n+2)*A377903(n+1))`
-/

namespace A290301.P11660953880734724702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023022 (A047073 (n + 2) * A377903 (n + 1)).toNat

end

end A290301.P11660953880734724702

/-! ## A290301.P9456769101324833226

`A281013(A022294(3*n+1))*A326079(n)`
-/

namespace A290301.P9456769101324833226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281013 (A022294 (3 * n + 1)).toNat * A326079 n

end

end A290301.P9456769101324833226

/-!
# A290303: Values of usigma(n) = usigma(n+1).

The programs for A290303, there is no canonical definition to state claims against.
-/

/-! ## A290303.P17373427899701809497

`A034448(A064125(n+1))`
-/

namespace A290303.P17373427899701809497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (A064125 (n + 1)).toNat

end

end A290303.P17373427899701809497

/-! ## A290303.P13486490063306160252

`A192066(or(1, A064125(n+1)))`
-/

namespace A290303.P13486490063306160252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192066 (Int.lor 1 (A064125 (n + 1))).toNat

end

end A290303.P13486490063306160252

/-! ## A290303.P1559900131647149816

`A328258(or(1, A064125(n+1)))`
-/

namespace A290303.P1559900131647149816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328258 (Int.lor 1 (A064125 (n + 1))).toNat

end

end A290303.P1559900131647149816

/-! ## A290303.P6395419198311706595

`A331107(or(1, A064125(n+1)))`
-/

namespace A290303.P6395419198311706595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331107 (Int.lor 1 (A064125 (n + 1))).toNat

end

end A290303.P6395419198311706595

/-!
# A290304: Values of uphi(k) = uphi(k+1).

The programs for A290304, there is no canonical definition to state claims against.
-/

/-! ## A290304.P17339205447248757509

`A047994(A287055(n+1))`
-/

namespace A290304.P17339205447248757509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047994 (A287055 (n + 1)).toNat

end

end A290304.P17339205447248757509

/-! ## A290304.P16399614586388757140

`A344875(or(1, A287055(n+1)))`
-/

namespace A290304.P16399614586388757140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344875 (Int.lor 1 (A287055 (n + 1))).toNat

end

end A290304.P16399614586388757140

/-! ## A290304.P8199618740024121373

`A091732(A287055(n+1)%A307043(2*(n+2)))`
-/

namespace A290304.P8199618740024121373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091732 (Int.tmod (A287055 (n + 1)) (A307043 (2 * (n + 2)))).toNat

end

end A290304.P8199618740024121373

/-! ## A290304.P18017967989182232483

`A091732(A287055(n+1))%A332316(3*n+1)`
-/

namespace A290304.P18017967989182232483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A091732 (A287055 (n + 1)).toNat) (A332316 (3 * n + 1))

end

end A290304.P18017967989182232483

/-!
# A290305: Number of 5-dimensional polyominoes with n cells (regarding mirror-images as distinct).

The programs for A290305, there is no canonical definition to state claims against.
-/

/-! ## A290305.P15727203694423984412

`A068870(n)+A006761(round(acot(n)+n))`
-/

namespace A290305.P15727203694423984412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068870 n + A006761 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

end

end A290305.P15727203694423984412

/-! ## A290305.P2680112334839199919

`A305749(n+1)+A010848(A141761(n))`
-/

namespace A290305.P2680112334839199919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305749 (n + 1) + A010848 (A141761 n).toNat

end

end A290305.P2680112334839199919

/-! ## A290305.P6748281314804759412

`A173304(2^n-1+n)`
-/

namespace A290305.P6748281314804759412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173304 ((2 ^ n : ℤ) - 1 + (n : ℤ)).toNat

end

end A290305.P6748281314804759412

/-!
# A290306: Number of permutations of the multiset {1,1,2,2,...,2n,2n} having exactly n ascents and no number smaller than k between the two occurrences of any number k.

The programs for A290306, there is no canonical definition to state claims against.
-/

/-! ## A290306.P2051270538741652068

`A201637(∑[4*n])`
-/

namespace A290306.P2051270538741652068
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201637 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A290306.P2051270538741652068

/-! ## A290306.P9400384159124217318

`A288874(∑[4*n])`
-/

namespace A290306.P9400384159124217318
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288874 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A290306.P9400384159124217318

/-! ## A290306.P2180343279653409569

`A008517(2*n²+1)`
-/

namespace A290306.P2180343279653409569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008517 (2 * n ^ 2 + 1)

end

end A290306.P2180343279653409569

/-! ## A290306.P10225333665678833412

`A112007(A004273(n²))`
-/

namespace A290306.P10225333665678833412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112007 (A004273 (n ^ 2)).toNat

end

end A290306.P10225333665678833412

/-! ## A290306.P7752923792672130917

`A112007(A061579(2*n²))`
-/

namespace A290306.P7752923792672130917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112007 (A061579 (2 * n ^ 2)).toNat

end

end A290306.P7752923792672130917

/-!
# A290307: Square array A(n,k), n >= 0, k >= 1, read by antidiagonals, where column k is the expansion of Product_{j>=1} (1 + x^j)/(1 + x^(k*j)).

The programs for A290307, there is no canonical definition to state claims against.
-/

/-! ## A290307.P2279890510584249603

`A003056(A293461(n))%A096892(n+1)`
-/

namespace A290307.P2279890510584249603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003056 (A293461 n).toNat) (A096892 (n + 1))

end

end A290307.P2279890510584249603

/-! ## A290307.P13253336699821792410

`A100196(A293461(n))%A140790(n+1)`
-/

namespace A290307.P13253336699821792410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A100196 (A293461 n).toNat) (A140790 (n + 1))

end

end A290307.P13253336699821792410

/-! ## A290307.P12652213967556582631

`A117707(A293461(n))%A165159(n+1)`
-/

namespace A290307.P12652213967556582631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A117707 (A293461 n).toNat) (A165159 (n + 1))

end

end A290307.P12652213967556582631

/-! ## A290307.P700024397774746469

`A003056(A293461(n))+A000038(A025065(n))`
-/

namespace A290307.P700024397774746469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A293461 n).toNat + A000038 (A025065 n).toNat

end

end A290307.P700024397774746469

/-! ## A290307.P17086526123548448447

`A085202(A293461(n))+A000038(A251072(n))`
-/

namespace A290307.P17086526123548448447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085202 (A293461 n).toNat + A000038 (A251072 n).toNat

end

end A290307.P17086526123548448447

/-! ## A290307.P9872865960871586899

`A085202(A293461(n))%A306685(A011973(n))`
-/

namespace A290307.P9872865960871586899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A085202 (A293461 n).toNat) (A306685 (A011973 n).toNat)

end

end A290307.P9872865960871586899

/-! ## A290307.P14392361786919529280

`A011973(A011973(n)²)*A085202(A293461(n))`
-/

namespace A290307.P14392361786919529280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011973 (A011973 n ^ 2).toNat * A085202 (A293461 n).toNat

end

end A290307.P14392361786919529280

/-! ## A290307.P5013870571136553081

`A003056(A293461(n))+A000038(A182312(n+1))`
-/

namespace A290307.P5013870571136553081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A293461 n).toNat + A000038 (A182312 (n + 1)).toNat

end

end A290307.P5013870571136553081

/-!
# A290308: Decimal encoding of the prime factorization of n: for n > 0 with prime factorization Product_{i=1..k} prime(i)^e_i, let E_n = (e_k, ..., e_1), replace each nonzero e_i with A052382(e_i) and each zero e_i with "" in E_n to obtain F_n, concatenate the elements of F_n with a "0" inserted after every element except for the last, and interpret in decimal base.

The programs for A290308, there is no canonical definition to state claims against.
-/

/-! ## A290308.P15396285245043408867

`A376450(n)%A305801(A192364(n))`
-/

namespace A290308.P15396285245043408867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A376450 n) (A305801 (A192364 n).toNat)

end

end A290308.P15396285245043408867

/-! ## A290308.P12058270815940611862

`and(A057079(A083991(3*n+1)), A376450(n))`
-/

namespace A290308.P12058270815940611862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057079 (A083991 (3 * n + 1)).toNat) (A376450 n)

end

end A290308.P12058270815940611862

/-!
# A290309: Number of units u in Z/nZ such that Phi(5,u) is a unit, where Phi is the cyclotomic polynomial.

The programs for A290309, there is no canonical definition to state claims against.
-/

/-! ## A290309.P14347685694651690101

`A277906(n+1)-A010051(A309917(n+1))`
-/

namespace A290309.P14347685694651690101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277906 (n + 1) - A010051 (A309917 (n + 1)).toNat

end

end A290309.P14347685694651690101

/-! ## A290309.P964922824667590515

`A000010(n+1)-A366794(A293100(2*n+5))`
-/

namespace A290309.P964922824667590515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) - A366794 (A293100 (2 * n + 5)).toNat

end

end A290309.P964922824667590515

/-! ## A290309.P6598566647770052620

`A073184(∏{e}[A001898(n), #])`
-/

namespace A290309.P6598566647770052620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001898 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073184 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A290309.P6598566647770052620

/-! ## A290309.P13242406020339824755

`A176187(A000217(n))+A032741(n)`
-/

namespace A290309.P13242406020339824755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176187 (A000217 n).toNat + A032741 n

end

end A290309.P13242406020339824755

/-! ## A290309.P12626636095408531588

`A192006(A193477(n))+A032741(n)`
-/

namespace A290309.P12626636095408531588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192006 (A193477 n).toNat + A032741 n

end

end A290309.P12626636095408531588

/-!
# A290310: Irregular triangle read by rows. Row n gives the coefficients of the polynomial multiplying the exponential function in the e.g.f. of the (n+1)-th diagonal sequences of triangle A008459 (Pascal squares). T(n,k) for n >= 0 and k = 0..2*n.

The programs for A290310, there is no canonical definition to state claims against.
-/

/-! ## A290310.P10291561605736650679

`A316649(n+1)+A316649(n)`
-/

namespace A290310.P10291561605736650679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316649 (n + 1) + A316649 n

end

end A290310.P10291561605736650679

/-! ## A290310.P15936541727370042347

`abs(Δ[A033999(n)*A316649(n)])`
-/

namespace A290310.P15936541727370042347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A316649 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A290310.P15936541727370042347

/-!
# A290312: Third diagonal sequence of the Sheffer triangle A094816 (special Charlier).

The programs for A290312, the canonical program `A290312.P15030326888209738730` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A290312 has offset 0).

The definition of A290312 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A290312.P12817403426648672247

`(24+70*n+69*n²+26*n^3+3*n^4)/24`
-/

namespace A290312.P12817403426648672247
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (24 + 70 * n + 69 * n ^ 2 + 26 * n ^ 3 + 3 * n ^ 4 : ℚ) / 24

end

end A290312.P12817403426648672247

namespace A290312

/-- `(24+70*n+69*n²+26*n^3+3*n^4)/24` -/
def P12817403426648672247.Spec : Prop :=
  ∀ n, P12817403426648672247.a n = (A290312 n : ℚ)

theorem P12817403426648672247.correct : P12817403426648672247.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A290312, Nat.add_sub_cancel, A290312.P12817403426648672247.a, A290312.P15030326888209738730.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A290312, Nat.add_sub_cancel, A290312.P12817403426648672247.a, A290312.P15030326888209738730.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A290312

/-! ## A290312.P15030326888209738730

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=1, a(1)=8, a(2)=29, a(3)=75, a(4)=160`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A290312

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P15030326888209738730.Spec : Prop :=
  ∀ n, P15030326888209738730.a n = A290312 n

theorem P15030326888209738730.correct : P15030326888209738730.Spec := by
  intro n
  simp only [A290312]

end A290312

/-! ## A290312.P10784949407582180681

`∑[n*C(n+3, 2)+1]`
-/

namespace A290312.P10784949407582180681
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.choose (n + 3) 2 + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A290312.P10784949407582180681

namespace A290312

/-- `∑[n*C(n+3, 2)+1]` -/
def P10784949407582180681.Spec : Prop :=
  ∀ n, (P10784949407582180681.a n : ℤ) = A290312 n

end A290312

/-! ## A290312.P6391194979044493413

`∑[(n+1)²]+C(∑[n+1], 2)`
-/

namespace A290312.P6391194979044493413
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Nat.choose (∑ j ∈ Finset.range (n + 1), f2 j) 2

end

end A290312.P6391194979044493413

namespace A290312

/-- `∑[(n+1)²]+C(∑[n+1], 2)` -/
def P6391194979044493413.Spec : Prop :=
  ∀ n, (P6391194979044493413.a n : ℤ) = A290312 n

end A290312

/-! ## A290312.P9305318866666147724

`∑[∑[∑[a(n-1)+3]+n]]` with `a(0)=1`
-/

namespace A290312.P9305318866666147724
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f3 =>
  f3 (n - 1) + 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j + n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A290312.P9305318866666147724

namespace A290312

/-- `∑[∑[∑[a(n-1)+3]+n]]` -/
def P9305318866666147724.Spec : Prop :=
  ∀ n, (P9305318866666147724.a n : ℤ) = A290312 n

end A290312

/-! ## A290312.P415652218964300212

`∑[∑[n-∑[a(n-1)-3]]]` with `a(0)=-1`
-/

namespace A290312.P415652218964300212
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.rec [-1] fun n f3 =>
  f3 (n - 1) - 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A290312.P415652218964300212

namespace A290312

/-- `∑[∑[n-∑[a(n-1)-3]]]` -/
def P415652218964300212.Spec : Prop :=
  ∀ n, P415652218964300212.a n = A290312 n

end A290312

/-! ## A290312.P15404132503681686188

`∑[A127736(n+1)]`
-/

namespace A290312.P15404132503681686188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A290312.P15404132503681686188

namespace A290312

/-- `∑[A127736(n+1)]` -/
def P15404132503681686188.Spec : Prop :=
  ∀ n, P15404132503681686188.a n = A290312 n

end A290312

/-! ## A290312.P4479079566633041287

`A290061(n+1)-2`
-/

namespace A290312.P4479079566633041287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290061 (n + 1) - 2

end

end A290312.P4479079566633041287

namespace A290312

/-- `A290061(n+1)-2` -/
def P4479079566633041287.Spec : Prop :=
  ∀ n, P4479079566633041287.a n = A290312 n

end A290312

/-! ## A290312.P1097683713389985946

`∑[∑[A095794(n+1)]]`
-/

namespace A290312.P1097683713389985946
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095794 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A290312.P1097683713389985946

namespace A290312

/-- `∑[∑[A095794(n+1)]]` -/
def P1097683713389985946.Spec : Prop :=
  ∀ n, P1097683713389985946.a n = A290312 n

end A290312

/-! ## A290312.P15941506071318303101

`A241765(n)+∑[n+1]`
-/

namespace A290312.P15941506071318303101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241765 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A290312.P15941506071318303101

namespace A290312

/-- `A241765(n)+∑[n+1]` -/
def P15941506071318303101.Spec : Prop :=
  ∀ n, P15941506071318303101.a n = A290312 n

end A290312

/-! ## A290312.P15509925080646536347

`∑[A027480(n)+(n+1)²]`
-/

namespace A290312.P15509925080646536347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027480 n + ((n + 1) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A290312.P15509925080646536347

namespace A290312

/-- `∑[A027480(n)+(n+1)²]` -/
def P15509925080646536347.Spec : Prop :=
  ∀ n, P15509925080646536347.a n = A290312 n

end A290312

/-! ## A290312.P16129486509587395488

`∑[A132127(n+1)+n²]`
-/

namespace A290312.P16129486509587395488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132127 (n + 1) + (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A290312.P16129486509587395488

namespace A290312

/-- `∑[A132127(n+1)+n²]` -/
def P16129486509587395488.Spec : Prop :=
  ∀ n, P16129486509587395488.a n = A290312 n

end A290312

/-! ## A290312.P12548839367024781883

`∑[n+1]²-A001296(n)`
-/

namespace A290312.P12548839367024781883
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - A001296 n

end

end A290312.P12548839367024781883

namespace A290312

/-- `∑[n+1]²-A001296(n)` -/
def P12548839367024781883.Spec : Prop :=
  ∀ n, P12548839367024781883.a n = A290312 n

end A290312

/-! ## A290312.P6946644379629552202

`∑[A162260(n+1)-(n+1)²]`
-/

namespace A290312.P6946644379629552202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162260 (n + 1) - ((n + 1) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A290312.P6946644379629552202

namespace A290312

/-- `∑[A162260(n+1)-(n+1)²]` -/
def P6946644379629552202.Spec : Prop :=
  ∀ n, P6946644379629552202.a n = A290312 n

end A290312

/-! ## A290312.P3333493449953730541

`A008779(n)+A006007(n)`
-/

namespace A290312.P3333493449953730541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008779 n + A006007 n

end

end A290312.P3333493449953730541

namespace A290312

/-- `A008779(n)+A006007(n)` -/
def P3333493449953730541.Spec : Prop :=
  ∀ n, P3333493449953730541.a n = A290312 n

end A290312

/-! ## A290312.P2591106873977747700

`A037255(n)+A001845(n)`
-/

namespace A290312.P2591106873977747700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037255 n + A001845 n

end

end A290312.P2591106873977747700

namespace A290312

/-- `A037255(n)+A001845(n)` -/
def P2591106873977747700.Spec : Prop :=
  ∀ n, P2591106873977747700.a n = A290312 n

end A290312

/-! ## A290312.P2991046408053961193

`A133252(n)+A027480(n)`
-/

namespace A290312.P2991046408053961193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133252 n + A027480 n

end

end A290312.P2991046408053961193

namespace A290312

/-- `A133252(n)+A027480(n)` -/
def P2991046408053961193.Spec : Prop :=
  ∀ n, P2991046408053961193.a n = A290312 n

end A290312

/-! ## A290312.P17204745431280348682

`A341209(n)+A163943(n)`
-/

namespace A290312.P17204745431280348682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341209 n + A163943 n

end

end A290312.P17204745431280348682

namespace A290312

/-- `A341209(n)+A163943(n)` -/
def P17204745431280348682.Spec : Prop :=
  ∀ n, P17204745431280348682.a n = A290312 n

end A290312

/-! ## A290312.P8886632798940757064

`A051740(n)-A004320(n)`
-/

namespace A290312.P8886632798940757064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051740 n - A004320 n

end

end A290312.P8886632798940757064

namespace A290312

/-- `A051740(n)-A004320(n)` -/
def P8886632798940757064.Spec : Prop :=
  ∀ n, P8886632798940757064.a n = A290312 n

end A290312

/-! ## A290312.P18408716392457191884

`A096943(n)-A027659(n)`
-/

namespace A290312.P18408716392457191884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096943 n - A027659 n

end

end A290312.P18408716392457191884

namespace A290312

/-- `A096943(n)-A027659(n)` -/
def P18408716392457191884.Spec : Prop :=
  ∀ n, P18408716392457191884.a n = A290312 n

end A290312

/-!
# A290313: Fourth diagonal sequence of the Sheffer triangle A094816 (special Charlier).

The programs for A290313, the canonical program `A290313.P4933709878126481158` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A290313 has offset 0).

The definition of A290313 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A290313.P4933709878126481158

`A051797(n)+A000096(n)*A005712(n+2)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A290313

/-- `A051797(n)+A000096(n)*A005712(n+2)` -/
def P4933709878126481158.Spec : Prop :=
  ∀ n, P4933709878126481158.a n = A290313 n

theorem P4933709878126481158.correct : P4933709878126481158.Spec := by
  intro n
  simp only [A290313]

end A290313

/-! ## A290313.P4899097081273638910

`A240440(n+2)+A006414(n)`
-/

namespace A290313.P4899097081273638910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240440 (n + 2) + A006414 n

end

end A290313.P4899097081273638910

namespace A290313

/-- `A240440(n+2)+A006414(n)` -/
def P4899097081273638910.Spec : Prop :=
  ∀ n, P4899097081273638910.a n = A290313 n

end A290313

/-! ## A290313.P12894515929021282392

`A244882(n)+A053526(n+3)`
-/

namespace A290313.P12894515929021282392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244882 n + A053526 (n + 3)

end

end A290313.P12894515929021282392

namespace A290313

/-- `A244882(n)+A053526(n+3)` -/
def P12894515929021282392.Spec : Prop :=
  ∀ n, P12894515929021282392.a n = A290313 n

end A290313

/-! ## A290313.P7993299995671514519

`A000292(n+1)+∑[A000292(n)]*A000096(n+4)`
-/

namespace A290313.P7993299995671514519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 1) + (∑ j ∈ Finset.range (n + 1), f1 j) * A000096 (n + 4)

end

end A290313.P7993299995671514519

namespace A290313

/-- `A000292(n+1)+∑[A000292(n)]*A000096(n+4)` -/
def P7993299995671514519.Spec : Prop :=
  ∀ n, P7993299995671514519.a n = A290313 n

end A290313

/-! ## A290313.P7074494433814849263

`A000332(n+4)+A000332(n+3)*A034856(n+4)`
-/

namespace A290313.P7074494433814849263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 (n + 4) + A000332 (n + 3) * A034856 (n + 4)

end

end A290313.P7074494433814849263

namespace A290313

/-- `A000332(n+4)+A000332(n+3)*A034856(n+4)` -/
def P7074494433814849263.Spec : Prop :=
  ∀ n, P7074494433814849263.a n = A290313 n

end A290313

/-! ## A290313.P10734504507145168703

`A046716(A167614(n+2))`
-/

namespace A290313.P10734504507145168703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046716 (A167614 (n + 2)).toNat

end

end A290313.P10734504507145168703

namespace A290313

/-- `A046716(A167614(n+2))` -/
def P10734504507145168703.Spec : Prop :=
  ∀ n, P10734504507145168703.a n = A290313 n

end A290313

/-! ## A290313.P3077760663014087552

`A046716(eq[3, A002262(n)])`
-/

namespace A290313.P3077760663014087552
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046716 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A290313.P3077760663014087552

namespace A290313

/-- `A046716(eq[3, A002262(n)])` -/
def P3077760663014087552.Spec : Prop :=
  ∀ n, P3077760663014087552.a n = A290313 n

end A290313

/-! ## A290313.P16715421023227248787

`A046716(eq[2, A002260(n+1)-2])`
-/

namespace A290313.P16715421023227248787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046716 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A290313.P16715421023227248787

namespace A290313

/-- `A046716(eq[2, A002260(n+1)-2])` -/
def P16715421023227248787.Spec : Prop :=
  ∀ n, P16715421023227248787.a n = A290313 n

end A290313

/-! ## A290313.P11406048059796210045

`A046716(eq[2, A002260(n+1)/2])`
-/

namespace A290313.P11406048059796210045
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002260 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046716 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n)

end

end A290313.P11406048059796210045

namespace A290313

/-- `A046716(eq[2, A002260(n+1)/2])` -/
def P11406048059796210045.Spec : Prop :=
  ∀ n, P11406048059796210045.a n = A290313 n

end A290313

/-! ## A290313.P6643322226173125232

`A094816(∑[n+3]+n+3)`
-/

namespace A290313.P6643322226173125232
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094816 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A290313.P6643322226173125232

namespace A290313

/-- `A094816(∑[n+3]+n+3)` -/
def P6643322226173125232.Spec : Prop :=
  ∀ n, P6643322226173125232.a n = A290313 n

end A290313

/-!
# A290314: Fifth diagonal sequence of the Sheffer triangle A094816 (special Charlier).

The programs for A290314, there is no canonical definition to state claims against.
-/

/-! ## A290314.P2131791015478905243

`A046716(A155212(n)+12)`
-/

namespace A290314.P2131791015478905243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046716 (A155212 n + 12).toNat

end

end A290314.P2131791015478905243

/-! ## A290314.P5269028484566507159

`A046716(eq[4, A002262(n)])`
-/

namespace A290314.P5269028484566507159
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046716 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A290314.P5269028484566507159

/-! ## A290314.P14913067088960867425

`A046716(eq[16, A059268(n)])`
-/

namespace A290314.P14913067088960867425
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046716 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A290314.P14913067088960867425

/-! ## A290314.P2280430138957750500

`A046716(A167499(n+3)-1)`
-/

namespace A290314.P2280430138957750500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046716 (A167499 (n + 3) - 1).toNat

end

end A290314.P2280430138957750500

/-! ## A290314.P17359638006108285771

`A046716(eq[5, A002260(n+1)])`
-/

namespace A290314.P17359638006108285771
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046716 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A290314.P17359638006108285771

/-! ## A290314.P7175059128118427435

`A046716(A000217(n+5)-(n+1))`
-/

namespace A290314.P7175059128118427435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046716 (A000217 (n + 5) - (n + 1 : ℤ)).toNat

end

end A290314.P7175059128118427435

/-! ## A290314.P12172821179266014047

`A094816(A052905(n+2))`
-/

namespace A290314.P12172821179266014047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094816 (A052905 (n + 2)).toNat

end

end A290314.P12172821179266014047

/-! ## A290314.P5926671894385220728

`A094816(eq[4, A025581(n)])`
-/

namespace A290314.P5926671894385220728
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094816 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A290314.P5926671894385220728

/-! ## A290314.P11456316974316680885

`A094816(A000217(n+5)-5)`
-/

namespace A290314.P11456316974316680885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094816 (A000217 (n + 5) - 5).toNat

end

end A290314.P11456316974316680885

/-! ## A290314.P7751631220912797104

`A094816(Δ[A023545(n+1)]-1)`
-/

namespace A290314.P7751631220912797104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094816 (f1 (n + 1) - f1 n - 1).toNat

end

end A290314.P7751631220912797104

/-!
# A290315: Triangle T(n, k) read by rows: row n gives the coefficients of the numerator polynomials of the o.g.f. of the (n+1)-th diagonal of the Sheffer triangle A154537 (S2[2,1] generalized Stirling2), for n >= 0.

The programs for A290315, there is no canonical definition to state claims against.
-/

/-! ## A290315.P802431341380032940

`A059268(n)*A214406(n)`
-/

namespace A290315.P802431341380032940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n * A214406 n

end

end A290315.P802431341380032940

/-! ## A290315.P10598612464387014147

`A000079(A002262(n))*A214406(n)`
-/

namespace A290315.P10598612464387014147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A002262 n).toNat * A214406 n

end

end A290315.P10598612464387014147

/-! ## A290315.P5982436294951005133

`A003958(A036561(n))*A214406(n)`
-/

namespace A290315.P5982436294951005133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (A036561 n).toNat * A214406 n

end

end A290315.P5982436294951005133

/-! ## A290315.P10369375164564232298

`A013620(A112367(n))*A214406(n)`
-/

namespace A290315.P10369375164564232298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013620 (A112367 n).toNat * A214406 n

end

end A290315.P10369375164564232298

/-! ## A290315.P14554230779550001196

`A130321(A061579(n))*A214406(n)`
-/

namespace A290315.P14554230779550001196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 (A061579 n).toNat * A214406 n

end

end A290315.P14554230779550001196

/-! ## A290315.P12183815695417497579

`A011782(A002260(n+1))*A214406(n)`
-/

namespace A290315.P12183815695417497579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A002260 (n + 1)).toNat * A214406 n

end

end A290315.P12183815695417497579

/-!
# A290316: Triangle T(n, k) read by rows: row n gives the coefficients of the numerator polynomials of the o.g.f. of the (n+1)-th diagonal of the Sheffer triangle A282629 (S2[3,1] generalized Stirling2), for n >= 0.

The programs for A290316, there is no canonical definition to state claims against.
-/

/-! ## A290316.P12843744588960619534

`A002260(n+1)*A135260(A284861(n))`
-/

namespace A290316.P12843744588960619534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A135260 (A284861 n).toNat

end

end A290316.P12843744588960619534

/-!
# A290318: Triangle read by rows. Row n gives the denominators of the coefficients of the Bernoulli polynomials of the second kind (in rising powers).

The programs for A290318, there is no canonical definition to state claims against.
-/

/-! ## A290318.P14715690088598641286

`A075526(gcd(A097805(n), A099525(n)))`
-/

namespace A290318.P14715690088598641286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075526 (Int.gcd (A097805 n) (A099525 n))

end

end A290318.P14715690088598641286

/-! ## A290318.P2250304755717152704

`A083260(gcd(A176288(n), A242379(n)))`
-/

namespace A290318.P2250304755717152704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083260 (Int.gcd (A176288 n) (A242379 n))

end

end A290318.P2250304755717152704

/-! ## A290318.P17604251332871342967

`A329348(A178318(n+1)*A178340(n))`
-/

namespace A290318.P17604251332871342967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329348 (A178318 (n + 1) * A178340 n).toNat

end

end A290318.P17604251332871342967

/-! ## A290318.P12380027370769937806

`A001223(gcd(A005200(n+1), A123125(n)))`
-/

namespace A290318.P12380027370769937806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (Int.gcd (A005200 (n + 1)) (A123125 n))

end

end A290318.P12380027370769937806

/-! ## A290318.P5739128173277854531

`A329348(lcm(A178318(n+1), A178340(n)))`
-/

namespace A290318.P5739128173277854531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329348 (Int.lcm (A178318 (n + 1)) (A178340 n))

end

end A290318.P5739128173277854531

/-!
# A290320: Write 1 - t * x/(1-x) as an inverse power product 1/(1+c(1)x) * 1/(1+c(2)x^2) * 1/(1+c(3)x^3) * ... The sequence is a regular triangle where T(n,k) is the coefficient of t^k in c(n), 1 <= k <= n.

The programs for A290320, there is no canonical definition to state claims against.
-/

/-! ## A290320.P6597691659048479082

`A344739(A344726(n+1))+A281871(n)`
-/

namespace A290320.P6597691659048479082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344739 (A344726 (n + 1)).toNat + A281871 n

end

end A290320.P6597691659048479082

/-! ## A290320.P10713838866383835009

`A131576(A271778(n+3)+A022178(n))`
-/

namespace A290320.P10713838866383835009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131576 (A271778 (n + 3) + A022178 n).toNat

end

end A290320.P10713838866383835009

/-! ## A290320.P16129515513625338511

`A071202(n+1)-A358842(A019278(2*n+5))`
-/

namespace A290320.P16129515513625338511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071202 (n + 1) - A358842 (A019278 (2 * n + 5)).toNat

end

end A290320.P16129515513625338511

/-! ## A290320.P11777789105380809231

`A010054(A334778(n))+A001221(A113340(n))`
-/

namespace A290320.P11777789105380809231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (A334778 n).toNat + A001221 (A113340 n).toNat

end

end A290320.P11777789105380809231

/-!
# A290323: Minimal number of supporters among total of n voters that may make (but not guarantee) their candidate win in a multi-level selection based on the majority vote at each level.

The programs for A290323, there is no canonical definition to state claims against.
-/

/-! ## A290323.P4651067460541474940

`A341721(n+1)+A010894(A005496(n))`
-/

namespace A290323.P4651067460541474940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341721 (n + 1) + A010894 ((A005496 n).toNat + 21)

end

end A290323.P4651067460541474940

/-! ## A290323.P8811239867661332112

`A341721(n+1)-A010815(A133019(n+1))`
-/

namespace A290323.P8811239867661332112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341721 (n + 1) - A010815 (A133019 (n + 1)).toNat

end

end A290323.P8811239867661332112

/-! ## A290323.P498043487683669328

`A341721(n+1)+A014177(A104393(2*n))`
-/

namespace A290323.P498043487683669328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341721 (n + 1) + A014177 (A104393 (2 * n)).toNat

end

end A290323.P498043487683669328

/-! ## A290323.P589897886108925470

`or(A083892(A001248(n+1)), A341721(n+1))`
-/

namespace A290323.P589897886108925470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A083892 (A001248 (n + 1)).toNat) (A341721 (n + 1))

end

end A290323.P589897886108925470

/-! ## A290323.P13598626719543090039

`A341721(n+1)+A025469(A335405(n))`
-/

namespace A290323.P13598626719543090039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341721 (n + 1) + A025469 (A335405 n).toNat

end

end A290323.P13598626719543090039

/-!
# A290325: Number of minimal dominating sets (and maximal irredundant sets) in the complete tripartite graph K_{n,n,n}.

The programs for A290325, the canonical program `A290325.P10345901416278462345` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A290325 has offset 1).

The definition of A290325 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A290325.P10345901416278462345

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=3, a(1)=15, a(2)=30, a(3)=51`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A290325

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P10345901416278462345.Spec : Prop :=
  ∀ n, P10345901416278462345.a n = A290325 (n + 1)

theorem P10345901416278462345.correct : P10345901416278462345.Spec := by
  intro n
  simp only [A290325, Nat.add_sub_cancel]

end A290325

/-! ## A290325.P7057561388973458735

`∑[(char[1]+3)*Δ[n²]]`
-/

namespace A290325.P7057561388973458735
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((if ∃ j, f2 j = n then 1 else 0) + 3 : ℕ) : ℤ) * ((f3 (n + 1) : ℤ) - (f3 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A290325.P7057561388973458735

namespace A290325

/-- `∑[(char[1]+3)*Δ[n²]]` -/
def P7057561388973458735.Spec : Prop :=
  ∀ n, P7057561388973458735.a n = A290325 (n + 1)

end A290325

/-! ## A290325.P7267012774909291290

`(n+1)²*3%(n+3)+3`
-/

namespace A290325.P7267012774909291290
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2 * (3 % (n + 3)) + 3

end

end A290325.P7267012774909291290

namespace A290325

/-- `(n+1)²*3%(n+3)+3` -/
def P7267012774909291290.Spec : Prop :=
  ∀ n, (P7267012774909291290.a n : ℤ) = A290325 (n + 1)

end A290325

/-! ## A290325.P682368896531555843

`lcm(3, floor(((n+2)²/(n+3))²))`
-/

namespace A290325.P682368896531555843
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 ⌊(((n + 2) ^ 2 : ℚ) / (n + 3 : ℚ)) ^ 2⌋

end

end A290325.P682368896531555843

namespace A290325

/-- `lcm(3, floor(((n+2)²/(n+3))²))` -/
def P682368896531555843.Spec : Prop :=
  ∀ n, (P682368896531555843.a n : ℤ) = A290325 (n + 1)

end A290325

/-! ## A290325.P15195920720858655930

`3*floor(atan(n+1)+(n+1)²)`
-/

namespace A290325.P15195920720858655930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * ⌊Real.arctan (n + 1 : ℝ) + ((n + 1) ^ 2 : ℝ)⌋

end

end A290325.P15195920720858655930

namespace A290325

/-- `3*floor(atan(n+1)+(n+1)²)` -/
def P15195920720858655930.Spec : Prop :=
  ∀ n, P15195920720858655930.a n = A290325 (n + 1)

end A290325

/-! ## A290325.P10252113671123525608

`3*((n+1-floor(acot(n)))²+1)`
-/

namespace A290325.P10252113671123525608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (((n + 1 : ℤ) - ⌊SequenceMachineLib.acot (n : ℝ)⌋) ^ 2 + 1)

end

end A290325.P10252113671123525608

namespace A290325

/-- `3*((n+1-floor(acot(n)))²+1)` -/
def P10252113671123525608.Spec : Prop :=
  ∀ n, P10252113671123525608.a n = A290325 (n + 1)

end A290325

/-! ## A290325.P13261309491089550618

`(ceil(abs(sin(n)))+n)*3*(n+1)+3`
-/

namespace A290325.P13261309491089550618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (⌈|Real.sin (n : ℝ)|⌉ + (n : ℤ)) * (3 * (n + 1) : ℤ) + 3

end

end A290325.P13261309491089550618

namespace A290325

/-- `(ceil(abs(sin(n)))+n)*3*(n+1)+3` -/
def P13261309491089550618.Spec : Prop :=
  ∀ n, P13261309491089550618.a n = A290325 (n + 1)

end A290325

/-! ## A290325.P7579453897083005858

`3*((floor(1/a(n-1))+n+1)²+1)` with `a(0)=3`
-/

namespace A290325.P7579453897083005858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  3 * ((⌊1 / (a (n - 1) : ℚ)⌋ + (n : ℤ) + 1) ^ 2 + 1)

end

end A290325.P7579453897083005858

namespace A290325

/-- `3*((floor(1/a(n-1))+n+1)²+1)` -/
def P7579453897083005858.Spec : Prop :=
  ∀ n, P7579453897083005858.a n = A290325 (n + 1)

end A290325

/-! ## A290325.P4611007570275047808

`3*(A003682(n+1)+n)`
-/

namespace A290325.P4611007570275047808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A003682 (n + 1) + (n : ℤ))

end

end A290325.P4611007570275047808

namespace A290325

/-- `3*(A003682(n+1)+n)` -/
def P4611007570275047808.Spec : Prop :=
  ∀ n, P4611007570275047808.a n = A290325 (n + 1)

end A290325

/-! ## A290325.P65333609505292790

`A016945(n)+a(n-1)` with `a(0)=3, a(1)=15`
-/

namespace A290325.P65333609505292790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 15] fun n a =>
  A016945 n + a (n - 1)

end

end A290325.P65333609505292790

namespace A290325

/-- `A016945(n)+a(n-1)` -/
def P65333609505292790.Spec : Prop :=
  ∀ n, P65333609505292790.a n = A290325 (n + 1)

end A290325

/-! ## A290325.P12210437282632173819

`3*(comp[A004277(n)]+n²+1)`
-/

namespace A290325.P12210437282632173819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + n ^ 2 + 1)

end

end A290325.P12210437282632173819

namespace A290325

/-- `3*(comp[A004277(n)]+n²+1)` -/
def P12210437282632173819.Spec : Prop :=
  ∀ n, (P12210437282632173819.a n : ℤ) = A290325 (n + 1)

end A290325

/-! ## A290325.P10210844122372781009

`3*((A057427(n)+n)*(n+1)+1)`
-/

namespace A290325.P10210844122372781009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * ((A057427 n + (n : ℤ)) * (n + 1 : ℤ) + 1)

end

end A290325.P10210844122372781009

namespace A290325

/-- `3*((A057427(n)+n)*(n+1)+1)` -/
def P10210844122372781009.Spec : Prop :=
  ∀ n, P10210844122372781009.a n = A290325 (n + 1)

end A290325

/-! ## A290325.P3455743379987110289

`3*ceil(sqrt(A014682(n)+(n+1)²²))`
-/

namespace A290325.P3455743379987110289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * ⌈Real.sqrt (A014682 n + (((n + 1) ^ 2) ^ 2 : ℤ) : ℝ)⌉

end

end A290325.P3455743379987110289

namespace A290325

/-- `3*ceil(sqrt(A014682(n)+(n+1)²²))` -/
def P3455743379987110289.Spec : Prop :=
  ∀ n, P3455743379987110289.a n = A290325 (n + 1)

end A290325

/-! ## A290325.P12090923932510799941

`A067725(n)+A040006(n)`
-/

namespace A290325.P12090923932510799941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067725 n + A040006 n

end

end A290325.P12090923932510799941

namespace A290325

/-- `A067725(n)+A040006(n)` -/
def P12090923932510799941.Spec : Prop :=
  ∀ n, P12090923932510799941.a n = A290325 (n + 1)

end A290325

/-! ## A290325.P4461709371642114293

`A123932(n)+A080663(n+1)`
-/

namespace A290325.P4461709371642114293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123932 n + A080663 (n + 1)

end

end A290325.P4461709371642114293

namespace A290325

/-- `A123932(n)+A080663(n+1)` -/
def P4461709371642114293.Spec : Prop :=
  ∀ n, P4461709371642114293.a n = A290325 (n + 1)

end A290325

/-! ## A290325.P1243311596181340160

`A270257(n+1)+A040007(n)`
-/

namespace A290325.P1243311596181340160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270257 (n + 1) + A040007 n

end

end A290325.P1243311596181340160

namespace A290325

/-- `A270257(n+1)+A040007(n)` -/
def P1243311596181340160.Spec : Prop :=
  ∀ n, P1243311596181340160.a n = A290325 (n + 1)

end A290325

/-! ## A290325.P13154971977670100098

`A067725(n)+A040007(2*n)`
-/

namespace A290325.P13154971977670100098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067725 n + A040007 (2 * n)

end

end A290325.P13154971977670100098

namespace A290325

/-- `A067725(n)+A040007(2*n)` -/
def P13154971977670100098.Spec : Prop :=
  ∀ n, P13154971977670100098.a n = A290325 (n + 1)

end A290325

/-! ## A290325.P8175294112191259322

`A103517(n)²+2-A005563(n)`
-/

namespace A290325.P8175294112191259322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 n ^ 2 + (2 - A005563 n)

end

end A290325.P8175294112191259322

namespace A290325

/-- `A103517(n)²+2-A005563(n)` -/
def P8175294112191259322.Spec : Prop :=
  ∀ n, P8175294112191259322.a n = A290325 (n + 1)

end A290325

/-! ## A290325.P4381448331040955679

`A374359(n+1)+A100536(n+1)`
-/

namespace A290325.P4381448331040955679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374359 (n + 1) + A100536 (n + 1)

end

end A290325.P4381448331040955679

namespace A290325

/-- `A374359(n+1)+A100536(n+1)` -/
def P4381448331040955679.Spec : Prop :=
  ∀ n, P4381448331040955679.a n = A290325 (n + 1)

end A290325

/-!
# A290328: Iterate the map x -> A289667(x) starting at n; sequence gives number of steps to reach a prime, or -1 if no prime is ever reached.

The programs for A290328, there is no canonical definition to state claims against.
-/

/-! ## A290328.P14588252485772863185

`A254432(2*n+5)%A302796(ceil((n+1)/∏{p}[n+1, (n+1)/#]))`
-/

namespace A290328.P14588252485772863185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A254432 (2 * n + 5)) (A302796 ⌈(n + 1 : ℚ) / (∏ p ∈ Nat.primeFactors (f1 n), (n + 1 : ℚ) / (p : ℚ))⌉.toNat)

end

end A290328.P14588252485772863185

/-!
# A290330: Numbers k such that 8*10^k - 51 is prime.

The programs for A290330, there is no canonical definition to state claims against.
-/

/-! ## A290330.P9873177314882747947

`Δ[n²]*A132172(2^n)`
-/

namespace A290330.P9873177314882747947
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) * A132172 (2 ^ n)

end

end A290330.P9873177314882747947

/-! ## A290330.P8262563461087758070

`A286539(2*A049316(n))`
-/

namespace A290330.P8262563461087758070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286539 (2 * A049316 n).toNat

end

end A290330.P8262563461087758070

/-!
# A290331: Number of (undirected) paths in the n-triangular honeycomb acute knight graph.

The programs for A290331, there is no canonical definition to state claims against.
-/

/-! ## A290331.P614780170896853478

`A194225(A002310(n))`
-/

namespace A290331.P614780170896853478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194225 (A002310 n).toNat

end

end A290331.P614780170896853478

/-! ## A290331.P8581953286185447166

`A153763(A122135(n²))`
-/

namespace A290331.P8581953286185447166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153763 (A122135 (n ^ 2)).toNat

end

end A290331.P8581953286185447166

/-!
# A290334: Numbers that are not the sum of three or fewer terms from A020330.

The programs for A290334, there is no canonical definition to state claims against.
-/

/-! ## A290334.P3457107202786152323

`lt[A290335(n)^8, A068065(n+1)]`
-/

namespace A290334.P3457107202786152323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290335 n ^ 8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068065 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A290334.P3457107202786152323

/-! ## A290334.P308966993541838259

`lt[A290335(n), A225638(A225622(n+1))]`
-/

namespace A290334.P308966993541838259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290335 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225638 (A225622 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A290334.P308966993541838259

/-! ## A290334.P2107333739596630758

`lt[A290346(A290335(n)), A290315(n)]`
-/

namespace A290334.P2107333739596630758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290346 (A290335 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290315 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A290334.P2107333739596630758

/-! ## A290334.P1288087234998387266

`lt[A352283(A290335(n)), A000040(n+1)]`
-/

namespace A290334.P1288087234998387266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352283 (A290335 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A290334.P1288087234998387266

/-! ## A290334.P2432550937459800645

`lt[A352283(A290335(n)), A006093(n+1)]`
-/

namespace A290334.P2432550937459800645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352283 (A290335 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A290334.P2432550937459800645

/-!
# A290340: Numbers m such that each of the four consecutive integers m, m+1, m+2, m+3 has squarefree rank 1.

The programs for A290340, there is no canonical definition to state claims against.
-/

/-! ## A290340.P442121443829380841

`filter[A368404(n+1), A011662(#)]`
-/

namespace A290340.P442121443829380841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368404 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011662 (f1 j).toNat = 1) n)

end

end A290340.P442121443829380841

/-!
# A290341: Product of k in [1, 2n-1] with k and k+1 coprime to 2n-1.

The programs for A290341, there is no canonical definition to state claims against.
-/

/-! ## A290341.P3050101425787675671

`A398634(A241944(n))`
-/

namespace A290341.P3050101425787675671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398634 (A241944 n).toNat

end

end A290341.P3050101425787675671

/-! ## A290341.P14663911941040101988

`A204126(A103736(n+1))`
-/

namespace A290341.P14663911941040101988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204126 (A103736 (n + 1)).toNat

end

end A290341.P14663911941040101988

/-!
# A290343: Numerators of the Kirchhoff (and Harary) index for the n-hypercube graph.

The programs for A290343, there is no canonical definition to state claims against.
-/

/-! ## A290343.P8903850540029201043

`∑[A228430(n^6+1)]`
-/

namespace A290343.P8903850540029201043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228430 (n ^ 6 + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A290343.P8903850540029201043

/-!
# A290344: Denominators of the Kirchhoff (and Harary) index for the n-hypercube graph.

The programs for A290344, there is no canonical definition to state claims against.
-/

/-! ## A290344.P8206361674485227065

`gcd(A055634(2*n+1), A374333(n))`
-/

namespace A290344.P8206361674485227065
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A055634 (2 * n + 1)) (A374333 n)

end

end A290344.P8206361674485227065

/-! ## A290344.P12010989054917721954

`gcd(A055634(n)²², A374333(n))`
-/

namespace A290344.P12010989054917721954
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((A055634 n ^ 2) ^ 2) (A374333 n)

end

end A290344.P12010989054917721954

/-! ## A290344.P12129448831233129083

`gcd(A185275(n), A374333(n))`
-/

namespace A290344.P12129448831233129083
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A185275 n) (A374333 n)

end

end A290344.P12129448831233129083

/-! ## A290344.P9480720241265212165

`A000265(A374333(n))`
-/

namespace A290344.P9480720241265212165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A374333 n).toNat

end

end A290344.P9480720241265212165

/-! ## A290344.P15310032577094369190

`gcd(A000246(n), A324500(A011782(n)))`
-/

namespace A290344.P15310032577094369190
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000246 n) (A324500 (A011782 n).toNat)

end

end A290344.P15310032577094369190

/-!
# A290345: Denominators of the Kirchhoff sum index for the n-hypercube graph.

The programs for A290345, there is no canonical definition to state claims against.
-/

/-! ## A290345.P6705259485074801403

`A163344(A034386(n))/A040001(n)`
-/

namespace A290345.P6705259485074801403
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A163344 (A034386 n).toNat : ℚ) / (A040001 n : ℚ)

end

end A290345.P6705259485074801403

/-! ## A290345.P16821047686753189015

`A000265(A065886(n))*A278425(n+1)`
-/

namespace A290345.P16821047686753189015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A065886 n).toNat * A278425 (n + 1)

end

end A290345.P16821047686753189015

/-!
# A290346: Numerators of the Kirchhoff sum index for the n-hypercube graph.

The programs for A290346, there is no canonical definition to state claims against.
-/

/-! ## A290346.P3484849557002404863

`A256113(A121223(2*(n+5)))-1-gcd(2, n)`
-/

namespace A290346.P3484849557002404863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256113 (A121223 (2 * (n + 5))).toNat - 1 - (Nat.gcd 2 n : ℤ)

end

end A290346.P3484849557002404863

/-!
# A290347: Numerators of the Harary index for the n-halved cube graph.

The programs for A290347, there is no canonical definition to state claims against.
-/

/-! ## A290347.P10214909334554010669

`∏[2-char[2^n-1]]*A330718(n+1)`
-/

namespace A290347.P10214909334554010669
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - 1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A330718 (n + 1)

end

end A290347.P10214909334554010669

/-! ## A290347.P1790188213418696151

`A330718(n+1)*A347043(A000142(n))`
-/

namespace A290347.P1790188213418696151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330718 (n + 1) * A347043 (A000142 n).toNat

end

end A290347.P1790188213418696151

/-!
# A290348: Denominators of the Harary index for the n-halved cube graph.

The programs for A290348, there is no canonical definition to state claims against.
-/

/-! ## A290348.P4578626925299272999

`A000265(A330719(n+1))`
-/

namespace A290348.P4578626925299272999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A330719 (n + 1)).toNat

end

end A290348.P4578626925299272999

/-! ## A290348.P10936688092526408882

`gcd(A046983(n), A330719(n+1))`
-/

namespace A290348.P10936688092526408882
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A046983 n) (A330719 (n + 1))

end

end A290348.P10936688092526408882

/-! ## A290348.P498588001221661250

`A330719(n+1)/A053644(n+1)`
-/

namespace A290348.P498588001221661250
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A330719 (n + 1) : ℚ) / (A053644 (n + 1) : ℚ)

end

end A290348.P498588001221661250

/-! ## A290348.P2906749918028992313

`gcd(2*A330719(n+1), A133221(n))`
-/

namespace A290348.P2906749918028992313
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * A330719 (n + 1)) (A133221 n)

end

end A290348.P2906749918028992313

/-! ## A290348.P15832927085745948246

`A330719(n+1)/gcd(64, A002805(n+1))`
-/

namespace A290348.P15832927085745948246
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A330719 (n + 1) : ℚ) / (Int.gcd 64 (A002805 (n + 1)) : ℚ)

end

end A290348.P15832927085745948246

/-!
# A290350: Trajectory of 48 under the map x -> A289667(x).

The programs for A290350, there is no canonical definition to state claims against.
-/

/-! ## A290350.P9034996034292835220

`A289667(a(n-1))` with `a(0)=48`
-/

namespace A290350.P9034996034292835220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [48] fun n a =>
  A289667 (a (n - 1)).toNat

end

end A290350.P9034996034292835220

/-!
# A290351: Euler transform of the Bell numbers (A000110).

The programs for A290351, there is no canonical definition to state claims against.
-/

/-! ## A290351.P11188692575575875935

`A111772(n+1)+A131577(n)-n`
-/

namespace A290351.P11188692575575875935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111772 (n + 1) + (A131577 n - (n : ℤ))

end

end A290351.P11188692575575875935

/-! ## A290351.P11793667702256719196

`A001462(A000629(n))-A124767(n)`
-/

namespace A290351.P11793667702256719196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A000629 n).toNat - A124767 n

end

end A290351.P11793667702256719196

/-! ## A290351.P17886905121813185709

`A001462(A076726(n))-A290573(n)`
-/

namespace A290351.P17886905121813185709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A076726 n).toNat - A290573 n

end

end A290351.P17886905121813185709

/-!
# A290352: Euler transform of the Fubini numbers (ordered Bell numbers, A000670).

The programs for A290352, there is no canonical definition to state claims against.
-/

/-! ## A290352.P16488311682818400610

`A191365(n)+A191361(A182117(n))`
-/

namespace A290352.P16488311682818400610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191365 n + A191361 (A182117 n).toNat

end

end A290352.P16488311682818400610

/-! ## A290352.P18368199795442269838

`A303259(n)+A008611(A349531(n))`
-/

namespace A290352.P18368199795442269838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303259 n + A008611 (A349531 n).toNat

end

end A290352.P18368199795442269838

/-!
# A290353: Square array A(n,k), n>=0, k>=0, read by antidiagonals, where column k is the k-th Euler transform of the sequence with g.f. 1+x.

The programs for A290353, there is no canonical definition to state claims against.
-/

/-! ## A290353.P10082141317653359573

`A277157(A256384(n))+A081718(n)`
-/

namespace A290353.P10082141317653359573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277157 (A256384 n).toNat + A081718 n

end

end A290353.P10082141317653359573

/-! ## A290353.P10690069807822840156

`A081718(n)+A070109(A168347(n+1))`
-/

namespace A290353.P10690069807822840156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081718 n + A070109 (A168347 (n + 1)).toNat

end

end A290353.P10690069807822840156

/-! ## A290353.P9699377236082634427

`A081718(n)-A121373(A265554(2*(n+2)))`
-/

namespace A290353.P9699377236082634427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081718 n - A121373 (A265554 (2 * (n + 2))).toNat

end

end A290353.P9699377236082634427

/-! ## A290353.P16657365400245111115

`A081718(n)+A007949(A141214(n)+1)`
-/

namespace A290353.P16657365400245111115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081718 n + A007949 (A141214 n + 1).toNat

end

end A290353.P16657365400245111115

/-! ## A290353.P11532657511624513096

`gcd(A081718(n), A185255(n))`
-/

namespace A290353.P11532657511624513096
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A081718 n) (A185255 n)

end

end A290353.P11532657511624513096

/-!
# A290354: a(n) is the n-th term of the n-th Euler transform of the sequence with g.f. 1+x.

The programs for A290354, there is no canonical definition to state claims against.
-/

/-! ## A290354.P5127052954433145972

`A290353(∑[4*n])`
-/

namespace A290354.P5127052954433145972
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290353 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A290354.P5127052954433145972

/-! ## A290354.P898800984665464845

`A290353(A046092(n))+and(2, n)%2`
-/

namespace A290354.P898800984665464845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290353 (A046092 n).toNat + ((Nat.land 2 n % 2 : ℕ) : ℤ)

end

end A290354.P898800984665464845

/-! ## A290354.P12758894051529046563

`A290353(A046092(n))+2%A080763(n+1)`
-/

namespace A290354.P12758894051529046563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290353 (A046092 n).toNat + Int.tmod 2 (A080763 (n + 1))

end

end A290354.P12758894051529046563

/-! ## A290354.P4937434916082496824

`A290353(A046092(n))+(2*A152031(n))%2`
-/

namespace A290354.P4937434916082496824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290353 (A046092 n).toNat + Int.tmod (2 * A152031 n) 2

end

end A290354.P4937434916082496824

/-! ## A290354.P15391608092175679924

`A290353(A046092(n))+A000056(n+1)%(n+1)`
-/

namespace A290354.P15391608092175679924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290353 (A046092 n).toNat + Int.tmod (A000056 (n + 1)) (n + 1 : ℤ)

end

end A290354.P15391608092175679924

/-! ## A290354.P10516808611446274967

`A290353(A046092(n))+A000252(n+1)%(n+1)`
-/

namespace A290354.P10516808611446274967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290353 (A046092 n).toNat + Int.tmod (A000252 (n + 1)) (n + 1 : ℤ)

end

end A290354.P10516808611446274967

/-!
# A290355: The sixth Euler transform of the sequence with g.f. 1+x.

The programs for A290355, there is no canonical definition to state claims against.
-/

/-! ## A290355.P13394066784099727433

`A290353(A055999(n+4)-1)`
-/

namespace A290355.P13394066784099727433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290353 (A055999 (n + 4) - 1).toNat

end

end A290355.P13394066784099727433

/-! ## A290355.P1973734482259037871

`A290353(A052905(n+4)-2)`
-/

namespace A290355.P1973734482259037871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290353 (A052905 (n + 4) - 2).toNat

end

end A290355.P1973734482259037871

/-! ## A290355.P7770565907428966232

`A290353(A000217(n+7)-7)`
-/

namespace A290355.P7770565907428966232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290353 (A000217 (n + 7) - 7).toNat

end

end A290355.P7770565907428966232

/-! ## A290355.P15020042991772718478

`A290353(Δ[A023551(n+2)]-1)`
-/

namespace A290355.P15020042991772718478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290353 (f1 (n + 1) - f1 n - 1).toNat

end

end A290355.P15020042991772718478

/-! ## A290355.P796227468760459827

`A290353(A000096(n+5)+n+1)`
-/

namespace A290355.P796227468760459827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290353 (A000096 (n + 5) + (n + 1 : ℤ)).toNat

end

end A290355.P796227468760459827

/-! ## A290355.P11382722568559703856

`A290353(A167614(n+4)+A004273(n+2))`
-/

namespace A290355.P11382722568559703856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290353 (A167614 (n + 4) + A004273 (n + 2)).toNat

end

end A290355.P11382722568559703856

/-! ## A290355.P7237905145584881342

`A290353(A004273(n+3)+A000124(n+5))`
-/

namespace A290355.P7237905145584881342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290353 (A004273 (n + 3) + A000124 (n + 5)).toNat

end

end A290355.P7237905145584881342

/-! ## A290355.P4086500849419057165

`A290353(A167499(n)+A008486(2*n+5))`
-/

namespace A290355.P4086500849419057165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290353 (A167499 n + A008486 (2 * n + 5)).toNat

end

end A290355.P4086500849419057165

/-!
# A290356: The seventh Euler transform of the sequence with g.f. 1+x.

The programs for A290356, there is no canonical definition to state claims against.
-/

/-! ## A290356.P2809553213569930353

`A290353(A155212(n+4))`
-/

namespace A290356.P2809553213569930353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290353 (A155212 (n + 4)).toNat

end

end A290356.P2809553213569930353

/-! ## A290356.P8042088428574692460

`A290353(A000217(n+8)-8)`
-/

namespace A290356.P8042088428574692460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290353 (A000217 (n + 8) - 8).toNat

end

end A290356.P8042088428574692460

/-! ## A290356.P5980928017563764252

`A290353(eq[8, A004736(n+1)])`
-/

namespace A290356.P5980928017563764252
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290353 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A290356.P5980928017563764252

/-! ## A290356.P9790557519518903327

`A290353(A000096(n+6)+n+1)`
-/

namespace A290356.P9790557519518903327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290353 (A000096 (n + 6) + (n + 1 : ℤ)).toNat

end

end A290356.P9790557519518903327

/-! ## A290356.P6547774982520906290

`A290353(A046691(n+5)+n+4)`
-/

namespace A290356.P6547774982520906290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290353 (A046691 (n + 5) + (n + 4 : ℤ)).toNat

end

end A290356.P6547774982520906290

/-!
# A290357: The eighth Euler transform of the sequence with g.f. 1+x.

The programs for A290357, there is no canonical definition to state claims against.
-/

/-! ## A290357.P15543914071105497005

`A290353(A034856(n+8)-7)`
-/

namespace A290357.P15543914071105497005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290353 (A034856 (n + 8) - 7).toNat

end

end A290357.P15543914071105497005

/-! ## A290357.P3565983406348671868

`A290353(A000217(n+9)-9)`
-/

namespace A290357.P3565983406348671868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290353 (A000217 (n + 9) - 9).toNat

end

end A290357.P3565983406348671868

/-! ## A290357.P234704813055232180

`A290353(A000096(n+7)+n+1)`
-/

namespace A290357.P234704813055232180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290353 (A000096 (n + 7) + (n + 1 : ℤ)).toNat

end

end A290357.P234704813055232180

/-! ## A290357.P2690329586647802782

`A290353(A167614(n+6)+A004273(n+3))`
-/

namespace A290357.P2690329586647802782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290353 (A167614 (n + 6) + A004273 (n + 3)).toNat

end

end A290357.P2690329586647802782

/-! ## A290357.P7824640682748715681

`A290353(A016789(n+4)+A000124(n+6))`
-/

namespace A290357.P7824640682748715681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290353 (A016789 (n + 4) + A000124 (n + 6)).toNat

end

end A290357.P7824640682748715681

/-! ## A290357.P16003404034679477853

`A290353(A004273(n+4)+A000124(n+7))`
-/

namespace A290357.P16003404034679477853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290353 (A004273 (n + 4) + A000124 (n + 7)).toNat

end

end A290357.P16003404034679477853

/-!
# A290358: The ninth Euler transform of the sequence with g.f. 1+x.

The programs for A290358, there is no canonical definition to state claims against.
-/

/-! ## A290358.P12861689184310991214

`A290353(A034856(n+9)-8)`
-/

namespace A290358.P12861689184310991214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290353 (A034856 (n + 9) - 8).toNat

end

end A290358.P12861689184310991214

/-! ## A290358.P8596933545120612247

`A290353(A000217(n+10)-10)`
-/

namespace A290358.P8596933545120612247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290353 (A000217 (n + 10) - 10).toNat

end

end A290358.P8596933545120612247

/-! ## A290358.P17844538349042178400

`A290353(Δ[Δ[A008779(n+4)]])`
-/

namespace A290358.P17844538349042178400
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008779 (n + 4)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290353 (f1 (n + 1) - f1 n).toNat

end

end A290358.P17844538349042178400

/-! ## A290358.P2785982746432852961

`A290353(A000096(n+8)+n+1)`
-/

namespace A290358.P2785982746432852961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290353 (A000096 (n + 8) + (n + 1 : ℤ)).toNat

end

end A290358.P2785982746432852961

/-! ## A290358.P17874753854031912387

`A290353(A167614(n+6)+A016789(n+4))`
-/

namespace A290358.P17874753854031912387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290353 (A167614 (n + 6) + A016789 (n + 4)).toNat

end

end A290358.P17874753854031912387

/-!
# A290359: The tenth Euler transform of the sequence with g.f. 1+x.

The programs for A290359, there is no canonical definition to state claims against.
-/

/-! ## A290359.P11304484896952003192

`A290353(A055998(n+9)-8)`
-/

namespace A290359.P11304484896952003192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290353 (A055998 (n + 9) - 8).toNat

end

end A290359.P11304484896952003192

/-! ## A290359.P1829131936735648355

`A290353(A034856(n+10)-9)`
-/

namespace A290359.P1829131936735648355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290353 (A034856 (n + 10) - 9).toNat

end

end A290359.P1829131936735648355

/-! ## A290359.P855059912983890437

`A290353(A000217(n+11)-11)`
-/

namespace A290359.P855059912983890437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290353 (A000217 (n + 11) - 11).toNat

end

end A290359.P855059912983890437

/-! ## A290359.P4713906634262543491

`A290353(A000096(n+9)+n+1)`
-/

namespace A290359.P4713906634262543491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290353 (A000096 (n + 9) + (n + 1 : ℤ)).toNat

end

end A290359.P4713906634262543491

/-! ## A290359.P15948598399272642125

`A290353(A167614(n+8)+A004273(n+4))`
-/

namespace A290359.P15948598399272642125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290353 (A167614 (n + 8) + A004273 (n + 4)).toNat

end

end A290359.P15948598399272642125

/-! ## A290359.P9375253699540178568

`A290353(A004273(n+5)+A000124(n+9))`
-/

namespace A290359.P9375253699540178568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290353 (A004273 (n + 5) + A000124 (n + 9)).toNat

end

end A290359.P9375253699540178568

/-!
# A290360: Number of 6-leaf rooted trees with n levels.

The programs for A290360, the canonical program `A290360.P3153490715739255259` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A290360 has offset 0).

The definition of A290360 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A290360.P3153490715739255259

`((((4*n+5)*n+10)*n+10)*n+1)*n/30`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A290360

/-- `((((4*n+5)*n+10)*n+10)*n+1)*n/30` -/
def P3153490715739255259.Spec : Prop :=
  ∀ n, P3153490715739255259.a n = (A290360 n : ℚ)

end A290360

/-! ## A290360.P15542054360133606234

`∑[4*A071244(n)+n]`
-/

namespace A290360.P15542054360133606234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A071244 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A290360.P15542054360133606234

namespace A290360

/-- `∑[4*A071244(n)+n]` -/
def P15542054360133606234.Spec : Prop :=
  ∀ n, P15542054360133606234.a n = A290360 n

end A290360

/-! ## A290360.P237643218919351206

`A069038(n)+A006325(n)`
-/

namespace A290360.P237643218919351206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069038 n + A006325 n

end

end A290360.P237643218919351206

namespace A290360

/-- `A069038(n)+A006325(n)` -/
def P237643218919351206.Spec : Prop :=
  ∀ n, P237643218919351206.a n = A290360 n

end A290360

/-! ## A290360.P9066862289547155621

`2*A277229(n)-A071238(n)`
-/

namespace A290360.P9066862289547155621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A277229 n - A071238 n

end

end A290360.P9066862289547155621

namespace A290360

/-- `2*A277229(n)-A071238(n)` -/
def P9066862289547155621.Spec : Prop :=
  ∀ n, P9066862289547155621.a n = A290360 n

end A290360

/-! ## A290360.P3153068364151587090

`A061927(n)+∑[2*A006325(n)]`
-/

namespace A290360.P3153068364151587090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006325 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061927 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A290360.P3153068364151587090

namespace A290360

/-- `A061927(n)+∑[2*A006325(n)]` -/
def P3153068364151587090.Spec : Prop :=
  ∀ n, P3153068364151587090.a n = A290360 n

end A290360

/-! ## A290360.P1445951332493278511

`A037270(n)+∑[A071270(n)]-A071270(n)`
-/

namespace A290360.P1445951332493278511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071270 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037270 n + (∑ j ∈ Finset.range (n + 1), f1 j - A071270 n)

end

end A290360.P1445951332493278511

namespace A290360

/-- `A037270(n)+∑[A071270(n)]-A071270(n)` -/
def P1445951332493278511.Spec : Prop :=
  ∀ n, P1445951332493278511.a n = A290360 n

end A290360

/-! ## A290360.P2312233961250200182

`∑[A006325(n+1)+3*A006325(n)]`
-/

namespace A290360.P2312233961250200182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006325 (n + 1) + 3 * A006325 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A290360.P2312233961250200182

namespace A290360

/-- `∑[A006325(n+1)+3*A006325(n)]` -/
def P2312233961250200182.Spec : Prop :=
  ∀ n, P2312233961250200182.a n = A290360 n

end A290360

/-! ## A290360.P5313936676962731533

`A061927(n)+A061927(n)-A006325(n+1)`
-/

namespace A290360.P5313936676962731533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061927 n + (A061927 n - A006325 (n + 1))

end

end A290360.P5313936676962731533

namespace A290360

/-- `A061927(n)+A061927(n)-A006325(n+1)` -/
def P5313936676962731533.Spec : Prop :=
  ∀ n, P5313936676962731533.a n = A290360 n

end A290360

/-! ## A290360.P9927177278098452914

`A002411(n)+∑[A000332(2*n+1)]`
-/

namespace A290360.P9927177278098452914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002411 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A290360.P9927177278098452914

namespace A290360

/-- `A002411(n)+∑[A000332(2*n+1)]` -/
def P9927177278098452914.Spec : Prop :=
  ∀ n, P9927177278098452914.a n = A290360 n

end A290360

/-!
# A290361: Number of 7-leaf rooted trees with n levels.

The programs for A290361, the canonical program `A290361.P16967527984921218943` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A290361 has offset 0).

The definition of A290361 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A290361.P16967527984921218943

`n*(n+1)*(n*(n*(n*(61*n+8)+137)+58)+96)/720`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A290361

/-- `n*(n+1)*(n*(n*(n*(61*n+8)+137)+58)+96)/720` -/
def P16967527984921218943.Spec : Prop :=
  ∀ n, P16967527984921218943.a n = (A290361 n : ℚ)

end A290361

/-! ## A290361.P16238592552646575084

`A290353(A167487(n+6))`
-/

namespace A290361.P16238592552646575084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290353 (A167487 (n + 6)).toNat

end

end A290361.P16238592552646575084

namespace A290361

/-- `A290353(A167487(n+6))` -/
def P16238592552646575084.Spec : Prop :=
  ∀ n, P16238592552646575084.a n = A290361 n

end A290361

/-! ## A290361.P11834461219402483506

`A290353(A167614(n+6)+4)`
-/

namespace A290361.P11834461219402483506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290353 (A167614 (n + 6) + 4).toNat

end

end A290361.P11834461219402483506

namespace A290361

/-- `A290353(A167614(n+6)+4)` -/
def P11834461219402483506.Spec : Prop :=
  ∀ n, P11834461219402483506.a n = A290361 n

end A290361

/-! ## A290361.P3057573920673416136

`A290353(A000096(n+6)+8)`
-/

namespace A290361.P3057573920673416136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290353 (A000096 (n + 6) + 8).toNat

end

end A290361.P3057573920673416136

namespace A290361

/-- `A290353(A000096(n+6)+8)` -/
def P3057573920673416136.Spec : Prop :=
  ∀ n, P3057573920673416136.a n = A290361 n

end A290361

/-! ## A290361.P854901160418045117

`A290353(A000217(n+7)+7)`
-/

namespace A290361.P854901160418045117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290353 (A000217 (n + 7) + 7).toNat

end

end A290361.P854901160418045117

namespace A290361

/-- `A290353(A000217(n+7)+7)` -/
def P854901160418045117.Spec : Prop :=
  ∀ n, P854901160418045117.a n = A290361 n

end A290361

/-! ## A290361.P8067427105762223737

`A290353(A034856(n+6)+9)`
-/

namespace A290361.P8067427105762223737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290353 (A034856 (n + 6) + 9).toNat

end

end A290361.P8067427105762223737

namespace A290361

/-- `A290353(A034856(n+6)+9)` -/
def P8067427105762223737.Spec : Prop :=
  ∀ n, P8067427105762223737.a n = A290361 n

end A290361

/-! ## A290361.P12077357607235385853

`A290353(A055999(n+4)+13)`
-/

namespace A290361.P12077357607235385853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290353 (A055999 (n + 4) + 13).toNat

end

end A290361.P12077357607235385853

namespace A290361

/-- `A290353(A055999(n+4)+13)` -/
def P12077357607235385853.Spec : Prop :=
  ∀ n, P12077357607235385853.a n = A290361 n

end A290361

/-!
# A290362: Number of 8-leaf rooted trees with n levels.

The programs for A290362, there is no canonical definition to state claims against.
-/

/-! ## A290362.P2839386200711552433

`A290353(A167614(n+7)+5)`
-/

namespace A290362.P2839386200711552433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290353 (A167614 (n + 7) + 5).toNat

end

end A290362.P2839386200711552433

/-! ## A290362.P17572833598703120144

`A290353(A000124(n+8)+7)`
-/

namespace A290362.P17572833598703120144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290353 (A000124 (n + 8) + 7).toNat

end

end A290362.P17572833598703120144

/-! ## A290362.P15937015999200888641

`A290353(A000096(n+7)+9)`
-/

namespace A290362.P15937015999200888641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290353 (A000096 (n + 7) + 9).toNat

end

end A290362.P15937015999200888641

/-! ## A290362.P9983477826352789363

`A290353(A000217(n+8)+8)`
-/

namespace A290362.P9983477826352789363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290353 (A000217 (n + 8) + 8).toNat

end

end A290362.P9983477826352789363

/-! ## A290362.P16437664906754745059

`A290353(A161680(n+10)-(n+1))`
-/

namespace A290362.P16437664906754745059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290353 (A161680 (n + 10) - (n + 1 : ℤ)).toNat

end

end A290362.P16437664906754745059

/-!
# A290363: Number of 9-leaf rooted trees with n levels.

The programs for A290363, there is no canonical definition to state claims against.
-/

/-! ## A290363.P18271715597397294508

`A290353(A133263(n+9)+7)`
-/

namespace A290363.P18271715597397294508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290353 (A133263 (n + 9) + 7).toNat

end

end A290363.P18271715597397294508

/-! ## A290363.P12489470789349273629

`A290353(A000096(n+8)+10)`
-/

namespace A290363.P12489470789349273629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290353 (A000096 (n + 8) + 10).toNat

end

end A290363.P12489470789349273629

/-! ## A290363.P10136986825825963509

`A290353(A000217(n+9)+9)`
-/

namespace A290363.P10136986825825963509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290353 (A000217 (n + 9) + 9).toNat

end

end A290363.P10136986825825963509

/-! ## A290363.P1511430887636619454

`A290353(A000124(n+10)-(n+2))`
-/

namespace A290363.P1511430887636619454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290353 (A000124 (n + 10) - (n + 2 : ℤ)).toNat

end

end A290363.P1511430887636619454

/-! ## A290363.P16581486936591269627

`A290353(A055999(n+8)-A005843(n+3))`
-/

namespace A290363.P16581486936591269627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290353 (A055999 (n + 8) - A005843 (n + 3)).toNat

end

end A290363.P16581486936591269627

/-! ## A290363.P9553661639347140633

`A290353(A167614(n+10)-A004273(n+8))`
-/

namespace A290363.P9553661639347140633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290353 (A167614 (n + 10) - A004273 (n + 8)).toNat

end

end A290363.P9553661639347140633

/-!
# A290364: Number of 10-leaf rooted trees with n levels.

The programs for A290364, there is no canonical definition to state claims against.
-/

/-! ## A290364.P17503176391560673892

`A290353(A167499(n+9)+5)`
-/

namespace A290364.P17503176391560673892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290353 (A167499 (n + 9) + 5).toNat

end

end A290364.P17503176391560673892

/-! ## A290364.P10007697579856294254

`A290353(A000124(n+10)+9)`
-/

namespace A290364.P10007697579856294254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290353 (A000124 (n + 10) + 9).toNat

end

end A290364.P10007697579856294254

/-! ## A290364.P7981429429063000564

`A290353(A000096(n+9)+11)`
-/

namespace A290364.P7981429429063000564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290353 (A000096 (n + 9) + 11).toNat

end

end A290364.P7981429429063000564

/-! ## A290364.P16065088610739172391

`A290353(A000217(n+10)+10)`
-/

namespace A290364.P16065088610739172391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290353 (A000217 (n + 10) + 10).toNat

end

end A290364.P16065088610739172391

/-! ## A290364.P11192091099917071657

`A290353(A034856(n+1)+A008590(n+8))`
-/

namespace A290364.P11192091099917071657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290353 (A034856 (n + 1) + A008590 (n + 8)).toNat

end

end A290364.P11192091099917071657

/-!
# A290366: Reduced denominators of the Kirchhoff index for the n-halved cube graph.

The programs for A290366, there is no canonical definition to state claims against.
-/

/-! ## A290366.P16866566623682239833

`A086767(n)*A290344(n)`
-/

namespace A290366.P16866566623682239833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086767 n * A290344 n

end

end A290366.P16866566623682239833

/-! ## A290366.P11320904768776314413

`A226040(n)*A290344(n)`
-/

namespace A290366.P11320904768776314413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226040 n * A290344 n

end

end A290366.P11320904768776314413

/-! ## A290366.P10827323241669521823

`A028234(n+1)*A290344(n)`
-/

namespace A290366.P10827323241669521823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028234 (n + 1) * A290344 n

end

end A290366.P10827323241669521823

/-! ## A290366.P12148045997827110263

`A119288(n+1)*A290344(n)`
-/

namespace A290366.P12148045997827110263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119288 (n + 1) * A290344 n

end

end A290366.P12148045997827110263

/-! ## A290366.P4178596720000206443

`A290344(n)*A302034(n+1)`
-/

namespace A290366.P4178596720000206443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290344 n * A302034 (n + 1)

end

end A290366.P4178596720000206443

/-!
# A290368: Reduced denominators of the Kirchhoff sum index for the n-halved cube graph.

The programs for A290368, there is no canonical definition to state claims against.
-/

/-! ## A290368.P3124107325142694434

`A034881(a(n-1))` with `a(0)=1, a(1)=1, a(2)=1, a(3)=3`
-/

namespace A290368.P3124107325142694434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 3] fun n a =>
  A034881 (a (n - 1)).toNat

end

end A290368.P3124107325142694434

/-! ## A290368.P9963675322713664992

`A294772(a(n-1))` with `a(0)=1, a(1)=1, a(2)=1, a(3)=3`
-/

namespace A290368.P9963675322713664992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 3] fun n a =>
  A294772 (a (n - 1)).toNat

end

end A290368.P9963675322713664992

/-!
# A290369: Number of partitions of n into parts that contain primes to odd powers only (A002035).

The programs for A290369, there is no canonical definition to state claims against.
-/

/-! ## A290369.P15966989792519265940

`A087153(n)-A340998(A008766(n))`
-/

namespace A290369.P15966989792519265940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087153 n - A340998 ((A008766 n).toNat + 140)

end

end A290369.P15966989792519265940

/-! ## A290369.P11198794800253624069

`A127321(A350662(n))`
-/

namespace A290369.P11198794800253624069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127321 (A350662 n).toNat

end

end A290369.P11198794800253624069

/-! ## A290369.P7810910236755540928

`A087153(n)-A025466(A052303(n))`
-/

namespace A290369.P7810910236755540928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087153 n - A025466 (A052303 n).toNat

end

end A290369.P7810910236755540928

/-! ## A290369.P9950149337479570434

`A087153(n)-A085982(A000598(n))`
-/

namespace A290369.P9950149337479570434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087153 n - A085982 (A000598 n).toNat

end

end A290369.P9950149337479570434

/-!
# A290370: Number of partitions of n into distinct parts that contain primes to odd powers only (A002035).

The programs for A290370, there is no canonical definition to state claims against.
-/

/-! ## A290370.P8778789691161187670

`A239000(A022342(n+1))%A349205(n)`
-/

namespace A290370.P8778789691161187670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A239000 (A022342 (n + 1)).toNat) (A349205 (n + 21))

end

end A290370.P8778789691161187670

/-! ## A290370.P17828918004910690831

`A239000(A022342(n+1)%A050598(n+1))`
-/

namespace A290370.P17828918004910690831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239000 (Int.tmod (A022342 (n + 1)) (A050598 (n + 1))).toNat

end

end A290370.P17828918004910690831

/-! ## A290370.P2271794467422920816

`A087154(n)-A288314(A007148(n+1))`
-/

namespace A290370.P2271794467422920816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087154 n - A288314 (A007148 (n + 1)).toNat

end

end A290370.P2271794467422920816

/-!
# A290371: Integers k such that f(k) - f(k-1) equals 1, where f(n) = floor(n/exp(sqrt(log(n)))).

The programs for A290371, there is no canonical definition to state claims against.
-/

/-! ## A290371.P13014639350353172319

`∑[A200311(A199537(n+1))]`
-/

namespace A290371.P13014639350353172319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200311 (A199537 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A290371.P13014639350353172319

/-! ## A290371.P5108368287516757574

`∑[A000523(∑[A053670(n+1)]²)]`
-/

namespace A290371.P5108368287516757574
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053670 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 ((∑ j ∈ Finset.range (n + 1), f2 j) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A290371.P5108368287516757574

/-! ## A290371.P10537145542345817001

`∑[A000523(A008619(n+3)*A141194(n+1))]`
-/

namespace A290371.P10537145542345817001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (A008619 (n + 3) * A141194 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A290371.P10537145542345817001

/-! ## A290371.P4699855612715273111

`∑[A036496(A130822(A315173(n)))]`
-/

namespace A290371.P4699855612715273111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036496 (A130822 (A315173 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A290371.P4699855612715273111

/-! ## A290371.P3340088587783115611

`∑[floor(log2(A324702(3*(n+1))))]`
-/

namespace A290371.P3340088587783115611
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A324702 (3 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A290371.P3340088587783115611

/-!
# A290372: 10-adic integer x = ...5807 satisfying x^5 = x.

The programs for A290372, there is no canonical definition to state claims against.
-/

/-! ## A290372.P11099980356758445855

`A018247(n)+A091663(n)-A290375(n)`
-/

namespace A290372.P11099980356758445855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018247 n + (A091663 n - A290375 n)

end

end A290372.P11099980356758445855

/-! ## A290372.P2071277626887141670

`A018248(n)+A091664(n)-A290375(n)`
-/

namespace A290372.P2071277626887141670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018248 n + (A091664 n - A290375 n)

end

end A290372.P2071277626887141670

/-! ## A290372.P141950648348117006

`A063006(n)+A091661(n)-A290375(n)`
-/

namespace A290372.P141950648348117006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063006 n + (A091661 n - A290375 n)

end

end A290372.P141950648348117006

/-! ## A290372.P13267983300921278978

`A120817(n)+A120818(n)-A290375(n)`
-/

namespace A290372.P13267983300921278978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120817 n + (A120818 n - A290375 n)

end

end A290372.P13267983300921278978

/-! ## A290372.P14928718485240180771

`A290373(n)+A290374(n)-A290375(n)`
-/

namespace A290372.P14928718485240180771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290373 n + (A290374 n - A290375 n)

end

end A290372.P14928718485240180771

/-!
# A290373: 10-adic integer x = ...2943 satisfying x^5 = x.

The programs for A290373, there is no canonical definition to state claims against.
-/

/-! ## A290373.P9118054854988952676

`A018247(n)+A091663(n)-A290374(n)`
-/

namespace A290373.P9118054854988952676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018247 n + (A091663 n - A290374 n)

end

end A290373.P9118054854988952676

/-! ## A290373.P17083584823677668079

`A018248(n)+A091664(n)-A290374(n)`
-/

namespace A290373.P17083584823677668079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018248 n + (A091664 n - A290374 n)

end

end A290373.P17083584823677668079

/-! ## A290373.P12087120548482868414

`A063006(n)+A091661(n)-A290374(n)`
-/

namespace A290373.P12087120548482868414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063006 n + (A091661 n - A290374 n)

end

end A290373.P12087120548482868414

/-! ## A290373.P15613074007917416949

`A120817(n)+A120818(n)-A290374(n)`
-/

namespace A290373.P15613074007917416949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120817 n + (A120818 n - A290374 n)

end

end A290373.P15613074007917416949

/-! ## A290373.P2215788946780180086

`A290372(n)+A290375(n)-A290374(n)`
-/

namespace A290373.P2215788946780180086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290372 n + (A290375 n - A290374 n)

end

end A290373.P2215788946780180086

/-!
# A290374: 10-adic integer x = ...7057 satisfying x^5 = x.

The programs for A290374, there is no canonical definition to state claims against.
-/

/-! ## A290374.P3550198059635887307

`10-(A290373(n)+A178334(A178334(n)))`
-/

namespace A290374.P3550198059635887307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 - (A290373 n + A178334 (A178334 n).toNat)

end

end A290374.P3550198059635887307

/-! ## A290374.P71951774879974896

`A018247(n)+A091663(n)-A290373(n)`
-/

namespace A290374.P71951774879974896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018247 n + (A091663 n - A290373 n)

end

end A290374.P71951774879974896

/-! ## A290374.P11263826028653053630

`A018248(n)+A091664(n)-A290373(n)`
-/

namespace A290374.P11263826028653053630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018248 n + (A091664 n - A290373 n)

end

end A290374.P11263826028653053630

/-! ## A290374.P13353415555503411375

`A120817(n)+A120818(n)-A290373(n)`
-/

namespace A290374.P13353415555503411375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120817 n + (A120818 n - A290373 n)

end

end A290374.P13353415555503411375

/-! ## A290374.P12583184696382239682

`A290372(n)+A290375(n)-A290373(n)`
-/

namespace A290374.P12583184696382239682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290372 n + (A290375 n - A290373 n)

end

end A290374.P12583184696382239682

/-!
# A290375: 10-adic integer x = ...4193 satisfying x^5 = x.

The programs for A290375, there is no canonical definition to state claims against.
-/

/-! ## A290375.P17119203175758170933

`A018247(n)+A091663(n)-A290372(n)`
-/

namespace A290375.P17119203175758170933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018247 n + (A091663 n - A290372 n)

end

end A290375.P17119203175758170933

/-! ## A290375.P11777042156408013525

`A018248(n)+A091664(n)-A290372(n)`
-/

namespace A290375.P11777042156408013525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018248 n + (A091664 n - A290372 n)

end

end A290375.P11777042156408013525

/-! ## A290375.P18393571011425813761

`A063006(n)+A091661(n)-A290372(n)`
-/

namespace A290375.P18393571011425813761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063006 n + (A091661 n - A290372 n)

end

end A290375.P18393571011425813761

/-! ## A290375.P14716347128503400481

`A120817(n)+A120818(n)-A290372(n)`
-/

namespace A290375.P14716347128503400481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120817 n + (A120818 n - A290372 n)

end

end A290375.P14716347128503400481

/-! ## A290375.P5365666822186653544

`A290373(n)+A290374(n)-A290372(n)`
-/

namespace A290375.P5365666822186653544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290373 n + (A290374 n - A290372 n)

end

end A290375.P5365666822186653544

/-! ## A290375.P16224250741537363961

`A324539(A268241(n+1)+1)+9-A290372(n)`
-/

namespace A290375.P16224250741537363961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324539 (A268241 (n + 1) + 1).toNat + (9 - A290372 n)

end

end A290375.P16224250741537363961

/-!
# A290376: Prime Fubini numbers.

The programs for A290376, there is no canonical definition to state claims against.
-/

/-! ## A290376.P17923394230158505435

`A000670(ceil(sqrt(p?[n²-2])))`
-/

namespace A290376.P17923394230158505435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000670 ⌈Real.sqrt (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℝ)⌉.toNat

end

end A290376.P17923394230158505435

/-!
# A290379: Number of minimal dominating sets in the n-ladder graph.

The programs for A290379, there is no canonical definition to state claims against.
-/

/-! ## A290379.P17611368172910130737

`A286847(∑[n+2])`
-/

namespace A290379.P17611368172910130737
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286847 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A290379.P17611368172910130737

/-! ## A290379.P1604769531379521969

`record[A286847(abs(A201163(n)))]`
-/

namespace A290379.P1604769531379521969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286847 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A290379.P1604769531379521969

/-! ## A290379.P3181912957654974506

`record[A286847(Δ[A003453(n+5)])]`
-/

namespace A290379.P3181912957654974506
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286847 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A290379.P3181912957654974506

/-! ## A290379.P18014382465106984082

`record[A286847(A286235(n+1)+1)]`
-/

namespace A290379.P18014382465106984082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286847 (A286235 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A290379.P18014382465106984082

/-! ## A290379.P9139206861759028048

`record[A286847(A347633(n+1)+1)]`
-/

namespace A290379.P9139206861759028048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286847 (A347633 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A290379.P9139206861759028048

/-!
# A290380: Analog of Motzkin sums for Coxeter type D.

The programs for A290380, the canonical program `A290380.P2092588369032190990` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A290380 has offset 3).

The definition of A290380 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A290380.P2092588369032190990

`(n+1)*A001006(n+1)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A290380

/-- `(n+1)*A001006(n+1)` -/
def P2092588369032190990.Spec : Prop :=
  ∀ n, P2092588369032190990.a n = A290380 (n + 3)

theorem P2092588369032190990.correct : P2092588369032190990.Spec := by
  intro n
  simp only [A290380, Nat.add_sub_cancel]

end A290380

/-! ## A290380.P8883395863309505792

`(n+1)*Δ[A086615(n)]`
-/

namespace A290380.P8883395863309505792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086615 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f1 (n + 1) - f1 n)

end

end A290380.P8883395863309505792

namespace A290380

/-- `(n+1)*Δ[A086615(n)]` -/
def P8883395863309505792.Spec : Prop :=
  ∀ n, P8883395863309505792.a n = A290380 (n + 3)

end A290380

/-! ## A290380.P8261679468761730432

`(n+1)*record[A168049(n)]`
-/

namespace A290380.P8261679468761730432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168049 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A290380.P8261679468761730432

namespace A290380

/-- `(n+1)*record[A168049(n)]` -/
def P8261679468761730432.Spec : Prop :=
  ∀ n, P8261679468761730432.a n = A290380 (n + 3)

end A290380

/-! ## A290380.P11105457336447456500

`∑[abs(Δ[n*A001006(n)])]`
-/

namespace A290380.P11105457336447456500
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A001006 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A290380.P11105457336447456500

namespace A290380

/-- `∑[abs(Δ[n*A001006(n)])]` -/
def P11105457336447456500.Spec : Prop :=
  ∀ n, P11105457336447456500.a n = A290380 (n + 3)

end A290380

/-! ## A290380.P14253708123758004812

`(n+1)*A086246(n+3)`
-/

namespace A290380.P14253708123758004812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A086246 (n + 3)

end

end A290380.P14253708123758004812

namespace A290380

/-- `(n+1)*A086246(n+3)` -/
def P14253708123758004812.Spec : Prop :=
  ∀ n, P14253708123758004812.a n = A290380 (n + 3)

end A290380

/-! ## A290380.P14010460182055583145

`(n+1)*A168049(n+3)`
-/

namespace A290380.P14010460182055583145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A168049 (n + 3)

end

end A290380.P14010460182055583145

namespace A290380

/-- `(n+1)*A168049(n+3)` -/
def P14010460182055583145.Spec : Prop :=
  ∀ n, P14010460182055583145.a n = A290380 (n + 3)

end A290380

/-! ## A290380.P7576926999268844889

`(∑[A002026(n)]+1)*(n+1)`
-/

namespace A290380.P7576926999268844889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002026 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j + 1) * (n + 1 : ℤ)

end

end A290380.P7576926999268844889

namespace A290380

/-- `(∑[A002026(n)]+1)*(n+1)` -/
def P7576926999268844889.Spec : Prop :=
  ∀ n, P7576926999268844889.a n = A290380 (n + 3)

end A290380

/-! ## A290380.P13749896107275896666

`(n+1)*∑[A244884(n+1)]`
-/

namespace A290380.P13749896107275896666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244884 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A290380.P13749896107275896666

namespace A290380

/-- `(n+1)*∑[A244884(n+1)]` -/
def P13749896107275896666.Spec : Prop :=
  ∀ n, P13749896107275896666.a n = A290380 (n + 3)

end A290380

/-! ## A290380.P16157541033531122003

`(n+1)*Δ[A097332(n+1)]`
-/

namespace A290380.P16157541033531122003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097332 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f1 (n + 1) - f1 n)

end

end A290380.P16157541033531122003

namespace A290380

/-- `(n+1)*Δ[A097332(n+1)]` -/
def P16157541033531122003.Spec : Prop :=
  ∀ n, P16157541033531122003.a n = A290380 (n + 3)

end A290380

/-! ## A290380.P12629363708830979430

`(n+1)/2*A007971(n+3)`
-/

namespace A290380.P12629363708830979430
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 2 * (A007971 (n + 3) : ℚ)

end

end A290380.P12629363708830979430

namespace A290380

/-- `(n+1)/2*A007971(n+3)` -/
def P12629363708830979430.Spec : Prop :=
  ∀ n, P12629363708830979430.a n = (A290380 (n + 3) : ℚ)

end A290380

/-! ## A290380.P17286828072033325033

`(n+1)/2*A126068(n+3)`
-/

namespace A290380.P17286828072033325033
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 2 * (A126068 (n + 3) : ℚ)

end

end A290380.P17286828072033325033

namespace A290380

/-- `(n+1)/2*A126068(n+3)` -/
def P17286828072033325033.Spec : Prop :=
  ∀ n, P17286828072033325033.a n = (A290380 (n + 3) : ℚ)

end A290380

/-! ## A290380.P16947327847215658016

`(n+1)/2*A168055(n+3)`
-/

namespace A290380.P16947327847215658016
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 2 * (A168055 (n + 3) : ℚ)

end

end A290380.P16947327847215658016

namespace A290380

/-- `(n+1)/2*A168055(n+3)` -/
def P16947327847215658016.Spec : Prop :=
  ∀ n, P16947327847215658016.a n = (A290380 (n + 3) : ℚ)

end A290380

/-! ## A290380.P16065184175459903175

`(n+1)/3*A168073(n+3)`
-/

namespace A290380.P16065184175459903175
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 3 * (A168073 (n + 3) : ℚ)

end

end A290380.P16065184175459903175

namespace A290380

/-- `(n+1)/3*A168073(n+3)` -/
def P16065184175459903175.Spec : Prop :=
  ∀ n, P16065184175459903175.a n = (A290380 (n + 3) : ℚ)

end A290380

/-! ## A290380.P7697178540524460849

`(n+1)/(n+2)*A005717(n+2)`
-/

namespace A290380.P7697178540524460849
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (n + 2 : ℚ) * (A005717 (n + 2) : ℚ)

end

end A290380.P7697178540524460849

namespace A290380

/-- `(n+1)/(n+2)*A005717(n+2)` -/
def P7697178540524460849.Spec : Prop :=
  ∀ n, P7697178540524460849.a n = (A290380 (n + 3) : ℚ)

end A290380

/-! ## A290380.P16023695122904938261

`A005717(n+2)-A001006(n+1)`
-/

namespace A290380.P16023695122904938261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005717 (n + 2) - A001006 (n + 1)

end

end A290380.P16023695122904938261

namespace A290380

/-- `A005717(n+2)-A001006(n+1)` -/
def P16023695122904938261.Spec : Prop :=
  ∀ n, P16023695122904938261.a n = A290380 (n + 3)

end A290380

/-! ## A290380.P10124772772708141276

`A298300(n+3)-A002426(n+2)`
-/

namespace A290380.P10124772772708141276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298300 (n + 3) - A002426 (n + 2)

end

end A290380.P10124772772708141276

namespace A290380

/-- `A298300(n+3)-A002426(n+2)` -/
def P10124772772708141276.Spec : Prop :=
  ∀ n, P10124772772708141276.a n = A290380 (n + 3)

end A290380

/-! ## A290380.P10332257404221332053

`A168050(2*(n+2))*A168051(n+3)`
-/

namespace A290380.P10332257404221332053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168050 (2 * (n + 2)) * A168051 (n + 3)

end

end A290380.P10332257404221332053

namespace A290380

/-- `A168050(2*(n+2))*A168051(n+3)` -/
def P10332257404221332053.Spec : Prop :=
  ∀ n, P10332257404221332053.a n = A290380 (n + 3)

end A290380

/-! ## A290380.P15661766142883993011

`A002426(n+1)+A005774(n+1)-A001006(n+1)`
-/

namespace A290380.P15661766142883993011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002426 (n + 1) + (A005774 (n + 1) - A001006 (n + 1))

end

end A290380.P15661766142883993011

namespace A290380

/-- `A002426(n+1)+A005774(n+1)-A001006(n+1)` -/
def P15661766142883993011.Spec : Prop :=
  ∀ n, P15661766142883993011.a n = A290380 (n + 3)

end A290380

/-! ## A290380.P9150185900870479626

`A005717(n+1)+A025567(n+1)-A025180(n+2)`
-/

namespace A290380.P9150185900870479626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005717 (n + 1) + (A025567 (n + 1) - A025180 (n + 2))

end

end A290380.P9150185900870479626

namespace A290380

/-- `A005717(n+1)+A025567(n+1)-A025180(n+2)` -/
def P9150185900870479626.Spec : Prop :=
  ∀ n, P9150185900870479626.a n = A290380 (n + 3)

end A290380

/-! ## A290380.P9128311032537599747

`A005717(n+1)+A005717(n+2)-A189912(n+1)`
-/

namespace A290380.P9128311032537599747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005717 (n + 1) + (A005717 (n + 2) - A189912 (n + 1))

end

end A290380.P9128311032537599747

namespace A290380

/-- `A005717(n+1)+A005717(n+2)-A189912(n+1)` -/
def P9128311032537599747.Spec : Prop :=
  ∀ n, P9128311032537599747.a n = A290380 (n + 3)

end A290380

/-!
# A290382: Number of minimal dominating sets in the n X n grid graph.

The programs for A290382, there is no canonical definition to state claims against.
-/

/-! ## A290382.P13771097999877458696

`Δ[A336161(∑[A375516(n)])]`
-/

namespace A290382.P13771097999877458696
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375516 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336161 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A290382.P13771097999877458696

/-!
# A290383: Number of set partitions of [n] such that the smallest element of each block is odd.

The programs for A290383, there is no canonical definition to state claims against.
-/

/-! ## A290383.P13939733406799476256

`A243283(A327643(n+1)+A185283(n))`
-/

namespace A290383.P13939733406799476256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243283 (A327643 (n + 1) + A185283 n).toNat

end

end A290383.P13939733406799476256

/-! ## A290383.P2714412765149647789

`A243283(A327643(n+1)+A292477(n))`
-/

namespace A290383.P2714412765149647789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243283 (A327643 (n + 1) + A292477 n).toNat

end

end A290383.P2714412765149647789

/-! ## A290383.P3990772311242941988

`A243283(A327639(∑[n+1])+A292477(n))`
-/

namespace A290383.P3990772311242941988
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243283 (A327639 (∑ j ∈ Finset.range (n + 1), f1 j) + A292477 n).toNat

end

end A290383.P3990772311242941988

/-! ## A290383.P6915289903896868403

`A282481(n+1)+A106432(A245158(n+1))`
-/

namespace A290383.P6915289903896868403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282481 (n + 1) + A106432 (A245158 (n + 1)).toNat

end

end A290383.P6915289903896868403

/-! ## A290383.P13714413628967811047

`A243283(A327643(n+1)+A217538(n+1))`
-/

namespace A290383.P13714413628967811047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243283 (A327643 (n + 1) + A217538 (n + 1)).toNat

end

end A290383.P13714413628967811047

/-!
# A290384: Number of ordered set partitions of [n] such that the smallest element of each block is odd.

The programs for A290384, there is no canonical definition to state claims against.
-/

/-! ## A290384.P16068499980253836566

`A038568(A109618(n+1)*A286479(n+1))`
-/

namespace A290384.P16068499980253836566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038568 (A109618 (n + 1) * A286479 (n + 1)).toNat

end

end A290384.P16068499980253836566

/-!
# A290386: Increasing sequence a(n)>a(n-1) where a(n)=smallest integer not yet in the sequence with no digits shared with the previous term a(n-1), no repeated digits, and no 0-digit allowed.

The programs for A290386, there is no canonical definition to state claims against.
-/

/-! ## A290386.P11549134570094751439

`A290387(lt[A290415(n), A341403(n)])`
-/

namespace A290386.P11549134570094751439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341403 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290387 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A290386.P11549134570094751439

/-! ## A290386.P3902905075407339096

`A290387(A008728(n))%p?[A007202(n)]`
-/

namespace A290386.P3902905075407339096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007202 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A290387 (A008728 n).toNat) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A290386.P3902905075407339096

/-! ## A290386.P514471235563731923

`A290387(A008728(n)*A178688(n+1))`
-/

namespace A290386.P514471235563731923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290387 (A008728 n * A178688 (n + 1)).toNat

end

end A290386.P514471235563731923

/-! ## A290386.P2249308574114516277

`A290387(A008728(n)^A178688(n+1))`
-/

namespace A290386.P2249308574114516277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290387 (SequenceMachineLib.roundAway ((A008728 n : ℚ) ^ (A178688 (n + 1) : ℤ))).toNat

end

end A290386.P2249308574114516277

/-! ## A290386.P1574822759126030660

`A290387(A008728(n)%A290388(n+2))`
-/

namespace A290386.P1574822759126030660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290387 (Int.tmod (A008728 n) (A290388 (n + 2))).toNat

end

end A290386.P1574822759126030660

/-!
# A290387: Increasing sequence where a(n) is the smallest integer not yet in the sequence with no digits shared with the term a(n-2), no repeated digits, and no 0-digit allowed.

The programs for A290387, there is no canonical definition to state claims against.
-/

/-! ## A290387.P13721831275414772306

`lt[A115035(A325612(n+1)), n+1]`
-/

namespace A290387.P13721831275414772306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115035 (A325612 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A290387.P13721831275414772306

/-! ## A290387.P16472629647157959976

`lt[A325612(n+1), A268448(A070939(2*n+1))]`
-/

namespace A290387.P16472629647157959976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268448 (A070939 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A290387.P16472629647157959976

/-! ## A290387.P14347656827965302686

`∑[gcd(21, A120392(n+3))]`
-/

namespace A290387.P14347656827965302686
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 21 (A120392 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A290387.P14347656827965302686

/-! ## A290387.P13577077198529565571

`∑[A107430(A321213(n))]`
-/

namespace A290387.P13577077198529565571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107430 (A321213 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A290387.P13577077198529565571

/-! ## A290387.P14870253411651748175

`∑[A093557(∑[A325325(n)])]`
-/

namespace A290387.P14870253411651748175
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325325 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093557 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A290387.P14870253411651748175

/-!
# A290388: Increasing sequence where a(n) is the smallest integer not yet in the sequence with no digits shared with the terms a(n-1) and a(n-2), no repeated digits, and no 0-digit allowed.

The programs for A290388, there is no canonical definition to state claims against.
-/

/-! ## A290388.P983102865662161799

`∪[A081549(n+1), A165305(n+1)%A165301(3*n+2)]`
-/

namespace A290388.P983102865662161799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081549 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A165305 (n + 1)) (A165301 (3 * n + 2))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A290388.P983102865662161799

/-!
# A290389: Inverse to A290308.

The programs for A290389, there is no canonical definition to state claims against.
-/

/-! ## A290389.P4522687465443328301

`A086066(n)^A034839(A138464(n+1))`
-/

namespace A290389.P4522687465443328301
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A086066 n : ℚ) ^ (A034839 (A138464 (n + 1)).toNat : ℤ)

end

end A290389.P4522687465443328301

/-!
# A290391: Number of 5-cycles in the n-triangular honeycomb obtuse knight graph.

The programs for A290391, the canonical program `A290391.P6766128772775496861` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A290391 has offset 1).

The definition of A290391 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A290391.P6766128772775496861

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=0, a(4)=0, a(5)=0, a(6)=30, a(7)=120, a(8)=294`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A290391

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P6766128772775496861.Spec : Prop :=
  ∀ n, P6766128772775496861.a n = A290391 (n + 1)

theorem P6766128772775496861.correct : P6766128772775496861.Spec := by
  intro n
  simp only [A290391, Nat.add_sub_cancel]

end A290391

/-! ## A290391.P6300133894201020795

`A160738(lcm(n, A059076(n)))`
-/

namespace A290391.P6300133894201020795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160738 (Int.lcm (n : ℤ) (A059076 n))

end

end A290391.P6300133894201020795

namespace A290391

/-- `A160738(lcm(n, A059076(n)))` -/
def P6300133894201020795.Spec : Prop :=
  ∀ n, P6300133894201020795.a n = A290391 (n + 1)

end A290391

/-! ## A290391.P9485179718393524948

`(n-1)*A122321(A349053(n))`
-/

namespace A290391.P9485179718393524948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * A122321 (A349053 n).toNat

end

end A290391.P9485179718393524948

namespace A290391

/-- `(n-1)*A122321(A349053(n))` -/
def P9485179718393524948.Spec : Prop :=
  ∀ n, P9485179718393524948.a n = A290391 (n + 1)

end A290391

/-! ## A290391.P912735568600862379

`A253587(n)*A374700(A080014(n))`
-/

namespace A290391.P912735568600862379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253587 n * A374700 (A080014 n).toNat

end

end A290391.P912735568600862379

namespace A290391

/-- `A253587(n)*A374700(A080014(n))` -/
def P912735568600862379.Spec : Prop :=
  ∀ n, P912735568600862379.a n = A290391 (n + 1)

end A290391

/-! ## A290391.P15937406079174072345

`A173066(A000009(2*(n+2))-A163511(n))`
-/

namespace A290391.P15937406079174072345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173066 (A000009 (2 * (n + 2)) - A163511 n).toNat

end

end A290391.P15937406079174072345

namespace A290391

/-- `A173066(A000009(2*(n+2))-A163511(n))` -/
def P15937406079174072345.Spec : Prop :=
  ∀ n, P15937406079174072345.a n = A290391 (n + 1)

end A290391

/-!
# A290394: First k-Ramanujan prime, where k = 1 + 1/n.

The programs for A290394, there is no canonical definition to state claims against.
-/

/-! ## A290394.P3273209405019335006

`A007918(A166968(n+1))`
-/

namespace A290394.P3273209405019335006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (A166968 (n + 1)).toNat

end

end A290394.P3273209405019335006

/-! ## A290394.P17676150672410421433

`A151800(A166968(n+1)-1)`
-/

namespace A290394.P17676150672410421433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A166968 (n + 1) - 1).toNat

end

end A290394.P17676150672410421433

/-! ## A290394.P5684158594347113600

`A151800(A057427(n)*A166968(n+1))`
-/

namespace A290394.P5684158594347113600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A057427 n * A166968 (n + 1)).toNat

end

end A290394.P5684158594347113600

/-! ## A290394.P17389863014877937822

`A151800(A166968(n+1)/A054977(n))`
-/

namespace A290394.P17389863014877937822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (SequenceMachineLib.roundAway ((A166968 (n + 1) : ℚ) / (A054977 n : ℚ))).toNat

end

end A290394.P17389863014877937822

/-! ## A290394.P17550626511140354223

`A151800(and(A057428(n), A166968(n+1)))`
-/

namespace A290394.P17550626511140354223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (Int.land (A057428 n) (A166968 (n + 1))).toNat

end

end A290394.P17550626511140354223

/-! ## A290394.P6470689442218256821

`xor(A000007(n), A151800(A166968(n+1)))`
-/

namespace A290394.P6470689442218256821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000007 n) (A151800 (A166968 (n + 1)).toNat)

end

end A290394.P6470689442218256821

/-! ## A290394.P10803641552081124094

`A151800(xor(A054977(n), A166968(n+1)))`
-/

namespace A290394.P10803641552081124094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (Int.xor (A054977 n) (A166968 (n + 1))).toNat

end

end A290394.P10803641552081124094

/-! ## A290394.P8158435219996792557

`A151800(A057428(n)²*A166968(n+1))`
-/

namespace A290394.P8158435219996792557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A057428 n ^ 2 * A166968 (n + 1)).toNat

end

end A290394.P8158435219996792557

/-! ## A290394.P7734600314388044749

`A151800(A166968(n+1)/(A000007(n)+1))`
-/

namespace A290394.P7734600314388044749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (SequenceMachineLib.roundAway ((A166968 (n + 1) : ℚ) / (A000007 n + 1 : ℚ))).toNat

end

end A290394.P7734600314388044749

/-! ## A290394.P11070001181132643023

`A151800(A166968(n+1)/(A057428(n)+2))`
-/

namespace A290394.P11070001181132643023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (SequenceMachineLib.roundAway ((A166968 (n + 1) : ℚ) / (A057428 n + 2 : ℚ))).toNat

end

end A290394.P11070001181132643023

/-!
# A290395: G.f.: Product_{m>0} 1/(1 + x^m + 2*x^(2*m) + 3*x^(3*m)).

The programs for A290395, there is no canonical definition to state claims against.
-/

/-! ## A290395.P6008526770242294583

`A290217(∑[n+3]+n+3)`
-/

namespace A290395.P6008526770242294583
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290217 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A290395.P6008526770242294583

/-! ## A290395.P15317396207117780878

`A087960(n)²*A290217(A046691(n+2))`
-/

namespace A290395.P15317396207117780878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 n ^ 2 * A290217 (A046691 (n + 2)).toNat

end

end A290395.P15317396207117780878

/-! ## A290395.P8636428127554799889

`A290217(A046691(n+2))+A000007(n+1)`
-/

namespace A290395.P8636428127554799889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290217 (A046691 (n + 2)).toNat + A000007 (n + 1)

end

end A290395.P8636428127554799889

/-! ## A290395.P2711586429660264996

`A290217(A046691(n+2))%A126646(n+1)`
-/

namespace A290395.P2711586429660264996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A290217 (A046691 (n + 2)).toNat) (A126646 (n + 1))

end

end A290395.P2711586429660264996

/-! ## A290395.P7406982071237386454

`A290217(A046691(n+2))+A103517(n)%(n+1)`
-/

namespace A290395.P7406982071237386454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290217 (A046691 (n + 2)).toNat + Int.tmod (A103517 n) (n + 1 : ℤ)

end

end A290395.P7406982071237386454

/-! ## A290395.P15021633692265021875

`A001221(A104887(n+1))*A290217(A046691(n+2))`
-/

namespace A290395.P15021633692265021875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A104887 (n + 1)).toNat * A290217 (A046691 (n + 2)).toNat

end

end A290395.P15021633692265021875

/-! ## A290395.P17849225589528534847

`A056926(2*A065764(n+1))*A290217(A046691(n+2))`
-/

namespace A290395.P17849225589528534847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (2 * A065764 (n + 1)).toNat * A290217 (A046691 (n + 2)).toNat

end

end A290395.P17849225589528534847

/-!
# A290396: a(n) = 3*2^n + 3*4^n + 6^(n+1) + 1.

The programs for A290396, the canonical program `A290396.P10184249045807236170` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A290396 has offset 0).

The definition of A290396 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*2^n+3*4^n+6^(n+1)+1` (program `A290396.P10184249045807236170`, by `A290396.P10184249045807236170.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A290396.P10184249045807236170

`3*2^n+3*4^n+6^(n+1)+1`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A290396

/-- `3*2^n+3*4^n+6^(n+1)+1` -/
def P10184249045807236170.Spec : Prop :=
  ∀ n, (P10184249045807236170.a n : ℤ) = A290396 n

theorem P10184249045807236170.correct : P10184249045807236170.Spec := by
  intro n
  simp only [A290396]

end A290396

/-! ## A290396.P17885832637740785396

`Δ[A001576(n)+∑[A074502(n)]]`
-/

namespace A290396.P17885832637740785396
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074502 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001576 n + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A290396.P17885832637740785396

namespace A290396

/-- `Δ[A001576(n)+∑[A074502(n)]]` -/
def P17885832637740785396.Spec : Prop :=
  ∀ n, P17885832637740785396.a n = A290396 n

end A290396

/-!
# A290398: Number of tiles in distance d from a given heptagon in the truncated order-3 tiling of the heptagonal plane (a.k.a. the "hyperbolic soccerball").

The programs for A290398, there is no canonical definition to state claims against.
-/

/-! ## A290398.P16360825897999836700

`A082206(A162920(n))`
-/

namespace A290398.P16360825897999836700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082206 (A162920 n).toNat

end

end A290398.P16360825897999836700

/-! ## A290398.P2889696924886018858

`A189593(n+1)*A354598(A162527(n+1))`
-/

namespace A290398.P2889696924886018858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189593 (n + 1) * A354598 (A162527 (n + 1)).toNat

end

end A290398.P2889696924886018858

/-! ## A290398.P8513691177365614488

`A003293(n)*A006530(A003949(n))`
-/

namespace A290398.P8513691177365614488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003293 n * A006530 (A003949 n).toNat

end

end A290398.P8513691177365614488

/-!
# A290399: Number of solutions to Diophantine equation x + y + z = prime(n) with x*y*z = k^3 (0 < x <= y <= z).

The programs for A290399, there is no canonical definition to state claims against.
-/

/-! ## A290399.P18363018221738203098

`A375580(Δ[A007504(n)])`
-/

namespace A290399.P18363018221738203098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375580 (f1 (n + 1) - f1 n).toNat

end

end A290399.P18363018221738203098

/-! ## A290399.P810765708579423287

`A375580(A000040(n+1))`
-/

namespace A290399.P810765708579423287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375580 (A000040 (n + 1)).toNat

end

end A290399.P810765708579423287

/-! ## A290399.P11488045887474441131

`A375580(A006005(n+1))`
-/

namespace A290399.P11488045887474441131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375580 (A006005 (n + 1)).toNat

end

end A290399.P11488045887474441131

/-! ## A290399.P16297223334960498816

`A375580(A063884(n+1))`
-/

namespace A290399.P16297223334960498816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375580 (A063884 (n + 1)).toNat

end

end A290399.P16297223334960498816

/-! ## A290399.P740542727761925914

`A375580(A161847(n+1))`
-/

namespace A290399.P740542727761925914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375580 (A161847 (n + 1)).toNat

end

end A290399.P740542727761925914

/-! ## A290399.P6036891303806253939

`A375580(A008578(n+2))`
-/

namespace A290399.P6036891303806253939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375580 (A008578 (n + 2)).toNat

end

end A290399.P6036891303806253939

/-! ## A290399.P12788484388729721503

`A375580(A075643(n+2))`
-/

namespace A290399.P12788484388729721503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375580 (A075643 (n + 2)).toNat

end

end A290399.P12788484388729721503

/-! ## A290399.P17915395405654027623

`A375580(A182986(n+2))`
-/

namespace A290399.P17915395405654027623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375580 (A182986 (n + 2)).toNat

end

end A290399.P17915395405654027623

/-! ## A290399.P1487785684624525815

`A375580(A324050(n+2))`
-/

namespace A290399.P1487785684624525815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375580 (A324050 (n + 2)).toNat

end

end A290399.P1487785684624525815

