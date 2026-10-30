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
import Seq.B000.C027
import Seq.B000.C028
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
import Seq.B000.C045
import Seq.B000.C046
import Seq.B000.C048
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
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
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
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A097000: A062401(x)=phi[sigma(x)] function is iterated; initial value=2^n; a(n)=smallest term of trajectory.

The programs for A097000, there is no canonical definition to state claims against.
-/

/-! ## A097000.P3552953456702196849

`A096865(2^(n+1))`
-/

namespace A097000.P3552953456702196849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096865 (2 ^ (n + 1))

end

end A097000.P3552953456702196849

/-! ## A097000.P3463690265985931660

`A000027(A096865(2*2^n))`
-/

namespace A097000.P3463690265985931660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A096865 (2 * 2 ^ n)).toNat

end

end A097000.P3463690265985931660

/-! ## A097000.P4738941121559513509

`A096865(2*2^n)%A042910(n)`
-/

namespace A097000.P4738941121559513509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A096865 (2 * 2 ^ n)) (A042910 n)

end

end A097000.P4738941121559513509

/-! ## A097000.P9853935039346950789

`A096865(A011782(n+2))%A362103(n)`
-/

namespace A097000.P9853935039346950789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A096865 (A011782 (n + 2)).toNat) (A362103 n)

end

end A097000.P9853935039346950789

/-! ## A097000.P10749938456246753399

`lcm(A080100(n), A096865(A011782(n+2)))`
-/

namespace A097000.P10749938456246753399
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A080100 n) (A096865 (A011782 (n + 2)).toNat)

end

end A097000.P10749938456246753399

/-!
# A097001: A062402(x)=sigma(phi[x]) function is iterated; initial value=2^n; a(n)=largest term of trajectory.

The programs for A097001, there is no canonical definition to state claims against.
-/

/-! ## A097001.P2464390782324685515

`A096864(2^(n+1))`
-/

namespace A097001.P2464390782324685515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096864 (2 ^ (n + 1))

end

end A097001.P2464390782324685515

/-! ## A097001.P16508890034754692164

`A066437(A000079(n+1))+char[2^n-1]`
-/

namespace A097001.P16508890034754692164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066437 (A000079 (n + 1)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A097001.P16508890034754692164

/-! ## A097001.P1707504407381806552

`A096864(A000079(n+1))%A198644(n)`
-/

namespace A097001.P1707504407381806552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A096864 (A000079 (n + 1)).toNat) (A198644 n)

end

end A097001.P1707504407381806552

/-! ## A097001.P3305818853026920799

`A096864(A011782(n+2))%A232327(n)`
-/

namespace A097001.P3305818853026920799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A096864 (A011782 (n + 2)).toNat) (A232327 n)

end

end A097001.P3305818853026920799

/-! ## A097001.P14065486643113395432

`A096864(A011782(n+2))+A079208(2*n+3)`
-/

namespace A097001.P14065486643113395432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096864 (A011782 (n + 2)).toNat + A079208 (2 * n + 3)

end

end A097001.P14065486643113395432

/-!
# A097002: A062402(x)=sigma(phi[x]) function is iterated; initial value=2^n; a(n)=smallest term of trajectory.

The programs for A097002, there is no canonical definition to state claims against.
-/

/-! ## A097002.P9921529428337062603

`A096866(∑[2^n])`
-/

namespace A097002.P9921529428337062603
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096866 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A097002.P9921529428337062603

/-! ## A097002.P2451224150866503051

`or(1, A096866(A126646(n)))`
-/

namespace A097002.P2451224150866503051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A096866 (A126646 n).toNat)

end

end A097002.P2451224150866503051

/-! ## A097002.P16292916363787008998

`A000027(A096866(2^(n+1)))`
-/

namespace A097002.P16292916363787008998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A096866 (2 ^ (n + 1))).toNat

end

end A097002.P16292916363787008998

/-! ## A097002.P1176305556302542118

`or(1, A096866(A151821(n+1)))`
-/

namespace A097002.P1176305556302542118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A096866 (A151821 (n + 1)).toNat)

end

end A097002.P1176305556302542118

/-! ## A097002.P17378200856999700735

`∑[2^n]%A050496(A287142(n))`
-/

namespace A097002.P17378200856999700735
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A050496 (A287142 n).toNat)

end

end A097002.P17378200856999700735

/-!
# A097003: Function A062402[x]=phi[sigma[x]] is iterated. a(n) is the number of distinct terms arising in the trajectory of 2^n; a(n)=t(n)+c(n)=t+c, where t is the number of transient terms, c is the number of recurrent terms [in the terminal cycle].

The programs for A097003, there is no canonical definition to state claims against.
-/

/-! ## A097003.P725148119452467552

`A097004(n+1)-1`
-/

namespace A097003.P725148119452467552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097004 (n + 1) - 1

end

end A097003.P725148119452467552

/-! ## A097003.P4521218096890226329

`Δ[∑[A097004(n)]-n]`
-/

namespace A097003.P4521218096890226329
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097004 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A097003.P4521218096890226329

/-! ## A097003.P16774868723890591049

`A023443(A097004(n+1))`
-/

namespace A097003.P16774868723890591049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A097004 (n + 1)).toNat

end

end A097003.P16774868723890591049

/-! ## A097003.P3602865795767411665

`A096994(n)+A096852(n)`
-/

namespace A097003.P3602865795767411665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096994 n + A096852 n

end

end A097003.P3602865795767411665

/-! ## A097003.P2975810791003758734

`A279119(2*A097004(n+1))`
-/

namespace A097003.P2975810791003758734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279119 (2 * A097004 (n + 1)).toNat

end

end A097003.P2975810791003758734

/-!
# A097004: Function A062402(x)=phi(sigma(x)) is iterated. Starting with 2^n, the n-th power of 2, a(n) is the count of distinct terms arising in trajectory; a(n)=t(n)+c(n)=t+c, where t is the number of transient terms, c is the number of recurrent terms [in the terminal cycle].

The programs for A097004, there is no canonical definition to state claims against.
-/

/-! ## A097004.P8826966524397411085

`A096995(n)+A096852(abs(1-n))`
-/

namespace A097004.P8826966524397411085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096995 n + A096852 |1 - (n : ℤ)|.toNat

end

end A097004.P8826966524397411085

/-! ## A097004.P1679437066548693271

`A097003(abs(A024000(n)))+A057427(n)`
-/

namespace A097004.P1679437066548693271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097003 |A024000 n|.toNat + A057427 n

end

end A097004.P1679437066548693271

/-! ## A097004.P14544580199501589080

`A097003(n-A057427(n))+A057427(n)`
-/

namespace A097004.P14544580199501589080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097003 ((n : ℤ) - A057427 n).toNat + A057427 n

end

end A097004.P14544580199501589080

/-! ## A097004.P10397163842703441390

`A097003(abs(A024000(n)))+n/A028310(n)`
-/

namespace A097004.P10397163842703441390
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097003 |A024000 n|.toNat : ℚ) + (n : ℚ) / (A028310 n : ℚ)

end

end A097004.P10397163842703441390

/-! ## A097004.P9345458145078195252

`A097003(abs(A024000(n)))+2*n+1-A004277(n)`
-/

namespace A097004.P9345458145078195252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097003 |A024000 n|.toNat + ((2 * n + 1 : ℤ) - A004277 n)

end

end A097004.P9345458145078195252

/-!
# A097008: a(n) = index of first appearance of n in A096862.

The programs for A097008, there is no canonical definition to state claims against.
-/

/-! ## A097008.P5995150358371894261

`A171474(A153801(n+1)+A055932(n+1))`
-/

namespace A097008.P5995150358371894261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171474 (A153801 (n + 1) + A055932 (n + 1)).toNat

end

end A097008.P5995150358371894261

/-!
# A097009: a(n) = gcd(prime(2*n)-1, prime(n)-1).

The programs for A097009, the canonical program `A097009.P3737239498928801837` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097009 has offset 1).

The definition of A097009 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `gcd(A000040(2*(n+1))-1, A000040(n+1)-1)` (program `A097009.P3737239498928801837`, by `A097009.P3737239498928801837.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A097009.P3737239498928801837

`gcd(A000040(2*(n+1))-1, A000040(n+1)-1)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A097009

/-- `gcd(A000040(2*(n+1))-1, A000040(n+1)-1)` -/
def P3737239498928801837.Spec : Prop :=
  ∀ n, (P3737239498928801837.a n : ℤ) = A097009 (n + 1)

theorem P3737239498928801837.correct : P3737239498928801837.Spec := by
  intro n
  simp only [A097009, Nat.add_sub_cancel]

end A097009

/-! ## A097009.P7289407710540198229

`gcd(A006093(n+1), A072473(n+1))`
-/

namespace A097009.P7289407710540198229
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A006093 (n + 1)) (A072473 (n + 1))

end

end A097009.P7289407710540198229

namespace A097009

/-- `gcd(A006093(n+1), A072473(n+1))` -/
def P7289407710540198229.Spec : Prop :=
  ∀ n, (P7289407710540198229.a n : ℤ) = A097009 (n + 1)

end A097009

/-! ## A097009.P14661963443513381578

`gcd(A022457(n+1)+1, A039915(n+1))`
-/

namespace A097009.P14661963443513381578
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A022457 (n + 1) + 1) (A039915 (n + 1))

end

end A097009.P14661963443513381578

namespace A097009

/-- `gcd(A022457(n+1)+1, A039915(n+1))` -/
def P14661963443513381578.Spec : Prop :=
  ∀ n, (P14661963443513381578.a n : ℤ) = A097009 (n + 1)

end A097009

/-! ## A097009.P211284433648114487

`gcd(A014681(A022457(n+1)), A039915(n+1))`
-/

namespace A097009.P211284433648114487
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A014681 (A022457 (n + 1)).toNat) (A039915 (n + 1))

end

end A097009.P211284433648114487

namespace A097009

/-- `gcd(A014681(A022457(n+1)), A039915(n+1))` -/
def P211284433648114487.Spec : Prop :=
  ∀ n, (P211284433648114487.a n : ℤ) = A097009 (n + 1)

end A097009

/-! ## A097009.P6116539607531524188

`gcd(A037167(2*(n+1)), A037167(n+1))`
-/

namespace A097009.P6116539607531524188
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A037167 (2 * (n + 1))) (A037167 (n + 1))

end

end A097009.P6116539607531524188

namespace A097009

/-- `gcd(A037167(2*(n+1)), A037167(n+1))` -/
def P6116539607531524188.Spec : Prop :=
  ∀ n, (P6116539607531524188.a n : ℤ) = A097009 (n + 1)

end A097009

/-! ## A097009.P16185505416904429858

`gcd(record[A000010(n+1)], A006093(2*(n+1)))`
-/

namespace A097009.P16185505416904429858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A006093 (2 * (n + 1)))

end

end A097009.P16185505416904429858

namespace A097009

/-- `gcd(record[A000010(n+1)], A006093(2*(n+1)))` -/
def P16185505416904429858.Spec : Prop :=
  ∀ n, (P16185505416904429858.a n : ℤ) = A097009 (n + 1)

end A097009

/-! ## A097009.P9291756944163041952

`gcd(A006093(n+1), A006093(A103517(n)))`
-/

namespace A097009.P9291756944163041952
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A006093 (n + 1)) (A006093 (A103517 n).toNat)

end

end A097009.P9291756944163041952

namespace A097009

/-- `gcd(A006093(n+1), A006093(A103517(n)))` -/
def P9291756944163041952.Spec : Prop :=
  ∀ n, (P9291756944163041952.a n : ℤ) = A097009 (n + 1)

end A097009

/-! ## A097009.P17494297031754454728

`gcd(A014686(2*(n+1)), A173557(A000040(n+1)))`
-/

namespace A097009.P17494297031754454728
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A014686 (2 * (n + 1))) (A173557 (A000040 (n + 1)).toNat)

end

end A097009.P17494297031754454728

namespace A097009

/-- `gcd(A014686(2*(n+1)), A173557(A000040(n+1)))` -/
def P17494297031754454728.Spec : Prop :=
  ∀ n, (P17494297031754454728.a n : ℤ) = A097009 (n + 1)

end A097009

/-!
# A097010: Numbers n such that zero is eventually reached when the map x -> A034460(x) is iterated, starting from x = n.

The programs for A097010, there is no canonical definition to state claims against.
-/

/-! ## A097010.P2705891083592292290

`lt[A318880(1+n), 1]+1`
-/

namespace A097010.P2705891083592292290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318880 (1 + n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A097010.P2705891083592292290

/-! ## A097010.P17181481420068272206

`comp[A003062(n+1)-1]+1`
-/

namespace A097010.P17181481420068272206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003062 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A097010.P17181481420068272206

/-! ## A097010.P18423789716306540589

`a(n-1)+A318880(a(n-1)+1)+1` with `a(0)=1`
-/

namespace A097010.P18423789716306540589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A318880 (a (n - 1) + 1).toNat + 1)

end

end A097010.P18423789716306540589

/-! ## A097010.P9214397081343406906

`comp[A102283(3*n+2)+A003062(n+1)]+1`
-/

namespace A097010.P9214397081343406906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102283 (3 * n + 2) + A003062 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A097010.P9214397081343406906

/-! ## A097010.P14515154758087654057

`record[A097033(n+1)+n+1-A318882(n+1)]`
-/

namespace A097010.P14515154758087654057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097033 (n + 1) + ((n + 1 : ℤ) - A318882 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A097010.P14515154758087654057

/-! ## A097010.P12373149209112714287

`record[(n+1)/A000041(n*A318880(n+1))]`
-/

namespace A097010.P12373149209112714287
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A000041 ((n : ℤ) * A318880 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A097010.P12373149209112714287

/-!
# A097011: Remainder of sigma(n) modulo 30.

The programs for A097011, the canonical program `A097011.P1759452212583889931` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097011 has offset 1).

The definition of A097011 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A097011.P1759452212583889931

`A000203(n+1)%30`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A097011

/-- `A000203(n+1)%30` -/
def P1759452212583889931.Spec : Prop :=
  ∀ n, P1759452212583889931.a n = A097011 (n + 1)

theorem P1759452212583889931.correct : P1759452212583889931.Spec := by
  intro n
  simp only [A097011, Nat.add_sub_cancel]

end A097011

/-! ## A097011.P12844236531721409260

`∑{d}[1+n, #]%30`
-/

namespace A097011.P12844236531721409260
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n), d) % 30

end

end A097011.P12844236531721409260

namespace A097011

/-- `∑{d}[1+n, #]%30` -/
def P12844236531721409260.Spec : Prop :=
  ∀ n, (P12844236531721409260.a n : ℤ) = A097011 (n + 1)

end A097011

/-! ## A097011.P3909441949341218471

`Δ[A160664(n)]%30`
-/

namespace A097011.P3909441949341218471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) 30

end

end A097011.P3909441949341218471

namespace A097011

/-- `Δ[A160664(n)]%30` -/
def P3909441949341218471.Spec : Prop :=
  ∀ n, P3909441949341218471.a n = A097011 (n + 1)

end A097011

/-! ## A097011.P3885081936313903660

`A001160(n+1)%30`
-/

namespace A097011.P3885081936313903660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001160 (n + 1)) 30

end

end A097011.P3885081936313903660

namespace A097011

/-- `A001160(n+1)%30` -/
def P3885081936313903660.Spec : Prop :=
  ∀ n, P3885081936313903660.a n = A097011 (n + 1)

end A097011

/-! ## A097011.P3602226451155283886

`abs(Δ[A330725(n)])%30`
-/

namespace A097011.P3602226451155283886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330725 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod |f1 (n + 1) - f1 n| 30

end

end A097011.P3602226451155283886

namespace A097011

/-- `abs(Δ[A330725(n)])%30` -/
def P3602226451155283886.Spec : Prop :=
  ∀ n, P3602226451155283886.a n = A097011 (n + 1)

end A097011

/-! ## A097011.P5155938099291313191

`sqrt(A072861(n+1))%30`
-/

namespace A097011.P5155938099291313191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (A072861 (n + 1) : ℝ))) 30

end

end A097011.P5155938099291313191

namespace A097011

/-- `sqrt(A072861(n+1))%30` -/
def P5155938099291313191.Spec : Prop :=
  ∀ n, P5155938099291313191.a n = A097011 (n + 1)

end A097011

/-! ## A097011.P17741428501199603922

`A245092(A005408(n))%30`
-/

namespace A097011.P17741428501199603922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A245092 (A005408 n).toNat) 30

end

end A097011.P17741428501199603922

namespace A097011

/-- `A245092(A005408(n))%30` -/
def P17741428501199603922.Spec : Prop :=
  ∀ n, P17741428501199603922.a n = A097011 (n + 1)

end A097011

/-! ## A097011.P170632914011416266

`A013957(n+1)%A040210(n)`
-/

namespace A097011.P170632914011416266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A013957 (n + 1)) (A040210 n)

end

end A097011.P170632914011416266

namespace A097011

/-- `A013957(n+1)%A040210(n)` -/
def P170632914011416266.Spec : Prop :=
  ∀ n, P170632914011416266.a n = A097011 (n + 1)

end A097011

/-! ## A097011.P15330382494578863668

`A097012(n+1)%A040210(n)`
-/

namespace A097011.P15330382494578863668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A097012 (n + 1)) (A040210 n)

end

end A097011.P15330382494578863668

namespace A097011

/-- `A097012(n+1)%A040210(n)` -/
def P15330382494578863668.Spec : Prop :=
  ∀ n, P15330382494578863668.a n = A097011 (n + 1)

end A097011

/-! ## A097011.P310881359802832513

`A344139(n+1)%A040210(n)`
-/

namespace A097011.P310881359802832513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A344139 (n + 1)) (A040210 n)

end

end A097011.P310881359802832513

namespace A097011

/-- `A344139(n+1)%A040210(n)` -/
def P310881359802832513.Spec : Prop :=
  ∀ n, P310881359802832513.a n = A097011 (n + 1)

end A097011

/-! ## A097011.P11548823043290794727

`(A318458(n+1)+A318456(n+1))%30`
-/

namespace A097011.P11548823043290794727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A318458 (n + 1) + A318456 (n + 1)) 30

end

end A097011.P11548823043290794727

namespace A097011

/-- `(A318458(n+1)+A318456(n+1))%30` -/
def P11548823043290794727.Spec : Prop :=
  ∀ n, P11548823043290794727.a n = A097011 (n + 1)

theorem P11548823043290794727.correct : P11548823043290794727.Spec := by
  intro n
  simp only [A097011, Nat.add_sub_cancel, A097011.P11548823043290794727.a, A097011.P1759452212583889931.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A318456, A318456.P892181734394606159.a, A318458, A318458.P13171011643438111848.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A097011

/-! ## A097011.P18224486452264010428

`A064263(∑{d}[n+1, A064263(#)])`
-/

namespace A097011.P18224486452264010428
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064263 (∑ d ∈ Nat.divisors (f1 n), A064263 d).toNat

end

end A097011.P18224486452264010428

namespace A097011

/-- `A064263(∑{d}[n+1, A064263(#)])` -/
def P18224486452264010428.Spec : Prop :=
  ∀ n, P18224486452264010428.a n = A097011 (n + 1)

end A097011

/-! ## A097011.P17758957940126186054

`A064264(∑{d}[n+1, A064264(#)])`
-/

namespace A097011.P17758957940126186054
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064264 (∑ d ∈ Nat.divisors (f1 n), A064264 d).toNat

end

end A097011.P17758957940126186054

namespace A097011

/-- `A064264(∑{d}[n+1, A064264(#)])` -/
def P17758957940126186054.Spec : Prop :=
  ∀ n, P17758957940126186054.a n = A097011 (n + 1)

end A097011

/-! ## A097011.P13699560017811849543

`A245092(2*n+1)%A024448(A060680(2*(n+2)))`
-/

namespace A097011.P13699560017811849543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A245092 (2 * n + 1)) (A024448 (A060680 (2 * (n + 2))).toNat)

end

end A097011.P13699560017811849543

namespace A097011

/-- `A245092(2*n+1)%A024448(A060680(2*(n+2)))` -/
def P13699560017811849543.Spec : Prop :=
  ∀ n, P13699560017811849543.a n = A097011 (n + 1)

end A097011

/-! ## A097011.P13103093856640298674

`(A155085(n+1)-(n+1))%A024448(A060680(2*(n+2)))`
-/

namespace A097011.P13103093856640298674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A155085 (n + 1) - (n + 1 : ℤ)) (A024448 (A060680 (2 * (n + 2))).toNat)

end

end A097011.P13103093856640298674

namespace A097011

/-- `(A155085(n+1)-(n+1))%A024448(A060680(2*(n+2)))` -/
def P13103093856640298674.Spec : Prop :=
  ∀ n, P13103093856640298674.a n = A097011 (n + 1)

end A097011

/-! ## A097011.P5575992850295721158

`(A064987(n+1)/(n+1))%A024448(A060680(2*(n+2)))`
-/

namespace A097011.P5575992850295721158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A064987 (n + 1) : ℚ) / (n + 1 : ℚ))) (A024448 (A060680 (2 * (n + 2))).toNat)

end

end A097011.P5575992850295721158

namespace A097011

/-- `(A064987(n+1)/(n+1))%A024448(A060680(2*(n+2)))` -/
def P5575992850295721158.Spec : Prop :=
  ∀ n, P5575992850295721158.a n = A097011 (n + 1)

end A097011

/-!
# A097012: a(n) = sigma(n) mod 210.

The programs for A097012, the canonical program `A097012.P6533339689471497123` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097012 has offset 1).

The definition of A097012 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000203(n+1)%210` (program `A097012.P6533339689471497123`, by `A097012.P6533339689471497123.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A097012.P6533339689471497123

`A000203(n+1)%210`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A097012

/-- `A000203(n+1)%210` -/
def P6533339689471497123.Spec : Prop :=
  ∀ n, P6533339689471497123.a n = A097012 (n + 1)

theorem P6533339689471497123.correct : P6533339689471497123.Spec := by
  intro n
  simp only [A097012, Nat.add_sub_cancel]

end A097012

/-! ## A097012.P14407265318743841974

`∑{d}[1+n, #]%210`
-/

namespace A097012.P14407265318743841974
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n), d) % 210

end

end A097012.P14407265318743841974

namespace A097012

/-- `∑{d}[1+n, #]%210` -/
def P14407265318743841974.Spec : Prop :=
  ∀ n, (P14407265318743841974.a n : ℤ) = A097012 (n + 1)

end A097012

/-! ## A097012.P15824968041243499630

`abs(A143348(n+1))%210`
-/

namespace A097012.P15824968041243499630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod |A143348 (n + 1)| 210

end

end A097012.P15824968041243499630

namespace A097012

/-- `abs(A143348(n+1))%210` -/
def P15824968041243499630.Spec : Prop :=
  ∀ n, P15824968041243499630.a n = A097012 (n + 1)

end A097012

/-! ## A097012.P14344305740372516138

`(A274536(n+1)/6)%210`
-/

namespace A097012.P14344305740372516138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A274536 (n + 1) : ℚ) / 6)) 210

end

end A097012.P14344305740372516138

namespace A097012

/-- `(A274536(n+1)/6)%210` -/
def P14344305740372516138.Spec : Prop :=
  ∀ n, P14344305740372516138.a n = A097012 (n + 1)

end A097012

/-! ## A097012.P2738543004582421297

`(A319527(n+1)/7)%210`
-/

namespace A097012.P2738543004582421297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A319527 (n + 1) : ℚ) / 7)) 210

end

end A097012.P2738543004582421297

namespace A097012

/-- `(A319527(n+1)/7)%210` -/
def P2738543004582421297.Spec : Prop :=
  ∀ n, P2738543004582421297.a n = A097012 (n + 1)

end A097012

/-! ## A097012.P9587408266083930443

`sqrt(A072861(n+1))%(20*21/2)`
-/

namespace A097012.P9587408266083930443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (A072861 (n + 1) : ℝ))) (SequenceMachineLib.roundAway (20 * ((21 : ℚ) / 2)))

end

end A097012.P9587408266083930443

namespace A097012

/-- `sqrt(A072861(n+1))%(20*21/2)` -/
def P9587408266083930443.Spec : Prop :=
  ∀ n, P9587408266083930443.a n = A097012 (n + 1)

end A097012

/-! ## A097012.P11171599746087252576

`(A074400(n+1)/2)%A086568(A014613(n+1))`
-/

namespace A097012.P11171599746087252576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A074400 (n + 1) : ℚ) / 2)) (A086568 (A014613 (n + 1)).toNat)

end

end A097012.P11171599746087252576

namespace A097012

/-- `(A074400(n+1)/2)%A086568(A014613(n+1))` -/
def P11171599746087252576.Spec : Prop :=
  ∀ n, P11171599746087252576.a n = A097012 (n + 1)

end A097012

/-!
# A097015: Smallest k such that sigma(k) + 1 is divisible by primorial(n).

The programs for A097015, there is no canonical definition to state claims against.
-/

/-! ## A097015.P8466582437017670188

`A233929(A002110(n))`
-/

namespace A097015.P8466582437017670188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233929 (A002110 n).toNat

end

end A097015.P8466582437017670188

/-! ## A097015.P15106113568033941174

`A233929(A331665(n+1))`
-/

namespace A097015.P15106113568033941174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233929 (A331665 (n + 1)).toNat

end

end A097015.P15106113568033941174

/-!
# A097017: a(n) = sigma(5*n) modulo 6.

The programs for A097017, the canonical program `A097017.P15742144128177953416` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097017 has offset 1).

The definition of A097017 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A097017.P11562396756701729539

`A000203(5*(n+1))%6`
-/

namespace A097017.P11562396756701729539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000203 (5 * (n + 1))) 6

end

end A097017.P11562396756701729539

namespace A097017

/-- `A000203(5*(n+1))%6` -/
def P11562396756701729539.Spec : Prop :=
  ∀ n, P11562396756701729539.a n = A097017 (n + 1)

end A097017

/-! ## A097017.P15742144128177953416

`A084301(5*(n+1))`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A097017

/-- `A084301(5*(n+1))` -/
def P15742144128177953416.Spec : Prop :=
  ∀ n, P15742144128177953416.a n = A097017 (n + 1)

theorem P15742144128177953416.correct : P15742144128177953416.Spec := by
  intro n
  simp only [A097017, Nat.add_sub_cancel]

end A097017

/-! ## A097017.P6940820490292994052

`∑{d}[5*(n+1), #]%6`
-/

namespace A097017.P6940820490292994052
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n), d) % 6

end

end A097017.P6940820490292994052

namespace A097017

/-- `∑{d}[5*(n+1), #]%6` -/
def P6940820490292994052.Spec : Prop :=
  ∀ n, (P6940820490292994052.a n : ℤ) = A097017 (n + 1)

end A097017

/-! ## A097017.P15683158450049218954

`A283118(n+1)%6`
-/

namespace A097017.P15683158450049218954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A283118 (n + 1)) 6

end

end A097017.P15683158450049218954

namespace A097017

/-- `A283118(n+1)%6` -/
def P15683158450049218954.Spec : Prop :=
  ∀ n, P15683158450049218954.a n = A097017 (n + 1)

end A097017

/-! ## A097017.P2967287918690636922

`(A274535(n+1)+A116073(n+1))%6`
-/

namespace A097017.P2967287918690636922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A274535 (n + 1) + A116073 (n + 1)) 6

end

end A097017.P2967287918690636922

namespace A097017

/-- `(A274535(n+1)+A116073(n+1))%6` -/
def P2967287918690636922.Spec : Prop :=
  ∀ n, P2967287918690636922.a n = A097017 (n + 1)

end A097017

/-! ## A097017.P16823501720400961234

`A010875(A283118(n+1))`
-/

namespace A097017.P16823501720400961234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010875 (A283118 (n + 1)).toNat

end

end A097017.P16823501720400961234

namespace A097017

/-- `A010875(A283118(n+1))` -/
def P16823501720400961234.Spec : Prop :=
  ∀ n, P16823501720400961234.a n = A097017 (n + 1)

end A097017

/-! ## A097017.P17432222288627667918

`A010875(A000203(5*(n+1)))`
-/

namespace A097017.P17432222288627667918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010875 (A000203 (5 * (n + 1))).toNat

end

end A097017.P17432222288627667918

namespace A097017

/-- `A010875(A000203(5*(n+1)))` -/
def P17432222288627667918.Spec : Prop :=
  ∀ n, P17432222288627667918.a n = A097017 (n + 1)

end A097017

/-! ## A097017.P5430320790868119171

`(A039653(5*(n+1))+1)%6`
-/

namespace A097017.P5430320790868119171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A039653 (5 * (n + 1)) + 1) 6

end

end A097017.P5430320790868119171

namespace A097017

/-- `(A039653(5*(n+1))+1)%6` -/
def P5430320790868119171.Spec : Prop :=
  ∀ n, P5430320790868119171.a n = A097017 (n + 1)

end A097017

/-!
# A097018: a(n) is the least number such that sigma(a(n)) is divisible by the n-th prime.

The programs for A097018, there is no canonical definition to state claims against.
-/

/-! ## A097018.P5602779051436199933

`A156099(n+1)/A000040(n+1)`
-/

namespace A097018.P5602779051436199933
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A156099 (n + 1) : ℚ) / (A000040 (n + 1) : ℚ)

end

end A097018.P5602779051436199933

/-! ## A097018.P6422285202727977599

`A156099(n+1)/A008578(n+2)`
-/

namespace A097018.P6422285202727977599
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A156099 (n + 1) : ℚ) / (A008578 (n + 2) : ℚ)

end

end A097018.P6422285202727977599

/-! ## A097018.P14042378199229011240

`A156099(n+1)/A067747(2*n+1)`
-/

namespace A097018.P14042378199229011240
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A156099 (n + 1) : ℚ) / (A067747 (2 * n + 1) : ℚ)

end

end A097018.P14042378199229011240

/-! ## A097018.P7249870624643950672

`A070982(Δ[A007504(n)])`
-/

namespace A097018.P7249870624643950672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070982 (f1 (n + 1) - f1 n).toNat

end

end A097018.P7249870624643950672

/-! ## A097018.P14557840042613820875

`A070982(A000040(n+1))`
-/

namespace A097018.P14557840042613820875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070982 (A000040 (n + 1)).toNat

end

end A097018.P14557840042613820875

/-! ## A097018.P15551497995153702572

`A070982(A008578(n+2))`
-/

namespace A097018.P15551497995153702572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070982 (A008578 (n + 2)).toNat

end

end A097018.P15551497995153702572

/-! ## A097018.P15701665336857722369

`A070982(A182986(n+2))`
-/

namespace A097018.P15701665336857722369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070982 (A182986 (n + 2)).toNat

end

end A097018.P15701665336857722369

/-! ## A097018.P13653768485578274202

`A070982(eq[1, A003415(n)])`
-/

namespace A097018.P13653768485578274202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070982 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A097018.P13653768485578274202

/-! ## A097018.P9255685348622838172

`A070982(eq[1, A032741(n)])`
-/

namespace A097018.P9255685348622838172
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070982 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A097018.P9255685348622838172

/-! ## A097018.P5294513196523941521

`A070982(∑[A054541(n+1)])`
-/

namespace A097018.P5294513196523941521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070982 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A097018.P5294513196523941521

/-! ## A097018.P4429972401000692395

`A070982(record[A093074(n+1)])`
-/

namespace A097018.P4429972401000692395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093074 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070982 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A097018.P4429972401000692395

/-! ## A097018.P7262847677904971539

`A070982(record[A006530(n+2)])`
-/

namespace A097018.P7262847677904971539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070982 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A097018.P7262847677904971539

/-! ## A097018.P11139616005919554625

`A070982(record[A014963(n+2)])`
-/

namespace A097018.P11139616005919554625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070982 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A097018.P11139616005919554625

/-! ## A097018.P2488858640485892542

`A070982(record[A020639(n+2)])`
-/

namespace A097018.P2488858640485892542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070982 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A097018.P2488858640485892542

/-! ## A097018.P14548359629503931603

`A070982(eq[n, A057637(n+1)])`
-/

namespace A097018.P14548359629503931603
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057637 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070982 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A097018.P14548359629503931603

/-! ## A097018.P12229350465819117593

`A070982(eq[1, A001222(n+1)]+1)`
-/

namespace A097018.P12229350465819117593
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070982 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A097018.P12229350465819117593

/-! ## A097018.P6748842769854846355

`A070982(eq[n, A000010(n+1)]+1)`
-/

namespace A097018.P6748842769854846355
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070982 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A097018.P6748842769854846355

/-! ## A097018.P13598780982927022579

`A227470(record[A006530(n+2)])`
-/

namespace A097018.P13598780982927022579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227470 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A097018.P13598780982927022579

/-! ## A097018.P9599121238228367129

`A227470(record[A014963(n+2)])`
-/

namespace A097018.P9599121238228367129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227470 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A097018.P9599121238228367129

/-! ## A097018.P5521672625469770431

`A227470(record[A020639(n+2)])`
-/

namespace A097018.P5521672625469770431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227470 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A097018.P5521672625469770431

/-!
# A097019: a(n) = sigma(A097018(n))/prime(n) = A000203(A097018(n))/A000040(n).

The programs for A097019, there is no canonical definition to state claims against.
-/

/-! ## A097019.P9467569956032362108

`A000203(A097018(n+1))/A000040(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A097019.P9467569956032362108
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (A097018 (n + 1)).toNat : ℚ) / (A000040 (n + 1) : ℚ)

end

end A097019.P9467569956032362108

/-! ## A097019.P1711373773104028181

`∑{d}[A097018(n+1), #]/Δ[A007504(n)]`
-/

namespace A097019.P1711373773104028181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097018 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n).natAbs, d : ℕ) : ℚ) / (f2 (n + 1) - f2 n : ℚ)

end

end A097019.P1711373773104028181

/-! ## A097019.P6493541577178971391

`∑{d}[A097018(n+1), #]/A000040(n+1)`
-/

namespace A097019.P6493541577178971391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097018 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n).natAbs, d : ℕ) : ℚ) / (A000040 (n + 1) : ℚ)

end

end A097019.P6493541577178971391

/-! ## A097019.P12262771177963063397

`∑{d}[A097018(n+1), #]/∑[A054541(n+1)]`
-/

namespace A097019.P12262771177963063397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097018 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n).natAbs, d : ℕ) : ℚ) / ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ)

end

end A097019.P12262771177963063397

/-! ## A097019.P16416515362979008669

`A085961(A000040(n+1))/p?[A014681(n)]`
-/

namespace A097019.P16416515362979008669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085961 (A000040 (n + 1)).toNat : ℚ) / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ)

end

end A097019.P16416515362979008669

/-! ## A097019.P7061915775496129005

`A085961(A000040(n+1))/p?[A001057(n)]`
-/

namespace A097019.P7061915775496129005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085961 (A000040 (n + 1)).toNat : ℚ) / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ)

end

end A097019.P7061915775496129005

/-! ## A097019.P10023819970859056742

`A000203(A097018(n+1))/Δ[A007504(n)]`
-/

namespace A097019.P10023819970859056742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (A097018 (n + 1)).toNat : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A097019.P10023819970859056742

/-! ## A097019.P9311484411467754886

`A000203(A097018(n+1))/p?[A001057(n)]`
-/

namespace A097019.P9311484411467754886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (A097018 (n + 1)).toNat : ℚ) / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ)

end

end A097019.P9311484411467754886

/-! ## A097019.P13946102032817853010

`A000203(A097018(n+1))/record[A006530(n+2)]`
-/

namespace A097019.P13946102032817853010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (A097018 (n + 1)).toNat : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)

end

end A097019.P13946102032817853010

/-! ## A097019.P1340765071272633669

`A309892(∑{d}[A097018(n+1), #])`
-/

namespace A097019.P1340765071272633669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097018 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309892 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A097019.P1340765071272633669

/-!
# A097022: a(n) = (sigma(2n^2)-3)/6.

The programs for A097022, the canonical program `A097022.P6513166181426899163` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097022 has offset 1).

The definition of A097022 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A097022.P6513166181426899163

`(A065765(n+1)-3)/6`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A097022

/-- `(A065765(n+1)-3)/6` -/
def P6513166181426899163.Spec : Prop :=
  ∀ n, P6513166181426899163.a n = (A097022 (n + 1) : ℚ)

end A097022

/-! ## A097022.P4857232811693831501

`(A000203(2*(n+1)²)-3)/6`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A097022.P4857232811693831501
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (2 * (n + 1) ^ 2) - 3 : ℚ) / 6

end

end A097022.P4857232811693831501

namespace A097022

/-- `(A000203(2*(n+1)²)-3)/6` -/
def P4857232811693831501.Spec : Prop :=
  ∀ n, P4857232811693831501.a n = (A097022 (n + 1) : ℚ)

end A097022

/-! ## A097022.P632765199989391895

`floor(A065766(n+1)/2)`
-/

namespace A097022.P632765199989391895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A065766 (n + 1) : ℚ) / 2⌋

end

end A097022.P632765199989391895

namespace A097022

/-- `floor(A065766(n+1)/2)` -/
def P632765199989391895.Spec : Prop :=
  ∀ n, P632765199989391895.a n = A097022 (n + 1)

end A097022

/-! ## A097022.P6164538815700967539

`floor(A065765(n+1)/6)`
-/

namespace A097022.P6164538815700967539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A065765 (n + 1) : ℚ) / 6⌋

end

end A097022.P6164538815700967539

namespace A097022

/-- `floor(A065765(n+1)/6)` -/
def P6164538815700967539.Spec : Prop :=
  ∀ n, P6164538815700967539.a n = A097022 (n + 1)

end A097022

/-! ## A097022.P6696803441083171053

`ceil((A065766(n+1)+A000007(n))/2)-1`
-/

namespace A097022.P6696803441083171053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A065766 (n + 1) + A000007 n : ℚ) / 2⌉ - 1

end

end A097022.P6696803441083171053

namespace A097022

/-- `ceil((A065766(n+1)+A000007(n))/2)-1` -/
def P6696803441083171053.Spec : Prop :=
  ∀ n, P6696803441083171053.a n = A097022 (n + 1)

end A097022

/-! ## A097022.P5126423472316157055

`(A065766(n+1)-(A353528(2*n+3)+1))/2`
-/

namespace A097022.P5126423472316157055
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065766 (n + 1) - (A353528 (2 * n + 3) + 1) : ℚ) / 2

end

end A097022.P5126423472316157055

namespace A097022

/-- `(A065766(n+1)-(A353528(2*n+3)+1))/2` -/
def P5126423472316157055.Spec : Prop :=
  ∀ n, P5126423472316157055.a n = (A097022 (n + 1) : ℚ)

end A097022

/-! ## A097022.P6211769855830849923

`floor(∑{d}[2*(n+1)², #]/6)`
-/

namespace A097022.P6211769855830849923
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℚ) / 6⌋

end

end A097022.P6211769855830849923

namespace A097022

/-- `floor(∑{d}[2*(n+1)², #]/6)` -/
def P6211769855830849923.Spec : Prop :=
  ∀ n, P6211769855830849923.a n = A097022 (n + 1)

end A097022

/-! ## A097022.P16617288892523678911

`floor(A000203(2*(n+1)²)/6)`
-/

namespace A097022.P16617288892523678911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000203 (2 * (n + 1) ^ 2) : ℚ) / 6⌋

end

end A097022.P16617288892523678911

namespace A097022

/-- `floor(A000203(2*(n+1)²)/6)` -/
def P16617288892523678911.Spec : Prop :=
  ∀ n, P16617288892523678911.a n = A097022 (n + 1)

end A097022

/-! ## A097022.P8025885170950478227

`(A000203(∑[a(n-1)+4])/3-1)/2` with `a(0)=2`
-/

namespace A097022.P8025885170950478227
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f1 =>
  f1 (n - 1) + 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A000203 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 3 - 1) / 2

end

end A097022.P8025885170950478227

namespace A097022

/-- `(A000203(∑[a(n-1)+4])/3-1)/2` -/
def P8025885170950478227.Spec : Prop :=
  ∀ n, P8025885170950478227.a n = (A097022 (n + 1) : ℚ)

end A097022

/-! ## A097022.P13431807602417051125

`floor(A062731((n+1)²)/6)`
-/

namespace A097022.P13431807602417051125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A062731 ((n + 1) ^ 2) : ℚ) / 6⌋

end

end A097022.P13431807602417051125

namespace A097022

/-- `floor(A062731((n+1)²)/6)` -/
def P13431807602417051125.Spec : Prop :=
  ∀ n, P13431807602417051125.a n = A097022 (n + 1)

end A097022

/-!
# A097023: Numbers k such that the sum of the divisors of 2*k^2 is a square.

The programs for A097023, there is no canonical definition to state claims against.
-/

/-! ## A097023.P16840547056152210177

`sqrt(A074388(n+1)/2)`
-/

namespace A097023.P16840547056152210177
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((A074388 (n + 1) : ℚ) / 2 : ℝ)

end

end A097023.P16840547056152210177

/-! ## A097023.P581707459299029157

`A032742(sqrt(2*A074388(n+1)))`
-/

namespace A097023.P581707459299029157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (SequenceMachineLib.roundAway (Real.sqrt (2 * A074388 (n + 1) : ℝ))).toNat

end

end A097023.P581707459299029157

/-!
# A097024: Numbers in the 5-cycle-attractor of the function f(x)=A063919(x).

The programs for A097024, there is no canonical definition to state claims against.
-/

/-! ## A097024.P1362742416997458262

`A327157(n+11)`
-/

namespace A097024.P1362742416997458262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327157 (n + 11)

end

end A097024.P1362742416997458262

/-!
# A097025: Numbers n such that both sigma(n) and sigma(sigma(n)) are odd numbers.

The programs for A097025, there is no canonical definition to state claims against.
-/

/-! ## A097025.P11412016491493349523

`∪[A008848(n+1), A074388(n+1)]`
-/

namespace A097025.P11412016491493349523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008848 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074388 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A097025.P11412016491493349523

/-!
# A097026: Function f(x) = phi(x) + floor(x/2) is iterated, starting at x=n; a(n) is the length of terminal cycle (or 0 if no finite cycle exists).

The programs for A097026, there is no canonical definition to state claims against.
-/

/-! ## A097026.P13774076309993706368

`A097028(n+1)-A097027(n+1)`
-/

namespace A097026.P13774076309993706368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097028 (n + 1) - A097027 (n + 1)

end

end A097026.P13774076309993706368

/-! ## A097026.P1875751404673758210

`A097028(n+1)+A001478(A097027(n+1)+1)+1`
-/

namespace A097026.P1875751404673758210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097028 (n + 1) + A001478 (A097027 (n + 1) + 1).toNat + 1

end

end A097026.P1875751404673758210

/-! ## A097026.P14405239734375439854

`A097028(A280577(A280577(A280577(A280577(n+1)))))`
-/

namespace A097026.P14405239734375439854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097028 (A280577 (A280577 (A280577 (A280577 (n + 1)).toNat).toNat).toNat).toNat

end

end A097026.P14405239734375439854

/-! ## A097026.P4194597465910465484

`A280745(A128395(n+1))%3`
-/

namespace A097026.P4194597465910465484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A280745 (A128395 (n + 1)).toNat) 3

end

end A097026.P4194597465910465484

/-! ## A097026.P398448767130008272

`A000002(ceil(sqrt(A324495(n+1)^5)))`
-/

namespace A097026.P398448767130008272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 ⌈Real.sqrt (A324495 (n + 1) ^ 5 : ℝ)⌉.toNat

end

end A097026.P398448767130008272

/-!
# A097027: Function f(x) = phi(x) + floor(x/2) is iterated; a(n) is the length of transient if the iteration was initiated at n.

The programs for A097027, there is no canonical definition to state claims against.
-/

/-! ## A097027.P11717645804687946537

`A097028(n+1)-A097026(n+1)`
-/

namespace A097027.P11717645804687946537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097028 (n + 1) - A097026 (n + 1)

end

end A097027.P11717645804687946537

/-! ## A097027.P4460928886748905827

`A097028(n+1)-A100429(A170933(n)-A000120(n))`
-/

namespace A097027.P4460928886748905827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097028 (n + 1) - A100429 (A170933 n - A000120 n).toNat

end

end A097027.P4460928886748905827

/-! ## A097027.P12746322641177148623

`A097028(n+1)-A000002(A226617(n+1)+A001748(n+1))`
-/

namespace A097027.P12746322641177148623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097028 (n + 1) - A000002 (A226617 (n + 1) + A001748 (n + 1)).toNat

end

end A097027.P12746322641177148623

/-!
# A097028: Function f(x) = EulerPhi(x) + floor(x/2) is iterated; a(n) is the length of transient part and terminal cycle if the iteration was initiated at n. So a(n) is the number of distinct terms arising during iteration.

The programs for A097028, there is no canonical definition to state claims against.
-/

/-! ## A097028.P13963848454080952867

`A097026(n+1)+A097027(n+1)`
-/

namespace A097028.P13963848454080952867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097026 (n + 1) + A097027 (n + 1)

end

end A097028.P13963848454080952867

/-! ## A097028.P13627232187438235243

`A100429(A170933(n)-A000120(n))+A097027(n+1)`
-/

namespace A097028.P13627232187438235243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100429 (A170933 n - A000120 n).toNat + A097027 (n + 1)

end

end A097028.P13627232187438235243

/-! ## A097028.P4238003234136225803

`A097027(n+1)+A000002(A226617(n+1)+A001748(n+1))`
-/

namespace A097028.P4238003234136225803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097027 (n + 1) + A000002 (A226617 (n + 1) + A001748 (n + 1)).toNat

end

end A097028.P4238003234136225803

/-!
# A097029: Fixed points when the function f(x) = phi(x) + floor(x/2) is iterated, i.e., solutions to f(x) = x.

The programs for A097029, there is no canonical definition to state claims against.
-/

/-! ## A097029.P6732485118795540506

`Δ[A000802(n)]%A098690(n+1)`
-/

namespace A097029.P6732485118795540506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000802 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A098690 (n + 1))

end

end A097029.P6732485118795540506

/-! ## A097029.P3659491004797025360

`Δ[A000802(n)%A250171(n+1)]`
-/

namespace A097029.P3659491004797025360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000802 n) (A250171 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A097029.P3659491004797025360

/-! ## A097029.P15218581641290159014

`Δ[A000802(n)]^A007318(A050315(n))`
-/

namespace A097029.P15218581641290159014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000802 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) ^ (A007318 (A050315 n).toNat : ℤ)

end

end A097029.P15218581641290159014

/-! ## A097029.P3965710510843109874

`Δ[A000802(n)]%A055780(A055780(n))`
-/

namespace A097029.P3965710510843109874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000802 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A055780 (A055780 n).toNat)

end

end A097029.P3965710510843109874

/-! ## A097029.P8813455752023394519

`∩[A225620(n+1), A231811(n+1)]`
-/

namespace A097029.P8813455752023394519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225620 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231811 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A097029.P8813455752023394519

/-!
# A097030: Numbers in the cycle-attractors of length=14 of the function f(x)=A063919(x).

The programs for A097030, there is no canonical definition to state claims against.
-/

/-! ## A097030.P16490340342226518506

`∩[A097034(n+1), A327157(n+1)]`
-/

namespace A097030.P16490340342226518506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097034 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327157 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A097030.P16490340342226518506

/-! ## A097030.P7510447146369184794

`A327157(A004907(n+1)+16)`
-/

namespace A097030.P7510447146369184794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327157 (A004907 (n + 1) + 16).toNat

end

end A097030.P7510447146369184794

/-! ## A097030.P3428858515995778382

`A327157(A045918(n)+6)`
-/

namespace A097030.P3428858515995778382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327157 (A045918 n + 6).toNat

end

end A097030.P3428858515995778382

/-! ## A097030.P6747161751827374857

`A327157(A047842(n)+6)`
-/

namespace A097030.P6747161751827374857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327157 (A047842 n + 6).toNat

end

end A097030.P6747161751827374857

/-! ## A097030.P17590747450776106890

`A327157(A097598(n)+6)`
-/

namespace A097030.P17590747450776106890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327157 (A097598 n + 6).toNat

end

end A097030.P17590747450776106890

/-!
# A097031: Length of terminal cycle if unitary-proper-divisor-sum function f(x) = A063919(x) is iterated and the initial value is n.

The programs for A097031, there is no canonical definition to state claims against.
-/

/-! ## A097031.P4286731249690730594

`A318882(n+1)-A318883(n+1)`
-/

namespace A097031.P4286731249690730594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318882 (n + 1) - A318883 (n + 1)

end

end A097031.P4286731249690730594

/-! ## A097031.P3472526822088955323

`A097032(n+1)-A097033(n+1)`
-/

namespace A097031.P3472526822088955323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097032 (n + 1) - A097033 (n + 1)

end

end A097031.P3472526822088955323

/-! ## A097031.P7898430890280211213

`gcd(A327159(n+1)!, A103585(n+1))`
-/

namespace A097031.P7898430890280211213
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.factorial (A327159 (n + 1)).toNat : ℤ) (A103585 (n + 1))

end

end A097031.P7898430890280211213

/-! ## A097031.P5493234540157072281

`gcd(A016813(n), A237271(A270681(n)))`
-/

namespace A097031.P5493234540157072281
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A016813 n) (A237271 (A270681 n).toNat)

end

end A097031.P5493234540157072281

/-! ## A097031.P15918344556077231533

`A000041(A327159(n+1)%A118759(n+2))`
-/

namespace A097031.P15918344556077231533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Int.tmod (A327159 (n + 1)) (A118759 (n + 2))).toNat

end

end A097031.P15918344556077231533

/-! ## A097031.P6539505786399119333

`or(A183093(A249374(2*(n+2))), A327159(n+1))`
-/

namespace A097031.P6539505786399119333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A183093 (A249374 (2 * (n + 2))).toNat) (A327159 (n + 1))

end

end A097031.P6539505786399119333

/-! ## A097031.P6279952170154478490

`gcd(3, gcd(n+1, A073871(A114511(n)+1)))`
-/

namespace A097031.P6279952170154478490
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 3 (Int.gcd (n + 1 : ℤ) (A073871 (A114511 n + 1).toNat))

end

end A097031.P6279952170154478490

/-! ## A097031.P2359631465665176838

`A083953(A083953(∑[n+2]-2)*A327159(n+1))`
-/

namespace A097031.P2359631465665176838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083953 (A083953 (∑ j ∈ Finset.range (n + 1), f1 j - 2) * A327159 (n + 1)).toNat

end

end A097031.P2359631465665176838

/-! ## A097031.P1255291103719159910

`gcd(n+1, A008277(A212623(n+1)))`
-/

namespace A097031.P1255291103719159910
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A008277 (A212623 (n + 1)).toNat)

end

end A097031.P1255291103719159910

/-! ## A097031.P525416056658423690

`gcd(A017281(n), A075505(A212623(n+1)))`
-/

namespace A097031.P525416056658423690
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A017281 n) (A075505 (A212623 (n + 1)).toNat)

end

end A097031.P525416056658423690

/-!
# A097032: Total length of transient and terminal cycle if unitary-proper-divisor-sum function f(x) = A034460(x) is iterated and the initial value is n. Number of distinct terms in iteration list, including also the terminal 0 in the count if the iteration doesn't end in a cycle.

The programs for A097032, there is no canonical definition to state claims against.
-/

/-! ## A097032.P4867834729177240115

`A318882(n+1)+1-A318880(n+1)`
-/

namespace A097032.P4867834729177240115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318882 (n + 1) + (1 - A318880 (n + 1))

end

end A097032.P4867834729177240115

/-! ## A097032.P14928518398702491798

`A097033(1+n)+A097031(n+1)`
-/

namespace A097032.P14928518398702491798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097033 (1 + n) + A097031 (n + 1)

end

end A097032.P14928518398702491798

/-! ## A097032.P13217920222980975029

`A318882(n+1)+xor(1, A318880(A063919(n+1)))`
-/

namespace A097032.P13217920222980975029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318882 (n + 1) + Int.xor 1 (A318880 (A063919 (n + 1)).toNat)

end

end A097032.P13217920222980975029

/-! ## A097032.P5175082591273514763

`A097033(n+1)+A318882(n+1)-A318883(n+1)`
-/

namespace A097032.P5175082591273514763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097033 (n + 1) + (A318882 (n + 1) - A318883 (n + 1))

end

end A097032.P5175082591273514763

/-! ## A097032.P13728245116506600944

`A097031(n+1)+A318883(n+1)+1-A318880(n+1)`
-/

namespace A097032.P13728245116506600944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097031 (n + 1) + (A318883 (n + 1) + (1 - A318880 (n + 1)))

end

end A097032.P13728245116506600944

/-!
# A097033: Number of transient terms before either 0 or a finite cycle is reached when unitary-proper-divisor-sum-function f(x) = A034460(x) is iterated and the initial value is n.

The programs for A097033, there is no canonical definition to state claims against.
-/

/-! ## A097033.P3192208253886384537

`A318883(n+1)+1-A318880(n+1)`
-/

namespace A097033.P3192208253886384537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318883 (n + 1) + (1 - A318880 (n + 1))

end

end A097033.P3192208253886384537

/-! ## A097033.P8942778799299571220

`A097032(n+1)-A097031(n+1)`
-/

namespace A097033.P8942778799299571220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097032 (n + 1) - A097031 (n + 1)

end

end A097033.P8942778799299571220

/-! ## A097033.P3141848657979275911

`A318883(n+1)+xor(1, A318880(A063919(n+1)))`
-/

namespace A097033.P3141848657979275911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318883 (n + 1) + Int.xor 1 (A318880 (A063919 (n + 1)).toNat)

end

end A097033.P3141848657979275911

/-! ## A097033.P4729348076102378801

`A097032(n+1)+A318883(n+1)-A318882(n+1)`
-/

namespace A097033.P4729348076102378801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097032 (n + 1) + (A318883 (n + 1) - A318882 (n + 1))

end

end A097033.P4729348076102378801

/-! ## A097033.P9674222206749595969

`A318882(n+1)-A097031(n+1)*A318880(n+1)`
-/

namespace A097033.P9674222206749595969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318882 (n + 1) - A097031 (n + 1) * A318880 (n + 1)

end

end A097033.P9674222206749595969

/-!
# A097035: Initial values for the iteration of the function f(x) = A063919(x) such that the iteration ends in a 5-cycle, i.e., in A097024.

The programs for A097035, there is no canonical definition to state claims against.
-/

/-! ## A097035.P11316603713736166927

`eq[5, A097031(A028310(n))]`
-/

namespace A097035.P11316603713736166927
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097031 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A097035.P11316603713736166927

/-! ## A097035.P445002567446675425

`A020725(eq[5, A097031(n+1)])`
-/

namespace A097035.P445002567446675425
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097031 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A097035.P445002567446675425

/-!
# A097036: Initial values for iteration of A063919[x] function such that iteration ends in a 3-cycle.

The programs for A097036, there is no canonical definition to state claims against.
-/

/-! ## A097036.P5512642575297603754

`eq[3, A097031(n+1)]+1`
-/

namespace A097036.P5512642575297603754
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097031 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A097036.P5512642575297603754

/-! ## A097036.P1892832754634729899

`eq[3, A097031(A028310(n))]`
-/

namespace A097036.P1892832754634729899
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097031 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A097036.P1892832754634729899

/-! ## A097036.P16080169329042429629

`A014681(eq[3, A097031(n+1)])`
-/

namespace A097036.P16080169329042429629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097031 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A097036.P16080169329042429629

/-! ## A097036.P11103924855629273630

`A020725(eq[3, A097031(n+1)])`
-/

namespace A097036.P11103924855629273630
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097031 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A097036.P11103924855629273630

/-! ## A097036.P13071383716412034825

`A114112(eq[3, A097031(n+1)])`
-/

namespace A097036.P13071383716412034825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097031 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114112 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A097036.P13071383716412034825

/-! ## A097036.P6293391815141000706

`A133265(eq[3, A097031(n+1)])`
-/

namespace A097036.P6293391815141000706
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097031 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133265 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A097036.P6293391815141000706

/-!
# A097037: Initial values for iteration of A063919(x) function such that iteration ends in a 2-cycle, i.e., "attracted" by unitary amicable numbers, A063991.

The programs for A097037, there is no canonical definition to state claims against.
-/

/-! ## A097037.P10132910440524927497

`∪[A063991(n+1), A127655(n+1)]`
-/

namespace A097037.P10132910440524927497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063991 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127655 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A097037.P10132910440524927497

/-! ## A097037.P2309686208965709809

`eq[2, A097031(A028310(n))]`
-/

namespace A097037.P2309686208965709809
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097031 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A097037.P2309686208965709809

/-! ## A097037.P8148505663503031313

`A020725(eq[2, A097031(n+1)])`
-/

namespace A097037.P8148505663503031313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097031 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A097037.P8148505663503031313

/-! ## A097037.P7488275060145343666

`eq[2, A097031(A060000(n+1))]`
-/

namespace A097037.P7488275060145343666
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097031 (A060000 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A097037.P7488275060145343666

/-! ## A097037.P11714254184220099349

`A063660(eq[2, A097031(n+1)])`
-/

namespace A097037.P11714254184220099349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097031 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063660 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A097037.P11714254184220099349

/-! ## A097037.P13810738909366674127

`A153152(eq[2, A097031(n+1)])`
-/

namespace A097037.P13810738909366674127
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097031 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A097037.P13810738909366674127

/-!
# A097038: A Jacobsthal variant.

The programs for A097038, the canonical program `A097038.P10084886673612185550` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097038 has offset 0).

The definition of A097038 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A097038.P35721704372584317

`ogf(x/(1-x-4x^2+2x^3+4x^4))`
-/

namespace A097038.P35721704372584317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -1, -4, 2, 4] n

end

end A097038.P35721704372584317

namespace A097038

/-- `ogf(x/(1-x-4x^2+2x^3+4x^4))` -/
def P35721704372584317.Spec : Prop :=
  ∀ n, P35721704372584317.a n = A097038 n

end A097038

/-! ## A097038.P5151934717728299310

`∑{#}[n, 2^(#/2)*(1+(-1)^#)*A001045(n-#)/2]`
-/

namespace A097038.P5151934717728299310
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (2 : ℝ) ^ ((k : ℚ) / 2 : ℝ) * (1 + (-1) ^ k : ℝ) * (A001045 (n - k) : ℝ) / 2

end

end A097038.P5151934717728299310

namespace A097038

/-- `∑{#}[n, 2^(#/2)*(1+(-1)^#)*A001045(n-#)/2]` -/
def P5151934717728299310.Spec : Prop :=
  ∀ n, P5151934717728299310.a n = (A097038 n : ℝ)

end A097038

/-! ## A097038.P10084886673612185550

`A001045(n+1)-A077957(n)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A097038

/-- `A001045(n+1)-A077957(n)` -/
def P10084886673612185550.Spec : Prop :=
  ∀ n, P10084886673612185550.a n = A097038 n

theorem P10084886673612185550.correct : P10084886673612185550.Spec := by
  intro n
  simp only [A097038]

end A097038

/-! ## A097038.P10152715829730265722

`2*2^n/3+(-1)^n/3-2^(n/2)*(1+(-1)^n)/2`
-/

namespace A097038.P10152715829730265722
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((2 * 2 ^ n : ℚ) / 3 + ((-1) ^ n : ℚ) / 3 : ℝ) - (2 : ℝ) ^ ((n : ℚ) / 2 : ℝ) * (1 + (-1) ^ n : ℝ) / 2

end

end A097038.P10152715829730265722

namespace A097038

/-- `2*2^n/3+(-1)^n/3-2^(n/2)*(1+(-1)^n)/2` -/
def P10152715829730265722.Spec : Prop :=
  ∀ n, P10152715829730265722.a n = (A097038 n : ℝ)

end A097038

/-! ## A097038.P6905631174004033842

`Δ[A000975(n)-2^∑[n%2]]`
-/

namespace A097038.P6905631174004033842
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000975 n - (2 ^ (∑ j ∈ Finset.range (n + 1), f2 j) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A097038.P6905631174004033842

namespace A097038

/-- `Δ[A000975(n)-2^∑[n%2]]` -/
def P6905631174004033842.Spec : Prop :=
  ∀ n, P6905631174004033842.a n = A097038 n

end A097038

/-! ## A097038.P2710448114039408118

`A048573(n)%A052957(n)`
-/

namespace A097038.P2710448114039408118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048573 n) (A052957 n)

end

end A097038.P2710448114039408118

namespace A097038

/-- `A048573(n)%A052957(n)` -/
def P2710448114039408118.Spec : Prop :=
  ∀ n, P2710448114039408118.a n = A097038 n

end A097038

/-! ## A097038.P4839704421685969416

`Δ[A000975(n)-A060546(n)]`
-/

namespace A097038.P4839704421685969416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000975 n - A060546 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A097038.P4839704421685969416

namespace A097038

/-- `Δ[A000975(n)-A060546(n)]` -/
def P4839704421685969416.Spec : Prop :=
  ∀ n, P4839704421685969416.a n = A097038 n

end A097038

/-! ## A097038.P13657421650185174247

`Δ[A000975(n)-Δ[A027383(n)]]`
-/

namespace A097038.P13657421650185174247
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027383 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000975 n - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A097038.P13657421650185174247

namespace A097038

/-- `Δ[A000975(n)-Δ[A027383(n)]]` -/
def P13657421650185174247.Spec : Prop :=
  ∀ n, P13657421650185174247.a n = A097038 n

end A097038

/-!
# A097039: a(n) = Sum_{i=0..n} i*L(i), where L = A000032.

The programs for A097039, the canonical program `A097039.P7639164022174265991` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097039 has offset 0).

The definition of A097039 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A097039.P6270271765864496745

`ogf((x+4x^2-x^3)/(1-3x+x^2+3x^3-x^4-x^5))`
-/

namespace A097039.P6270271765864496745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 4, -1] [1, -3, 1, 3, -1, -1] n

end

end A097039.P6270271765864496745

namespace A097039

/-- `ogf((x+4x^2-x^3)/(1-3x+x^2+3x^3-x^4-x^5))` -/
def P6270271765864496745.Spec : Prop :=
  ∀ n, P6270271765864496745.a n = A097039 n

end A097039

/-! ## A097039.P7639164022174265991

`3*a(n-1)-a(n-2)-3*a(n-3)+a(n-4)+a(n-5)` with `a(0)=0, a(1)=1, a(2)=7, a(3)=19, a(4)=47`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A097039

/-- `3*a(n-1)-a(n-2)-3*a(n-3)+a(n-4)+a(n-5)` -/
def P7639164022174265991.Spec : Prop :=
  ∀ n, P7639164022174265991.a n = A097039 n

theorem P7639164022174265991.correct : P7639164022174265991.Spec := by
  intro n
  simp only [A097039]

end A097039

/-! ## A097039.P8896597975617105618

`∑[n*Δ[round(ϕ^(n+1))]]`
-/

namespace A097039.P8896597975617105618
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.goldenRatio ^ (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097039.P8896597975617105618

namespace A097039

/-- `∑[n*Δ[round(ϕ^(n+1))]]` -/
def P8896597975617105618.Spec : Prop :=
  ∀ n, P8896597975617105618.a n = A097039 n

end A097039

/-! ## A097039.P2521096802444013783

`2*∑[A146005(n)/2]`
-/

namespace A097039.P2521096802444013783
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A146005 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A097039.P2521096802444013783

namespace A097039

/-- `2*∑[A146005(n)/2]` -/
def P2521096802444013783.Spec : Prop :=
  ∀ n, P2521096802444013783.a n = (A097039 n : ℚ)

end A097039

/-! ## A097039.P1371981185894084506

`A004799(n+1)-A053311(n)`
-/

namespace A097039.P1371981185894084506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004799 (n + 1) - A053311 n

end

end A097039.P1371981185894084506

namespace A097039

/-- `A004799(n+1)-A053311(n)` -/
def P1371981185894084506.Spec : Prop :=
  ∀ n, P1371981185894084506.a n = A097039 n

end A097039

/-! ## A097039.P13975978244480896733

`n*Δ[A206417(n+1)]-A206417(n+1)`
-/

namespace A097039.P13975978244480896733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206417 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f1 (n + 1) - f1 n) - A206417 (n + 1)

end

end A097039.P13975978244480896733

namespace A097039

/-- `n*Δ[A206417(n+1)]-A206417(n+1)` -/
def P13975978244480896733.Spec : Prop :=
  ∀ n, P13975978244480896733.a n = A097039 n

end A097039

/-! ## A097039.P17446173492129780882

`n*A000032(n+2)-A000032(n+3)+4`
-/

namespace A097039.P17446173492129780882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000032 (n + 2) - A000032 (n + 3) + 4

end

end A097039.P17446173492129780882

namespace A097039

/-- `n*A000032(n+2)-A000032(n+3)+4` -/
def P17446173492129780882.Spec : Prop :=
  ∀ n, P17446173492129780882.a n = A097039 n

end A097039

/-! ## A097039.P5355483226910287076

`A014286(n+1)+A014286(n+1)-A354044(n+1)`
-/

namespace A097039.P5355483226910287076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014286 (n + 1) + (A014286 (n + 1) - A354044 (n + 1))

end

end A097039.P5355483226910287076

namespace A097039

/-- `A014286(n+1)+A014286(n+1)-A354044(n+1)` -/
def P5355483226910287076.Spec : Prop :=
  ∀ n, P5355483226910287076.a n = A097039 n

end A097039

/-! ## A097039.P10014927777565157350

`∑[A146005(n+1)]-A146005(n+1)`
-/

namespace A097039.P10014927777565157350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A146005 (n + 1)

end

end A097039.P10014927777565157350

namespace A097039

/-- `∑[A146005(n+1)]-A146005(n+1)` -/
def P10014927777565157350.Spec : Prop :=
  ∀ n, P10014927777565157350.a n = A097039 n

end A097039

/-! ## A097039.P13022202502048894081

`2*A014286(n+1)-A354044(n+1)`
-/

namespace A097039.P13022202502048894081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A014286 (n + 1) - A354044 (n + 1)

end

end A097039.P13022202502048894081

namespace A097039

/-- `2*A014286(n+1)-A354044(n+1)` -/
def P13022202502048894081.Spec : Prop :=
  ∀ n, P13022202502048894081.a n = A097039 n

end A097039

/-! ## A097039.P15628551735863364228

`∑[A146005(n)]*A052409(n²+1)`
-/

namespace A097039.P15628551735863364228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146005 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A052409 (n ^ 2 + 1)

end

end A097039.P15628551735863364228

namespace A097039

/-- `∑[A146005(n)]*A052409(n²+1)` -/
def P15628551735863364228.Spec : Prop :=
  ∀ n, P15628551735863364228.a n = A097039 n

end A097039

/-!
# A097040: a(n) = 2*sum(C(n,2k+1)*F(2k), k=0..floor((n-1)/2)), where F(n) are Fibonacci numbers A000045.

The programs for A097040, the canonical program `A097040.P12305339232639757018` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097040 has offset 1).

The definition of A097040 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A097040.P12305339232639757018

`2*A056014(n+1)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A097040

/-- `2*A056014(n+1)` -/
def P12305339232639757018.Spec : Prop :=
  ∀ n, P12305339232639757018.a n = A097040 (n + 1)

theorem P12305339232639757018.correct : P12305339232639757018.Spec := by
  intro n
  simp only [A097040, Nat.add_sub_cancel]

end A097040

/-! ## A097040.P10779617948641290661

`A000045(2*(n+1)-1)-A000045(n+2)`
-/

namespace A097040.P10779617948641290661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * (n + 1) - 1) - A000045 (n + 2)

end

end A097040.P10779617948641290661

namespace A097040

/-- `A000045(2*(n+1)-1)-A000045(n+2)` -/
def P10779617948641290661.Spec : Prop :=
  ∀ n, P10779617948641290661.a n = A097040 (n + 1)

end A097040

/-! ## A097040.P6399317479682727734

`ogf(2x^2/(1-4x+3x^2+2x^3-x^4))`
-/

namespace A097040.P6399317479682727734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 2] [1, -4, 3, 2, -1] n

end

end A097040.P6399317479682727734

namespace A097040

/-- `ogf(2x^2/(1-4x+3x^2+2x^3-x^4))` -/
def P6399317479682727734.Spec : Prop :=
  ∀ n, P6399317479682727734.a n = A097040 (n + 1)

end A097040

/-! ## A097040.P11139350595590274570

`∑[2*A094292(n)]`
-/

namespace A097040.P11139350595590274570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A094292 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097040.P11139350595590274570

namespace A097040

/-- `∑[2*A094292(n)]` -/
def P11139350595590274570.Spec : Prop :=
  ∀ n, P11139350595590274570.a n = A097040 (n + 1)

end A097040

/-! ## A097040.P17891515890485593909

`Δ[2*∑[A056014(n)]]`
-/

namespace A097040.P17891515890485593909
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056014 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A097040.P17891515890485593909

namespace A097040

/-- `Δ[2*∑[A056014(n)]]` -/
def P17891515890485593909.Spec : Prop :=
  ∀ n, P17891515890485593909.a n = A097040 (n + 1)

end A097040

/-! ## A097040.P13499286786301836325

`abs(Δ[2*A108140(n+1)])`
-/

namespace A097040.P13499286786301836325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A108140 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A097040.P13499286786301836325

namespace A097040

/-- `abs(Δ[2*A108140(n+1)])` -/
def P13499286786301836325.Spec : Prop :=
  ∀ n, P13499286786301836325.a n = A097040 (n + 1)

end A097040

/-! ## A097040.P6765795657509370933

`A096140(n)-A000045(n)`
-/

namespace A097040.P6765795657509370933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096140 n - A000045 n

end

end A097040.P6765795657509370933

namespace A097040

/-- `A096140(n)-A000045(n)` -/
def P6765795657509370933.Spec : Prop :=
  ∀ n, P6765795657509370933.a n = A097040 (n + 1)

end A097040

/-! ## A097040.P986831039249439370

`∑[A001906(n)-A000045(n)]`
-/

namespace A097040.P986831039249439370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001906 n - A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097040.P986831039249439370

namespace A097040

/-- `∑[A001906(n)-A000045(n)]` -/
def P986831039249439370.Spec : Prop :=
  ∀ n, P986831039249439370.a n = A097040 (n + 1)

end A097040

/-! ## A097040.P12365739760112340569

`Δ[A001906(n)-A001911(n)]`
-/

namespace A097040.P12365739760112340569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001906 n - A001911 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A097040.P12365739760112340569

namespace A097040

/-- `Δ[A001906(n)-A001911(n)]` -/
def P12365739760112340569.Spec : Prop :=
  ∀ n, P12365739760112340569.a n = A097040 (n + 1)

end A097040

/-! ## A097040.P14870376713824349766

`A087124(n)-A000032(n+1)`
-/

namespace A097040.P14870376713824349766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087124 n - A000032 (n + 1)

end

end A097040.P14870376713824349766

namespace A097040

/-- `A087124(n)-A000032(n+1)` -/
def P14870376713824349766.Spec : Prop :=
  ∀ n, P14870376713824349766.a n = A097040 (n + 1)

end A097040

/-! ## A097040.P11416248952485987143

`A087124(n)-A000204(n+1)`
-/

namespace A097040.P11416248952485987143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087124 n - A000204 (n + 1)

end

end A097040.P11416248952485987143

namespace A097040

/-- `A087124(n)-A000204(n+1)` -/
def P11416248952485987143.Spec : Prop :=
  ∀ n, P11416248952485987143.a n = A097040 (n + 1)

end A097040

/-! ## A097040.P2102850032628644699

`A192474(n+1)-A048577(n)`
-/

namespace A097040.P2102850032628644699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192474 (n + 1) - A048577 n

end

end A097040.P2102850032628644699

namespace A097040

/-- `A192474(n+1)-A048577(n)` -/
def P2102850032628644699.Spec : Prop :=
  ∀ n, P2102850032628644699.a n = A097040 (n + 1)

end A097040

/-! ## A097040.P12571736238922866817

`A192243(n+1)-A052952(n)`
-/

namespace A097040.P12571736238922866817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192243 (n + 1) - A052952 n

end

end A097040.P12571736238922866817

namespace A097040

/-- `A192243(n+1)-A052952(n)` -/
def P12571736238922866817.Spec : Prop :=
  ∀ n, P12571736238922866817.a n = A097040 (n + 1)

end A097040

/-! ## A097040.P13279555889343744527

`A027941(n)-A000071(n+2)`
-/

namespace A097040.P13279555889343744527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027941 n - A000071 (n + 2)

end

end A097040.P13279555889343744527

namespace A097040

/-- `A027941(n)-A000071(n+2)` -/
def P13279555889343744527.Spec : Prop :=
  ∀ n, P13279555889343744527.a n = A097040 (n + 1)

end A097040

/-! ## A097040.P325972623320771227

`A122367(n)-A000045(n+2)`
-/

namespace A097040.P325972623320771227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122367 n - A000045 (n + 2)

end

end A097040.P325972623320771227

namespace A097040

/-- `A122367(n)-A000045(n+2)` -/
def P325972623320771227.Spec : Prop :=
  ∀ n, P325972623320771227.a n = A097040 (n + 1)

end A097040

/-! ## A097040.P11179168598289296644

`A122367(n)-1-∑[A000045(n)]`
-/

namespace A097040.P11179168598289296644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122367 n - 1 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097040.P11179168598289296644

namespace A097040

/-- `A122367(n)-1-∑[A000045(n)]` -/
def P11179168598289296644.Spec : Prop :=
  ∀ n, P11179168598289296644.a n = A097040 (n + 1)

end A097040

/-! ## A097040.P1217660030545006467

`∑[A000045(2*n)-A000045(n)]`
-/

namespace A097040.P1217660030545006467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * n) - A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097040.P1217660030545006467

namespace A097040

/-- `∑[A000045(2*n)-A000045(n)]` -/
def P1217660030545006467.Spec : Prop :=
  ∀ n, P1217660030545006467.a n = A097040 (n + 1)

end A097040

/-! ## A097040.P9001873514746721911

`A001519(n+1)-A000045(n+2)`
-/

namespace A097040.P9001873514746721911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001519 (n + 1) - A000045 (n + 2)

end

end A097040.P9001873514746721911

namespace A097040

/-- `A001519(n+1)-A000045(n+2)` -/
def P9001873514746721911.Spec : Prop :=
  ∀ n, P9001873514746721911.a n = A097040 (n + 1)

end A097040

/-! ## A097040.P13641974866155973884

`A121364(2*n+1)-A000045(n)`
-/

namespace A097040.P13641974866155973884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121364 (2 * n + 1) - A000045 n

end

end A097040.P13641974866155973884

namespace A097040

/-- `A121364(2*n+1)-A000045(n)` -/
def P13641974866155973884.Spec : Prop :=
  ∀ n, P13641974866155973884.a n = A097040 (n + 1)

end A097040

/-!
# A097041: Expansion of (1+x)/(1-x^2-9*x^3).

The programs for A097041, the canonical program `A097041.P16348715101764588279` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097041 has offset 0).

The definition of A097041 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+x)/(1-x^2-9x^3))` (program `A097041.P16348715101764588279`, by `A097041.P16348715101764588279.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A097041.P15926595795877891012

`a(n-2)+9*a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A097041.P15926595795877891012
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  a (n - 2) + 9 * a (n - 3)

end

end A097041.P15926595795877891012

namespace A097041

/-- `a(n-2)+9*a(n-3)` -/
def P15926595795877891012.Spec : Prop :=
  ∀ n, (P15926595795877891012.a n : ℤ) = A097041 n

end A097041

/-! ## A097041.P16348715101764588279

`ogf((1+x)/(1-x^2-9x^3))`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A097041

/-- `ogf((1+x)/(1-x^2-9x^3))` -/
def P16348715101764588279.Spec : Prop :=
  ∀ n, P16348715101764588279.a n = A097041 n

theorem P16348715101764588279.correct : P16348715101764588279.Spec := by
  intro n
  simp only [A097041]

end A097041

/-! ## A097041.P12585885097952665077

`∑{#}[floor(n/2), C(floor((n-#)/2), #)*9^#]`
-/

namespace A097041.P12585885097952665077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, Nat.choose ⌊((n : ℤ) - (k : ℤ) : ℚ) / 2⌋.toNat k * 9 ^ k

end

end A097041.P12585885097952665077

namespace A097041

/-- `∑{#}[floor(n/2), C(floor((n-#)/2), #)*9^#]` -/
def P12585885097952665077.Spec : Prop :=
  ∀ n, (P12585885097952665077.a n : ℤ) = A097041 n

end A097041

/-! ## A097041.P15383086587393551087

`a(n-2)+lcm(9, a(n-3))` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A097041.P15383086587393551087
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  a (n - 2) + Nat.lcm 9 (a (n - 3))

end

end A097041.P15383086587393551087

namespace A097041

/-- `a(n-2)+lcm(9, a(n-3))` -/
def P15383086587393551087.Spec : Prop :=
  ∀ n, (P15383086587393551087.a n : ℤ) = A097041 n

end A097041

/-! ## A097041.P14558767834131195570

`10*a(n-3)-(a(n-3)-a(n-2))` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A097041.P14558767834131195570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  10 * a (n - 3) - (a (n - 3) - a (n - 2))

end

end A097041.P14558767834131195570

namespace A097041

/-- `10*a(n-3)-(a(n-3)-a(n-2))` -/
def P14558767834131195570.Spec : Prop :=
  ∀ n, P14558767834131195570.a n = A097041 n

end A097041

/-!
# A097042: G.f. = (1 + 4 * g.f. for A096661)/(1 + 2 Sum_{m>=1} (-1)^m*q^(m^2)).

The programs for A097042, there is no canonical definition to state claims against.
-/

/-! ## A097042.P923872574957017888

`A000007(n)+2*A026832(n)`
-/

namespace A097042.P923872574957017888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + 2 * A026832 n

end

end A097042.P923872574957017888

/-! ## A097042.P17757029543772589363

`or(2*A026832(n), A000122(n))`
-/

namespace A097042.P17757029543772589363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (2 * A026832 n) (A000122 n)

end

end A097042.P17757029543772589363

/-! ## A097042.P17316893084305654286

`A026832(n)+A026832(A028310(n))`
-/

namespace A097042.P17316893084305654286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026832 n + A026832 (A028310 n).toNat

end

end A097042.P17316893084305654286

/-! ## A097042.P14095567169406988794

`A026832(A000007(n)+n)+A026832(n)`
-/

namespace A097042.P14095567169406988794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026832 (A000007 n + (n : ℤ)).toNat + A026832 n

end

end A097042.P14095567169406988794

/-! ## A097042.P6375955457201188141

`A000009(n)+A026832(n)-A026833(n)`
-/

namespace A097042.P6375955457201188141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n + (A026832 n - A026833 n)

end

end A097042.P6375955457201188141

/-! ## A097042.P4917899021368505843

`A005843(A026832(n))+A000007(n)`
-/

namespace A097042.P4917899021368505843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A026832 n).toNat + A000007 n

end

end A097042.P4917899021368505843

/-!
# A097043: a(n) = n - a(floor(sqrt(n))) for n > 1; a(1) = 1.

The programs for A097043, the canonical program `A097043.P4269573778104144715` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097043 has offset 1).

The definition of A097043 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n+1-a(floor(sqrt(n+1))-1)` (program `A097043.P4269573778104144715`, by `A097043.P4269573778104144715.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A097043.P4269573778104144715

`n+1-a(floor(sqrt(n+1))-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A097043

/-- `n+1-a(floor(sqrt(n+1))-1)` -/
def P4269573778104144715.Spec : Prop :=
  ∀ n, P4269573778104144715.a n = A097043 (n + 1)

theorem P4269573778104144715.correct : P4269573778104144715.Spec := by
  intro n
  simp only [A097043, Nat.add_sub_cancel]

end A097043

/-! ## A097043.P3306563993039336863

`n-a(A004526(A316355(n)))+1` with `a(0)=1`
-/

namespace A097043.P3306563993039336863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) - a (A004526 (A316355 n).toNat).toNat + 1

end

end A097043.P3306563993039336863

namespace A097043

/-- `n-a(A004526(A316355(n)))+1` -/
def P3306563993039336863.Spec : Prop :=
  ∀ n, P3306563993039336863.a n = A097043 (n + 1)

end A097043

/-! ## A097043.P10216636923507233586

`A057427(A067661(n))+A028391(n+1)`
-/

namespace A097043.P10216636923507233586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A067661 n).toNat + A028391 (n + 1)

end

end A097043.P10216636923507233586

namespace A097043

/-- `A057427(A067661(n))+A028391(n+1)` -/
def P10216636923507233586.Spec : Prop :=
  ∀ n, P10216636923507233586.a n = A097043 (n + 1)

end A097043

/-! ## A097043.P8345024774547016138

`∑[A359893(A332499(∑{d}[n+1, #]))]`
-/

namespace A097043.P8345024774547016138
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359893 (A332499 (∑ d ∈ Nat.divisors (f2 n), d)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097043.P8345024774547016138

namespace A097043

/-- `∑[A359893(A332499(∑{d}[n+1, #]))]` -/
def P8345024774547016138.Spec : Prop :=
  ∀ n, P8345024774547016138.a n = A097043 (n + 1)

end A097043

/-!
# A097044: a(n) = n + a(floor(sqrt(n))) for n > 1; a(1) = 1.

The programs for A097044, the canonical program `A097044.P5975584864191650555` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097044 has offset 1).

The definition of A097044 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n+1+a(floor(sqrt(n+1))-1)` (program `A097044.P5975584864191650555`, by `A097044.P5975584864191650555.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A097044.P5975584864191650555

`n+1+a(floor(sqrt(n+1))-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A097044

/-- `n+1+a(floor(sqrt(n+1))-1)` -/
def P5975584864191650555.Spec : Prop :=
  ∀ n, (P5975584864191650555.a n : ℤ) = A097044 (n + 1)

theorem P5975584864191650555.correct : P5975584864191650555.Spec := by
  intro n
  simp only [A097044, Nat.add_sub_cancel]

end A097044

/-! ## A097044.P9248752072167949295

`a(A000196(n+1)-1)+n+1` with `a(0)=1`
-/

namespace A097044.P9248752072167949295
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (A000196 (n + 1) - 1).toNat + (n + 1)

end

end A097044.P9248752072167949295

namespace A097044

/-- `a(A000196(n+1)-1)+n+1` -/
def P9248752072167949295.Spec : Prop :=
  ∀ n, (P9248752072167949295.a n : ℤ) = A097044 (n + 1)

end A097044

/-! ## A097044.P7225637877594407233

`a(n-A028391(n+1))+n+1` with `a(0)=1`
-/

namespace A097044.P7225637877594407233
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a ((n : ℤ) - A028391 (n + 1)).toNat + (n + 1)

end

end A097044.P7225637877594407233

namespace A097044

/-- `a(n-A028391(n+1))+n+1` -/
def P7225637877594407233.Spec : Prop :=
  ∀ n, (P7225637877594407233.a n : ℤ) = A097044 (n + 1)

end A097044

/-! ## A097044.P1276834529225059112

`a(∑[char[A005563(n+1)]])+n+1` with `a(0)=1`
-/

namespace A097044.P1276834529225059112
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (∑ j ∈ Finset.range (n + 1), f1 j) + (n + 1)

end

end A097044.P1276834529225059112

namespace A097044

/-- `a(∑[char[A005563(n+1)]])+n+1` -/
def P1276834529225059112.Spec : Prop :=
  ∀ n, (P1276834529225059112.a n : ℤ) = A097044 (n + 1)

end A097044

/-! ## A097044.P5206467017121237072

`a(A004526(A316355(n)))+n+1` with `a(0)=1`
-/

namespace A097044.P5206467017121237072
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (A004526 (A316355 n).toNat).toNat + (n + 1)

end

end A097044.P5206467017121237072

namespace A097044

/-- `a(A004526(A316355(n)))+n+1` -/
def P5206467017121237072.Spec : Prop :=
  ∀ n, (P5206467017121237072.a n : ℤ) = A097044 (n + 1)

end A097044

/-! ## A097044.P4918895488846124090

`a(A003059(n+2)-2)+n+1` with `a(0)=1`
-/

namespace A097044.P4918895488846124090
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (A003059 (n + 2) - 2).toNat + (n + 1)

end

end A097044.P4918895488846124090

namespace A097044

/-- `a(A003059(n+2)-2)+n+1` -/
def P4918895488846124090.Spec : Prop :=
  ∀ n, (P4918895488846124090.a n : ℤ) = A097044 (n + 1)

end A097044

/-!
# A097045: a(n) = a(n-1) - a(floor(sqrt(n))) for n > 1; a(1) = 1.

The programs for A097045, the canonical program `A097045.P3120590133979990365` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097045 has offset 1).

The definition of A097045 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)-a(floor(sqrt(n+1))-1)` (program `A097045.P3120590133979990365`, by `A097045.P3120590133979990365.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A097045.P3120590133979990365

`a(n-1)-a(floor(sqrt(n+1))-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A097045

/-- `a(n-1)-a(floor(sqrt(n+1))-1)` -/
def P3120590133979990365.Spec : Prop :=
  ∀ n, P3120590133979990365.a n = A097045 (n + 1)

theorem P3120590133979990365.correct : P3120590133979990365.Spec := by
  intro n
  simp only [A097045, Nat.add_sub_cancel]

end A097045

/-! ## A097045.P17282485668377997515

`round(acot(n)+n)-A114955(A115037(n+1))`
-/

namespace A097045.P17282485668377997515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ)) - A114955 (A115037 (n + 1)).toNat

end

end A097045.P17282485668377997515

namespace A097045

/-- `round(acot(n)+n)-A114955(A115037(n+1))` -/
def P17282485668377997515.Spec : Prop :=
  ∀ n, P17282485668377997515.a n = A097045 (n + 1)

end A097045

/-! ## A097045.P2275981259028288064

`A233583(n+1)-A114955(A115037(n+1))`
-/

namespace A097045.P2275981259028288064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (n + 1) - A114955 (A115037 (n + 1)).toNat

end

end A097045.P2275981259028288064

namespace A097045

/-- `A233583(n+1)-A114955(A115037(n+1))` -/
def P2275981259028288064.Spec : Prop :=
  ∀ n, P2275981259028288064.a n = A097045 (n + 1)

end A097045

/-! ## A097045.P14034607394310248026

`∑[A056594(A060878(2*(n+2))-A060878(n+1))]`
-/

namespace A097045.P14034607394310248026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (A060878 (2 * (n + 2)) - A060878 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097045.P14034607394310248026

namespace A097045

/-- `∑[A056594(A060878(2*(n+2))-A060878(n+1))]` -/
def P14034607394310248026.Spec : Prop :=
  ∀ n, P14034607394310248026.a n = A097045 (n + 1)

end A097045

/-!
# A097046: a(n) = a(n-1) + a(floor(sqrt(n))) for n > 1; a(1) = 1.

The programs for A097046, the canonical program `A097046.P7396837349835451935` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097046 has offset 1).

The definition of A097046 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(floor(sqrt(n+1))-1)` (program `A097046.P7396837349835451935`, by `A097046.P7396837349835451935.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A097046.P7396837349835451935

`a(n-1)+a(floor(sqrt(n+1))-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A097046

/-- `a(n-1)+a(floor(sqrt(n+1))-1)` -/
def P7396837349835451935.Spec : Prop :=
  ∀ n, (P7396837349835451935.a n : ℤ) = A097046 (n + 1)

theorem P7396837349835451935.correct : P7396837349835451935.Spec := by
  intro n
  simp only [A097046, Nat.add_sub_cancel]

end A097046

/-! ## A097046.P2334288419599400759

`ceil(a(A000196(n+1)-1)+a(n-1))` with `a(0)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A097046.P2334288419599400759
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (A000196 (n + 1) - 1).toNat + a (n - 1)

end

end A097046.P2334288419599400759

namespace A097046

/-- `ceil(a(A000196(n+1)-1)+a(n-1))` -/
def P2334288419599400759.Spec : Prop :=
  ∀ n, (P2334288419599400759.a n : ℤ) = A097046 (n + 1)

end A097046

/-! ## A097046.P2171403296638946863

`∑[A343265(n+1)]`
-/

namespace A097046.P2171403296638946863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343265 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097046.P2171403296638946863

namespace A097046

/-- `∑[A343265(n+1)]` -/
def P2171403296638946863.Spec : Prop :=
  ∀ n, P2171403296638946863.a n = A097046 (n + 1)

end A097046

/-! ## A097046.P2080798768787669777

`∑[A079051(A000196(n+1)%A117247(n+1))]`
-/

namespace A097046.P2080798768787669777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079051 (Int.tmod (A000196 (n + 1)) (A117247 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097046.P2080798768787669777

namespace A097046

/-- `∑[A079051(A000196(n+1)%A117247(n+1))]` -/
def P2080798768787669777.Spec : Prop :=
  ∀ n, P2080798768787669777.a n = A097046 (n + 1)

end A097046

/-! ## A097046.P14367307403531050408

`∑[A043567(A048578(n))]`
-/

namespace A097046.P14367307403531050408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043567 (A048578 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097046.P14367307403531050408

namespace A097046

/-- `∑[A043567(A048578(n))]` -/
def P14367307403531050408.Spec : Prop :=
  ∀ n, P14367307403531050408.a n = A097046 (n + 1)

end A097046

/-!
# A097048: a(n) = least denominator Y of the proper fractions X/Y which need n or more terms as an Egyptian fraction.

The programs for A097048, there is no canonical definition to state claims against.
-/

/-! ## A097048.P830967812425925748

`p?[A285261(n+3)]`
-/

namespace A097048.P830967812425925748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285261 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A097048.P830967812425925748

/-! ## A097048.P16736180522995651921

`A285261(2*(n+1))`
-/

namespace A097048.P16736180522995651921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285261 (2 * (n + 1))

end

end A097048.P16736180522995651921

/-! ## A097048.P2652423230929560781

`A151800(A097049(n+1))`
-/

namespace A097048.P2652423230929560781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A097049 (n + 1)).toNat

end

end A097048.P2652423230929560781

/-!
# A097049: a(n) = least numerator X of the proper fractions X/A097048(n) which need n or more terms as an Egyptian fraction.

The programs for A097049, there is no canonical definition to state claims against.
-/

/-! ## A097049.P3863073380405923348

`A285261(Δ[n²])`
-/

namespace A097049.P3863073380405923348
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285261 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A097049.P3863073380405923348

/-! ## A097049.P6217330072912020051

`A285261(2*n+1)+char[8]`
-/

namespace A097049.P6217330072912020051
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285261 (2 * n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A097049.P6217330072912020051

/-! ## A097049.P13513369844560188674

`record[A285261(∑[2-xor(1, n%3)])]`
-/

namespace A097049.P13513369844560188674
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (Nat.xor 1 (n % 3) : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285261 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A097049.P13513369844560188674

/-! ## A097049.P15635497482166278838

`record[A285261(n+1)-n*and(1, n)]`
-/

namespace A097049.P15635497482166278838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285261 (n + 1) - (n * Nat.land 1 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A097049.P15635497482166278838

/-!
# A097050: Smallest prime > n(n+1)/2.

The programs for A097050, the canonical program `A097050.P5885192772138064070` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097050 has offset 0).

The definition of A097050 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A151800, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A097050.P5885192772138064070

`A151800(A000217(n))`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A097050

/-- `A151800(A000217(n))` -/
def P5885192772138064070.Spec : Prop :=
  ∀ n, P5885192772138064070.a n = A097050 n

theorem P5885192772138064070.correct : P5885192772138064070.Spec := by
  intro n
  simp only [A097050]

end A097050

/-! ## A097050.P5981517822667213376

`A077128(A028310(n))`
-/

namespace A097050.P5981517822667213376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077128 (A028310 n).toNat

end

end A097050.P5981517822667213376

namespace A097050

/-- `A077128(A028310(n))` -/
def P5981517822667213376.Spec : Prop :=
  ∀ n, P5981517822667213376.a n = A097050 n

end A097050

/-! ## A097050.P1220939810595346426

`A000040(1+A111208(n))`
-/

namespace A097050.P1220939810595346426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (1 + A111208 n).toNat

end

end A097050.P1220939810595346426

namespace A097050

/-- `A000040(1+A111208(n))` -/
def P1220939810595346426.Spec : Prop :=
  ∀ n, P1220939810595346426.a n = A097050 n

end A097050

/-! ## A097050.P17548183426778484050

`A008578(A111208(n)+2)`
-/

namespace A097050.P17548183426778484050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A111208 n + 2).toNat

end

end A097050.P17548183426778484050

namespace A097050

/-- `A008578(A111208(n)+2)` -/
def P17548183426778484050.Spec : Prop :=
  ∀ n, P17548183426778484050.a n = A097050 n

end A097050

/-! ## A097050.P15102389471723564484

`A151800(∑[n])`
-/

namespace A097050.P15102389471723564484
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A097050.P15102389471723564484

namespace A097050

/-- `A151800(∑[n])` -/
def P15102389471723564484.Spec : Prop :=
  ∀ n, P15102389471723564484.a n = A097050 n

end A097050

/-! ## A097050.P15659111945256437794

`and(-1, A151800(C(n+1, 2)))`
-/

namespace A097050.P15659111945256437794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A151800 (Nat.choose (n + 1) 2))

end

end A097050.P15659111945256437794

namespace A097050

/-- `and(-1, A151800(C(n+1, 2)))` -/
def P15659111945256437794.Spec : Prop :=
  ∀ n, P15659111945256437794.a n = A097050 n

end A097050

/-! ## A097050.P12511392290129391286

`A000010(A151800((n+1)*n/2))+1`
-/

namespace A097050.P12511392290129391286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A151800 (SequenceMachineLib.roundAway ((n + 1 : ℚ) * ((n : ℚ) / 2))).toNat).toNat + 1

end

end A097050.P12511392290129391286

namespace A097050

/-- `A000010(A151800((n+1)*n/2))+1` -/
def P12511392290129391286.Spec : Prop :=
  ∀ n, P12511392290129391286.a n = A097050 n

end A097050

/-! ## A097050.P3670767050750384944

`A006530(A151800(A000124(n)-1))`
-/

namespace A097050.P3670767050750384944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A151800 (A000124 n - 1).toNat).toNat

end

end A097050.P3670767050750384944

namespace A097050

/-- `A006530(A151800(A000124(n)-1))` -/
def P3670767050750384944.Spec : Prop :=
  ∀ n, P3670767050750384944.a n = A097050 n

end A097050

/-! ## A097050.P9083727835029196696

`A020639(A151800(A046092(n)/4))`
-/

namespace A097050.P9083727835029196696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A151800 (SequenceMachineLib.roundAway ((A046092 n : ℚ) / 4)).toNat).toNat

end

end A097050.P9083727835029196696

namespace A097050

/-- `A020639(A151800(A046092(n)/4))` -/
def P9083727835029196696.Spec : Prop :=
  ∀ n, P9083727835029196696.a n = A097050 n

end A097050

/-! ## A097050.P10836791433750716997

`A007918(∑[n]+1)`
-/

namespace A097050.P10836791433750716997
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A097050.P10836791433750716997

namespace A097050

/-- `A007918(∑[n]+1)` -/
def P10836791433750716997.Spec : Prop :=
  ∀ n, P10836791433750716997.a n = A097050 n

end A097050

/-! ## A097050.P12372081997293088630

`A064989(A101300(∑[n]))`
-/

namespace A097050.P12372081997293088630
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A101300 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A097050.P12372081997293088630

namespace A097050

/-- `A064989(A101300(∑[n]))` -/
def P12372081997293088630.Spec : Prop :=
  ∀ n, P12372081997293088630.a n = A097050 n

end A097050

/-! ## A097050.P11833015694126547437

`A308052(n²+n+1)`
-/

namespace A097050.P11833015694126547437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308052 (n ^ 2 + (n + 1))

end

end A097050.P11833015694126547437

namespace A097050

/-- `A308052(n²+n+1)` -/
def P11833015694126547437.Spec : Prop :=
  ∀ n, P11833015694126547437.a n = A097050 n

end A097050

/-! ## A097050.P4137314038388767805

`A120839(A065383(n))`
-/

namespace A097050.P4137314038388767805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120839 (A065383 n).toNat

end

end A097050.P4137314038388767805

namespace A097050

/-- `A120839(A065383(n))` -/
def P4137314038388767805.Spec : Prop :=
  ∀ n, P4137314038388767805.a n = A097050 n

end A097050

/-!
# A097051: a(n) = floor(n/a(floor(n/2))); a(1) = 1.

The programs for A097051, the canonical program `A097051.P2395364673440009718` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097051 has offset 1).

The definition of A097051 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((n+1)/a(floor((n+1)/2)-1))` (program `A097051.P2395364673440009718`, by `A097051.P2395364673440009718.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A097051.P2395364673440009718

`floor((n+1)/a(floor((n+1)/2)-1))` with `a(0)=1`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A097051

/-- `floor((n+1)/a(floor((n+1)/2)-1))` -/
def P2395364673440009718.Spec : Prop :=
  ∀ n, P2395364673440009718.a n = A097051 (n + 1)

theorem P2395364673440009718.correct : P2395364673440009718.Spec := by
  intro n
  simp only [A097051, Nat.add_sub_cancel]

end A097051

/-!
# A097053: First occurrence of n in A097051.

The programs for A097053, the canonical program `A097053.P4975277391521676891` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097053 has offset 1).

The definition of A097053 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A097053.P482862983867426694

`ceil((n+1)*2^(floor(log2(n+1))-1))`
-/

namespace A097053.P482862983867426694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℚ) * (2 : ℚ) ^ ((Nat.log 2 (n + 1) : ℤ) - 1 : ℤ)⌉

end

end A097053.P482862983867426694

namespace A097053

/-- `ceil((n+1)*2^(floor(log2(n+1))-1))` -/
def P482862983867426694.Spec : Prop :=
  ∀ n, P482862983867426694.a n = A097053 (n + 1)

end A097053

/-! ## A097053.P10148369625460562872

`(n+1)*∏[char[xor(n+1, n-1)+1]+1]`
-/

namespace A097053.P10148369625460562872
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n + 1 : ℤ) ((n : ℤ) - 1) + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A097053.P10148369625460562872

namespace A097053

/-- `(n+1)*∏[char[xor(n+1, n-1)+1]+1]` -/
def P10148369625460562872.Spec : Prop :=
  ∀ n, (P10148369625460562872.a n : ℤ) = A097053 (n + 1)

end A097053

/-! ## A097053.P4975277391521676891

`∑[abs(Δ[n*A072376(n)])]`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A097053

/-- `∑[abs(Δ[n*A072376(n)])]` -/
def P4975277391521676891.Spec : Prop :=
  ∀ n, P4975277391521676891.a n = A097053 (n + 1)

theorem P4975277391521676891.correct : P4975277391521676891.Spec := by
  intro n
  simp only [A097053, Nat.add_sub_cancel]

end A097053

/-! ## A097053.P14019313985886989435

`(n+1)*A072376(n+1)`
-/

namespace A097053.P14019313985886989435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A072376 (n + 1)

end

end A097053.P14019313985886989435

namespace A097053

/-- `(n+1)*A072376(n+1)` -/
def P14019313985886989435.Spec : Prop :=
  ∀ n, P14019313985886989435.a n = A097053 (n + 1)

end A097053

/-! ## A097053.P3264598257777791777

`(n+1)*A011782(floor(log2(n+1)))`
-/

namespace A097053.P3264598257777791777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A011782 (Nat.log 2 (n + 1))

end

end A097053.P3264598257777791777

namespace A097053

/-- `(n+1)*A011782(floor(log2(n+1)))` -/
def P3264598257777791777.Spec : Prop :=
  ∀ n, P3264598257777791777.a n = A097053 (n + 1)

end A097053

/-! ## A097053.P13641038511955114116

`(n+1)*A000010(2^floor(log2(n+1)))`
-/

namespace A097053.P13641038511955114116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000010 (2 ^ Nat.log 2 (n + 1))

end

end A097053.P13641038511955114116

namespace A097053

/-- `(n+1)*A000010(2^floor(log2(n+1)))` -/
def P13641038511955114116.Spec : Prop :=
  ∀ n, P13641038511955114116.a n = A097053 (n + 1)

end A097053

/-! ## A097053.P1073641286751079144

`(n+1)*A003557(2^floor(log2(n+1)))`
-/

namespace A097053.P1073641286751079144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A003557 (2 ^ Nat.log 2 (n + 1))

end

end A097053.P1073641286751079144

namespace A097053

/-- `(n+1)*A003557(2^floor(log2(n+1)))` -/
def P1073641286751079144.Spec : Prop :=
  ∀ n, P1073641286751079144.a n = A097053 (n + 1)

end A097053

/-! ## A097053.P8990236449116698123

`(n+1)*A166444(A070939(n+1))`
-/

namespace A097053.P8990236449116698123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A166444 (A070939 (n + 1)).toNat

end

end A097053.P8990236449116698123

namespace A097053

/-- `(n+1)*A166444(A070939(n+1))` -/
def P8990236449116698123.Spec : Prop :=
  ∀ n, P8990236449116698123.a n = A097053 (n + 1)

end A097053

/-! ## A097053.P3157090982470139796

`(n+1)*(A004763(n+3)-(n+1))`
-/

namespace A097053.P3157090982470139796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A004763 (n + 3) - (n + 1 : ℤ))

end

end A097053.P3157090982470139796

namespace A097053

/-- `(n+1)*(A004763(n+3)-(n+1))` -/
def P3157090982470139796.Spec : Prop :=
  ∀ n, P3157090982470139796.a n = A097053 (n + 1)

end A097053

/-! ## A097053.P2297782194419341738

`A065033(2*n+1)*A053644(A065033(n))`
-/

namespace A097053.P2297782194419341738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (2 * n + 1) * A053644 (A065033 n).toNat

end

end A097053.P2297782194419341738

namespace A097053

/-- `A065033(2*n+1)*A053644(A065033(n))` -/
def P2297782194419341738.Spec : Prop :=
  ∀ n, P2297782194419341738.a n = A097053 (n + 1)

end A097053

/-! ## A097053.P16989197747617413434

`A038572((n+1)*A053644(n+1))`
-/

namespace A097053.P16989197747617413434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 ((n + 1 : ℤ) * A053644 (n + 1)).toNat

end

end A097053.P16989197747617413434

namespace A097053

/-- `A038572((n+1)*A053644(n+1))` -/
def P16989197747617413434.Spec : Prop :=
  ∀ n, P16989197747617413434.a n = A097053 (n + 1)

end A097053

/-!
# A097054: Nonsquare perfect powers.

The programs for A097054, there is no canonical definition to state claims against.
-/

/-! ## A097054.P4291405515205098264

`∪[A179125(n+1), A239728(n+1)]`
-/

namespace A097054.P4291405515205098264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179125 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239728 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A097054.P4291405515205098264

/-! ## A097054.P4056233745690303110

`∩[A001597(n+1), A102834(n+1)]`
-/

namespace A097054.P4056233745690303110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102834 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A097054.P4056233745690303110

/-! ## A097054.P3477501101538976929

`∩[A070265(n+1), A102834(n+1)]`
-/

namespace A097054.P3477501101538976929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070265 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102834 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A097054.P3477501101538976929

/-! ## A097054.P2386655330179579600

`∩[A076467(n+1), A102834(n+1)]`
-/

namespace A097054.P2386655330179579600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076467 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102834 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A097054.P2386655330179579600

/-! ## A097054.P10476530074979118050

`∩[A001597(n+1), A069236(n+1)]`
-/

namespace A097054.P10476530074979118050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069236 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A097054.P10476530074979118050

/-! ## A097054.P3607503290493658513

`∩[A069236(n+1), A070265(n+1)]`
-/

namespace A097054.P3607503290493658513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069236 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070265 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A097054.P3607503290493658513

/-! ## A097054.P6852193406429166860

`∩[A069236(n+1), A076467(n+1)]`
-/

namespace A097054.P6852193406429166860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069236 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076467 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A097054.P6852193406429166860

/-! ## A097054.P8412693113135833184

`∩[A001597(n+1), A388306(n+1)]`
-/

namespace A097054.P8412693113135833184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388306 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A097054.P8412693113135833184

/-! ## A097054.P373837109859449975

`∩[A070265(n+1), A388306(n+1)]`
-/

namespace A097054.P373837109859449975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070265 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388306 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A097054.P373837109859449975

/-! ## A097054.P913173013019286403

`∩[A076467(n+1), A388306(n+1)]`
-/

namespace A097054.P913173013019286403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076467 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388306 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A097054.P913173013019286403

/-!
# A097055: Numbers n such that the interval n^2 < x < (n+1)^2 contains at least one nonsquare perfect power A097054.

The programs for A097055, there is no canonical definition to state claims against.
-/

/-! ## A097055.P11993417559972960167

`lt[0, A117896(n+1)]+1`
-/

namespace A097055.P11993417559972960167
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117896 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A097055.P11993417559972960167

/-! ## A097055.P10376159046432682699

`lt[0, A117896(A028310(n))]`
-/

namespace A097055.P10376159046432682699
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117896 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A097055.P10376159046432682699

/-! ## A097055.P1378276302898877829

`lt[A301573(n²+1+n), n]`
-/

namespace A097055.P1378276302898877829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301573 (n ^ 2 + 1 + n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A097055.P1378276302898877829

/-! ## A097055.P14101723624036832256

`record[A000196(A075454(A028920(n)))]`
-/

namespace A097055.P14101723624036832256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A075454 (A028920 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A097055.P14101723624036832256

/-! ## A097055.P10988428341271412149

`record[A000196(A075454(A065648(n)))]`
-/

namespace A097055.P10988428341271412149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A075454 (A065648 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A097055.P10988428341271412149

/-!
# A097056: Numbers n such that the interval n^2 < x < (n+1)^2 contains two or more distinct nonsquare perfect powers A097054.

The programs for A097056, there is no canonical definition to state claims against.
-/

/-! ## A097056.P3173901767782318466

`floor(sqrt(A117934(2*n+1)))`
-/

namespace A097056.P3173901767782318466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A117934 (2 * n + 1))

end

end A097056.P3173901767782318466

/-! ## A097056.P12517945790625247935

`sqrt(A076432(n+1))-1`
-/

namespace A097056.P12517945790625247935
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A076432 (n + 1) : ℝ) - 1

end

end A097056.P12517945790625247935

/-! ## A097056.P6470928300371171623

`A008683(A007304(n+1))+sqrt(A076432(n+1))`
-/

namespace A097056.P6470928300371171623
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A008683 (A007304 (n + 1)).toNat : ℝ) + Real.sqrt (A076432 (n + 1) : ℝ)

end

end A097056.P6470928300371171623

/-! ## A097056.P4178218747832761516

`A008683(A216886(n+1))+sqrt(A076432(n+1))`
-/

namespace A097056.P4178218747832761516
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A008683 (A216886 (n + 1)).toNat : ℝ) + Real.sqrt (A076432 (n + 1) : ℝ)

end

end A097056.P4178218747832761516

/-! ## A097056.P16356266013572824187

`A008683(A330310(n+1))+sqrt(A076432(n+1))`
-/

namespace A097056.P16356266013572824187
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A008683 (A330310 (n + 1)).toNat : ℝ) + Real.sqrt (A076432 (n + 1) : ℝ)

end

end A097056.P16356266013572824187

/-!
# A097057: Number of integer solutions to a^2 + b^2 + 2*c^2 + 2*d^2 = n.

The programs for A097057, there is no canonical definition to state claims against.
-/

/-! ## A097057.P16571490021990116250

`abs(A133690(n))`
-/

namespace A097057.P16571490021990116250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A133690 n|

end

end A097057.P16571490021990116250

/-! ## A097057.P10112711147189294505

`A033999(n)*A133690(n)`
-/

namespace A097057.P10112711147189294505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A133690 n

end

end A097057.P10112711147189294505

/-! ## A097057.P8629517223260891199

`A000118(n)/A068073(n)`
-/

namespace A097057.P8629517223260891199
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000118 n : ℚ) / (A068073 n : ℚ)

end

end A097057.P8629517223260891199

/-! ## A097057.P16713704587386980582

`gcd(A000038(n), A133690(n))`
-/

namespace A097057.P16713704587386980582
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A133690 n)

end

end A097057.P16713704587386980582

/-! ## A097057.P4286135076543378199

`lcm(A000034(n), A133690(n))`
-/

namespace A097057.P4286135076543378199
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A133690 n)

end

end A097057.P4286135076543378199

/-! ## A097057.P16688846823570716850

`A111973(n+1)/A133691(n+1)*A133690(n)`
-/

namespace A097057.P16688846823570716850
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A111973 (n + 1) : ℚ) / (A133691 (n + 1) : ℚ) * (A133690 n : ℚ)

end

end A097057.P16688846823570716850

/-! ## A097057.P4928934128611374179

`A236922(2*n)`
-/

namespace A097057.P4928934128611374179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236922 (2 * n)

end

end A097057.P4928934128611374179

/-! ## A097057.P17092769094044315133

`A236924(2*n)`
-/

namespace A097057.P17092769094044315133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236924 (2 * n)

end

end A097057.P17092769094044315133

/-! ## A097057.P1295198136371370890

`gcd(A000118(n), A236923(2*n))`
-/

namespace A097057.P1295198136371370890
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000118 n) (A236923 (2 * n))

end

end A097057.P1295198136371370890

/-! ## A097057.P1589405830412895610

`A133690(n*A000034(n))/A000034(n)`
-/

namespace A097057.P1589405830412895610
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A133690 ((n : ℤ) * A000034 n).toNat : ℚ) / (A000034 n : ℚ)

end

end A097057.P1589405830412895610

/-! ## A097057.P7248233716921798811

`A133690(2*n)/A068073(n)`
-/

namespace A097057.P7248233716921798811
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A133690 (2 * n) : ℚ) / (A068073 n : ℚ)

end

end A097057.P7248233716921798811

/-! ## A097057.P16350217126632941201

`A236923(2*n)/A084101(2*n)`
-/

namespace A097057.P16350217126632941201
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A236923 (2 * n) : ℚ) / (A084101 (2 * n) : ℚ)

end

end A097057.P16350217126632941201

/-! ## A097057.P2165014913076980904

`(A207541(2*n)+A133690(2*n))/2`
-/

namespace A097057.P2165014913076980904
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207541 (2 * n) + A133690 (2 * n) : ℚ) / 2

end

end A097057.P2165014913076980904

/-! ## A097057.P13049619134388092215

`A033720(4*n)`
-/

namespace A097057.P13049619134388092215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033720 (4 * n)

end

end A097057.P13049619134388092215

/-! ## A097057.P11960340328152008176

`A236923(2*n)/A000118(2*n)*A236923(4*n)`
-/

namespace A097057.P11960340328152008176
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A236923 (2 * n) : ℚ) / (A000118 (2 * n) : ℚ) * (A236923 (4 * n) : ℚ)

end

end A097057.P11960340328152008176

/-! ## A097057.P15411899783966161075

`∑{#}[n, A033715(#)*A033715(n-#)]`
-/

namespace A097057.P15411899783966161075
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A033715 k * A033715 (n - k)

end

end A097057.P15411899783966161075

/-! ## A097057.P562752952052437148

`A028577(4*n)`
-/

namespace A097057.P562752952052437148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028577 (4 * n)

end

end A097057.P562752952052437148

/-! ## A097057.P2201493750568693910

`A028583(8*n)`
-/

namespace A097057.P2201493750568693910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028583 (8 * n)

end

end A097057.P2201493750568693910

/-! ## A097057.P12595105486464549241

`A028598(4*4*n)`
-/

namespace A097057.P12595105486464549241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028598 (4 * (4 * n))

end

end A097057.P12595105486464549241

/-! ## A097057.P8548263378775204930

`A028630(A174312(n))`
-/

namespace A097057.P8548263378775204930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028630 (A174312 n).toNat

end

end A097057.P8548263378775204930

/-!
# A097058: Numbers of the form p^2 + 2^p for p prime.

The programs for A097058, the canonical program `A097058.P118570453476713754` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097058 has offset 1).

The definition of A097058 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A097058.P118570453476713754

`A000040(n+1)²+2^A000040(n+1)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A097058

/-- `A000040(n+1)²+2^A000040(n+1)` -/
def P118570453476713754.Spec : Prop :=
  ∀ n, P118570453476713754.a n = (A097058 (n + 1) : ℚ)

end A097058

/-! ## A097058.P4376320966249828525

`A001580(p?[comp[n²]])`
-/

namespace A097058.P4376320966249828525
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001580 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A097058.P4376320966249828525

namespace A097058

/-- `A001580(p?[comp[n²]])` -/
def P4376320966249828525.Spec : Prop :=
  ∀ n, P4376320966249828525.a n = A097058 (n + 1)

end A097058

/-! ## A097058.P16603132010958113162

`2^eq[2, ∏{e}[n², #]]+A000040(n+1)²`
-/

namespace A097058.P16603132010958113162
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℤ) + A000040 (n + 1) ^ 2

end

end A097058.P16603132010958113162

namespace A097058

/-- `2^eq[2, ∏{e}[n², #]]+A000040(n+1)²` -/
def P16603132010958113162.Spec : Prop :=
  ∀ n, P16603132010958113162.a n = A097058 (n + 1)

end A097058

/-! ## A097058.P6951053983552689839

`2^eq[2, ∏{e}[n², #]]+∑[A054541(n+1)]²`
-/

namespace A097058.P6951053983552689839
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℤ) + (∑ j ∈ Finset.range (n + 1), f4 j) ^ 2

end

end A097058.P6951053983552689839

namespace A097058

/-- `2^eq[2, ∏{e}[n², #]]+∑[A054541(n+1)]²` -/
def P6951053983552689839.Spec : Prop :=
  ∀ n, P6951053983552689839.a n = A097058 (n + 1)

end A097058

/-! ## A097058.P3443840163847736095

`2^eq[2, ∏{e}[n², #]]+(A008864(n+1)-1)²`
-/

namespace A097058.P3443840163847736095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℤ) + (A008864 (n + 1) - 1) ^ 2

end

end A097058.P3443840163847736095

namespace A097058

/-- `2^eq[2, ∏{e}[n², #]]+(A008864(n+1)-1)²` -/
def P3443840163847736095.Spec : Prop :=
  ∀ n, P3443840163847736095.a n = A097058 (n + 1)

end A097058

/-! ## A097058.P966101913730882809

`2^eq[2, ∏{e}[n², #]]+(A040976(n+1)+2)²`
-/

namespace A097058.P966101913730882809
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℤ) + (A040976 (n + 1) + 2) ^ 2

end

end A097058.P966101913730882809

namespace A097058

/-- `2^eq[2, ∏{e}[n², #]]+(A040976(n+1)+2)²` -/
def P966101913730882809.Spec : Prop :=
  ∀ n, P966101913730882809.a n = A097058 (n + 1)

end A097058

/-! ## A097058.P14050325891354700917

`2^eq[2, ∏{e}[n², #]]+(A014692(n+1)+n)²`
-/

namespace A097058.P14050325891354700917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℤ) + (A014692 (n + 1) + (n : ℤ)) ^ 2

end

end A097058.P14050325891354700917

namespace A097058

/-- `2^eq[2, ∏{e}[n², #]]+(A014692(n+1)+n)²` -/
def P14050325891354700917.Spec : Prop :=
  ∀ n, P14050325891354700917.a n = A097058 (n + 1)

end A097058

/-! ## A097058.P16459551113486554169

`2^eq[2, ∏{e}[n², #]]+(n+1+A014689(n+1))²`
-/

namespace A097058.P16459551113486554169
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℤ) + ((n + 1 : ℤ) + A014689 (n + 1)) ^ 2

end

end A097058.P16459551113486554169

namespace A097058

/-- `2^eq[2, ∏{e}[n², #]]+(n+1+A014689(n+1))²` -/
def P16459551113486554169.Spec : Prop :=
  ∀ n, P16459551113486554169.a n = A097058 (n + 1)

end A097058

/-! ## A097058.P14780377163969549488

`A001580(Δ[A007504(n)])`
-/

namespace A097058.P14780377163969549488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001580 (f1 (n + 1) - f1 n).toNat

end

end A097058.P14780377163969549488

namespace A097058

/-- `A001580(Δ[A007504(n)])` -/
def P14780377163969549488.Spec : Prop :=
  ∀ n, P14780377163969549488.a n = A097058 (n + 1)

end A097058

/-! ## A097058.P2648975309572701738

`A001580(A000040(n+1))`
-/

namespace A097058.P2648975309572701738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001580 (A000040 (n + 1)).toNat

end

end A097058.P2648975309572701738

namespace A097058

/-- `A001580(A000040(n+1))` -/
def P2648975309572701738.Spec : Prop :=
  ∀ n, P2648975309572701738.a n = A097058 (n + 1)

end A097058

/-!
# A097059: Numbers of the form p^3 + 3^p for p prime.

The programs for A097059, the canonical program `A097059.P3193296812499823110` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097059 has offset 1).

The definition of A097059 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A097059.P3193296812499823110

`A000040(n+1)^3+3^A000040(n+1)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A097059

/-- `A000040(n+1)^3+3^A000040(n+1)` -/
def P3193296812499823110.Spec : Prop :=
  ∀ n, P3193296812499823110.a n = (A097059 (n + 1) : ℚ)

end A097059

/-! ## A097059.P17951474801339272465

`A001585(p?[comp[n²]])`
-/

namespace A097059.P17951474801339272465
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001585 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A097059.P17951474801339272465

namespace A097059

/-- `A001585(p?[comp[n²]])` -/
def P17951474801339272465.Spec : Prop :=
  ∀ n, P17951474801339272465.a n = A097059 (n + 1)

end A097059

/-! ## A097059.P12276062225747484453

`A001585(record[∑{p}[2-n, #]])`
-/

namespace A097059.P12276062225747484453
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (n : ℤ)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001585 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A097059.P12276062225747484453

namespace A097059

/-- `A001585(record[∑{p}[2-n, #]])` -/
def P12276062225747484453.Spec : Prop :=
  ∀ n, P12276062225747484453.a n = A097059 (n + 1)

end A097059

/-! ## A097059.P9524563459611858710

`A001585(A000040(1+n))`
-/

namespace A097059.P9524563459611858710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001585 (A000040 (1 + n)).toNat

end

end A097059.P9524563459611858710

namespace A097059

/-- `A001585(A000040(1+n))` -/
def P9524563459611858710.Spec : Prop :=
  ∀ n, P9524563459611858710.a n = A097059 (n + 1)

end A097059

/-! ## A097059.P5957748016714809090

`A001585(A006093(n+1)+1)`
-/

namespace A097059.P5957748016714809090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001585 (A006093 (n + 1) + 1).toNat

end

end A097059.P5957748016714809090

namespace A097059

/-- `A001585(A006093(n+1)+1)` -/
def P5957748016714809090.Spec : Prop :=
  ∀ n, P5957748016714809090.a n = A097059 (n + 1)

end A097059

/-!
# A097061: Carmichael numbers C such that C-1 is not a Niven/Harshad number.

The programs for A097061, there is no canonical definition to state claims against.
-/

/-! ## A097061.P4680673918751863239

`A002997(A039771(n+2)^A183096(n+1))`
-/

namespace A097061.P4680673918751863239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002997 (SequenceMachineLib.roundAway ((A039771 (n + 2) : ℚ) ^ (A183096 (n + 1) : ℤ))).toNat

end

end A097061.P4680673918751863239

/-!
# A097062: Interleave 2*n+1 and 2*n-1.

The programs for A097062, the canonical program `A097062.P7069015406246749501` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097062 has offset 0).

The definition of A097062 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A097062.P12290348222669981285

`ogf((1-2x+3x^2)/(1-x-x^2+x^3))`
-/

namespace A097062.P12290348222669981285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, 3] [1, -1, -1, 1] n

end

end A097062.P12290348222669981285

namespace A097062

/-- `ogf((1-2x+3x^2)/(1-x-x^2+x^3))` -/
def P12290348222669981285.Spec : Prop :=
  ∀ n, P12290348222669981285.a n = A097062 n

end A097062

/-! ## A097062.P7069015406246749501

`2*(n-1)-a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A097062

/-- `2*(n-1)-a(n-1)` -/
def P7069015406246749501.Spec : Prop :=
  ∀ n, P7069015406246749501.a n = A097062 n

theorem P7069015406246749501.correct : P7069015406246749501.Spec := by
  intro n
  simp only [A097062]

end A097062

/-! ## A097062.P762481012104149823

`(2*n-1)/2+3*(-1)^n/2`
-/

namespace A097062.P762481012104149823
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * n : ℤ) - 1 : ℚ) / 2 + (3 * (-1) ^ n : ℚ) / 2

end

end A097062.P762481012104149823

namespace A097062

/-- `(2*n-1)/2+3*(-1)^n/2` -/
def P762481012104149823.Spec : Prop :=
  ∀ n, P762481012104149823.a n = (A097062 n : ℚ)

theorem P762481012104149823.correct : P762481012104149823.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A097062, Nat.add_sub_cancel, A097062.P762481012104149823.a, A097062.P7069015406246749501.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A097062, Nat.add_sub_cancel, A097062.P762481012104149823.a, A097062.P7069015406246749501.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A097062

/-! ## A097062.P9404296615499044985

`or(1, xor(1, n)-1)`
-/

namespace A097062.P9404296615499044985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((Nat.xor 1 n : ℤ) - 1)

end

end A097062.P9404296615499044985

namespace A097062

/-- `or(1, xor(1, n)-1)` -/
def P9404296615499044985.Spec : Prop :=
  ∀ n, P9404296615499044985.a n = A097062 n

end A097062

/-! ## A097062.P18168664896188324177

`xor(1, n)-n%2`
-/

namespace A097062.P18168664896188324177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor 1 n : ℤ) - ((n % 2 : ℕ) : ℤ)

end

end A097062.P18168664896188324177

namespace A097062

/-- `xor(1, n)-n%2` -/
def P18168664896188324177.Spec : Prop :=
  ∀ n, P18168664896188324177.a n = A097062 n

end A097062

/-! ## A097062.P6796363929397513973

`xor(1, n)-and(1, n)`
-/

namespace A097062.P6796363929397513973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor 1 n : ℤ) - (Nat.land 1 n : ℤ)

end

end A097062.P6796363929397513973

namespace A097062

/-- `xor(1, n)-and(1, n)` -/
def P6796363929397513973.Spec : Prop :=
  ∀ n, P6796363929397513973.a n = A097062 n

end A097062

/-! ## A097062.P2510572343763020878

`-or(1, -xor(1, n))`
-/

namespace A097062.P2510572343763020878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.lor 1 (-(Nat.xor 1 n : ℤ))

end

end A097062.P2510572343763020878

namespace A097062

/-- `-or(1, -xor(1, n))` -/
def P2510572343763020878.Spec : Prop :=
  ∀ n, P2510572343763020878.a n = A097062 n

end A097062

/-! ## A097062.P13423725547322312195

`lcm(2, Δ[lcm(2, n)])-1`
-/

namespace A097062.P13423725547322312195
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) : ℤ) - 1

end

end A097062.P13423725547322312195

namespace A097062

/-- `lcm(2, Δ[lcm(2, n)])-1` -/
def P13423725547322312195.Spec : Prop :=
  ∀ n, P13423725547322312195.a n = A097062 n

end A097062

/-! ## A097062.P2414358678109640214

`gcd(2, n)²+n-3`
-/

namespace A097062.P2414358678109640214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 n ^ 2 + n : ℤ) - 3

end

end A097062.P2414358678109640214

namespace A097062

/-- `gcd(2, n)²+n-3` -/
def P2414358678109640214.Spec : Prop :=
  ∀ n, P2414358678109640214.a n = A097062 n

end A097062

/-! ## A097062.P17321749527107806611

`(-2)^and(1, n)+n`
-/

namespace A097062.P17321749527107806611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-2) ^ Nat.land 1 n + (n : ℤ)

end

end A097062.P17321749527107806611

namespace A097062

/-- `(-2)^and(1, n)+n` -/
def P17321749527107806611.Spec : Prop :=
  ∀ n, P17321749527107806611.a n = A097062 n

end A097062

/-! ## A097062.P4779732998284010561

`xor(1, -and(1, n))+n`
-/

namespace A097062.P4779732998284010561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (-(Nat.land 1 n : ℤ)) + (n : ℤ)

end

end A097062.P4779732998284010561

namespace A097062

/-- `xor(1, -and(1, n))+n` -/
def P4779732998284010561.Spec : Prop :=
  ∀ n, P4779732998284010561.a n = A097062 n

end A097062

/-! ## A097062.P9625953450274459206

`or(1, n-Δ[or(1, n)])`
-/

namespace A097062.P9625953450274459206
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((n : ℤ) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ)))

end

end A097062.P9625953450274459206

namespace A097062

/-- `or(1, n-Δ[or(1, n)])` -/
def P9625953450274459206.Spec : Prop :=
  ∀ n, P9625953450274459206.a n = A097062 n

end A097062

/-! ## A097062.P15413531317211789078

`xor(3, record[xor(2, n)])-n`
-/

namespace A097062.P15413531317211789078
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor 3 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) : ℤ) - (n : ℤ)

end

end A097062.P15413531317211789078

namespace A097062

/-- `xor(3, record[xor(2, n)])-n` -/
def P15413531317211789078.Spec : Prop :=
  ∀ n, P15413531317211789078.a n = A097062 n

end A097062

/-! ## A097062.P13071890729074097703

`a(n-2)+2` with `a(0)=1, a(1)=-1`
-/

namespace A097062.P13071890729074097703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -1] fun n a =>
  a (n - 2) + 2

end

end A097062.P13071890729074097703

namespace A097062

/-- `a(n-2)+2` -/
def P13071890729074097703.Spec : Prop :=
  ∀ n, P13071890729074097703.a n = A097062 n

end A097062

/-! ## A097062.P8607827481476044146

`n+1-(3*n)%6`
-/

namespace A097062.P8607827481476044146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - ((3 * n % 6 : ℕ) : ℤ)

end

end A097062.P8607827481476044146

namespace A097062

/-- `n+1-(3*n)%6` -/
def P8607827481476044146.Spec : Prop :=
  ∀ n, P8607827481476044146.a n = A097062 n

end A097062

/-! ## A097062.P11032922665374980320

`n+1-3*and(1, n)`
-/

namespace A097062.P11032922665374980320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (3 * Nat.land 1 n : ℤ)

end

end A097062.P11032922665374980320

namespace A097062

/-- `n+1-3*and(1, n)` -/
def P11032922665374980320.Spec : Prop :=
  ∀ n, P11032922665374980320.a n = A097062 n

end A097062

/-! ## A097062.P13939178010193838921

`n+2-4^and(1, n)`
-/

namespace A097062.P13939178010193838921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - (4 ^ Nat.land 1 n : ℤ)

end

end A097062.P13939178010193838921

namespace A097062

/-- `n+2-4^and(1, n)` -/
def P13939178010193838921.Spec : Prop :=
  ∀ n, P13939178010193838921.a n = A097062 n

end A097062

/-! ## A097062.P12794386444209067516

`n+1-lcm(3, and(1, n))`
-/

namespace A097062.P12794386444209067516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (Nat.lcm 3 (Nat.land 1 n) : ℤ)

end

end A097062.P12794386444209067516

namespace A097062

/-- `n+1-lcm(3, and(1, n))` -/
def P12794386444209067516.Spec : Prop :=
  ∀ n, P12794386444209067516.a n = A097062 n

end A097062

/-! ## A097062.P1764550239752461070

`or(1, n-(2*n)%4)`
-/

namespace A097062.P1764550239752461070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((n : ℤ) - ((2 * n % 4 : ℕ) : ℤ))

end

end A097062.P1764550239752461070

namespace A097062

/-- `or(1, n-(2*n)%4)` -/
def P1764550239752461070.Spec : Prop :=
  ∀ n, P1764550239752461070.a n = A097062 n

end A097062

/-! ## A097062.P17527649155014998518

`n+2-C(4, and(1, n))`
-/

namespace A097062.P17527649155014998518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - (Nat.choose 4 (Nat.land 1 n) : ℤ)

end

end A097062.P17527649155014998518

namespace A097062

/-- `n+2-C(4, and(1, n))` -/
def P17527649155014998518.Spec : Prop :=
  ∀ n, P17527649155014998518.a n = A097062 n

end A097062

/-!
# A097063: Expansion of g.f. (1-2*x+3*x^2)/((1+x)*(1-x)^3).

The programs for A097063, the canonical program `A097063.P10567093055465133731` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097063 has offset 0).

The definition of A097063 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-2x+3x^2)/(1-2x+2x^3-x^4))` (program `A097063.P10567093055465133731`, by `A097063.P10567093055465133731.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A097063.P10567093055465133731

`ogf((1-2x+3x^2)/(1-2x+2x^3-x^4))`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A097063

/-- `ogf((1-2x+3x^2)/(1-2x+2x^3-x^4))` -/
def P10567093055465133731.Spec : Prop :=
  ∀ n, P10567093055465133731.a n = A097063 n

theorem P10567093055465133731.correct : P10567093055465133731.Spec := by
  intro n
  simp only [A097063]

end A097063

/-! ## A097063.P9941538962010038145

`2*floor(n/2)+ceil((n-1)²/2)`
-/

namespace A097063.P9941538962010038145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌊(n : ℚ) / 2⌋ + ⌈(((n : ℤ) - 1) ^ 2 : ℚ) / 2⌉

end

end A097063.P9941538962010038145

namespace A097063

/-- `2*floor(n/2)+ceil((n-1)²/2)` -/
def P9941538962010038145.Spec : Prop :=
  ∀ n, P9941538962010038145.a n = A097063 n

end A097063

/-! ## A097063.P9309562396187537683

`∑{#}[n, (#²-#+1)*(-1)^(n-#)]`
-/

namespace A097063.P9309562396187537683
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), ((k ^ 2 : ℤ) - (k : ℤ) + 1 : ℚ) * (-1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ)

end

end A097063.P9309562396187537683

namespace A097063

/-- `∑{#}[n, (#²-#+1)*(-1)^(n-#)]` -/
def P9309562396187537683.Spec : Prop :=
  ∀ n, P9309562396187537683.a n = (A097063 n : ℚ)

end A097063

/-! ## A097063.P10360473207319642239

`xor(1, ceil(n²/2))`
-/

namespace A097063.P10360473207319642239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 ⌈(n ^ 2 : ℚ) / 2⌉

end

end A097063.P10360473207319642239

namespace A097063

/-- `xor(1, ceil(n²/2))` -/
def P10360473207319642239.Spec : Prop :=
  ∀ n, P10360473207319642239.a n = A097063 n

end A097063

/-! ## A097063.P357329865761782332

`round(xor(1, n²)/2)`
-/

namespace A097063.P357329865761782332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.xor 1 (n ^ 2) : ℚ) / 2)

end

end A097063.P357329865761782332

namespace A097063

/-- `round(xor(1, n²)/2)` -/
def P357329865761782332.Spec : Prop :=
  ∀ n, P357329865761782332.a n = A097063 n

end A097063

/-! ## A097063.P16288368162310792933

`ceil(xor(1, n^2)/2)`
-/

namespace A097063.P16288368162310792933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.xor 1 (n ^ 2) : ℚ) / 2⌉

end

end A097063.P16288368162310792933

namespace A097063

/-- `ceil(xor(1, n^2)/2)` -/
def P16288368162310792933.Spec : Prop :=
  ∀ n, P16288368162310792933.a n = A097063 n

end A097063

/-! ## A097063.P17573334985629304842

`∑[or(1, xor(1, n)-1)]`
-/

namespace A097063.P17573334985629304842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((Nat.xor 1 n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097063.P17573334985629304842

namespace A097063

/-- `∑[or(1, xor(1, n)-1)]` -/
def P17573334985629304842.Spec : Prop :=
  ∀ n, P17573334985629304842.a n = A097063 n

end A097063

/-! ## A097063.P13024160390585185931

`xor(n², gcd(2, n))/2`
-/

namespace A097063.P13024160390585185931
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.xor (n ^ 2) (Nat.gcd 2 n) : ℚ) / 2

end

end A097063.P13024160390585185931

namespace A097063

/-- `xor(n², gcd(2, n))/2` -/
def P13024160390585185931.Spec : Prop :=
  ∀ n, P13024160390585185931.a n = (A097063 n : ℚ)

end A097063

/-! ## A097063.P9688684847806541390

`∑[xor(1, n)-n%2]`
-/

namespace A097063.P9688684847806541390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor 1 n : ℤ) - ((n % 2 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097063.P9688684847806541390

namespace A097063

/-- `∑[xor(1, n)-n%2]` -/
def P9688684847806541390.Spec : Prop :=
  ∀ n, P9688684847806541390.a n = A097063 n

end A097063

/-! ## A097063.P4588390026552249104

`∑[xor(1, n)-and(1, n)]`
-/

namespace A097063.P4588390026552249104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor 1 n : ℤ) - (Nat.land 1 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097063.P4588390026552249104

namespace A097063

/-- `∑[xor(1, n)-and(1, n)]` -/
def P4588390026552249104.Spec : Prop :=
  ∀ n, P4588390026552249104.a n = A097063 n

end A097063

/-! ## A097063.P15730852494837713251

`∑[gcd(4, n²)+n-3]`
-/

namespace A097063.P15730852494837713251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 4 (n ^ 2) : ℤ) + ((n : ℤ) - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097063.P15730852494837713251

namespace A097063

/-- `∑[gcd(4, n²)+n-3]` -/
def P15730852494837713251.Spec : Prop :=
  ∀ n, P15730852494837713251.a n = A097063 n

end A097063

/-! ## A097063.P14320382674999250456

`∑[a(n-2)+2]` with `a(0)=1, a(1)=-1`
-/

namespace A097063.P14320382674999250456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, -1] fun n f1 =>
  f1 (n - 2) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097063.P14320382674999250456

namespace A097063

/-- `∑[a(n-2)+2]` -/
def P14320382674999250456.Spec : Prop :=
  ∀ n, P14320382674999250456.a n = A097063 n

end A097063

/-! ## A097063.P12263620070370657194

`∑[n+1-3*and(1, n)]`
-/

namespace A097063.P12263620070370657194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (3 * Nat.land 1 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097063.P12263620070370657194

namespace A097063

/-- `∑[n+1-3*and(1, n)]` -/
def P12263620070370657194.Spec : Prop :=
  ∀ n, P12263620070370657194.a n = A097063 n

end A097063

/-! ## A097063.P11140621447179410537

`∑[n+2-4^and(1, n)]`
-/

namespace A097063.P11140621447179410537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - (4 ^ Nat.land 1 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097063.P11140621447179410537

namespace A097063

/-- `∑[n+2-4^and(1, n)]` -/
def P11140621447179410537.Spec : Prop :=
  ∀ n, P11140621447179410537.a n = A097063 n

end A097063

/-! ## A097063.P17092452216899810751

`∑[n+1-lcm(3, and(1, n))]`
-/

namespace A097063.P17092452216899810751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (Nat.lcm 3 (Nat.land 1 n) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097063.P17092452216899810751

namespace A097063

/-- `∑[n+1-lcm(3, and(1, n))]` -/
def P17092452216899810751.Spec : Prop :=
  ∀ n, P17092452216899810751.a n = A097063 n

end A097063

/-! ## A097063.P18311142034221566762

`∑[n+1-and(3, -n²)]`
-/

namespace A097063.P18311142034221566762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - Int.land 3 (-(n ^ 2 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097063.P18311142034221566762

namespace A097063

/-- `∑[n+1-and(3, -n²)]` -/
def P18311142034221566762.Spec : Prop :=
  ∀ n, P18311142034221566762.a n = A097063 n

end A097063

/-! ## A097063.P378610227986760378

`∑[or(n, -2)²+n-3]`
-/

namespace A097063.P378610227986760378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (-2) ^ 2 + ((n : ℤ) - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097063.P378610227986760378

namespace A097063

/-- `∑[or(n, -2)²+n-3]` -/
def P378610227986760378.Spec : Prop :=
  ∀ n, P378610227986760378.a n = A097063 n

end A097063

/-! ## A097063.P2978919650580360196

`∑[∑[2-a(n-1)]]` with `a(0)=1, a(1)=-2`
-/

namespace A097063.P2978919650580360196
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, -2] fun n f2 =>
  2 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097063.P2978919650580360196

namespace A097063

/-- `∑[∑[2-a(n-1)]]` -/
def P2978919650580360196.Spec : Prop :=
  ∀ n, P2978919650580360196.a n = A097063 n

end A097063

/-! ## A097063.P1927641020611228796

`∑[∑[∑[ogf((1-2x+3x^2)/(1+x))]]]`
-/

namespace A097063.P1927641020611228796
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, 3] [1, 1] n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097063.P1927641020611228796

namespace A097063

/-- `∑[∑[∑[ogf((1-2x+3x^2)/(1+x))]]]` -/
def P1927641020611228796.Spec : Prop :=
  ∀ n, P1927641020611228796.a n = A097063 n

end A097063

/-! ## A097063.P10759566920732138383

`floor(and(1, n+1)+n²/2)`
-/

namespace A097063.P10759566920732138383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.land 1 (n + 1) : ℚ) + (n ^ 2 : ℚ) / 2⌋

end

end A097063.P10759566920732138383

namespace A097063

/-- `floor(and(1, n+1)+n²/2)` -/
def P10759566920732138383.Spec : Prop :=
  ∀ n, P10759566920732138383.a n = A097063 n

end A097063

/-!
# A097064: Expansion of (1 - 4*x + 6*x^2)/(1 - 2*x)^2.

The programs for A097064, the canonical program `A097064.P2572803576421402787` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097064 has offset 0).

The definition of A097064 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-4x+6x^2)/(1-4x+4x^2))` (program `A097064.P2572803576421402787`, by `A097064.P2572803576421402787.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A097064.P2572803576421402787

`ogf((1-4x+6x^2)/(1-4x+4x^2))`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A097064

/-- `ogf((1-4x+6x^2)/(1-4x+4x^2))` -/
def P2572803576421402787.Spec : Prop :=
  ∀ n, P2572803576421402787.a n = A097064 n

theorem P2572803576421402787.correct : P2572803576421402787.Spec := by
  intro n
  simp only [A097064]

end A097064

/-! ## A097064.P3247379512299581942

`4*a(n-1)-4*a(n-2)` with `a(0)=1, a(1)=0, a(2)=2`
-/

namespace A097064.P3247379512299581942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 2] fun n a =>
  4 * a (n - 1) - 4 * a (n - 2)

end

end A097064.P3247379512299581942

namespace A097064

/-- `4*a(n-1)-4*a(n-2)` -/
def P3247379512299581942.Spec : Prop :=
  ∀ n, P3247379512299581942.a n = A097064 n

end A097064

/-! ## A097064.P2397615672353394040

`abs(floor((n-1)*2^(n-1)))`
-/

namespace A097064.P2397615672353394040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |⌊((n : ℤ) - 1 : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋|

end

end A097064.P2397615672353394040

namespace A097064

/-- `abs(floor((n-1)*2^(n-1)))` -/
def P2397615672353394040.Spec : Prop :=
  ∀ n, P2397615672353394040.a n = A097064 n

end A097064

/-! ## A097064.P11673416831390733

`2^n+4*a(n-2)` with `a(0)=1, a(1)=0, a(2)=2`
-/

namespace A097064.P11673416831390733
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 2] fun n a =>
  2 ^ n + 4 * a (n - 2)

end

end A097064.P11673416831390733

namespace A097064

/-- `2^n+4*a(n-2)` -/
def P11673416831390733.Spec : Prop :=
  ∀ n, (P11673416831390733.a n : ℤ) = A097064 n

end A097064

/-! ## A097064.P6221525429167832962

`(n-1)*Δ[2*a(n-1)]` with `a(0)=2, a(1)=1`
-/

namespace A097064.P6221525429167832962
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 1] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A097064.P6221525429167832962

namespace A097064

/-- `(n-1)*Δ[2*a(n-1)]` -/
def P6221525429167832962.Spec : Prop :=
  ∀ n, P6221525429167832962.a n = A097064 n

end A097064

/-! ## A097064.P641284211963131853

`4*(a(n-1)-a(n-2))` with `a(0)=1, a(1)=0, a(2)=2`
-/

namespace A097064.P641284211963131853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 2] fun n a =>
  4 * (a (n - 1) - a (n - 2))

end

end A097064.P641284211963131853

namespace A097064

/-- `4*(a(n-1)-a(n-2))` -/
def P641284211963131853.Spec : Prop :=
  ∀ n, P641284211963131853.a n = A097064 n

end A097064

/-! ## A097064.P12433074652717387414

`lcm(n-1, floor((n-1)*2^(n-1)))`
-/

namespace A097064.P12433074652717387414
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((n : ℤ) - 1) ⌊((n : ℤ) - 1 : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

end

end A097064.P12433074652717387414

namespace A097064

/-- `lcm(n-1, floor((n-1)*2^(n-1)))` -/
def P12433074652717387414.Spec : Prop :=
  ∀ n, (P12433074652717387414.a n : ℤ) = A097064 n

end A097064

/-! ## A097064.P11729807275502886215

`(n-1)*(A127904(n)-1)`
-/

namespace A097064.P11729807275502886215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * (A127904 n - 1)

end

end A097064.P11729807275502886215

namespace A097064

/-- `(n-1)*(A127904(n)-1)` -/
def P11729807275502886215.Spec : Prop :=
  ∀ n, P11729807275502886215.a n = A097064 n

end A097064

/-! ## A097064.P16246558949151116075

`A057711(n)+a(n-1)` with `a(0)=1, a(1)=0`
-/

namespace A097064.P16246558949151116075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A057711 n + a (n - 1)

end

end A097064.P16246558949151116075

namespace A097064

/-- `A057711(n)+a(n-1)` -/
def P16246558949151116075.Spec : Prop :=
  ∀ n, P16246558949151116075.a n = A097064 n

end A097064

/-! ## A097064.P7976867222700177456

`ceil(abs(1-n)/2*A000079(n))`
-/

namespace A097064.P7976867222700177456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(|1 - (n : ℤ)| : ℚ) / 2 * (A000079 n : ℚ)⌉

end

end A097064.P7976867222700177456

namespace A097064

/-- `ceil(abs(1-n)/2*A000079(n))` -/
def P7976867222700177456.Spec : Prop :=
  ∀ n, P7976867222700177456.a n = A097064 n

end A097064

/-! ## A097064.P7893660338262751688

`∑[n*Δ[A000225(abs(2-n))]]+1`
-/

namespace A097064.P7893660338262751688
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 |2 - (n : ℤ)|.toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A097064.P7893660338262751688

namespace A097064

/-- `∑[n*Δ[A000225(abs(2-n))]]+1` -/
def P7893660338262751688.Spec : Prop :=
  ∀ n, P7893660338262751688.a n = A097064 n

end A097064

/-! ## A097064.P11813613322887636607

`A139756(n)+A097067(n)`
-/

namespace A097064.P11813613322887636607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139756 n + A097067 n

end

end A097064.P11813613322887636607

namespace A097064

/-- `A139756(n)+A097067(n)` -/
def P11813613322887636607.Spec : Prop :=
  ∀ n, P11813613322887636607.a n = A097064 n

end A097064

/-! ## A097064.P4475723886265034618

`A040000(n)*A097067(n)`
-/

namespace A097064.P4475723886265034618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040000 n * A097067 n

end

end A097064.P4475723886265034618

namespace A097064

/-- `A040000(n)*A097067(n)` -/
def P4475723886265034618.Spec : Prop :=
  ∀ n, P4475723886265034618.a n = A097064 n

end A097064

/-! ## A097064.P5330416160948759407

`A134311(n)-A076878(n+1)`
-/

namespace A097064.P5330416160948759407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134311 n - A076878 (n + 1)

end

end A097064.P5330416160948759407

namespace A097064

/-- `A134311(n)-A076878(n+1)` -/
def P5330416160948759407.Spec : Prop :=
  ∀ n, P5330416160948759407.a n = A097064 n

end A097064

/-! ## A097064.P9180543653713270841

`A129952(n+1)-A155559(n)`
-/

namespace A097064.P9180543653713270841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129952 (n + 1) - A155559 n

end

end A097064.P9180543653713270841

namespace A097064

/-- `A129952(n+1)-A155559(n)` -/
def P9180543653713270841.Spec : Prop :=
  ∀ n, P9180543653713270841.a n = A097064 n

end A097064

/-! ## A097064.P10290280197531666970

`A036453(n+1)*A097067(n)`
-/

namespace A097064.P10290280197531666970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (n + 1) * A097067 n

end

end A097064.P10290280197531666970

namespace A097064

/-- `A036453(n+1)*A097067(n)` -/
def P10290280197531666970.Spec : Prop :=
  ∀ n, P10290280197531666970.a n = A097064 n

end A097064

/-! ## A097064.P16243375060580588201

`A097067(n)*A104435(n+1)`
-/

namespace A097064.P16243375060580588201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097067 n * A104435 (n + 1)

end

end A097064.P16243375060580588201

namespace A097064

/-- `A097067(n)*A104435(n+1)` -/
def P16243375060580588201.Spec : Prop :=
  ∀ n, P16243375060580588201.a n = A097064 n

end A097064

/-! ## A097064.P6869750763836550022

`A034008(n)*A300576(n+1)`
-/

namespace A097064.P6869750763836550022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034008 n * A300576 (n + 1)

end

end A097064.P6869750763836550022

namespace A097064

/-- `A034008(n)*A300576(n+1)` -/
def P6869750763836550022.Spec : Prop :=
  ∀ n, P6869750763836550022.a n = A097064 n

end A097064

/-! ## A097064.P8319629919190231382

`A000007(n)+2*A139756(n)`
-/

namespace A097064.P8319629919190231382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + 2 * A139756 n

end

end A097064.P8319629919190231382

namespace A097064

/-- `A000007(n)+2*A139756(n)` -/
def P8319629919190231382.Spec : Prop :=
  ∀ n, P8319629919190231382.a n = A097064 n

end A097064

/-! ## A097064.P7933500962342628004

`(1-A057428(n))*A097067(n)`
-/

namespace A097064.P7933500962342628004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A057428 n) * A097067 n

end

end A097064.P7933500962342628004

namespace A097064

/-- `(1-A057428(n))*A097067(n)` -/
def P7933500962342628004.Spec : Prop :=
  ∀ n, P7933500962342628004.a n = A097064 n

end A097064

/-!
# A097065: Interleave n+1 and n-1.

The programs for A097065, the canonical program `A097065.P10835122678995950078` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097065 has offset 0).

The definition of A097065 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A097065.P10968068753274682524

`ogf((1-2x+2x^2)/(1-x-x^2+x^3))`
-/

namespace A097065.P10968068753274682524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, 2] [1, -1, -1, 1] n

end

end A097065.P10968068753274682524

namespace A097065

/-- `ogf((1-2x+2x^2)/(1-x-x^2+x^3))` -/
def P10968068753274682524.Spec : Prop :=
  ∀ n, P10968068753274682524.a n = A097065 n

end A097065

/-! ## A097065.P10835122678995950078

`n-2-a(n-3)` with `a(0)=1, a(1)=-1, a(2)=2`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A097065

/-- `n-2-a(n-3)` -/
def P10835122678995950078.Spec : Prop :=
  ∀ n, P10835122678995950078.a n = A097065 n

theorem P10835122678995950078.correct : P10835122678995950078.Spec := by
  intro n
  simp only [A097065]

end A097065

/-! ## A097065.P9789506022878925111

`floor((n+2)/2)-2*n%2`
-/

namespace A097065.P9789506022878925111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 2 : ℚ) / 2⌋ - ((2 * (n % 2) : ℕ) : ℤ)

end

end A097065.P9789506022878925111

namespace A097065

/-- `floor((n+2)/2)-2*n%2` -/
def P9789506022878925111.Spec : Prop :=
  ∀ n, P9789506022878925111.a n = A097065 n

end A097065

/-! ## A097065.P17469288353248776044

`(2*n-1)/4+5*(-1)^n/4`
-/

namespace A097065.P17469288353248776044
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * n : ℤ) - 1 : ℚ) / 4 + (5 * (-1) ^ n : ℚ) / 4

end

end A097065.P17469288353248776044

namespace A097065

/-- `(2*n-1)/4+5*(-1)^n/4` -/
def P17469288353248776044.Spec : Prop :=
  ∀ n, P17469288353248776044.a n = (A097065 n : ℚ)

theorem P17469288353248776044.correct : P17469288353248776044.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A097065, Nat.add_sub_cancel, A097065.P17469288353248776044.a, A097065.P10835122678995950078.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h3 := ih m (by omega)
      simp only [A097065, Nat.add_sub_cancel, A097065.P17469288353248776044.a, A097065.P10835122678995950078.a, SequenceMachineLib.memo_apply] at h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 3 = m by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h3 ⊢
      rw [← h3]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A097065

/-! ## A097065.P2121448765485534832

`floor(xor(1, n)-n/2)`
-/

namespace A097065.P2121448765485534832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.xor 1 n : ℚ) - (n : ℚ) / 2⌋

end

end A097065.P2121448765485534832

namespace A097065

/-- `floor(xor(1, n)-n/2)` -/
def P2121448765485534832.Spec : Prop :=
  ∀ n, P2121448765485534832.a n = A097065 n

end A097065

/-! ## A097065.P7030139602717350837

`xor(1, n)-ceil(n/2)`
-/

namespace A097065.P7030139602717350837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor 1 n : ℤ) - ⌈(n : ℚ) / 2⌉

end

end A097065.P7030139602717350837

namespace A097065

/-- `xor(1, n)-ceil(n/2)` -/
def P7030139602717350837.Spec : Prop :=
  ∀ n, P7030139602717350837.a n = A097065 n

end A097065

/-! ## A097065.P13296455226453657130

`a(n-2)+1` with `a(0)=1, a(1)=-1`
-/

namespace A097065.P13296455226453657130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -1] fun n a =>
  a (n - 2) + 1

end

end A097065.P13296455226453657130

namespace A097065

/-- `a(n-2)+1` -/
def P13296455226453657130.Spec : Prop :=
  ∀ n, P13296455226453657130.a n = A097065 n

end A097065

/-! ## A097065.P17283718526378809878

`n-a(n-1)-1` with `a(0)=1`
-/

namespace A097065.P17283718526378809878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) - a (n - 1) - 1

end

end A097065.P17283718526378809878

namespace A097065

/-- `n-a(n-1)-1` -/
def P17283718526378809878.Spec : Prop :=
  ∀ n, P17283718526378809878.a n = A097065 n

end A097065

/-! ## A097065.P17382370407447939404

`∑[∑[ogf((1-2x+2x^2)/(1+x))]]`
-/

namespace A097065.P17382370407447939404
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, 2] [1, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097065.P17382370407447939404

namespace A097065

/-- `∑[∑[ogf((1-2x+2x^2)/(1+x))]]` -/
def P17382370407447939404.Spec : Prop :=
  ∀ n, P17382370407447939404.a n = A097065 n

end A097065

/-! ## A097065.P4673054742806939634

`round(xor(1, n)-(n+1)/2)`
-/

namespace A097065.P4673054742806939634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.xor 1 n : ℚ) - (n + 1 : ℚ) / 2)

end

end A097065.P4673054742806939634

namespace A097065

/-- `round(xor(1, n)-(n+1)/2)` -/
def P4673054742806939634.Spec : Prop :=
  ∀ n, P4673054742806939634.a n = A097065 n

end A097065

/-! ## A097065.P11083536886108394502

`comp[3*n]-xor(1, n+1)`
-/

namespace A097065.P11083536886108394502
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (Nat.xor 1 (n + 1) : ℤ)

end

end A097065.P11083536886108394502

namespace A097065

/-- `comp[3*n]-xor(1, n+1)` -/
def P11083536886108394502.Spec : Prop :=
  ∀ n, P11083536886108394502.a n = A097065 n

end A097065

/-! ## A097065.P5959747933488338215

`floor(n/2)+(-1)^(n%2)`
-/

namespace A097065.P5959747933488338215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋ + (-1) ^ (n % 2)

end

end A097065.P5959747933488338215

namespace A097065

/-- `floor(n/2)+(-1)^(n%2)` -/
def P5959747933488338215.Spec : Prop :=
  ∀ n, P5959747933488338215.a n = A097065 n

end A097065

/-! ## A097065.P3155060956728708241

`ceil((n+1)/2-2*and(1, n))`
-/

namespace A097065.P3155060956728708241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℚ) / 2 - (2 * Nat.land 1 n : ℚ)⌉

end

end A097065.P3155060956728708241

namespace A097065

/-- `ceil((n+1)/2-2*and(1, n))` -/
def P3155060956728708241.Spec : Prop :=
  ∀ n, P3155060956728708241.a n = A097065 n

end A097065

/-! ## A097065.P10164059312097477094

`floor((n+2)/2-2*and(1, n))`
-/

namespace A097065.P10164059312097477094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 2 : ℚ) / 2 - (2 * Nat.land 1 n : ℚ)⌋

end

end A097065.P10164059312097477094

namespace A097065

/-- `floor((n+2)/2-2*and(1, n))` -/
def P10164059312097477094.Spec : Prop :=
  ∀ n, P10164059312097477094.a n = A097065 n

end A097065

/-! ## A097065.P2607383849266267454

`round((n+1)/2-2*and(1, n))`
-/

namespace A097065.P2607383849266267454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n + 1 : ℚ) / 2 - (2 * Nat.land 1 n : ℚ))

end

end A097065.P2607383849266267454

namespace A097065

/-- `round((n+1)/2-2*and(1, n))` -/
def P2607383849266267454.Spec : Prop :=
  ∀ n, P2607383849266267454.a n = A097065 n

end A097065

/-! ## A097065.P16963255722343886859

`∑[and(1, n+1)]-2*and(1, n)`
-/

namespace A097065.P16963255722343886859
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (2 * Nat.land 1 n : ℤ)

end

end A097065.P16963255722343886859

namespace A097065

/-- `∑[and(1, n+1)]-2*and(1, n)` -/
def P16963255722343886859.Spec : Prop :=
  ∀ n, P16963255722343886859.a n = A097065 n

end A097065

/-! ## A097065.P5489833911202073455

`∑[and(1, n-1)²]-and(2, 2*n)`
-/

namespace A097065.P5489833911202073455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 ((n : ℤ) - 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (Nat.land 2 (2 * n) : ℤ)

end

end A097065.P5489833911202073455

namespace A097065

/-- `∑[and(1, n-1)²]-and(2, 2*n)` -/
def P5489833911202073455.Spec : Prop :=
  ∀ n, P5489833911202073455.a n = A097065 n

end A097065

/-! ## A097065.P10173105233811489200

`(n+3-and(3, 2*n+1)!)/2`
-/

namespace A097065.P10173105233811489200
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 3 : ℤ) - (Nat.factorial (Nat.land 3 (2 * n + 1)) : ℤ) : ℚ) / 2

end

end A097065.P10173105233811489200

namespace A097065

/-- `(n+3-and(3, 2*n+1)!)/2` -/
def P10173105233811489200.Spec : Prop :=
  ∀ n, P10173105233811489200.a n = (A097065 n : ℚ)

end A097065

/-! ## A097065.P11558787732359272361

`∑[1-A049071(n)]`
-/

namespace A097065.P11558787732359272361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A049071 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097065.P11558787732359272361

namespace A097065

/-- `∑[1-A049071(n)]` -/
def P11558787732359272361.Spec : Prop :=
  ∀ n, P11558787732359272361.a n = A097065 n

end A097065

/-! ## A097065.P6753745367269668034

`Δ[A097066(abs(1-n))]`
-/

namespace A097065.P6753745367269668034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097066 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A097065.P6753745367269668034

namespace A097065

/-- `Δ[A097066(abs(1-n))]` -/
def P6753745367269668034.Spec : Prop :=
  ∀ n, P6753745367269668034.a n = A097065 n

end A097065

/-!
# A097066: Expansion of (1-2*x+2*x^2)/((1+x)*(1-x)^3).

The programs for A097066, the canonical program `A097066.P16362714472106549351` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097066 has offset 0).

The definition of A097066 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-2x+2x^2)/(1-2x+2x^3-x^4))` (program `A097066.P16362714472106549351`, by `A097066.P16362714472106549351.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A097066.P16362714472106549351

`ogf((1-2x+2x^2)/(1-2x+2x^3-x^4))`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A097066

/-- `ogf((1-2x+2x^2)/(1-2x+2x^3-x^4))` -/
def P16362714472106549351.Spec : Prop :=
  ∀ n, P16362714472106549351.a n = A097066 n

theorem P16362714472106549351.correct : P16362714472106549351.Spec := by
  intro n
  simp only [A097066]

end A097066

/-! ## A097066.P1852823589455042124

`ceil(((n+1)/2)²)-floor((n+1)/2)`
-/

namespace A097066.P1852823589455042124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n + 1 : ℚ) / 2) ^ 2⌉ - ⌊(n + 1 : ℚ) / 2⌋

end

end A097066.P1852823589455042124

namespace A097066

/-- `ceil(((n+1)/2)²)-floor((n+1)/2)` -/
def P1852823589455042124.Spec : Prop :=
  ∀ n, P1852823589455042124.a n = A097066 n

end A097066

/-! ## A097066.P10716390219300652624

`ceil(xor(1, n²)/4)`
-/

namespace A097066.P10716390219300652624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.xor 1 (n ^ 2) : ℚ) / 4⌉

end

end A097066.P10716390219300652624

namespace A097066

/-- `ceil(xor(1, n²)/4)` -/
def P10716390219300652624.Spec : Prop :=
  ∀ n, P10716390219300652624.a n = A097066 n

end A097066

/-! ## A097066.P2868103076273186035

`∑[floor(xor(1, n)-n/2)]`
-/

namespace A097066.P2868103076273186035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.xor 1 n : ℚ) - (n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097066.P2868103076273186035

namespace A097066

/-- `∑[floor(xor(1, n)-n/2)]` -/
def P2868103076273186035.Spec : Prop :=
  ∀ n, P2868103076273186035.a n = A097066 n

end A097066

/-! ## A097066.P15260846339680180828

`∑[xor(1, n)-ceil(n/2)]`
-/

namespace A097066.P15260846339680180828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor 1 n : ℤ) - ⌈(n : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097066.P15260846339680180828

namespace A097066

/-- `∑[xor(1, n)-ceil(n/2)]` -/
def P15260846339680180828.Spec : Prop :=
  ∀ n, P15260846339680180828.a n = A097066 n

end A097066

/-! ## A097066.P17394306868787575505

`∑[a(n-2)+1]` with `a(0)=1, a(1)=-1`
-/

namespace A097066.P17394306868787575505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, -1] fun n f1 =>
  f1 (n - 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097066.P17394306868787575505

namespace A097066

/-- `∑[a(n-2)+1]` -/
def P17394306868787575505.Spec : Prop :=
  ∀ n, P17394306868787575505.a n = A097066 n

end A097066

/-! ## A097066.P18275131626368712183

`n-1+a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A097066.P18275131626368712183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  (n : ℤ) - 1 + a (n - 2)

end

end A097066.P18275131626368712183

namespace A097066

/-- `n-1+a(n-2)` -/
def P18275131626368712183.Spec : Prop :=
  ∀ n, P18275131626368712183.a n = A097066 n

end A097066

/-! ## A097066.P11127485058364656729

`n-(1-a(n-2))` with `a(0)=1, a(1)=0`
-/

namespace A097066.P11127485058364656729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  (n : ℤ) - (1 - a (n - 2))

end

end A097066.P11127485058364656729

namespace A097066

/-- `n-(1-a(n-2))` -/
def P11127485058364656729.Spec : Prop :=
  ∀ n, P11127485058364656729.a n = A097066 n

end A097066

/-! ## A097066.P1493917983168283341

`round((∑[xor(1, n)]/(n+1))²)`
-/

namespace A097066.P1493917983168283341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (n + 1 : ℚ)) ^ 2)

end

end A097066.P1493917983168283341

namespace A097066

/-- `round((∑[xor(1, n)]/(n+1))²)` -/
def P1493917983168283341.Spec : Prop :=
  ∀ n, P1493917983168283341.a n = A097066 n

end A097066

/-! ## A097066.P17271078214903913506

`∑[∑[∑[ogf((1-2x+2x^2)/(1+x))]]]`
-/

namespace A097066.P17271078214903913506
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, 2] [1, 1] n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097066.P17271078214903913506

namespace A097066

/-- `∑[∑[∑[ogf((1-2x+2x^2)/(1+x))]]]` -/
def P17271078214903913506.Spec : Prop :=
  ∀ n, P17271078214903913506.a n = A097066 n

end A097066

/-! ## A097066.P16157497071213809349

`floor(and(1, n+1)+(n/2)²)`
-/

namespace A097066.P16157497071213809349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.land 1 (n + 1) : ℚ) + ((n : ℚ) / 2) ^ 2⌋

end

end A097066.P16157497071213809349

namespace A097066

/-- `floor(and(1, n+1)+(n/2)²)` -/
def P16157497071213809349.Spec : Prop :=
  ∀ n, P16157497071213809349.a n = A097066 n

end A097066

/-! ## A097066.P3808766387752573016

`∑[floor(n/2)]+and(1, n+1)`
-/

namespace A097066.P3808766387752573016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (Nat.land 1 (n + 1) : ℤ)

end

end A097066.P3808766387752573016

namespace A097066

/-- `∑[floor(n/2)]+and(1, n+1)` -/
def P3808766387752573016.Spec : Prop :=
  ∀ n, P3808766387752573016.a n = A097066 n

end A097066

/-! ## A097066.P7880837300580737552

`floor((gcd(2, n)+n*n/2)/2)`
-/

namespace A097066.P7880837300580737552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((Nat.gcd 2 n : ℚ) + (n : ℚ) * ((n : ℚ) / 2)) / 2⌋

end

end A097066.P7880837300580737552

namespace A097066

/-- `floor((gcd(2, n)+n*n/2)/2)` -/
def P7880837300580737552.Spec : Prop :=
  ∀ n, P7880837300580737552.a n = A097066 n

end A097066

/-! ## A097066.P11676414705414533078

`∑[A097065(n)]`
-/

namespace A097066.P11676414705414533078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097065 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097066.P11676414705414533078

namespace A097066

/-- `∑[A097065(n)]` -/
def P11676414705414533078.Spec : Prop :=
  ∀ n, P11676414705414533078.a n = A097066 n

end A097066

/-! ## A097066.P3105048355741930728

`∑[A084964(n)-1]`
-/

namespace A097066.P3105048355741930728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084964 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097066.P3105048355741930728

namespace A097066

/-- `∑[A084964(n)-1]` -/
def P3105048355741930728.Spec : Prop :=
  ∀ n, P3105048355741930728.a n = A097066 n

end A097066

/-! ## A097066.P16373604911915950127

`∑[A267182(n+1)-1]`
-/

namespace A097066.P16373604911915950127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267182 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097066.P16373604911915950127

namespace A097066

/-- `∑[A267182(n+1)-1]` -/
def P16373604911915950127.Spec : Prop :=
  ∀ n, P16373604911915950127.a n = A097066 n

end A097066

/-! ## A097066.P15733433323712056960

`∑[A166517(n)-(n+1)]`
-/

namespace A097066.P15733433323712056960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166517 n - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097066.P15733433323712056960

namespace A097066

/-- `∑[A166517(n)-(n+1)]` -/
def P15733433323712056960.Spec : Prop :=
  ∀ n, P15733433323712056960.a n = A097066 n

end A097066

/-! ## A097066.P4792143500543931577

`(A245581(n+1)-(n+1))/2`
-/

namespace A097066.P4792143500543931577
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A245581 (n + 1) - (n + 1 : ℤ) : ℚ) / 2

end

end A097066.P4792143500543931577

namespace A097066

/-- `(A245581(n+1)-(n+1))/2` -/
def P4792143500543931577.Spec : Prop :=
  ∀ n, P4792143500543931577.a n = (A097066 n : ℚ)

end A097066

/-! ## A097066.P7597808540445629178

`∑{#}[floor(n/2), floor(n/2)^(1-C(#+#, n))]`
-/

namespace A097066.P7597808540445629178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, (⌊(n : ℚ) / 2⌋ : ℚ) ^ (1 - (Nat.choose (k + k) n : ℤ) : ℤ)

end

end A097066.P7597808540445629178

namespace A097066

/-- `∑{#}[floor(n/2), floor(n/2)^(1-C(#+#, n))]` -/
def P7597808540445629178.Spec : Prop :=
  ∀ n, P7597808540445629178.a n = (A097066 n : ℚ)

end A097066

/-! ## A097066.P4026406114559849735

`A084964(n²)/2`
-/

namespace A097066.P4026406114559849735
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084964 (n ^ 2) : ℚ) / 2

end

end A097066.P4026406114559849735

namespace A097066

/-- `A084964(n²)/2` -/
def P4026406114559849735.Spec : Prop :=
  ∀ n, P4026406114559849735.a n = (A097066 n : ℚ)

end A097066

/-!
# A097067: Expansion of g.f. (1-4*x+5*x^2)/(1-2*x)^2.

The programs for A097067, the canonical program `A097067.P6070778361575195166` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097067 has offset 0).

The definition of A097067 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-4x+5x^2)/(1-4x+4x^2))` (program `A097067.P6070778361575195166`, by `A097067.P6070778361575195166.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A097067.P6070778361575195166

`ogf((1-4x+5x^2)/(1-4x+4x^2))`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A097067

/-- `ogf((1-4x+5x^2)/(1-4x+4x^2))` -/
def P6070778361575195166.Spec : Prop :=
  ∀ n, P6070778361575195166.a n = A097067 n

theorem P6070778361575195166.correct : P6070778361575195166.Spec := by
  intro n
  simp only [A097067]

end A097067

/-! ## A097067.P17173510728612276543

`4*a(n-1)-4*a(n-2)` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A097067.P17173510728612276543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1] fun n a =>
  4 * a (n - 1) - 4 * a (n - 2)

end

end A097067.P17173510728612276543

namespace A097067

/-- `4*a(n-1)-4*a(n-2)` -/
def P17173510728612276543.Spec : Prop :=
  ∀ n, P17173510728612276543.a n = A097067 n

end A097067

/-! ## A097067.P8808631351100063419

`abs(floor((n-1)*2^(n-2)))`
-/

namespace A097067.P8808631351100063419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |⌊((n : ℤ) - 1 : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ)⌋|

end

end A097067.P8808631351100063419

namespace A097067

/-- `abs(floor((n-1)*2^(n-2)))` -/
def P8808631351100063419.Spec : Prop :=
  ∀ n, P8808631351100063419.a n = A097067 n

end A097067

/-! ## A097067.P5703396927349876620

`2*a(n-1)+2^(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A097067.P5703396927349876620
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 0] fun n a =>
  2 * a (n - 1) + (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ)

end

end A097067.P5703396927349876620

namespace A097067

/-- `2*a(n-1)+2^(n-2)` -/
def P5703396927349876620.Spec : Prop :=
  ∀ n, P5703396927349876620.a n = (A097067 n : ℚ)

end A097067

/-! ## A097067.P6099803027806903656

`4*(a(n-1)-a(n-2))` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A097067.P6099803027806903656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1] fun n a =>
  4 * (a (n - 1) - a (n - 2))

end

end A097067.P6099803027806903656

namespace A097067

/-- `4*(a(n-1)-a(n-2))` -/
def P6099803027806903656.Spec : Prop :=
  ∀ n, P6099803027806903656.a n = A097067 n

end A097067

/-! ## A097067.P12681212123801470091

`lcm(n-1, floor((n-1)*2^(n-2)))`
-/

namespace A097067.P12681212123801470091
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((n : ℤ) - 1) ⌊((n : ℤ) - 1 : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ)⌋

end

end A097067.P12681212123801470091

namespace A097067

/-- `lcm(n-1, floor((n-1)*2^(n-2)))` -/
def P12681212123801470091.Spec : Prop :=
  ∀ n, (P12681212123801470091.a n : ℤ) = A097067 n

end A097067

/-! ## A097067.P11616644348983440551

`a(n-1)+a(n-1)/(1-2/n)` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A097067.P11616644348983440551
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 0, 1] fun n a =>
  a (n - 1) + a (n - 1) / (1 - 2 / (n : ℚ))

end

end A097067.P11616644348983440551

namespace A097067

/-- `a(n-1)+a(n-1)/(1-2/n)` -/
def P11616644348983440551.Spec : Prop :=
  ∀ n, P11616644348983440551.a n = (A097067 n : ℚ)

end A097067

/-! ## A097067.P5425980331527123378

`A001787(abs(1-n))`
-/

namespace A097067.P5425980331527123378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001787 |1 - (n : ℤ)|.toNat

end

end A097067.P5425980331527123378

namespace A097067

/-- `A001787(abs(1-n))` -/
def P5425980331527123378.Spec : Prop :=
  ∀ n, P5425980331527123378.a n = A097067 n

end A097067

/-! ## A097067.P15456903992268917501

`A139756(abs(1-n)+1)`
-/

namespace A097067.P15456903992268917501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139756 (|1 - (n : ℤ)| + 1).toNat

end

end A097067.P15456903992268917501

namespace A097067

/-- `A139756(abs(1-n)+1)` -/
def P15456903992268917501.Spec : Prop :=
  ∀ n, P15456903992268917501.a n = A097067 n

end A097067

/-! ## A097067.P14886604897512727933

`(n-1)*Δ[A034008(n)]`
-/

namespace A097067.P14886604897512727933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034008 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * (f1 (n + 1) - f1 n)

end

end A097067.P14886604897512727933

namespace A097067

/-- `(n-1)*Δ[A034008(n)]` -/
def P14886604897512727933.Spec : Prop :=
  ∀ n, P14886604897512727933.a n = A097067 n

end A097067

/-! ## A097067.P3424353691656168428

`A049610(n)+a(n-1)` with `a(0)=1, a(1)=0`
-/

namespace A097067.P3424353691656168428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A049610 n + a (n - 1)

end

end A097067.P3424353691656168428

namespace A097067

/-- `A049610(n)+a(n-1)` -/
def P3424353691656168428.Spec : Prop :=
  ∀ n, P3424353691656168428.a n = A097067 n

end A097067

/-! ## A097067.P7950313333279031116

`abs(1-n)*A011782(abs(1-n))`
-/

namespace A097067.P7950313333279031116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)| * A011782 |1 - (n : ℤ)|.toNat

end

end A097067.P7950313333279031116

namespace A097067

/-- `abs(1-n)*A011782(abs(1-n))` -/
def P7950313333279031116.Spec : Prop :=
  ∀ n, P7950313333279031116.a n = A097067 n

end A097067

/-! ## A097067.P1590110720121477989

`A139756(n)+A000007(n)`
-/

namespace A097067.P1590110720121477989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139756 n + A000007 n

end

end A097067.P1590110720121477989

namespace A097067

/-- `A139756(n)+A000007(n)` -/
def P1590110720121477989.Spec : Prop :=
  ∀ n, P1590110720121477989.a n = A097067 n

end A097067

/-! ## A097067.P11382430823720574103

`A045623(n)-A155559(n)`
-/

namespace A097067.P11382430823720574103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045623 n - A155559 n

end

end A097067.P11382430823720574103

namespace A097067

/-- `A045623(n)-A155559(n)` -/
def P11382430823720574103.Spec : Prop :=
  ∀ n, P11382430823720574103.a n = A097067 n

end A097067

/-! ## A097067.P13702946041470516579

`A129952(n)-A166444(n)`
-/

namespace A097067.P13702946041470516579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129952 n - A166444 n

end

end A097067.P13702946041470516579

namespace A097067

/-- `A129952(n)-A166444(n)` -/
def P13702946041470516579.Spec : Prop :=
  ∀ n, P13702946041470516579.a n = A097067 n

end A097067

/-! ## A097067.P8292891342790654485

`A139756(n)+A063524(n+1)`
-/

namespace A097067.P8292891342790654485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139756 n + A063524 (n + 1)

end

end A097067.P8292891342790654485

namespace A097067

/-- `A139756(n)+A063524(n+1)` -/
def P8292891342790654485.Spec : Prop :=
  ∀ n, P8292891342790654485.a n = A097067 n

end A097067

/-! ## A097067.P12862061436832373860

`A054977(n)+A139756(n)-1`
-/

namespace A097067.P12862061436832373860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n + (A139756 n - 1)

end

end A097067.P12862061436832373860

namespace A097067

/-- `A054977(n)+A139756(n)-1` -/
def P12862061436832373860.Spec : Prop :=
  ∀ n, P12862061436832373860.a n = A097067 n

end A097067

/-! ## A097067.P4345020548489255457

`A154222(n)-A087156(n+1)`
-/

namespace A097067.P4345020548489255457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154222 n - A087156 (n + 1)

end

end A097067.P4345020548489255457

namespace A097067

/-- `A154222(n)-A087156(n+1)` -/
def P4345020548489255457.Spec : Prop :=
  ∀ n, P4345020548489255457.a n = A097067 n

end A097067

/-! ## A097067.P7134538632425097012

`A129955(n)-A125176(n+1)`
-/

namespace A097067.P7134538632425097012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129955 n - A125176 (n + 1)

end

end A097067.P7134538632425097012

namespace A097067

/-- `A129955(n)-A125176(n+1)` -/
def P7134538632425097012.Spec : Prop :=
  ∀ n, P7134538632425097012.a n = A097067 n

end A097067

/-! ## A097067.P16920971828766390857

`A045623(n)-2*A131577(n)`
-/

namespace A097067.P16920971828766390857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045623 n - 2 * A131577 n

end

end A097067.P16920971828766390857

namespace A097067

/-- `A045623(n)-2*A131577(n)` -/
def P16920971828766390857.Spec : Prop :=
  ∀ n, P16920971828766390857.a n = A097067 n

end A097067

/-!
# A097068: a(n)=Sum(C(n,2k+1)5^k 3^(2k+1) 7^(n-2k-1), k=0,..,Floor[(n-1)/2]).

The programs for A097068, the canonical program `A097068.P17964706122974975247` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097068 has offset 0).

The definition of A097068 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A097068.P1664132762849401838

`ogf(3x/(1-14x+4x^2))`
-/

namespace A097068.P1664132762849401838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 3] [1, -14, 4] n

end

end A097068.P1664132762849401838

namespace A097068

/-- `ogf(3x/(1-14x+4x^2))` -/
def P1664132762849401838.Spec : Prop :=
  ∀ n, P1664132762849401838.a n = A097068 n

end A097068

/-! ## A097068.P17964706122974975247

`14*a(n-1)-4*a(n-2)` with `a(0)=0, a(1)=3`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A097068

/-- `14*a(n-1)-4*a(n-2)` -/
def P17964706122974975247.Spec : Prop :=
  ∀ n, P17964706122974975247.a n = A097068 n

theorem P17964706122974975247.correct : P17964706122974975247.Spec := by
  intro n
  simp only [A097068]

end A097068

/-! ## A097068.P17000480978960362942

`2^(n-1)*A000045(4*n)`
-/

namespace A097068.P17000480978960362942
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A000045 (4 * n) : ℚ)

end

end A097068.P17000480978960362942

namespace A097068

/-- `2^(n-1)*A000045(4*n)` -/
def P17000480978960362942.Spec : Prop :=
  ∀ n, P17000480978960362942.a n = (A097068 n : ℚ)

end A097068

/-! ## A097068.P18144467520507901438

`2^(n-1)*A033888(n)`
-/

namespace A097068.P18144467520507901438
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A033888 n : ℚ)

end

end A097068.P18144467520507901438

namespace A097068

/-- `2^(n-1)*A033888(n)` -/
def P18144467520507901438.Spec : Prop :=
  ∀ n, P18144467520507901438.a n = (A097068 n : ℚ)

end A097068

/-! ## A097068.P6382306838110937198

`2^(n-1)*A001906(2*n)`
-/

namespace A097068.P6382306838110937198
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A001906 (2 * n) : ℚ)

end

end A097068.P6382306838110937198

namespace A097068

/-- `2^(n-1)*A001906(2*n)` -/
def P6382306838110937198.Spec : Prop :=
  ∀ n, P6382306838110937198.a n = (A097068 n : ℚ)

end A097068

/-! ## A097068.P493253699408026452

`(A001611(4*n)-1)*2^(n-1)`
-/

namespace A097068.P493253699408026452
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001611 (4 * n) - 1 : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A097068.P493253699408026452

namespace A097068

/-- `(A001611(4*n)-1)*2^(n-1)` -/
def P493253699408026452.Spec : Prop :=
  ∀ n, P493253699408026452.a n = (A097068 n : ℚ)

end A097068

/-! ## A097068.P15668738168681792837

`A001906(2*n)*A011782(n)`
-/

namespace A097068.P15668738168681792837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001906 (2 * n) * A011782 n

end

end A097068.P15668738168681792837

namespace A097068

/-- `A001906(2*n)*A011782(n)` -/
def P15668738168681792837.Spec : Prop :=
  ∀ n, P15668738168681792837.a n = A097068 n

end A097068

/-! ## A097068.P347939279327959005

`A005247(2*n)*A084326(n)`
-/

namespace A097068.P347939279327959005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005247 (2 * n) * A084326 n

end

end A097068.P347939279327959005

namespace A097068

/-- `A005247(2*n)*A084326(n)` -/
def P347939279327959005.Spec : Prop :=
  ∀ n, P347939279327959005.a n = A097068 n

end A097068

/-! ## A097068.P8574324657262035723

`A000045(2*n)*A098648(n)`
-/

namespace A097068.P8574324657262035723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * n) * A098648 n

end

end A097068.P8574324657262035723

namespace A097068

/-- `A000045(2*n)*A098648(n)` -/
def P8574324657262035723.Spec : Prop :=
  ∀ n, P8574324657262035723.a n = A097068 n

end A097068

/-! ## A097068.P14466400487620120538

`A001906(2*n)*A131577(n)`
-/

namespace A097068.P14466400487620120538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001906 (2 * n) * A131577 n

end

end A097068.P14466400487620120538

namespace A097068

/-- `A001906(2*n)*A131577(n)` -/
def P14466400487620120538.Spec : Prop :=
  ∀ n, P14466400487620120538.a n = A097068 n

end A097068

/-!
# A097069: Positive integers n such that 2n - 9 is prime.

The programs for A097069, the canonical program `A097069.P13149469491889578596` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097069 has offset 1).

The definition of A097069 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A097069.P3975634568651565767

`(p?[2*n+1]+9)/2`
-/

namespace A097069.P3975634568651565767
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) + 9 : ℚ) / 2

end

end A097069.P3975634568651565767

namespace A097069

/-- `(p?[2*n+1]+9)/2` -/
def P3975634568651565767.Spec : Prop :=
  ∀ n, P3975634568651565767.a n = (A097069 (n + 1) : ℚ)

end A097069

/-! ## A097069.P13149469491889578596

`A089192(1+n)+1`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A097069

/-- `A089192(1+n)+1` -/
def P13149469491889578596.Spec : Prop :=
  ∀ n, P13149469491889578596.a n = A097069 (n + 1)

theorem P13149469491889578596.correct : P13149469491889578596.Spec := by
  intro n
  simp only [A097069, Nat.add_sub_cancel]

end A097069

/-! ## A097069.P9220895547532144717

`A089253(n+1)+2`
-/

namespace A097069.P9220895547532144717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089253 (n + 1) + 2

end

end A097069.P9220895547532144717

namespace A097069

/-- `A089253(n+1)+2` -/
def P9220895547532144717.Spec : Prop :=
  ∀ n, P9220895547532144717.a n = A097069 (n + 1)

end A097069

/-! ## A097069.P2442677211153208542

`A097338(n+1)-1`
-/

namespace A097069.P2442677211153208542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097338 (n + 1) - 1

end

end A097069.P2442677211153208542

namespace A097069

/-- `A097338(n+1)-1` -/
def P2442677211153208542.Spec : Prop :=
  ∀ n, P2442677211153208542.a n = A097069 (n + 1)

end A097069

/-! ## A097069.P5715018944272426411

`A097363(n+1)-2`
-/

namespace A097069.P5715018944272426411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097363 (n + 1) - 2

end

end A097069.P5715018944272426411

namespace A097069

/-- `A097363(n+1)-2` -/
def P5715018944272426411.Spec : Prop :=
  ∀ n, P5715018944272426411.a n = A097069 (n + 1)

end A097069

/-! ## A097069.P15045022997841235012

`A098090(n+1)+3`
-/

namespace A097069.P15045022997841235012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098090 (n + 1) + 3

end

end A097069.P15045022997841235012

namespace A097069

/-- `A098090(n+1)+3` -/
def P15045022997841235012.Spec : Prop :=
  ∀ n, P15045022997841235012.a n = A097069 (n + 1)

end A097069

/-! ## A097069.P3745895257481220365

`A006254(n+1)+4`
-/

namespace A097069.P3745895257481220365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006254 (n + 1) + 4

end

end A097069.P3745895257481220365

namespace A097069

/-- `A006254(n+1)+4` -/
def P3745895257481220365.Spec : Prop :=
  ∀ n, P3745895257481220365.a n = A097069 (n + 1)

end A097069

/-! ## A097069.P13181298464834549070

`A097480(n+1)-3`
-/

namespace A097069.P13181298464834549070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097480 (n + 1) - 3

end

end A097069.P13181298464834549070

namespace A097069

/-- `A097480(n+1)-3` -/
def P13181298464834549070.Spec : Prop :=
  ∀ n, P13181298464834549070.a n = A097069 (n + 1)

end A097069

/-! ## A097069.P11885529030902078221

`A005097(n+1)+5`
-/

namespace A097069.P11885529030902078221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (n + 1) + 5

end

end A097069.P11885529030902078221

namespace A097069

/-- `A005097(n+1)+5` -/
def P11885529030902078221.Spec : Prop :=
  ∀ n, P11885529030902078221.a n = A097069 (n + 1)

end A097069

/-! ## A097069.P505295111378005909

`A098605(n+1)-4`
-/

namespace A097069.P505295111378005909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098605 (n + 1) - 4

end

end A097069.P505295111378005909

namespace A097069

/-- `A098605(n+1)-4` -/
def P505295111378005909.Spec : Prop :=
  ∀ n, P505295111378005909.a n = A097069 (n + 1)

end A097069

/-! ## A097069.P6411249899275598629

`A067076(n+1)+6`
-/

namespace A097069.P6411249899275598629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067076 (n + 1) + 6

end

end A097069.P6411249899275598629

namespace A097069

/-- `A067076(n+1)+6` -/
def P6411249899275598629.Spec : Prop :=
  ∀ n, P6411249899275598629.a n = A097069 (n + 1)

end A097069

/-! ## A097069.P6751593453797373161

`A097932(n+1)-5`
-/

namespace A097069.P6751593453797373161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097932 (n + 1) - 5

end

end A097069.P6751593453797373161

namespace A097069

/-- `A097932(n+1)-5` -/
def P6751593453797373161.Spec : Prop :=
  ∀ n, P6751593453797373161.a n = A097069 (n + 1)

end A097069

/-! ## A097069.P1532040312941489991

`A177018(n+1)+n+3`
-/

namespace A097069.P1532040312941489991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177018 (n + 1) + (n + 3 : ℤ)

end

end A097069.P1532040312941489991

namespace A097069

/-- `A177018(n+1)+n+3` -/
def P1532040312941489991.Spec : Prop :=
  ∀ n, P1532040312941489991.a n = A097069 (n + 1)

end A097069

/-! ## A097069.P7784534899453539529

`A163057(n+1)+4-n`
-/

namespace A097069.P7784534899453539529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163057 (n + 1) + (4 - (n : ℤ))

end

end A097069.P7784534899453539529

namespace A097069

/-- `A163057(n+1)+4-n` -/
def P7784534899453539529.Spec : Prop :=
  ∀ n, P7784534899453539529.a n = A097069 (n + 1)

end A097069

/-! ## A097069.P17148120431706070974

`A008507(n+1)+n+6`
-/

namespace A097069.P17148120431706070974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008507 (n + 1) + (n + 6 : ℤ)

end

end A097069.P17148120431706070974

namespace A097069

/-- `A008507(n+1)+n+6` -/
def P17148120431706070974.Spec : Prop :=
  ∀ n, P17148120431706070974.a n = A097069 (n + 1)

end A097069

/-! ## A097069.P16811864446441435756

`A175540(n+1)+5-n`
-/

namespace A097069.P16811864446441435756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175540 (n + 1) + (5 - (n : ℤ))

end

end A097069.P16811864446441435756

namespace A097069

/-- `A175540(n+1)+5-n` -/
def P16811864446441435756.Spec : Prop :=
  ∀ n, P16811864446441435756.a n = A097069 (n + 1)

end A097069

/-! ## A097069.P8697474874074136987

`A024675(n)+9-a(n-1)` with `a(0)=6`
-/

namespace A097069.P8697474874074136987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6] fun n a =>
  A024675 n + (9 - a (n - 1))

end

end A097069.P8697474874074136987

namespace A097069

/-- `A024675(n)+9-a(n-1)` -/
def P8697474874074136987.Spec : Prop :=
  ∀ n, P8697474874074136987.a n = A097069 (n + 1)

end A097069

/-! ## A097069.P18272173996208513415

`A020715(n)+A008507(n+1)`
-/

namespace A097069.P18272173996208513415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020715 n + A008507 (n + 1)

end

end A097069.P18272173996208513415

namespace A097069

/-- `A020715(n)+A008507(n+1)` -/
def P18272173996208513415.Spec : Prop :=
  ∀ n, P18272173996208513415.a n = A097069 (n + 1)

end A097069

/-! ## A097069.P7784037597260416331

`Δ[A005521(n)]+5`
-/

namespace A097069.P7784037597260416331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005521 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 5

end

end A097069.P7784037597260416331

namespace A097069

/-- `Δ[A005521(n)]+5` -/
def P7784037597260416331.Spec : Prop :=
  ∀ n, P7784037597260416331.a n = A097069 (n + 1)

end A097069

/-! ## A097069.P15561438881717376223

`A124678(n+2)+2`
-/

namespace A097069.P15561438881717376223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124678 (n + 2) + 2

end

end A097069.P15561438881717376223

namespace A097069

/-- `A124678(n+2)+2` -/
def P15561438881717376223.Spec : Prop :=
  ∀ n, P15561438881717376223.a n = A097069 (n + 1)

end A097069

/-!
# A097070: Consider all compositions (ordered partitions) of n into n parts, allowing zeros. E.g., for n = 3 we get 300, 030, 003, 210, 120, 201, 102, 021, 012, 111. Then a(n) is the total number of 1's.

The programs for A097070, the canonical program `A097070.P7474886704666409265` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097070 has offset 1).

The definition of A097070 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002740, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A097070.P17584911755010456394

`(n+1)*A088218(n)`
-/

namespace A097070.P17584911755010456394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A088218 n

end

end A097070.P17584911755010456394

namespace A097070

/-- `(n+1)*A088218(n)` -/
def P17584911755010456394.Spec : Prop :=
  ∀ n, P17584911755010456394.a n = A097070 (n + 1)

end A097070

/-! ## A097070.P7474886704666409265

`A002740(n+1)+A097613(n+1)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A097070

/-- `A002740(n+1)+A097613(n+1)` -/
def P7474886704666409265.Spec : Prop :=
  ∀ n, P7474886704666409265.a n = A097070 (n + 1)

theorem P7474886704666409265.correct : P7474886704666409265.Spec := by
  intro n
  simp only [A097070, Nat.add_sub_cancel]

end A097070

/-! ## A097070.P8881660019585317395

`abs((n+1)*A110556(n))`
-/

namespace A097070.P8881660019585317395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n + 1 : ℤ) * A110556 n|

end

end A097070.P8881660019585317395

namespace A097070

/-- `abs((n+1)*A110556(n))` -/
def P8881660019585317395.Spec : Prop :=
  ∀ n, P8881660019585317395.a n = A097070 (n + 1)

end A097070

/-! ## A097070.P10985676525260391429

`(n+1)*(A260878(n)-1)`
-/

namespace A097070.P10985676525260391429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A260878 n - 1)

end

end A097070.P10985676525260391429

namespace A097070

/-- `(n+1)*(A260878(n)-1)` -/
def P10985676525260391429.Spec : Prop :=
  ∀ n, P10985676525260391429.a n = A097070 (n + 1)

end A097070

/-! ## A097070.P12952903687557750854

`(n+1)*A210736(2*n)`
-/

namespace A097070.P12952903687557750854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A210736 (2 * n)

end

end A097070.P12952903687557750854

namespace A097070

/-- `(n+1)*A210736(2*n)` -/
def P12952903687557750854.Spec : Prop :=
  ∀ n, P12952903687557750854.a n = A097070 (n + 1)

end A097070

/-! ## A097070.P9027904159156128870

`(n+1)*A275324(2*n)`
-/

namespace A097070.P9027904159156128870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A275324 (2 * n)

end

end A097070.P9027904159156128870

namespace A097070

/-- `(n+1)*A275324(2*n)` -/
def P9027904159156128870.Spec : Prop :=
  ∀ n, P9027904159156128870.a n = A097070 (n + 1)

end A097070

/-! ## A097070.P10444066652637667966

`ceil((n+1)*A028329(n)/4)`
-/

namespace A097070.P10444066652637667966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℚ) * ((A028329 n : ℚ) / 4)⌉

end

end A097070.P10444066652637667966

namespace A097070

/-- `ceil((n+1)*A028329(n)/4)` -/
def P10444066652637667966.Spec : Prop :=
  ∀ n, P10444066652637667966.a n = A097070 (n + 1)

end A097070

/-! ## A097070.P17550601044760958402

`(n+1)*(A052473(n+2)-2)`
-/

namespace A097070.P17550601044760958402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A052473 (n + 2) - 2)

end

end A097070.P17550601044760958402

namespace A097070

/-- `(n+1)*(A052473(n+2)-2)` -/
def P17550601044760958402.Spec : Prop :=
  ∀ n, P17550601044760958402.a n = A097070 (n + 1)

end A097070

/-! ## A097070.P15016112200602491885

`ceil((n+1)²/2*A000108(n))`
-/

namespace A097070.P15016112200602491885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n + 1) ^ 2 : ℚ) / 2 * (A000108 n : ℚ)⌉

end

end A097070.P15016112200602491885

namespace A097070

/-- `ceil((n+1)²/2*A000108(n))` -/
def P15016112200602491885.Spec : Prop :=
  ∀ n, P15016112200602491885.a n = A097070 (n + 1)

end A097070

/-! ## A097070.P2983535526520121143

`A189911(A004273(n))`
-/

namespace A097070.P2983535526520121143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189911 (A004273 n).toNat

end

end A097070.P2983535526520121143

namespace A097070

/-- `A189911(A004273(n))` -/
def P2983535526520121143.Spec : Prop :=
  ∀ n, P2983535526520121143.a n = A097070 (n + 1)

end A097070

/-! ## A097070.P1215913557471910485

`A189911(record[A026741(n)])`
-/

namespace A097070.P1215913557471910485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189911 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A097070.P1215913557471910485

namespace A097070

/-- `A189911(record[A026741(n)])` -/
def P1215913557471910485.Spec : Prop :=
  ∀ n, P1215913557471910485.a n = A097070 (n + 1)

end A097070

/-! ## A097070.P10285676115030404280

`A189911(eq[0, A142150(n)])`
-/

namespace A097070.P10285676115030404280
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189911 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A097070.P10285676115030404280

namespace A097070

/-- `A189911(eq[0, A142150(n)])` -/
def P10285676115030404280.Spec : Prop :=
  ∀ n, P10285676115030404280.a n = A097070 (n + 1)

end A097070

/-! ## A097070.P1899117729190599037

`A139262(n)+A081294(n)`
-/

namespace A097070.P1899117729190599037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139262 n + A081294 n

end

end A097070.P1899117729190599037

namespace A097070

/-- `A139262(n)+A081294(n)` -/
def P1899117729190599037.Spec : Prop :=
  ∀ n, P1899117729190599037.a n = A097070 (n + 1)

theorem P1899117729190599037.correct : P1899117729190599037.Spec := by
  intro n
  simp only [A097070, Nat.add_sub_cancel, A097070.P1899117729190599037.a, A097070.P7474886704666409265.a, A002740, A002740.P348049862178716560.a, A081294, A081294.P14054507065107062197.a, A097613, A097613.P17801274350353294577.a, A139262, A139262.P8524009422663711179.a, A005408, A005408.P17437947328870227736.a, A051924, A051924.P18005250198217998116.a, A133263, A133263.P2239587293626440969.a, A246432, A246432.P7367098291756528111.a, A120588, A120588.P13914353350146187734.a, A260196, A260196.P12598155231434087214.a, A115140, A115140.P12775726939612743797.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A097070

/-! ## A097070.P3369812226459772149

`A189911(floor(sqrt(A002939(n))))`
-/

namespace A097070.P3369812226459772149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189911 (Int.sqrt (A002939 n)).toNat

end

end A097070.P3369812226459772149

namespace A097070

/-- `A189911(floor(sqrt(A002939(n))))` -/
def P3369812226459772149.Spec : Prop :=
  ∀ n, P3369812226459772149.a n = A097070 (n + 1)

end A097070

/-! ## A097070.P13463842037067486833

`A189911(eq[n, A022998(n)])`
-/

namespace A097070.P13463842037067486833
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022998 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189911 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A097070.P13463842037067486833

namespace A097070

/-- `A189911(eq[n, A022998(n)])` -/
def P13463842037067486833.Spec : Prop :=
  ∀ n, P13463842037067486833.a n = A097070 (n + 1)

end A097070

/-! ## A097070.P7749687381803523162

`A189911(eq[n, A026741(n)])`
-/

namespace A097070.P7749687381803523162
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189911 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A097070.P7749687381803523162

namespace A097070

/-- `A189911(eq[n, A026741(n)])` -/
def P7749687381803523162.Spec : Prop :=
  ∀ n, P7749687381803523162.a n = A097070 (n + 1)

end A097070

/-! ## A097070.P10488919078577701377

`A191522(2*n)+A000984(n)`
-/

namespace A097070.P10488919078577701377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191522 (2 * n) + A000984 n

end

end A097070.P10488919078577701377

namespace A097070

/-- `A191522(2*n)+A000984(n)` -/
def P10488919078577701377.Spec : Prop :=
  ∀ n, P10488919078577701377.a n = A097070 (n + 1)

end A097070

/-! ## A097070.P2527880236076489133

`A088218(n)*A097065(2*n)`
-/

namespace A097070.P2527880236076489133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088218 n * A097065 (2 * n)

end

end A097070.P2527880236076489133

namespace A097070

/-- `A088218(n)*A097065(2*n)` -/
def P2527880236076489133.Spec : Prop :=
  ∀ n, P2527880236076489133.a n = A097070 (n + 1)

end A097070

/-! ## A097070.P4372532074340132900

`record[A008619(n+1)*A057977(n)]`
-/

namespace A097070.P4372532074340132900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (n + 1) * A057977 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A097070.P4372532074340132900

namespace A097070

/-- `record[A008619(n+1)*A057977(n)]` -/
def P4372532074340132900.Spec : Prop :=
  ∀ n, P4372532074340132900.a n = A097070 (n + 1)

end A097070

/-! ## A097070.P904246230676073630

`(n+1)*A001405(A004277(n)-1)`
-/

namespace A097070.P904246230676073630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A001405 (A004277 n - 1).toNat

end

end A097070.P904246230676073630

namespace A097070

/-- `(n+1)*A001405(A004277(n)-1)` -/
def P904246230676073630.Spec : Prop :=
  ∀ n, P904246230676073630.a n = A097070 (n + 1)

end A097070

/-! ## A097070.P15419949171542503550

`(n+1)*C(abs(2*n-1), n)`
-/

namespace A097070.P15419949171542503550
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * Nat.choose |(2 * n : ℤ) - 1|.toNat n

end

end A097070.P15419949171542503550

namespace A097070

/-- `(n+1)*C(abs(2*n-1), n)` -/
def P15419949171542503550.Spec : Prop :=
  ∀ n, (P15419949171542503550.a n : ℤ) = A097070 (n + 1)

end A097070

/-!
# A097072: Expansion of (1 - 2*x + 2*x^2)/((1 - x^2)*(1 - 2*x)).

The programs for A097072, the canonical program `A097072.P11471341785754716660` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097072 has offset 0).

The definition of A097072 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-2x+2x^2)/(1-2x-x^2+2x^3))` (program `A097072.P11471341785754716660`, by `A097072.P11471341785754716660.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A097072.P11471341785754716660

`ogf((1-2x+2x^2)/(1-2x-x^2+2x^3))`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A097072

/-- `ogf((1-2x+2x^2)/(1-2x-x^2+2x^3))` -/
def P11471341785754716660.Spec : Prop :=
  ∀ n, P11471341785754716660.a n = A097072 n

theorem P11471341785754716660.correct : P11471341785754716660.Spec := by
  intro n
  simp only [A097072]

end A097072

/-! ## A097072.P10489818459955790423

`a(n-1)+2*a(n-2)+1` with `a(0)=1, a(1)=0`
-/

namespace A097072.P10489818459955790423
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n a =>
  a (n - 1) + 2 * a (n - 2) + 1

end

end A097072.P10489818459955790423

namespace A097072

/-- `a(n-1)+2*a(n-2)+1` -/
def P10489818459955790423.Spec : Prop :=
  ∀ n, (P10489818459955790423.a n : ℤ) = A097072 n

end A097072

/-! ## A097072.P7279036212681921189

`A000975(n)+(-1)^n`
-/

namespace A097072.P7279036212681921189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000975 n + (-1) ^ n

end

end A097072.P7279036212681921189

namespace A097072

/-- `A000975(n)+(-1)^n` -/
def P7279036212681921189.Spec : Prop :=
  ∀ n, P7279036212681921189.a n = A097072 n

end A097072

/-! ## A097072.P11707501495860328616

`A001045(n+1)-A000035(n)`
-/

namespace A097072.P11707501495860328616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (n + 1) - A000035 n

end

end A097072.P11707501495860328616

namespace A097072

/-- `A001045(n+1)-A000035(n)` -/
def P11707501495860328616.Spec : Prop :=
  ∀ n, P11707501495860328616.a n = A097072 n

end A097072

/-! ## A097072.P9802506320894167307

`ceil(2*(2^n-1)/3)+(-1)^n`
-/

namespace A097072.P9802506320894167307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 * ((2 ^ n : ℤ) - 1) : ℚ) / 3⌉ + (-1) ^ n

end

end A097072.P9802506320894167307

namespace A097072

/-- `ceil(2*(2^n-1)/3)+(-1)^n` -/
def P9802506320894167307.Spec : Prop :=
  ∀ n, P9802506320894167307.a n = A097072 n

end A097072

/-! ## A097072.P4763394115775502255

`xor(1, floor(∑[2^n/3]))`
-/

namespace A097072.P4763394115775502255
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℚ) / 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A097072.P4763394115775502255

namespace A097072

/-- `xor(1, floor(∑[2^n/3]))` -/
def P4763394115775502255.Spec : Prop :=
  ∀ n, P4763394115775502255.a n = A097072 n

end A097072

/-! ## A097072.P11893055241382264899

`2^n-(a(n-1)+1)` with `a(0)=1`
-/

namespace A097072.P11893055241382264899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (2 ^ n : ℤ) - (a (n - 1) + 1)

end

end A097072.P11893055241382264899

namespace A097072

/-- `2^n-(a(n-1)+1)` -/
def P11893055241382264899.Spec : Prop :=
  ∀ n, P11893055241382264899.a n = A097072 n

end A097072

/-! ## A097072.P4333369689132284640

`2^n-a(n-1)-1` with `a(0)=1`
-/

namespace A097072.P4333369689132284640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (2 ^ n : ℤ) - a (n - 1) - 1

end

end A097072.P4333369689132284640

namespace A097072

/-- `2^n-a(n-1)-1` -/
def P4333369689132284640.Spec : Prop :=
  ∀ n, P4333369689132284640.a n = A097072 n

end A097072

/-! ## A097072.P11734814380817855156

`abs(1-∑[A225883(n)])`
-/

namespace A097072.P11734814380817855156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225883 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - ∑ j ∈ Finset.range (n + 1), f1 j|

end

end A097072.P11734814380817855156

namespace A097072

/-- `abs(1-∑[A225883(n)])` -/
def P11734814380817855156.Spec : Prop :=
  ∀ n, P11734814380817855156.a n = A097072 n

end A097072

/-! ## A097072.P7922365676527484849

`A010685(n)*A092808(n)`
-/

namespace A097072.P7922365676527484849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010685 n * A092808 n

end

end A097072.P7922365676527484849

namespace A097072

/-- `A010685(n)*A092808(n)` -/
def P7922365676527484849.Spec : Prop :=
  ∀ n, P7922365676527484849.a n = A097072 n

end A097072

/-! ## A097072.P11604613010541884861

`floor(∑[2*a(n-1)]/2-a(n-1))` with `a(0)=1`
-/

namespace A097072.P11604613010541884861
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2 - (a (n - 1) : ℚ)⌋

end

end A097072.P11604613010541884861

namespace A097072

/-- `floor(∑[2*a(n-1)]/2-a(n-1))` -/
def P11604613010541884861.Spec : Prop :=
  ∀ n, P11604613010541884861.a n = A097072 n

end A097072

/-! ## A097072.P15778955460740893005

`Δ[A083579(n)]`
-/

namespace A097072.P15778955460740893005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083579 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A097072.P15778955460740893005

namespace A097072

/-- `Δ[A083579(n)]` -/
def P15778955460740893005.Spec : Prop :=
  ∀ n, P15778955460740893005.a n = A097072 n

end A097072

/-! ## A097072.P11953937582407310510

`A270797(xor(1, n))`
-/

namespace A097072.P11953937582407310510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270797 (Nat.xor 1 n)

end

end A097072.P11953937582407310510

namespace A097072

/-- `A270797(xor(1, n))` -/
def P11953937582407310510.Spec : Prop :=
  ∀ n, P11953937582407310510.a n = A097072 n

end A097072

/-! ## A097072.P3138541846599956612

`A270797(A004442(n))`
-/

namespace A097072.P3138541846599956612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270797 (A004442 n).toNat

end

end A097072.P3138541846599956612

namespace A097072

/-- `A270797(A004442(n))` -/
def P3138541846599956612.Spec : Prop :=
  ∀ n, P3138541846599956612.a n = A097072 n

end A097072

/-! ## A097072.P15538854068513646945

`A344109(n)%A280293(n)`
-/

namespace A097072.P15538854068513646945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A344109 n) (A280293 n)

end

end A097072.P15538854068513646945

namespace A097072

/-- `A344109(n)%A280293(n)` -/
def P15538854068513646945.Spec : Prop :=
  ∀ n, P15538854068513646945.a n = A097072 n

end A097072

/-! ## A097072.P17971397275451352022

`and(A131588(n), A282798(n))`
-/

namespace A097072.P17971397275451352022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A131588 n) (A282798 n)

end

end A097072.P17971397275451352022

namespace A097072

/-- `and(A131588(n), A282798(n))` -/
def P17971397275451352022.Spec : Prop :=
  ∀ n, P17971397275451352022.a n = A097072 n

end A097072

/-! ## A097072.P5523802967328407332

`and(A139763(n), A282798(n))`
-/

namespace A097072.P5523802967328407332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A139763 n) (A282798 n)

end

end A097072.P5523802967328407332

namespace A097072

/-- `and(A139763(n), A282798(n))` -/
def P5523802967328407332.Spec : Prop :=
  ∀ n, P5523802967328407332.a n = A097072 n

end A097072

/-! ## A097072.P7845400597471771636

`and(A139763(n), A282802(n))`
-/

namespace A097072.P7845400597471771636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A139763 n) (A282802 n)

end

end A097072.P7845400597471771636

namespace A097072

/-- `and(A139763(n), A282802(n))` -/
def P7845400597471771636.Spec : Prop :=
  ∀ n, P7845400597471771636.a n = A097072 n

end A097072

/-! ## A097072.P16971821247155663659

`and(A139763(n), A284353(n))`
-/

namespace A097072.P16971821247155663659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A139763 n) (A284353 n)

end

end A097072.P16971821247155663659

namespace A097072

/-- `and(A139763(n), A284353(n))` -/
def P16971821247155663659.Spec : Prop :=
  ∀ n, P16971821247155663659.a n = A097072 n

end A097072

/-!
# A097073: Expansion of (1-x+2*x^2)/((1+x)*(1-2*x)).

The programs for A097073, the canonical program `A097073.P427433503450097958` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097073 has offset 0).

The definition of A097073 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x+2x^2)/(1-x-2x^2))` (program `A097073.P427433503450097958`, by `A097073.P427433503450097958.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A097073.P427433503450097958

`ogf((1-x+2x^2)/(1-x-2x^2))`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A097073

/-- `ogf((1-x+2x^2)/(1-x-2x^2))` -/
def P427433503450097958.Spec : Prop :=
  ∀ n, P427433503450097958.a n = A097073 n

theorem P427433503450097958.correct : P427433503450097958.Spec := by
  intro n
  simp only [A097073]

end A097073

/-! ## A097073.P3238152802053850584

`abs(∑[(char[1]-2)^n])`
-/

namespace A097073.P3238152802053850584
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ) - 2) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A097073.P3238152802053850584

namespace A097073

/-- `abs(∑[(char[1]-2)^n])` -/
def P3238152802053850584.Spec : Prop :=
  ∀ n, P3238152802053850584.a n = A097073 n

end A097073

/-! ## A097073.P5145339570334120472

`2^n-a(n-1)` with `a(0)=1, a(1)=0`
-/

namespace A097073.P5145339570334120472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  (2 ^ n : ℤ) - a (n - 1)

end

end A097073.P5145339570334120472

namespace A097073

/-- `2^n-a(n-1)` -/
def P5145339570334120472.Spec : Prop :=
  ∀ n, P5145339570334120472.a n = A097073 n

end A097073

/-! ## A097073.P14415223698598687775

`a(n-1)+2*a(n-2)` with `a(0)=1, a(1)=0, a(2)=4`
-/

namespace A097073.P14415223698598687775
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 4] fun n a =>
  a (n - 1) + 2 * a (n - 2)

end

end A097073.P14415223698598687775

namespace A097073

/-- `a(n-1)+2*a(n-2)` -/
def P14415223698598687775.Spec : Prop :=
  ∀ n, (P14415223698598687775.a n : ℤ) = A097073 n

end A097073

/-! ## A097073.P14746120767150157757

`or(10, a(n-1))+a(n-1)-6` with `a(0)=1, a(1)=0, a(2)=4, a(3)=4`
-/

namespace A097073.P14746120767150157757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 4, 4] fun n a =>
  Int.lor 10 (a (n - 1)) + (a (n - 1) - 6)

end

end A097073.P14746120767150157757

namespace A097073

/-- `or(10, a(n-1))+a(n-1)-6` -/
def P14746120767150157757.Spec : Prop :=
  ∀ n, P14746120767150157757.a n = A097073 n

end A097073

/-! ## A097073.P10730832269363033123

`a(n-2)+a(n-1)+a(n-2)` with `a(0)=1, a(1)=0, a(2)=4`
-/

namespace A097073.P10730832269363033123
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 4] fun n a =>
  a (n - 2) + (a (n - 1) + a (n - 2))

end

end A097073.P10730832269363033123

namespace A097073

/-- `a(n-2)+a(n-1)+a(n-2)` -/
def P10730832269363033123.Spec : Prop :=
  ∀ n, (P10730832269363033123.a n : ℤ) = A097073 n

end A097073

/-! ## A097073.P4833179112985906729

`3*a(n-2)-(a(n-2)-a(n-1))` with `a(0)=1, a(1)=0, a(2)=4`
-/

namespace A097073.P4833179112985906729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 4] fun n a =>
  3 * a (n - 2) - (a (n - 2) - a (n - 1))

end

end A097073.P4833179112985906729

namespace A097073

/-- `3*a(n-2)-(a(n-2)-a(n-1))` -/
def P4833179112985906729.Spec : Prop :=
  ∀ n, P4833179112985906729.a n = A097073 n

end A097073

/-! ## A097073.P16814396661413311132

`A000225(n)-a(n-1)+1` with `a(0)=1, a(1)=0`
-/

namespace A097073.P16814396661413311132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A000225 n - a (n - 1) + 1

end

end A097073.P16814396661413311132

namespace A097073

/-- `A000225(n)-a(n-1)+1` -/
def P16814396661413311132.Spec : Prop :=
  ∀ n, P16814396661413311132.a n = A097073 n

end A097073

/-! ## A097073.P13805535086739588078

`A280193(n)+A000975(n)`
-/

namespace A097073.P13805535086739588078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280193 n + A000975 n

end

end A097073.P13805535086739588078

namespace A097073

/-- `A280193(n)+A000975(n)` -/
def P13805535086739588078.Spec : Prop :=
  ∀ n, P13805535086739588078.a n = A097073 n

end A097073

/-! ## A097073.P14866620513206401029

`A280560(n)+A014113(n)`
-/

namespace A097073.P14866620513206401029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280560 n + A014113 n

end

end A097073.P14866620513206401029

namespace A097073

/-- `A280560(n)+A014113(n)` -/
def P14866620513206401029.Spec : Prop :=
  ∀ n, P14866620513206401029.a n = A097073 n

end A097073

/-! ## A097073.P15067543864777865512

`A081660(n)-A014681(n)`
-/

namespace A097073.P15067543864777865512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081660 n - A014681 n

end

end A097073.P15067543864777865512

namespace A097073

/-- `A081660(n)-A014681(n)` -/
def P15067543864777865512.Spec : Prop :=
  ∀ n, P15067543864777865512.a n = A097073 n

end A097073

/-! ## A097073.P6628706344344348353

`A040001(n)-A083944(n)`
-/

namespace A097073.P6628706344344348353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 n - A083944 n

end

end A097073.P6628706344344348353

namespace A097073

/-- `A040001(n)-A083944(n)` -/
def P6628706344344348353.Spec : Prop :=
  ∀ n, P6628706344344348353.a n = A097073 n

end A097073

/-! ## A097073.P10960455724107396638

`A135231(n)-A010673(n)`
-/

namespace A097073.P10960455724107396638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135231 n - A010673 n

end

end A097073.P10960455724107396638

namespace A097073

/-- `A135231(n)-A010673(n)` -/
def P10960455724107396638.Spec : Prop :=
  ∀ n, P10960455724107396638.a n = A097073 n

end A097073

/-! ## A097073.P12374144682511943346

`A014551(n)-A152046(n)`
-/

namespace A097073.P12374144682511943346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014551 n - A152046 n

end

end A097073.P12374144682511943346

namespace A097073

/-- `A014551(n)-A152046(n)` -/
def P12374144682511943346.Spec : Prop :=
  ∀ n, P12374144682511943346.a n = A097073 n

end A097073

/-! ## A097073.P1024573302085787955

`A146528(n)-A154890(n)`
-/

namespace A097073.P1024573302085787955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146528 n - A154890 n

end

end A097073.P1024573302085787955

namespace A097073

/-- `A146528(n)-A154890(n)` -/
def P1024573302085787955.Spec : Prop :=
  ∀ n, P1024573302085787955.a n = A097073 n

end A097073

/-! ## A097073.P17477478501421134204

`A166977(n)-A167167(n)`
-/

namespace A097073.P17477478501421134204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166977 n - A167167 n

end

end A097073.P17477478501421134204

namespace A097073

/-- `A166977(n)-A167167(n)` -/
def P17477478501421134204.Spec : Prop :=
  ∀ n, P17477478501421134204.a n = A097073 n

end A097073

/-! ## A097073.P5906559010215202686

`A040000(n)*A078008(n)`
-/

namespace A097073.P5906559010215202686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040000 n * A078008 n

end

end A097073.P5906559010215202686

namespace A097073

/-- `A040000(n)*A078008(n)` -/
def P5906559010215202686.Spec : Prop :=
  ∀ n, P5906559010215202686.a n = A097073 n

end A097073

/-! ## A097073.P16370868604728977473

`lcm(A078008(n), A113311(n))`
-/

namespace A097073.P16370868604728977473
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A078008 n) (A113311 n)

end

end A097073.P16370868604728977473

namespace A097073

/-- `lcm(A078008(n), A113311(n))` -/
def P16370868604728977473.Spec : Prop :=
  ∀ n, (P16370868604728977473.a n : ℤ) = A097073 n

end A097073

/-! ## A097073.P16966588547114505524

`A280193(n)+∑[A001045(n)]`
-/

namespace A097073.P16966588547114505524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280193 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097073.P16966588547114505524

namespace A097073

/-- `A280193(n)+∑[A001045(n)]` -/
def P16966588547114505524.Spec : Prop :=
  ∀ n, P16966588547114505524.a n = A097073 n

end A097073

/-! ## A097073.P3812623896921334588

`A001045(n+1)-A062157(n)`
-/

namespace A097073.P3812623896921334588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (n + 1) - A062157 n

end

end A097073.P3812623896921334588

namespace A097073

/-- `A001045(n+1)-A062157(n)` -/
def P3812623896921334588.Spec : Prop :=
  ∀ n, P3812623896921334588.a n = A097073 n

end A097073

/-!
# A097074: Expansion of (1-x+2*x^2)/((1-x)*(1-x-2*x^2)).

The programs for A097074, the canonical program `A097074.P10849779832449656330` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097074 has offset 0).

The definition of A097074 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x+2x^2)/(1-2x-x^2+2x^3))` (program `A097074.P10849779832449656330`, by `A097074.P10849779832449656330.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A097074.P10849779832449656330

`ogf((1-x+2x^2)/(1-2x-x^2+2x^3))`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A097074

/-- `ogf((1-x+2x^2)/(1-2x-x^2+2x^3))` -/
def P10849779832449656330.Spec : Prop :=
  ∀ n, P10849779832449656330.a n = A097074 n

theorem P10849779832449656330.correct : P10849779832449656330.Spec := by
  intro n
  simp only [A097074]

end A097074

/-! ## A097074.P3497366183638705445

`a(n-1)+2*a(n-2)+2` with `a(0)=1, a(1)=1`
-/

namespace A097074.P3497366183638705445
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) + 2 * a (n - 2) + 2

end

end A097074.P3497366183638705445

namespace A097074

/-- `a(n-1)+2*a(n-2)+2` -/
def P3497366183638705445.Spec : Prop :=
  ∀ n, (P3497366183638705445.a n : ℤ) = A097074 n

end A097074

/-! ## A097074.P14874755983956843454

`2*A001045(n+1)-1`
-/

namespace A097074.P14874755983956843454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001045 (n + 1) - 1

end

end A097074.P14874755983956843454

namespace A097074

/-- `2*A001045(n+1)-1` -/
def P14874755983956843454.Spec : Prop :=
  ∀ n, P14874755983956843454.a n = A097074 n

end A097074

/-! ## A097074.P4420642591468260709

`(2^(n+2)+2*(-1)^n-3)/3`
-/

namespace A097074.P4420642591468260709
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 ^ (n + 2) : ℤ) + 2 * (-1) ^ n - 3 : ℚ) / 3

end

end A097074.P4420642591468260709

namespace A097074

/-- `(2^(n+2)+2*(-1)^n-3)/3` -/
def P4420642591468260709.Spec : Prop :=
  ∀ n, P4420642591468260709.a n = (A097074 n : ℚ)

end A097074

/-! ## A097074.P3334687466268173815

`2^n+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A097074.P3334687466268173815
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  2 ^ n + a (n - 2)

end

end A097074.P3334687466268173815

namespace A097074

/-- `2^n+a(n-2)` -/
def P3334687466268173815.Spec : Prop :=
  ∀ n, (P3334687466268173815.a n : ℤ) = A097074 n

end A097074

/-! ## A097074.P9376444087454772287

`or(2^n, a(n-2))` with `a(0)=1, a(1)=1`
-/

namespace A097074.P9376444087454772287
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  Nat.lor (2 ^ n) (a (n - 2))

end

end A097074.P9376444087454772287

namespace A097074

/-- `or(2^n, a(n-2))` -/
def P9376444087454772287.Spec : Prop :=
  ∀ n, (P9376444087454772287.a n : ℤ) = A097074 n

end A097074

/-! ## A097074.P10724365695317572398

`xor(2^n, a(n-2))` with `a(0)=1, a(1)=1`
-/

namespace A097074.P10724365695317572398
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  Nat.xor (2 ^ n) (a (n - 2))

end

end A097074.P10724365695317572398

namespace A097074

/-- `xor(2^n, a(n-2))` -/
def P10724365695317572398.Spec : Prop :=
  ∀ n, (P10724365695317572398.a n : ℤ) = A097074 n

end A097074

/-! ## A097074.P17987701336280551037

`∑[2^n-a(n-1)]` with `a(0)=1, a(1)=0`
-/

namespace A097074.P17987701336280551037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  (2 ^ n : ℤ) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097074.P17987701336280551037

namespace A097074

/-- `∑[2^n-a(n-1)]` -/
def P17987701336280551037.Spec : Prop :=
  ∀ n, P17987701336280551037.a n = A097074 n

end A097074

/-! ## A097074.P12873261089768943823

`2+a(n-1)+2*a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A097074.P12873261089768943823
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  2 + (a (n - 1) + 2 * a (n - 2))

end

end A097074.P12873261089768943823

namespace A097074

/-- `2+a(n-1)+2*a(n-2)` -/
def P12873261089768943823.Spec : Prop :=
  ∀ n, (P12873261089768943823.a n : ℤ) = A097074 n

end A097074

/-! ## A097074.P16089441474016094223

`floor(∑[2*a(n-1)]-1-a(n-1))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A097074.P16089441474016094223
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1 - a (n - 1)

end

end A097074.P16089441474016094223

namespace A097074

/-- `floor(∑[2*a(n-1)]-1-a(n-1))` -/
def P16089441474016094223.Spec : Prop :=
  ∀ n, P16089441474016094223.a n = A097074 n

end A097074

/-! ## A097074.P8554832766631467519

`∑[a(n-2)+a(n-1)+a(n-2)]` with `a(0)=1, a(1)=0, a(2)=4`
-/

namespace A097074.P8554832766631467519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 4] fun n f1 =>
  f1 (n - 2) + (f1 (n - 1) + f1 (n - 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097074.P8554832766631467519

namespace A097074

/-- `∑[a(n-2)+a(n-1)+a(n-2)]` -/
def P8554832766631467519.Spec : Prop :=
  ∀ n, (P8554832766631467519.a n : ℤ) = A097074 n

end A097074

/-! ## A097074.P8046863486109750089

`floor(a(n-1)+a(n-2)+a(n-2)+2)` with `a(0)=1, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A097074.P8046863486109750089
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) + (a (n - 2) + (a (n - 2) + 2))

end

end A097074.P8046863486109750089

namespace A097074

/-- `floor(a(n-1)+a(n-2)+a(n-2)+2)` -/
def P8046863486109750089.Spec : Prop :=
  ∀ n, (P8046863486109750089.a n : ℤ) = A097074 n

end A097074

/-! ## A097074.P1012846716608701079

`∑[A097073(n)]`
-/

namespace A097074.P1012846716608701079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097073 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097074.P1012846716608701079

namespace A097074

/-- `∑[A097073(n)]` -/
def P1012846716608701079.Spec : Prop :=
  ∀ n, P1012846716608701079.a n = A097074 n

end A097074

/-! ## A097074.P13355111600515254162

`or(1, A084639(n))`
-/

namespace A097074.P13355111600515254162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A084639 n)

end

end A097074.P13355111600515254162

namespace A097074

/-- `or(1, A084639(n))` -/
def P13355111600515254162.Spec : Prop :=
  ∀ n, P13355111600515254162.a n = A097074 n

end A097074

/-! ## A097074.P5736996194143037432

`A014113(n+1)-1`
-/

namespace A097074.P5736996194143037432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014113 (n + 1) - 1

end

end A097074.P5736996194143037432

namespace A097074

/-- `A014113(n+1)-1` -/
def P5736996194143037432.Spec : Prop :=
  ∀ n, P5736996194143037432.a n = A097074 n

end A097074

/-! ## A097074.P5337647035521745477

`A153772(n+2)+1`
-/

namespace A097074.P5337647035521745477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153772 (n + 2) + 1

end

end A097074.P5337647035521745477

namespace A097074

/-- `A153772(n+2)+1` -/
def P5337647035521745477.Spec : Prop :=
  ∀ n, P5337647035521745477.a n = A097074 n

end A097074

/-! ## A097074.P5686106777200483469

`A078008(n+2)-1`
-/

namespace A097074.P5686106777200483469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078008 (n + 2) - 1

end

end A097074.P5686106777200483469

namespace A097074

/-- `A078008(n+2)-1` -/
def P5686106777200483469.Spec : Prop :=
  ∀ n, P5686106777200483469.a n = A097074 n

end A097074

/-! ## A097074.P13247726889543686229

`A277955(n+1)-2`
-/

namespace A097074.P13247726889543686229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277955 (n + 1) - 2

end

end A097074.P13247726889543686229

namespace A097074

/-- `A277955(n+1)-2` -/
def P13247726889543686229.Spec : Prop :=
  ∀ n, P13247726889543686229.a n = A097074 n

end A097074

/-! ## A097074.P18380524576282063513

`A378105(n+3)-3`
-/

namespace A097074.P18380524576282063513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378105 (n + 3) - 3

end

end A097074.P18380524576282063513

namespace A097074

/-- `A378105(n+3)-3` -/
def P18380524576282063513.Spec : Prop :=
  ∀ n, P18380524576282063513.a n = A097074 n

end A097074

/-! ## A097074.P3488130255908016115

`2*A052953(n)-3`
-/

namespace A097074.P3488130255908016115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A052953 n - 3

end

end A097074.P3488130255908016115

namespace A097074

/-- `2*A052953(n)-3` -/
def P3488130255908016115.Spec : Prop :=
  ∀ n, P3488130255908016115.a n = A097074 n

end A097074

/-!
# A097075: Expansion of g.f. (1-x-x^2)/(1-x-3*x^2-x^3).

The programs for A097075, the canonical program `A097075.P6915232925121740084` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097075 has offset 0).

The definition of A097075 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x-x^2)/(1-x-3x^2-x^3))` (program `A097075.P6915232925121740084`, by `A097075.P6915232925121740084.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A097075.P6915232925121740084

`ogf((1-x-x^2)/(1-x-3x^2-x^3))`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A097075

/-- `ogf((1-x-x^2)/(1-x-3x^2-x^3))` -/
def P6915232925121740084.Spec : Prop :=
  ∀ n, P6915232925121740084.a n = A097075 n

theorem P6915232925121740084.correct : P6915232925121740084.Spec := by
  intro n
  simp only [A097075]

end A097075

/-! ## A097075.P6290368810955577404

`a(n-1)+3*a(n-2)+a(n-3)` with `a(0)=1, a(1)=0, a(2)=2`
-/

namespace A097075.P6290368810955577404
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 2] fun n a =>
  a (n - 1) + 3 * a (n - 2) + a (n - 3)

end

end A097075.P6290368810955577404

namespace A097075

/-- `a(n-1)+3*a(n-2)+a(n-3)` -/
def P6290368810955577404.Spec : Prop :=
  ∀ n, (P6290368810955577404.a n : ℤ) = A097075 n

end A097075

/-! ## A097075.P1506032092158723337

`1/2*((-1)^n+∑{#}[floor(n/2), C(n, 2*#)*2^#])`
-/

namespace A097075.P1506032092158723337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * ((-1) ^ n + ((∑ k ∈ Finset.range (f1 n + 1).toNat, Nat.choose n (2 * k) * 2 ^ k : ℕ) : ℤ) : ℚ)

end

end A097075.P1506032092158723337

namespace A097075

/-- `1/2*((-1)^n+∑{#}[floor(n/2), C(n, 2*#)*2^#])` -/
def P1506032092158723337.Spec : Prop :=
  ∀ n, P1506032092158723337.a n = (A097075 n : ℚ)

end A097075

/-! ## A097075.P3857319160655134601

`((-1)^n+A001333(n))/2`
-/

namespace A097075.P3857319160655134601
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((-1) ^ n + A001333 n : ℚ) / 2

end

end A097075.P3857319160655134601

namespace A097075

/-- `((-1)^n+A001333(n))/2` -/
def P3857319160655134601.Spec : Prop :=
  ∀ n, P3857319160655134601.a n = (A097075 n : ℚ)

end A097075

/-! ## A097075.P9942946484073598996

`or(2, a(n-2)-1)+2*a(n-1)` with `a(0)=1, a(1)=0`
-/

namespace A097075.P9942946484073598996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  Int.lor 2 (a (n - 2) - 1) + 2 * a (n - 1)

end

end A097075.P9942946484073598996

namespace A097075

/-- `or(2, a(n-2)-1)+2*a(n-1)` -/
def P9942946484073598996.Spec : Prop :=
  ∀ n, P9942946484073598996.a n = A097075 n

end A097075

/-! ## A097075.P3178069712999155697

`(-1)^n+a(n-2)+2*a(n-1)` with `a(0)=1, a(1)=0`
-/

namespace A097075.P3178069712999155697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  (-1) ^ n + (a (n - 2) + 2 * a (n - 1))

end

end A097075.P3178069712999155697

namespace A097075

/-- `(-1)^n+a(n-2)+2*a(n-1)` -/
def P3178069712999155697.Spec : Prop :=
  ∀ n, P3178069712999155697.a n = A097075 n

end A097075

/-! ## A097075.P8419786869961291008

`a(n-1)-xor(1, -(a(n-1)+a(n-2)))` with `a(0)=1, a(1)=0`
-/

namespace A097075.P8419786869961291008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  a (n - 1) - Int.xor 1 (-(a (n - 1) + a (n - 2)))

end

end A097075.P8419786869961291008

namespace A097075

/-- `a(n-1)-xor(1, -(a(n-1)+a(n-2)))` -/
def P8419786869961291008.Spec : Prop :=
  ∀ n, P8419786869961291008.a n = A097075 n

end A097075

/-! ## A097075.P7058852656930691610

`a(n-1)+a(n-1)+or(2, a(n-2)-1)` with `a(0)=1, a(1)=0`
-/

namespace A097075.P7058852656930691610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  a (n - 1) + (a (n - 1) + Int.lor 2 (a (n - 2) - 1))

end

end A097075.P7058852656930691610

namespace A097075

/-- `a(n-1)+a(n-1)+or(2, a(n-2)-1)` -/
def P7058852656930691610.Spec : Prop :=
  ∀ n, P7058852656930691610.a n = A097075 n

end A097075

/-! ## A097075.P10081560199769046561

`A171842(n)-and(1, n)`
-/

namespace A097075.P10081560199769046561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171842 n - (Nat.land 1 n : ℤ)

end

end A097075.P10081560199769046561

namespace A097075

/-- `A171842(n)-and(1, n)` -/
def P10081560199769046561.Spec : Prop :=
  ∀ n, P10081560199769046561.a n = A097075 n

end A097075

/-! ## A097075.P12475263486523644055

`abs((A123335(n)+1)/2)`
-/

namespace A097075.P12475263486523644055
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A123335 n + 1 : ℚ) / 2|

end

end A097075.P12475263486523644055

namespace A097075

/-- `abs((A123335(n)+1)/2)` -/
def P12475263486523644055.Spec : Prop :=
  ∀ n, P12475263486523644055.a n = (A097075 n : ℚ)

end A097075

/-! ## A097075.P16874318783267981819

`A000129(n)-a(n-1)` with `a(0)=1`
-/

namespace A097075.P16874318783267981819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000129 n - a (n - 1)

end

end A097075.P16874318783267981819

namespace A097075

/-- `A000129(n)-a(n-1)` -/
def P16874318783267981819.Spec : Prop :=
  ∀ n, P16874318783267981819.a n = A097075 n

end A097075

/-! ## A097075.P6913063650440485899

`A215928(n)-a(n-1)` with `a(0)=1`
-/

namespace A097075.P6913063650440485899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A215928 n - a (n - 1)

end

end A097075.P6913063650440485899

namespace A097075

/-- `A215928(n)-a(n-1)` -/
def P6913063650440485899.Spec : Prop :=
  ∀ n, P6913063650440485899.a n = A097075 n

end A097075

/-! ## A097075.P2639275369908874860

`A174191(n)-(a(n-1)+1)` with `a(0)=1`
-/

namespace A097075.P2639275369908874860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A174191 n - (a (n - 1) + 1)

end

end A097075.P2639275369908874860

namespace A097075

/-- `A174191(n)-(a(n-1)+1)` -/
def P2639275369908874860.Spec : Prop :=
  ∀ n, P2639275369908874860.a n = A097075 n

end A097075

/-! ## A097075.P12094139408871987467

`A002965(2*n)-a(n-1)` with `a(0)=1`
-/

namespace A097075.P12094139408871987467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A002965 (2 * n) - a (n - 1)

end

end A097075.P12094139408871987467

namespace A097075

/-- `A002965(2*n)-a(n-1)` -/
def P12094139408871987467.Spec : Prop :=
  ∀ n, P12094139408871987467.a n = A097075 n

end A097075

/-! ## A097075.P14103869665119075206

`A135153(2*n)-a(n-1)` with `a(0)=1`
-/

namespace A097075.P14103869665119075206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A135153 (2 * n) - a (n - 1)

end

end A097075.P14103869665119075206

namespace A097075

/-- `A135153(2*n)-a(n-1)` -/
def P14103869665119075206.Spec : Prop :=
  ∀ n, P14103869665119075206.a n = A097075 n

end A097075

/-! ## A097075.P14987903017493748678

`A155046(2*n)-a(n-1)` with `a(0)=1`
-/

namespace A097075.P14987903017493748678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A155046 (2 * n) - a (n - 1)

end

end A097075.P14987903017493748678

namespace A097075

/-- `A155046(2*n)-a(n-1)` -/
def P14987903017493748678.Spec : Prop :=
  ∀ n, P14987903017493748678.a n = A097075 n

end A097075

/-! ## A097075.P15969863012223607513

`A092550(3*n)-a(n-1)` with `a(0)=1`
-/

namespace A097075.P15969863012223607513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A092550 (3 * n) - a (n - 1)

end

end A097075.P15969863012223607513

namespace A097075

/-- `A092550(3*n)-a(n-1)` -/
def P15969863012223607513.Spec : Prop :=
  ∀ n, P15969863012223607513.a n = A097075 n

end A097075

/-! ## A097075.P14456256213064402154

`A249576(3*n)-a(n-1)` with `a(0)=1`
-/

namespace A097075.P14456256213064402154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A249576 (3 * n) - a (n - 1)

end

end A097075.P14456256213064402154

namespace A097075

/-- `A249576(3*n)-a(n-1)` -/
def P14456256213064402154.Spec : Prop :=
  ∀ n, P14456256213064402154.a n = A097075 n

end A097075

/-! ## A097075.P17104384575533971531

`A247311(A047264(n+1))`
-/

namespace A097075.P17104384575533971531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247311 (A047264 (n + 1)).toNat

end

end A097075.P17104384575533971531

namespace A097075

/-- `A247311(A047264(n+1))` -/
def P17104384575533971531.Spec : Prop :=
  ∀ n, P17104384575533971531.a n = A097075 n

end A097075

/-! ## A097075.P3330116499032208213

`A097076(n)+A033999(n)`
-/

namespace A097075.P3330116499032208213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097076 n + A033999 n

end

end A097075.P3330116499032208213

namespace A097075

/-- `A097076(n)+A033999(n)` -/
def P3330116499032208213.Spec : Prop :=
  ∀ n, P3330116499032208213.a n = A097075 n

end A097075

/-!
# A097076: Expansion of g.f. x/(1 - x - 3*x^2 - x^3).

The programs for A097076, the canonical program `A097076.P14805023492765033289` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097076 has offset 0).

The definition of A097076 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(x/(1-x-3x^2-x^3))` (program `A097076.P14805023492765033289`, by `A097076.P14805023492765033289.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A097076.P14805023492765033289

`ogf(x/(1-x-3x^2-x^3))`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A097076

/-- `ogf(x/(1-x-3x^2-x^3))` -/
def P14805023492765033289.Spec : Prop :=
  ∀ n, P14805023492765033289.a n = A097076 n

theorem P14805023492765033289.correct : P14805023492765033289.Spec := by
  intro n
  simp only [A097076]

end A097076

/-! ## A097076.P13475430936998320003

`a(n-1)+3*a(n-2)+a(n-3)` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A097076.P13475430936998320003
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1] fun n a =>
  a (n - 1) + 3 * a (n - 2) + a (n - 3)

end

end A097076.P13475430936998320003

namespace A097076

/-- `a(n-1)+3*a(n-2)+a(n-3)` -/
def P13475430936998320003.Spec : Prop :=
  ∀ n, (P13475430936998320003.a n : ℤ) = A097076 n

end A097076

/-! ## A097076.P16893726115489651050

`∑{#}[floor(n/2), C(n, 2*#)*2^#]/2-(-1)^n/2`
-/

namespace A097076.P16893726115489651050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ k ∈ Finset.range (f1 n + 1).toNat, Nat.choose n (2 * k) * 2 ^ k : ℕ) : ℚ) / 2 - ((-1) ^ n : ℚ) / 2

end

end A097076.P16893726115489651050

namespace A097076

/-- `∑{#}[floor(n/2), C(n, 2*#)*2^#]/2-(-1)^n/2` -/
def P16893726115489651050.Spec : Prop :=
  ∀ n, P16893726115489651050.a n = (A097076 n : ℚ)

end A097076

/-! ## A097076.P1719699800418709402

`(A001333(n)-(-1)^n)/2`
-/

namespace A097076.P1719699800418709402
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001333 n - (-1) ^ n : ℚ) / 2

end

end A097076.P1719699800418709402

namespace A097076

/-- `(A001333(n)-(-1)^n)/2` -/
def P1719699800418709402.Spec : Prop :=
  ∀ n, P1719699800418709402.a n = (A097076 n : ℚ)

end A097076

/-! ## A097076.P3710359975941723366

`∑{#}[n, (-1)^#*A000129(n-#)]`
-/

namespace A097076.P3710359975941723366
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1) ^ k * A000129 (n - k)

end

end A097076.P3710359975941723366

namespace A097076

/-- `∑{#}[n, (-1)^#*A000129(n-#)]` -/
def P3710359975941723366.Spec : Prop :=
  ∀ n, P3710359975941723366.a n = A097076 n

end A097076

/-! ## A097076.P16861032405708007934

`2*a(n-1)+a(n-2)-(-1)^n` with `a(0)=0, a(1)=1`
-/

namespace A097076.P16861032405708007934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  2 * a (n - 1) + (a (n - 2) - (-1) ^ n)

end

end A097076.P16861032405708007934

namespace A097076

/-- `2*a(n-1)+a(n-2)-(-1)^n` -/
def P16861032405708007934.Spec : Prop :=
  ∀ n, P16861032405708007934.a n = A097076 n

end A097076

/-! ## A097076.P1420985350792474695

`2*a(n-1)-((-1)^n-a(n-2))` with `a(0)=0, a(1)=1`
-/

namespace A097076.P1420985350792474695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  2 * a (n - 1) - ((-1) ^ n - a (n - 2))

end

end A097076.P1420985350792474695

namespace A097076

/-- `2*a(n-1)-((-1)^n-a(n-2))` -/
def P1420985350792474695.Spec : Prop :=
  ∀ n, P1420985350792474695.a n = A097076 n

end A097076

/-! ## A097076.P797199392209397329

`a(n-1)+xor(1, a(n-1)+a(n-2))` with `a(0)=0, a(1)=1`
-/

namespace A097076.P797199392209397329
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) + Nat.xor 1 (a (n - 1) + a (n - 2))

end

end A097076.P797199392209397329

namespace A097076

/-- `a(n-1)+xor(1, a(n-1)+a(n-2))` -/
def P797199392209397329.Spec : Prop :=
  ∀ n, (P797199392209397329.a n : ℤ) = A097076 n

end A097076

/-! ## A097076.P8501001694113050901

`abs(floor(A123335(n)/2))`
-/

namespace A097076.P8501001694113050901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |⌊(A123335 n : ℚ) / 2⌋|

end

end A097076.P8501001694113050901

namespace A097076

/-- `abs(floor(A123335(n)/2))` -/
def P8501001694113050901.Spec : Prop :=
  ∀ n, P8501001694113050901.a n = A097076 n

end A097076

/-! ## A097076.P17005499436697708592

`∑[A111954(abs(1-n))]`
-/

namespace A097076.P17005499436697708592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111954 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097076.P17005499436697708592

namespace A097076

/-- `∑[A111954(abs(1-n))]` -/
def P17005499436697708592.Spec : Prop :=
  ∀ n, P17005499436697708592.a n = A097076 n

end A097076

/-! ## A097076.P1367650343496418530

`abs(∑[A215936(n+2)])`
-/

namespace A097076.P1367650343496418530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215936 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A097076.P1367650343496418530

namespace A097076

/-- `abs(∑[A215936(n+2)])` -/
def P1367650343496418530.Spec : Prop :=
  ∀ n, P1367650343496418530.a n = A097076 n

end A097076

/-! ## A097076.P4718466920968180179

`A171842(n)-char[2*n]`
-/

namespace A097076.P4718466920968180179
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171842 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A097076.P4718466920968180179

namespace A097076

/-- `A171842(n)-char[2*n]` -/
def P4718466920968180179.Spec : Prop :=
  ∀ n, P4718466920968180179.a n = A097076 n

end A097076

/-! ## A097076.P8371814821843628527

`A000129(n)-a(n-1)` with `a(0)=0`
-/

namespace A097076.P8371814821843628527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A000129 n - a (n - 1)

end

end A097076.P8371814821843628527

namespace A097076

/-- `A000129(n)-a(n-1)` -/
def P8371814821843628527.Spec : Prop :=
  ∀ n, P8371814821843628527.a n = A097076 n

end A097076

/-! ## A097076.P14638614075019928950

`A111954(n-1)+a(n-1)` with `a(0)=0`
-/

namespace A097076.P14638614075019928950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A111954 (n - 1) + a (n - 1)

end

end A097076.P14638614075019928950

namespace A097076

/-- `A111954(n-1)+a(n-1)` -/
def P14638614075019928950.Spec : Prop :=
  ∀ n, P14638614075019928950.a n = A097076 n

end A097076

/-! ## A097076.P573014927856173375

`A002965(2*n)-a(n-1)` with `a(0)=0`
-/

namespace A097076.P573014927856173375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A002965 (2 * n) - a (n - 1)

end

end A097076.P573014927856173375

namespace A097076

/-- `A002965(2*n)-a(n-1)` -/
def P573014927856173375.Spec : Prop :=
  ∀ n, P573014927856173375.a n = A097076 n

end A097076

/-! ## A097076.P13040382924414210350

`A135153(2*n)-a(n-1)` with `a(0)=0`
-/

namespace A097076.P13040382924414210350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A135153 (2 * n) - a (n - 1)

end

end A097076.P13040382924414210350

namespace A097076

/-- `A135153(2*n)-a(n-1)` -/
def P13040382924414210350.Spec : Prop :=
  ∀ n, P13040382924414210350.a n = A097076 n

end A097076

/-! ## A097076.P11369188082262538137

`A209971(n)-(a(n-1)+n)` with `a(0)=0`
-/

namespace A097076.P11369188082262538137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A209971 n - (a (n - 1) + (n : ℤ))

end

end A097076.P11369188082262538137

namespace A097076

/-- `A209971(n)-(a(n-1)+n)` -/
def P11369188082262538137.Spec : Prop :=
  ∀ n, P11369188082262538137.a n = A097076 n

end A097076

/-! ## A097076.P560954166552663922

`A247311(A047243(n+1))`
-/

namespace A097076.P560954166552663922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247311 (A047243 (n + 1)).toNat

end

end A097076.P560954166552663922

namespace A097076

/-- `A247311(A047243(n+1))` -/
def P560954166552663922.Spec : Prop :=
  ∀ n, P560954166552663922.a n = A097076 n

end A097076

/-! ## A097076.P2596601640379594067

`A001333(n)-A097075(n)`
-/

namespace A097076.P2596601640379594067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 n - A097075 n

end

end A097076.P2596601640379594067

namespace A097076

/-- `A001333(n)-A097075(n)` -/
def P2596601640379594067.Spec : Prop :=
  ∀ n, P2596601640379594067.a n = A097076 n

end A097076

/-! ## A097076.P456051095332662453

`A097075(n)-A033999(n)`
-/

namespace A097076.P456051095332662453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097075 n - A033999 n

end

end A097076.P456051095332662453

namespace A097076

/-- `A097075(n)-A033999(n)` -/
def P456051095332662453.Spec : Prop :=
  ∀ n, P456051095332662453.a n = A097076 n

end A097076

/-!
# A097080: a(n) = 2*n^2 - 2*n + 3.

The programs for A097080, the canonical program `A097080.P15306167688051301207` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097080 has offset 1).

The definition of A097080 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*(n+1)²-2*(n+1)+3` (program `A097080.P15306167688051301207`, by `A097080.P15306167688051301207.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A097080.P6001306651149389852

`2*(n+1)*n+3`
-/

namespace A097080.P6001306651149389852
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1) * n + 3

end

end A097080.P6001306651149389852

namespace A097080

/-- `2*(n+1)*n+3` -/
def P6001306651149389852.Spec : Prop :=
  ∀ n, (P6001306651149389852.a n : ℤ) = A097080 (n + 1)

theorem P6001306651149389852.correct : P6001306651149389852.Spec := by
  intro n
  simp only [A097080, Nat.add_sub_cancel, A097080.P6001306651149389852.a, A097080.P15306167688051301207.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A097080

/-! ## A097080.P14457455443180543012

`ogf((3-2x+3x^2)/(1-3x+3x^2-x^3))`
-/

namespace A097080.P14457455443180543012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -2, 3] [1, -3, 3, -1] n

end

end A097080.P14457455443180543012

namespace A097080

/-- `ogf((3-2x+3x^2)/(1-3x+3x^2-x^3))` -/
def P14457455443180543012.Spec : Prop :=
  ∀ n, P14457455443180543012.a n = A097080 (n + 1)

end A097080

/-! ## A097080.P15306167688051301207

`2*(n+1)²-2*(n+1)+3`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A097080

/-- `2*(n+1)²-2*(n+1)+3` -/
def P15306167688051301207.Spec : Prop :=
  ∀ n, P15306167688051301207.a n = A097080 (n + 1)

theorem P15306167688051301207.correct : P15306167688051301207.Spec := by
  intro n
  simp only [A097080, Nat.add_sub_cancel]

end A097080

/-! ## A097080.P8469763082800352057

`or(3, ∑[4*n])`
-/

namespace A097080.P8469763082800352057
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 3 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A097080.P8469763082800352057

namespace A097080

/-- `or(3, ∑[4*n])` -/
def P8469763082800352057.Spec : Prop :=
  ∀ n, (P8469763082800352057.a n : ℤ) = A097080 (n + 1)

end A097080

/-! ## A097080.P9942405041736117122

`xor(3, ∑[4*n])`
-/

namespace A097080.P9942405041736117122
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A097080.P9942405041736117122

namespace A097080

/-- `xor(3, ∑[4*n])` -/
def P9942405041736117122.Spec : Prop :=
  ∀ n, (P9942405041736117122.a n : ℤ) = A097080 (n + 1)

end A097080

/-! ## A097080.P9064157736305054778

`ceil(2/Δ[atan(n)])`
-/

namespace A097080.P9064157736305054778
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 / (f1 (n + 1) - f1 n)⌉

end

end A097080.P9064157736305054778

namespace A097080

/-- `ceil(2/Δ[atan(n)])` -/
def P9064157736305054778.Spec : Prop :=
  ∀ n, P9064157736305054778.a n = A097080 (n + 1)

end A097080

/-! ## A097080.P1593451743666465564

`4*C(n+1, 2)+3`
-/

namespace A097080.P1593451743666465564
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * Nat.choose (n + 1) 2 + 3

end

end A097080.P1593451743666465564

namespace A097080

/-- `4*C(n+1, 2)+3` -/
def P1593451743666465564.Spec : Prop :=
  ∀ n, (P1593451743666465564.a n : ℤ) = A097080 (n + 1)

theorem P1593451743666465564.correct : P1593451743666465564.Spec := by
  intro n
  simp only [A097080, Nat.add_sub_cancel, A097080.P1593451743666465564.a, A097080.P15306167688051301207.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A097080

/-! ## A097080.P1933576998347171394

`∑[a(n-1)+4]` with `a(0)=3, a(1)=4`
-/

namespace A097080.P1933576998347171394
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 4] fun n f1 =>
  f1 (n - 1) + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097080.P1933576998347171394

namespace A097080

/-- `∑[a(n-1)+4]` -/
def P1933576998347171394.Spec : Prop :=
  ∀ n, (P1933576998347171394.a n : ℤ) = A097080 (n + 1)

end A097080

/-! ## A097080.P4584963111709669121

`∑[ogf((3-2x+3x^2)/(1-2x+x^2))]`
-/

namespace A097080.P4584963111709669121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -2, 3] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097080.P4584963111709669121

namespace A097080

/-- `∑[ogf((3-2x+3x^2)/(1-2x+x^2))]` -/
def P4584963111709669121.Spec : Prop :=
  ∀ n, P4584963111709669121.a n = A097080 (n + 1)

end A097080

/-! ## A097080.P12832679152698374079

`∑[4*n%a(n-1)]` with `a(0)=3`
-/

namespace A097080.P12832679152698374079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3] fun n f1 =>
  4 * (n % f1 (n - 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097080.P12832679152698374079

namespace A097080

/-- `∑[4*n%a(n-1)]` -/
def P12832679152698374079.Spec : Prop :=
  ∀ n, (P12832679152698374079.a n : ℤ) = A097080 (n + 1)

end A097080

/-! ## A097080.P11872583805681929633

`∑[record[xor(3, abs(1-n))]+1]`
-/

namespace A097080.P11872583805681929633
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 3 |1 - (n : ℤ)|

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097080.P11872583805681929633

namespace A097080

/-- `∑[record[xor(3, abs(1-n))]+1]` -/
def P11872583805681929633.Spec : Prop :=
  ∀ n, P11872583805681929633.a n = A097080 (n + 1)

end A097080

/-! ## A097080.P13583612351343879801

`ceil(2/acot(n²+1+n))`
-/

namespace A097080.P13583612351343879801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 / SequenceMachineLib.acot (n ^ 2 + 1 + n : ℝ)⌉

end

end A097080.P13583612351343879801

namespace A097080

/-- `ceil(2/acot(n²+1+n))` -/
def P13583612351343879801.Spec : Prop :=
  ∀ n, P13583612351343879801.a n = A097080 (n + 1)

end A097080

/-! ## A097080.P995496290863873742

`ceil(2/(atan(n+1)-atan(n)))`
-/

namespace A097080.P995496290863873742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 / (Real.arctan (n + 1 : ℝ) - Real.arctan (n : ℝ))⌉

end

end A097080.P995496290863873742

namespace A097080

/-- `ceil(2/(atan(n+1)-atan(n)))` -/
def P995496290863873742.Spec : Prop :=
  ∀ n, P995496290863873742.a n = A097080 (n + 1)

end A097080

/-! ## A097080.P14486311225479912410

`ceil(2/(acot(n)-acot(n+1)))`
-/

namespace A097080.P14486311225479912410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 / (SequenceMachineLib.acot (n : ℝ) - SequenceMachineLib.acot (n + 1 : ℝ))⌉

end

end A097080.P14486311225479912410

namespace A097080

/-- `ceil(2/(acot(n)-acot(n+1)))` -/
def P14486311225479912410.Spec : Prop :=
  ∀ n, P14486311225479912410.a n = A097080 (n + 1)

end A097080

/-! ## A097080.P9894129033587097578

`(6-∑[a(n-1)-8])/2` with `a(0)=0`
-/

namespace A097080.P9894129033587097578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) - 8

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((6 - ∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A097080.P9894129033587097578

namespace A097080

/-- `(6-∑[a(n-1)-8])/2` -/
def P9894129033587097578.Spec : Prop :=
  ∀ n, P9894129033587097578.a n = (A097080 (n + 1) : ℚ)

end A097080

/-! ## A097080.P15258763666930635575

`floor(5*n-(n-a(n-1)))` with `a(0)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A097080.P15258763666930635575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  (5 * n : ℤ) - ((n : ℤ) - a (n - 1))

end

end A097080.P15258763666930635575

namespace A097080

/-- `floor(5*n-(n-a(n-1)))` -/
def P15258763666930635575.Spec : Prop :=
  ∀ n, P15258763666930635575.a n = A097080 (n + 1)

theorem P15258763666930635575.correct : P15258763666930635575.Spec := by
  intro n
  induction n with
  | zero => simp [A097080, A097080.P15258763666930635575.a, A097080.P15306167688051301207.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A097080, Nat.add_sub_cancel, A097080.P15258763666930635575.a, A097080.P15306167688051301207.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A097080

/-! ## A097080.P10517851754928214186

`5*(n-(n-a(n-1))/5)` with `a(0)=3`
-/

namespace A097080.P10517851754928214186
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [3] fun n a =>
  5 * ((n : ℚ) - ((n : ℚ) - a (n - 1)) / 5)

end

end A097080.P10517851754928214186

namespace A097080

/-- `5*(n-(n-a(n-1))/5)` -/
def P10517851754928214186.Spec : Prop :=
  ∀ n, P10517851754928214186.a n = (A097080 (n + 1) : ℚ)

theorem P10517851754928214186.correct : P10517851754928214186.Spec := by
  intro n
  induction n with
  | zero => simp [A097080, A097080.P10517851754928214186.a, A097080.P15306167688051301207.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A097080, Nat.add_sub_cancel, A097080.P10517851754928214186.a, A097080.P15306167688051301207.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A097080

/-! ## A097080.P216459625120933960

`∑[n*(4*n-a(n-1))]` with `a(0)=3, a(1)=4`
-/

namespace A097080.P216459625120933960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 4] fun n f1 =>
  (n : ℤ) * ((4 * n : ℤ) - f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097080.P216459625120933960

namespace A097080

/-- `∑[n*(4*n-a(n-1))]` -/
def P216459625120933960.Spec : Prop :=
  ∀ n, P216459625120933960.a n = A097080 (n + 1)

end A097080

/-! ## A097080.P16550626160178395001

`floor(n-(∑[a(n-1)-4]-4))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A097080.P16550626160178395001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (∑ j ∈ Finset.range (n + 1), f1 j - 4)

end

end A097080.P16550626160178395001

namespace A097080

/-- `floor(n-(∑[a(n-1)-4]-4))` -/
def P16550626160178395001.Spec : Prop :=
  ∀ n, P16550626160178395001.a n = A097080 (n + 1)

end A097080

/-! ## A097080.P12236302880987341013

`floor(a(n-1)+n+n+n+n)` with `a(0)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A097080.P12236302880987341013
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  a (n - 1) + n + n + n + n

end

end A097080.P12236302880987341013

namespace A097080

/-- `floor(a(n-1)+n+n+n+n)` -/
def P12236302880987341013.Spec : Prop :=
  ∀ n, (P12236302880987341013.a n : ℤ) = A097080 (n + 1)

theorem P12236302880987341013.correct : P12236302880987341013.Spec := by
  intro n
  induction n with
  | zero => simp [A097080, A097080.P12236302880987341013.a, A097080.P15306167688051301207.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A097080, Nat.add_sub_cancel, A097080.P12236302880987341013.a, A097080.P15306167688051301207.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A097080

/-!
# A097081: a(n) = Sum_{k=0..n} C(n,4k)*2^k.

The programs for A097081, the canonical program `A097081.P10614382462665051394` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097081 has offset 0).

The definition of A097081 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A097081.P17211343424345068510

`ogf((1-3x+3x^2-x^3)/(1-4x+6x^2-4x^3-x^4))`
-/

namespace A097081.P17211343424345068510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -3, 3, -1] [1, -4, 6, -4, -1] n

end

end A097081.P17211343424345068510

namespace A097081

/-- `ogf((1-3x+3x^2-x^3)/(1-4x+6x^2-4x^3-x^4))` -/
def P17211343424345068510.Spec : Prop :=
  ∀ n, P17211343424345068510.a n = A097081 n

end A097081

/-! ## A097081.P10614382462665051394

`4*a(n-1)-6*a(n-2)+4*a(n-3)+a(n-4)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A097081

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)+a(n-4)` -/
def P10614382462665051394.Spec : Prop :=
  ∀ n, P10614382462665051394.a n = A097081 n

theorem P10614382462665051394.correct : P10614382462665051394.Spec := by
  intro n
  simp only [A097081]

end A097081

/-! ## A097081.P9276206876521171613

`∑{#}[floor(n/2), C(n, 4*#)*2^#]`
-/

namespace A097081.P9276206876521171613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, Nat.choose n (4 * k) * 2 ^ k

end

end A097081.P9276206876521171613

namespace A097081

/-- `∑{#}[floor(n/2), C(n, 4*#)*2^#]` -/
def P9276206876521171613.Spec : Prop :=
  ∀ n, (P9276206876521171613.a n : ℤ) = A097081 n

end A097081

/-! ## A097081.P9705263234928132649

`A093406(A004271(n+1)-n)`
-/

namespace A097081.P9705263234928132649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093406 (A004271 (n + 1) - (n : ℤ)).toNat

end

end A097081.P9705263234928132649

namespace A097081

/-- `A093406(A004271(n+1)-n)` -/
def P9705263234928132649.Spec : Prop :=
  ∀ n, P9705263234928132649.a n = A097081 n

end A097081

/-! ## A097081.P9762407291652689661

`A093406(gcd(2-n, A001710(n)))`
-/

namespace A097081.P9762407291652689661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093406 (Int.gcd (2 - (n : ℤ)) (A001710 n))

end

end A097081.P9762407291652689661

namespace A097081

/-- `A093406(gcd(2-n, A001710(n)))` -/
def P9762407291652689661.Spec : Prop :=
  ∀ n, P9762407291652689661.a n = A097081 n

end A097081

/-! ## A097081.P11054616378430340999

`A093406(gcd(A001710(n), A289207(n)))`
-/

namespace A097081.P11054616378430340999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093406 (Int.gcd (A001710 n) (A289207 n))

end

end A097081.P11054616378430340999

namespace A097081

/-- `A093406(gcd(A001710(n), A289207(n)))` -/
def P11054616378430340999.Spec : Prop :=
  ∀ n, P11054616378430340999.a n = A097081 n

end A097081

/-!
# A097083: Positive values of k such that there is exactly one permutation p of (1,2,3,...,k) such that i+p(i) is a Fibonacci number for 1<=i<=k.

The programs for A097083, the canonical program `A097083.P11635030699114570695` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097083 has offset 1).

The definition of A097083 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A097083.P13108174334054655234

`ogf(1/(1-2x+x^2-x^3+x^5))`
-/

namespace A097083.P13108174334054655234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -2, 1, -1, 0, 1] n

end

end A097083.P13108174334054655234

namespace A097083

/-- `ogf(1/(1-2x+x^2-x^3+x^5))` -/
def P13108174334054655234.Spec : Prop :=
  ∀ n, P13108174334054655234.a n = A097083 (n + 1)

end A097083

/-! ## A097083.P4225532609512305653

`a(n-1)+a(n-2)+((n+1)*(n+2)/2)%2` with `a(0)=1, a(1)=2`
-/

namespace A097083.P4225532609512305653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) + a (n - 2) + Int.tmod (SequenceMachineLib.roundAway (((n + 1) * (n + 2) : ℚ) / 2)) 2

end

end A097083.P4225532609512305653

namespace A097083

/-- `a(n-1)+a(n-2)+((n+1)*(n+2)/2)%2` -/
def P4225532609512305653.Spec : Prop :=
  ∀ n, P4225532609512305653.a n = A097083 (n + 1)

end A097083

/-! ## A097083.P11635030699114570695

`2*a(n-1)-a(n-2)+a(n-3)-a(n-5)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=5, a(4)=9`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A097083

/-- `2*a(n-1)-a(n-2)+a(n-3)-a(n-5)` -/
def P11635030699114570695.Spec : Prop :=
  ∀ n, P11635030699114570695.a n = A097083 (n + 1)

theorem P11635030699114570695.correct : P11635030699114570695.Spec := by
  intro n
  simp only [A097083, Nat.add_sub_cancel]

end A097083

/-! ## A097083.P10077243587868627027

`A000032(n+4)/5-(-1)^(n+1)*A112030(n+1)/10-1/2`
-/

namespace A097083.P10077243587868627027
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000032 (n + 4) : ℚ) / 5 - ((-1) ^ (n + 1) * A112030 (n + 1) : ℚ) / 10 - (1 : ℚ) / 2

end

end A097083.P10077243587868627027

namespace A097083

/-- `A000032(n+4)/5-(-1)^(n+1)*A112030(n+1)/10-1/2` -/
def P10077243587868627027.Spec : Prop :=
  ∀ n, P10077243587868627027.a n = (A097083 (n + 1) : ℚ)

end A097083

/-! ## A097083.P1540515665332493222

`∑[n+1]%2+a(n-1)+a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A097083.P1540515665332493222
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  (∑ j ∈ Finset.range (n + 1), f1 j) % 2 + (a (n - 1) + a (n - 2))

end

end A097083.P1540515665332493222

namespace A097083

/-- `∑[n+1]%2+a(n-1)+a(n-2)` -/
def P1540515665332493222.Spec : Prop :=
  ∀ n, (P1540515665332493222.a n : ℤ) = A097083 (n + 1)

end A097083

/-! ## A097083.P5560894233316064068

`∑[a(n-1)+a(n-3)+a(n-4)]` with `a(0)=1, a(1)=1, a(2)=1, a(3)=2`
-/

namespace A097083.P5560894233316064068
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1, 2] fun n f1 =>
  f1 (n - 1) + (f1 (n - 3) + f1 (n - 4))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097083.P5560894233316064068

namespace A097083

/-- `∑[a(n-1)+a(n-3)+a(n-4)]` -/
def P5560894233316064068.Spec : Prop :=
  ∀ n, (P5560894233316064068.a n : ℤ) = A097083 (n + 1)

end A097083

/-! ## A097083.P2559402463144149665

`∑[A006498(n)]`
-/

namespace A097083.P2559402463144149665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006498 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097083.P2559402463144149665

namespace A097083

/-- `∑[A006498(n)]` -/
def P2559402463144149665.Spec : Prop :=
  ∀ n, P2559402463144149665.a n = A097083 (n + 1)

end A097083

/-! ## A097083.P15813637487007967749

`∑[A074677(n+1)]`
-/

namespace A097083.P15813637487007967749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074677 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097083.P15813637487007967749

namespace A097083

/-- `∑[A074677(n+1)]` -/
def P15813637487007967749.Spec : Prop :=
  ∀ n, P15813637487007967749.a n = A097083 (n + 1)

end A097083

/-! ## A097083.P18016850983087995877

`∑[A295680(n+3)/2]`
-/

namespace A097083.P18016850983087995877
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A295680 (n + 3) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097083.P18016850983087995877

namespace A097083

/-- `∑[A295680(n+3)/2]` -/
def P18016850983087995877.Spec : Prop :=
  ∀ n, P18016850983087995877.a n = (A097083 (n + 1) : ℚ)

end A097083

/-! ## A097083.P10662687712513242661

`A070550(n)+a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A097083.P10662687712513242661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A070550 n + a (n - 2)

end

end A097083.P10662687712513242661

namespace A097083

/-- `A070550(n)+a(n-2)` -/
def P10662687712513242661.Spec : Prop :=
  ∀ n, P10662687712513242661.a n = A097083 (n + 1)

end A097083

/-! ## A097083.P6251886746745413928

`A293411(n)+a(n-3)` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A097083.P6251886746745413928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  A293411 n + a (n - 3)

end

end A097083.P6251886746745413928

namespace A097083

/-- `A293411(n)+a(n-3)` -/
def P6251886746745413928.Spec : Prop :=
  ∀ n, P6251886746745413928.a n = A097083 (n + 1)

end A097083

/-! ## A097083.P10190400292619012706

`-ceil(A000045(n+3)/(ϕ-3))`
-/

namespace A097083.P10190400292619012706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -⌈(A000045 (n + 3) : ℝ) / (Real.goldenRatio - 3)⌉

end

end A097083.P10190400292619012706

namespace A097083

/-- `-ceil(A000045(n+3)/(ϕ-3))` -/
def P10190400292619012706.Spec : Prop :=
  ∀ n, P10190400292619012706.a n = A097083 (n + 1)

end A097083

/-! ## A097083.P16494586992750769773

`∑[A000045(n)+a(n-4)]` with `a(0)=1, a(1)=1, a(2)=1, a(3)=2`
-/

namespace A097083.P16494586992750769773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 2] fun n f1 =>
  A000045 n + f1 (n - 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097083.P16494586992750769773

namespace A097083

/-- `∑[A000045(n)+a(n-4)]` -/
def P16494586992750769773.Spec : Prop :=
  ∀ n, P16494586992750769773.a n = A097083 (n + 1)

end A097083

/-! ## A097083.P10352114713102725646

`A000045(n+2)+a(n-4)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=5`
-/

namespace A097083.P10352114713102725646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3, 5] fun n a =>
  A000045 (n + 2) + a (n - 4)

end

end A097083.P10352114713102725646

namespace A097083

/-- `A000045(n+2)+a(n-4)` -/
def P10352114713102725646.Spec : Prop :=
  ∀ n, P10352114713102725646.a n = A097083 (n + 1)

end A097083

/-! ## A097083.P2397628003720985740

`∑[A000045(2*n-(n-1))]-a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A097083.P2397628003720985740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - a (n - 2)

end

end A097083.P2397628003720985740

namespace A097083

/-- `∑[A000045(2*n-(n-1))]-a(n-2)` -/
def P2397628003720985740.Spec : Prop :=
  ∀ n, P2397628003720985740.a n = A097083 (n + 1)

end A097083

/-! ## A097083.P3329223481849307479

`∑[A070550(n)-A074677(n)]`
-/

namespace A097083.P3329223481849307479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070550 n - A074677 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097083.P3329223481849307479

namespace A097083

/-- `∑[A070550(n)-A074677(n)]` -/
def P3329223481849307479.Spec : Prop :=
  ∀ n, P3329223481849307479.a n = A097083 (n + 1)

end A097083

/-! ## A097083.P8166881555074686428

`A192758(n+1)+A008621(n)`
-/

namespace A097083.P8166881555074686428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192758 (n + 1) + A008621 n

end

end A097083.P8166881555074686428

namespace A097083

/-- `A192758(n+1)+A008621(n)` -/
def P8166881555074686428.Spec : Prop :=
  ∀ n, P8166881555074686428.a n = A097083 (n + 1)

end A097083

/-! ## A097083.P16085866445616895912

`A080239(n+2)-A011765(n+1)`
-/

namespace A097083.P16085866445616895912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080239 (n + 2) - A011765 (n + 1)

end

end A097083.P16085866445616895912

namespace A097083

/-- `A080239(n+2)-A011765(n+1)` -/
def P16085866445616895912.Spec : Prop :=
  ∀ n, P16085866445616895912.a n = A097083 (n + 1)

end A097083

/-! ## A097083.P3496016436359658775

`A080239(n+2)-A121262(n+1)`
-/

namespace A097083.P3496016436359658775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080239 (n + 2) - A121262 (n + 1)

end

end A097083.P3496016436359658775

namespace A097083

/-- `A080239(n+2)-A121262(n+1)` -/
def P3496016436359658775.Spec : Prop :=
  ∀ n, P3496016436359658775.a n = A097083 (n + 1)

end A097083

/-! ## A097083.P12425857194828588207

`A166486(n+1)+A080239(n+2)-1`
-/

namespace A097083.P12425857194828588207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166486 (n + 1) + (A080239 (n + 2) - 1)

end

end A097083.P12425857194828588207

namespace A097083

/-- `A166486(n+1)+A080239(n+2)-1` -/
def P12425857194828588207.Spec : Prop :=
  ∀ n, P12425857194828588207.a n = A097083 (n + 1)

end A097083

/-!
# A097084: Triangle, read by rows, where the n-th diagonal equals the n-th row transformed by triangle A008459 (squared binomial coefficients).

The programs for A097084, there is no canonical definition to state claims against.
-/

/-! ## A097084.P3906803152364191817

`A034254(lt[A378398(3*n+2), A228335(n)])`
-/

namespace A097084.P3906803152364191817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378398 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228335 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034254 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A097084.P3906803152364191817

/-! ## A097084.P11405749611558866421

`A390813(A123352(n))`
-/

namespace A097084.P11405749611558866421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390813 (A123352 n).toNat

end

end A097084.P11405749611558866421

/-! ## A097084.P2851456428700571329

`A390813(A398069(n))`
-/

namespace A097084.P2851456428700571329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390813 (A398069 n).toNat

end

end A097084.P2851456428700571329

/-! ## A097084.P703633950135295159

`A227177(A056939(n)*A102480(n))`
-/

namespace A097084.P703633950135295159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227177 (A056939 n * A102480 n).toNat

end

end A097084.P703633950135295159

/-! ## A097084.P6595307176981678512

`A034254(A080036(n^A318757(n)))`
-/

namespace A097084.P6595307176981678512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034254 (A080036 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A318757 n : ℤ))).toNat).toNat

end

end A097084.P6595307176981678512

/-!
# A097085: Row sums of triangle A097084, in which the n-th diagonal equals the n-th row transformed by triangle A008459 (squared binomial coefficients).

The programs for A097085, there is no canonical definition to state claims against.
-/

/-! ## A097085.P13754521902464677708

`∑[A263897(n)]`
-/

namespace A097085.P13754521902464677708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263897 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097085.P13754521902464677708

/-! ## A097085.P10867831074161830863

`A263897(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A097085.P10867831074161830863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A263897 n + a (A023443 n).toNat

end

end A097085.P10867831074161830863

/-! ## A097085.P7110450775461013962

`A263897(n)+a(n-A054977(n))` with `a(0)=1`
-/

namespace A097085.P7110450775461013962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A263897 n + a ((n : ℤ) - A054977 n).toNat

end

end A097085.P7110450775461013962

/-! ## A097085.P3946247936378487559

`A263897(n)+a(n-A165471(n²))` with `a(0)=1`
-/

namespace A097085.P3946247936378487559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A263897 n + a ((n : ℤ) - A165471 (n ^ 2)).toNat

end

end A097085.P3946247936378487559

/-! ## A097085.P3917122913352041080

`a(n-1)+A263897(n)%A263902(n+1)` with `a(0)=1`
-/

namespace A097085.P3917122913352041080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A263897 n) (A263902 (n + 1))

end

end A097085.P3917122913352041080

/-!
# A097091: Number of partitions of n such that the least part occurs exactly three times.

The programs for A097091, there is no canonical definition to state claims against.
-/

/-! ## A097091.P10615451941211911759

`A238589(n+1)-A238590(n+1)`
-/

namespace A097091.P10615451941211911759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238589 (n + 1) - A238590 (n + 1)

end

end A097091.P10615451941211911759

/-! ## A097091.P2141221617455400985

`A000041(n+1)-(A238594(n+1)+A238590(n+1))`
-/

namespace A097091.P2141221617455400985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - (A238594 (n + 1) + A238590 (n + 1))

end

end A097091.P2141221617455400985

/-! ## A097091.P15406331701261331343

`A238589(n+4)-A000041(n+1)`
-/

namespace A097091.P15406331701261331343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238589 (n + 4) - A000041 (n + 1)

end

end A097091.P15406331701261331343

/-! ## A097091.P6758721578880897742

`A238589(n+4)-∑[A187219(n+1)]`
-/

namespace A097091.P6758721578880897742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187219 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238589 (n + 4) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097091.P6758721578880897742

/-! ## A097091.P15711571550518371752

`∑[Δ[A238589(n+3)]-A002865(n+1)]`
-/

namespace A097091.P15711571550518371752
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238589 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A002865 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097091.P15711571550518371752

/-! ## A097091.P10663029003492304662

`A238589(n+4)-Δ[A000070(n)]`
-/

namespace A097091.P10663029003492304662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238589 (n + 4) - (f1 (n + 1) - f1 n)

end

end A097091.P10663029003492304662

/-! ## A097091.P17826485344019645445

`A238589(n+4)-record[A035363(n)]`
-/

namespace A097091.P17826485344019645445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238589 (n + 4) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A097091.P17826485344019645445

/-! ## A097091.P4015037115944606764

`A238589(n+4)-record[A035444(n)]`
-/

namespace A097091.P4015037115944606764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238589 (n + 4) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A097091.P4015037115944606764

/-! ## A097091.P12727393431887125596

`A238589(n+4)-record[A114099(n)]`
-/

namespace A097091.P12727393431887125596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114099 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238589 (n + 4) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A097091.P12727393431887125596

/-! ## A097091.P9783408471821581497

`A096144(A152950(n+1))%A052365(n)`
-/

namespace A097091.P9783408471821581497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A096144 (A152950 (n + 1)).toNat) (A052365 n)

end

end A097091.P9783408471821581497

/-!
# A097092: Number of partitions of n such that the least part occurs exactly four times.

The programs for A097092, there is no canonical definition to state claims against.
-/

/-! ## A097092.P10546204483211398156

`A238590(n+1)-A238591(n+1)`
-/

namespace A097092.P10546204483211398156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238590 (n + 1) - A238591 (n + 1)

end

end A097092.P10546204483211398156

/-! ## A097092.P1570789825457562736

`A238589(n+1)-(A238591(n+1)+A097091(n+1))`
-/

namespace A097092.P1570789825457562736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238589 (n + 1) - (A238591 (n + 1) + A097091 (n + 1))

end

end A097092.P1570789825457562736

/-! ## A097092.P10753905056625590467

`A238590(n+5)-A000041(n+1)`
-/

namespace A097092.P10753905056625590467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238590 (n + 5) - A000041 (n + 1)

end

end A097092.P10753905056625590467

/-! ## A097092.P15659118866117677458

`A238590(n+5)-Δ[A000070(n)]`
-/

namespace A097092.P15659118866117677458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238590 (n + 5) - (f1 (n + 1) - f1 n)

end

end A097092.P15659118866117677458

/-! ## A097092.P16044110810207856459

`A238590(n+5)-record[A035363(n)]`
-/

namespace A097092.P16044110810207856459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238590 (n + 5) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A097092.P16044110810207856459

/-! ## A097092.P15194608392541637349

`A238590(n+5)-record[A035444(n)]`
-/

namespace A097092.P15194608392541637349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238590 (n + 5) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A097092.P15194608392541637349

/-! ## A097092.P2197475619287359584

`A238590(n+5)-record[A114099(n)]`
-/

namespace A097092.P2197475619287359584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114099 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238590 (n + 5) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A097092.P2197475619287359584

/-! ## A097092.P11311838739746144039

`A117989(n+1)-(A325535(n+1)+A238591(n+1))`
-/

namespace A097092.P11311838739746144039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117989 (n + 1) - (A325535 (n + 1) + A238591 (n + 1))

end

end A097092.P11311838739746144039

/-! ## A097092.P10316195977228536989

`A238590(n+5)-record[A026807(n+1)]`
-/

namespace A097092.P10316195977228536989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026807 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238590 (n + 5) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A097092.P10316195977228536989

/-!
# A097093: Number of partitions of n such that the least part occurs exactly five times.

The programs for A097093, there is no canonical definition to state claims against.
-/

/-! ## A097093.P11833184555883897576

`A238591(n+1)-A361459(n+1)`
-/

namespace A097093.P11833184555883897576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238591 (n + 1) - A361459 (n + 1)

end

end A097093.P11833184555883897576

/-! ## A097093.P2394103368541452888

`A238591(n+6)-A000041(n+1)`
-/

namespace A097093.P2394103368541452888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238591 (n + 6) - A000041 (n + 1)

end

end A097093.P2394103368541452888

/-! ## A097093.P4553600773390612002

`A238591(n+6)-record[A035363(n)]`
-/

namespace A097093.P4553600773390612002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238591 (n + 6) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A097093.P4553600773390612002

/-! ## A097093.P46744670325482356

`A238591(∑[2*n]/(n+1)+6)%record[A035363(n)]`
-/

namespace A097093.P46744670325482356
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A238591 (SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (n + 1 : ℚ) + 6)).toNat) (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n))

end

end A097093.P46744670325482356

/-! ## A097093.P3145660564565478981

`A117989(n+1)-(A325535(n+1)+A097092(n+1))-A361459(n+1)`
-/

namespace A097093.P3145660564565478981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117989 (n + 1) - (A325535 (n + 1) + A097092 (n + 1)) - A361459 (n + 1)

end

end A097093.P3145660564565478981

/-!
# A097094: Triangle, read by rows, where the self-convolution of the antidiagonal sums (A097097) equals the row sums (A097096); the row sums also equal the convolution of the main diagonal (A097095) with the Fibonacci sequence (A000045).

The programs for A097094, there is no canonical definition to state claims against.
-/

/-! ## A097094.P2266348758906148100

`or(A294453(n), A294879(A208354(n)))`
-/

namespace A097094.P2266348758906148100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A294453 n) (A294879 (A208354 n).toNat)

end

end A097094.P2266348758906148100

/-! ## A097094.P7257324133502381292

`or(A113448(A020695(n)), A294453(n))`
-/

namespace A097094.P7257324133502381292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A113448 (A020695 n).toNat) (A294453 n)

end

end A097094.P7257324133502381292

/-! ## A097094.P8052920682060479518

`or(A025441(A331966(n+1)), A294453(n))`
-/

namespace A097094.P8052920682060479518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A025441 (A331966 (n + 1)).toNat) (A294453 n)

end

end A097094.P8052920682060479518

/-!
# A097095: Main diagonal of triangle A097094; g.f. A(x) satisfies A(x)/(1-x-x^2) = A(x^2)^2/(1-x-x^3)^2.

The programs for A097095, there is no canonical definition to state claims against.
-/

/-! ## A097095.P3678026279773417250

`A097094(∑[n]+n)`
-/

namespace A097095.P3678026279773417250
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097094 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A097095.P3678026279773417250

/-! ## A097095.P197478797668699537

`A185284(n)+A097094(A000096(n))`
-/

namespace A097095.P197478797668699537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 n + A097094 (A000096 n).toNat

end

end A097095.P197478797668699537

/-! ## A097095.P3734768141425137450

`or(A063524(n), A097094(A000096(n)))`
-/

namespace A097095.P3734768141425137450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A063524 n) (A097094 (A000096 n).toNat)

end

end A097095.P3734768141425137450

/-! ## A097095.P2677911126478991519

`A097094(A000096(n))+A063524(3*n+4)`
-/

namespace A097095.P2677911126478991519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097094 (A000096 n).toNat + A063524 (3 * n + 4)

end

end A097095.P2677911126478991519

/-! ## A097095.P1767470903407470975

`A238457(A052527(2*(n+1))-A006842(n+3))`
-/

namespace A097095.P1767470903407470975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238457 (A052527 (2 * (n + 1)) - A006842 (n + 3)).toNat

end

end A097095.P1767470903407470975

/-!
# A097096: Row sums of triangle A097094 and also equals the self-convolution of A097097 (antidiagonal sums of triangle A097094).

The programs for A097096, there is no canonical definition to state claims against.
-/

/-! ## A097096.P12384424342688373830

`∑{#}[n, A097097(#)*A097097(n-#)]`
-/

namespace A097096.P12384424342688373830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A097097 k * A097097 (n - k)

end

end A097096.P12384424342688373830

/-! ## A097096.P3650138256711239694

`∑[A321728(A321728(n))+A006171(n)]`
-/

namespace A097096.P3650138256711239694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321728 (A321728 n).toNat + A006171 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097096.P3650138256711239694

/-! ## A097096.P6919910998972539043

`A057142(A001700(n))+A053603(n)`
-/

namespace A097096.P6919910998972539043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057142 (A001700 n).toNat + A053603 n

end

end A097096.P6919910998972539043

/-! ## A097096.P200453714992027515

`A055086(A000041(2*n)*A001405(n))`
-/

namespace A097096.P200453714992027515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (A000041 (2 * n) * A001405 n).toNat

end

end A097096.P200453714992027515

/-!
# A097097: Antidiagonal sums of triangle A097094, where self-convolution forms A097096 (row sums of triangle A097094).

The programs for A097097, there is no canonical definition to state claims against.
-/

/-! ## A097097.P16240368027862351968

`floor(record[floor(A266580(n+2)/(n+2))/2])`
-/

namespace A097097.P16240368027862351968
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌊(A266580 (n + 2) : ℚ) / (n + 2 : ℚ)⌋ : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)⌋

end

end A097097.P16240368027862351968

/-! ## A097097.P4557769205184038701

`A351846(A026522(n+3))`
-/

namespace A097097.P4557769205184038701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351846 (A026522 (n + 3)).toNat

end

end A097097.P4557769205184038701

/-! ## A097097.P1143059668599507009

`A089869(floor(sqrt(A026549(n))))`
-/

namespace A097097.P1143059668599507009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089869 (Int.sqrt (A026549 n)).toNat

end

end A097097.P1143059668599507009

/-! ## A097097.P3564019948098756160

`A259899(A116383(n))+floor((n+1)/9)`
-/

namespace A097097.P3564019948098756160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259899 (A116383 n).toNat + ⌊(n + 1 : ℚ) / 9⌋

end

end A097097.P3564019948098756160

/-! ## A097097.P3058104455581197024

`A227394(A082766(n+2))+floor((n+1)/9)`
-/

namespace A097097.P3058104455581197024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227394 (A082766 (n + 2)).toNat + ⌊(n + 1 : ℚ) / 9⌋

end

end A097097.P3058104455581197024

/-!
# A097098: Triangle read by rows: T(n,k) is the number of peakless Motzkin paths of length n and having a total of k level steps (1,0) to the left of the first (1,1) step and to the right of the last (1,-1) step (i.e., total length of the two tails is k; can be easily expressed in terms of RNA secondary structure terminology).

The programs for A097098, there is no canonical definition to state claims against.
-/

/-! ## A097098.P4074279115746756812

`A180198(A089731(n))%A179423(A089731(n))`
-/

namespace A097098.P4074279115746756812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A180198 (A089731 n).toNat) (A179423 (A089731 n).toNat)

end

end A097098.P4074279115746756812

/-! ## A097098.P6685821881099873738

`A127287(A089731(n)%A141214(n))`
-/

namespace A097098.P6685821881099873738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127287 (Int.tmod (A089731 n) (A141214 n)).toNat

end

end A097098.P6685821881099873738

/-! ## A097098.P15856962202276269938

`A127287(A089731(n))%A180198(2*n+3)`
-/

namespace A097098.P15856962202276269938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A127287 (A089731 n).toNat) (A180198 (2 * n + 3))

end

end A097098.P15856962202276269938

/-! ## A097098.P1419008394816733270

`A233279(A089731(n))%p?[A094670(n)]`
-/

namespace A097098.P1419008394816733270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094670 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A233279 (A089731 n).toNat) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A097098.P1419008394816733270

