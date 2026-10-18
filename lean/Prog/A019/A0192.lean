import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C022
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C034
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B008.C000
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
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024

/-!
# A019201: Cycle class sequence c(n) (the number of true cycles of length n in which a certain node is included) for zeolite NAT = Natrolite Na16[Al16Si24O80].16H2O starting from a T2 atom.

The programs for A019201, there is no canonical definition to state claims against.
-/

/-! ## A019201.P7467135819613543865

`and(A056927(10*n+9), A327534(9*n+4))²`
-/

namespace A019201.P7467135819613543865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A056927 (10 * n + 9)) (A327534 (9 * n + 4)) ^ 2

end

end A019201.P7467135819613543865

/-! ## A019201.P1176706312849225429

`A008586(A214199(n)^A048993(n))`
-/

namespace A019201.P1176706312849225429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 (SequenceMachineLib.roundAway ((A214199 n : ℚ) ^ (A048993 n : ℤ))).toNat

end

end A019201.P1176706312849225429

/-! ## A019201.P5028014631773975026

`and(A002906(n), A047711(A062344(n)))`
-/

namespace A019201.P5028014631773975026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A002906 n) (A047711 (A062344 n).toNat)

end

end A019201.P5028014631773975026

/-! ## A019201.P4497562129333669126

`and(A071373(A277103(n+4)), A120071(n))`
-/

namespace A019201.P4497562129333669126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A071373 (A277103 (n + 4)).toNat) (A120071 n)

end

end A019201.P4497562129333669126

/-!
# A019208: Cycle class sequence c(n) (the number of true cycles of length n in which a certain node is included) for zeolite NES = NU-87 H4[Al4Si64O136].nH2O starting with a T7 atom.

The programs for A019208, there is no canonical definition to state claims against.
-/

/-! ## A019208.P13799872485470579047

`A182635(A324088(n+1))+A019129(n+3)`
-/

namespace A019208.P13799872485470579047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182635 (A324088 (n + 1)).toNat + A019129 (n + 3)

end

end A019208.P13799872485470579047

/-!
# A019215: Cycle class sequence c(n) (the number of true cycles of length n in which a certain node is included) for zeolite RON = Roggianite Ca16[Be8Al16Si32O104(OH)16].19H2O starting with a T3 atom.

The programs for A019215, there is no canonical definition to state claims against.
-/

/-! ## A019215.P12306598850405100774

`A074989(A061285(n+2)-char[2^n-1])`
-/

namespace A019215.P12306598850405100774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074989 (A061285 (n + 2) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)).toNat

end

end A019215.P12306598850405100774

/-! ## A019215.P5340854384260399135

`A002033(A006897(n))*A010673(n)`
-/

namespace A019215.P5340854384260399135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002033 (A006897 n).toNat * A010673 n

end

end A019215.P5340854384260399135

/-! ## A019215.P4178052888177181241

`and(A087459(A023872(n)), A286704(n))`
-/

namespace A019215.P4178052888177181241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A087459 (A023872 n).toNat) (A286704 n)

end

end A019215.P4178052888177181241

/-! ## A019215.P12882941916806013888

`A073610(A249998(n)+A249982(n+3))`
-/

namespace A019215.P12882941916806013888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073610 (A249998 n + A249982 (n + 3)).toNat

end

end A019215.P12882941916806013888

/-!
# A019216: Cycle class sequence c(n) (the number of true cycles of length n in which a certain node is included) for zeolite RON = Roggianite Ca16[Be8Al16Si32O104(OH)16].19H2O starting with a T4 atom.

The programs for A019216, there is no canonical definition to state claims against.
-/

/-! ## A019216.P6178498301819344317

`and(A112336(n), A213424(A000045(n)))`
-/

namespace A019216.P6178498301819344317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A112336 n) (A213424 ((A000045 n).toNat + 10))

end

end A019216.P6178498301819344317

/-! ## A019216.P12039344067682738032

`A113415(n+1)*A343380(A000045(n))`
-/

namespace A019216.P12039344067682738032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113415 (n + 1) * A343380 (A000045 n).toNat

end

end A019216.P12039344067682738032

/-! ## A019216.P16855656034440051485

`and(A000136(n+1), A002260(A086441(n+1)))`
-/

namespace A019216.P16855656034440051485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000136 (n + 1)) (A002260 (A086441 (n + 1)).toNat)

end

end A019216.P16855656034440051485

/-! ## A019216.P706144404953521260

`and(A000196(A146850(n+1)), A237836(n+1))`
-/

namespace A019216.P706144404953521260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000196 (A146850 (n + 1)).toNat) (A237836 (n + 1))

end

end A019216.P706144404953521260

/-!
# A019218: Cycle class sequence c(n) (the number of true cycles of length n in which a certain node is included) for zeolite RSN = RUB-17 K4Na12[Zn8Si28O72].18H2O starting with a T4 atom.

The programs for A019218, there is no canonical definition to state claims against.
-/

/-! ## A019218.P13481397561278708248

`A279329(A260111(n)+4)+A019259(n+3)`
-/

namespace A019218.P13481397561278708248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279329 (A260111 n + 4).toNat + A019259 (n + 3)

end

end A019218.P13481397561278708248

/-!
# A019223: Cycle class sequence c(n) (the number of true cycles of length n in which a certain node is included) for zeolite RTE = RUB-3 [Si24O48].2R starting with a T3 atom.

The programs for A019223, there is no canonical definition to state claims against.
-/

/-! ## A019223.P14653575373493559920

`A261097(A238578(n))`
-/

namespace A019223.P14653575373493559920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261097 (A238578 n).toNat

end

end A019223.P14653575373493559920

/-! ## A019223.P14088109264290308053

`A085863(A004080(n+2)+A001359(n+1))`
-/

namespace A019223.P14088109264290308053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085863 (A004080 (n + 2) + A001359 (n + 1)).toNat

end

end A019223.P14088109264290308053

/-!
# A019225: Cycle class sequence c(n) (the number of true cycles of length n in which a certain node is included) for zeolite RTE = RUB-3 [Si24O48].2R starting with a T1 atom.

The programs for A019225, there is no canonical definition to state claims against.
-/

/-! ## A019225.P847594921842129227

`A004396(n)*A106737(A152445(n))`
-/

namespace A019225.P847594921842129227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n * A106737 (A152445 n).toNat

end

end A019225.P847594921842129227

/-! ## A019225.P10108581851924314721

`A004396(n)*A131308(A022867(n+1))`
-/

namespace A019225.P10108581851924314721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n * A131308 (A022867 (n + 1)).toNat

end

end A019225.P10108581851924314721

/-! ## A019225.P7678317513231481459

`A074753(n+1)*A106737(A152445(n))`
-/

namespace A019225.P7678317513231481459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074753 (n + 1) * A106737 (A152445 n).toNat

end

end A019225.P7678317513231481459

/-! ## A019225.P7848993712604668323

`A074753(n+1)*A131308(A022867(n+1))`
-/

namespace A019225.P7848993712604668323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074753 (n + 1) * A131308 (A022867 (n + 1)).toNat

end

end A019225.P7848993712604668323

/-!
# A019231: Cycle class sequence c(n) (the number of true cycles of length n in which a certain node is included) for zeolite RUT = RUB-10 R4[B4Si32O72] starting from a T4 atom.

The programs for A019231, there is no canonical definition to state claims against.
-/

/-! ## A019231.P15498165492071337163

`A261663(n)-A188083(A072853(n+1))`
-/

namespace A019231.P15498165492071337163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261663 n - A188083 (A072853 (n + 1)).toNat

end

end A019231.P15498165492071337163

/-!
# A019246: Cycle class sequence c(n) (the number of true cycles of length n in which a certain node is included) for zeolite TON = Theta-1 Nan[AlnSi24-nO48] starting with a T4 atom.

The programs for A019246, there is no canonical definition to state claims against.
-/

/-! ## A019246.P16552650837106005322

`A019192(n+3)-A048484(A181061(n))`
-/

namespace A019246.P16552650837106005322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019192 (n + 3) - A048484 (A181061 n).toNat

end

end A019246.P16552650837106005322

/-!
# A019250: Cycle class sequence c(n) (the number of true cycles of length n in which a certain node is included) for zeolite VET = VPI-8 [Si17O34] starting with a T4 atom.

The programs for A019250, there is no canonical definition to state claims against.
-/

/-! ## A019250.P12513990057526726509

`A178798(A011782(n))+A019159(n+3)`
-/

namespace A019250.P12513990057526726509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178798 (A011782 n).toNat + A019159 (n + 3)

end

end A019250.P12513990057526726509

/-!
# A019266: Cycle class sequence c(2n) (the number of true cycles of length 2n in which a certain node is included) for square lattice.

The programs for A019266, there is no canonical definition to state claims against.
-/

/-! ## A019266.P6165858532602493143

`A159977(A307469(n))`
-/

namespace A019266.P6165858532602493143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159977 (A307469 n).toNat

end

end A019266.P6165858532602493143

/-! ## A019266.P2528320367923599958

`A034444(A126501(n))*A053530(n)`
-/

namespace A019266.P2528320367923599958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (A126501 n).toNat * A053530 n

end

end A019266.P2528320367923599958

/-!
# A019268: Let Dedekind's psi(m) = product of (p+1)p^(e-1) for primes p, where p^e is a factor of m. Iterating psi(m) eventually results in a number of form 2^x*3^y. a(n) is the smallest number that requires n steps to reach such a number.

The programs for A019268, there is no canonical definition to state claims against.
-/

/-! ## A019268.P6954427927838312622

`A000203(A035513(a(n-1)+n²)+1)+1` with `a(0)=1`
-/

namespace A019268.P6954427927838312622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000203 (A035513 (a (n - 1) + (n ^ 2 : ℤ)).toNat + 1).toNat + 1

end

end A019268.P6954427927838312622

/-! ## A019268.P13873256234782420772

`A277749(A000079(n+3)*A094388(n))`
-/

namespace A019268.P13873256234782420772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277749 (A000079 (n + 3) * A094388 n).toNat

end

end A019268.P13873256234782420772

/-!
# A019269: Let Dedekind's psi(m) = product of (p+1)p^(e-1) for primes p, where p^e is a factor of m. Iterating psi(m) eventually results in a number of form 2^a*3^b. a(n) is the number of steps to reach such a number.

The programs for A019269, there is no canonical definition to state claims against.
-/

/-! ## A019269.P7869395223693240264

`A065373(∑{d}[∏{p}[n+1, #], (n+1)/#]²)%A065371(n+1)`
-/

namespace A019269.P7869395223693240264
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065373 (SequenceMachineLib.roundAway ((∑ d ∈ Nat.divisors (f1 n), (n + 1 : ℚ) / (d : ℚ)) ^ 2)).toNat) (A065371 (n + 1))

end

end A019269.P7869395223693240264

/-! ## A019269.P17503744371249146835

`A008624(A272760(A299200((n+1)²)))`
-/

namespace A019269.P17503744371249146835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (A272760 (A299200 ((n + 1) ^ 2)).toNat).toNat

end

end A019269.P17503744371249146835

/-! ## A019269.P15701432180976861442

`A106799(A181797(2*(n+1)))`
-/

namespace A019269.P15701432180976861442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106799 (A181797 (2 * (n + 1))).toNat

end

end A019269.P15701432180976861442

/-! ## A019269.P16809498983977438359

`A171157(∏{d}[A065330(n+1), A000217(#)])`
-/

namespace A019269.P16809498983977438359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065330 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171157 (∏ d ∈ Nat.divisors (f1 n).natAbs, A000217 d).toNat

end

end A019269.P16809498983977438359

/-! ## A019269.P6084602913835831070

`A284256(A000003(n+1)*A181797(n+1))`
-/

namespace A019269.P6084602913835831070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284256 (A000003 (n + 1) * A181797 (n + 1)).toNat

end

end A019269.P6084602913835831070

/-!
# A019273: First run of n consecutive integers with same number of divisors ends at a(n).

The programs for A019273, there is no canonical definition to state claims against.
-/

/-! ## A019273.P15550605750834345290

`A006558(n+1)+n`
-/

namespace A019273.P15550605750834345290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006558 (n + 1) + (n : ℤ)

end

end A019273.P15550605750834345290

/-! ## A019273.P9450930345960546807

`A376557(∑[n+1])`
-/

namespace A019273.P9450930345960546807
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376557 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A019273.P9450930345960546807

/-! ## A019273.P10792209778315219917

`A113465(∑[n]+1)+n`
-/

namespace A019273.P10792209778315219917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113465 (∑ j ∈ Finset.range (n + 1), f1 j + 1) + (n : ℤ)

end

end A019273.P10792209778315219917

/-! ## A019273.P2926526268997785520

`record[A113465(n+1)]+n`
-/

namespace A019273.P2926526268997785520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113465 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (n : ℤ)

end

end A019273.P2926526268997785520

/-!
# A019274: Number of recursive calls needed to compute the n-th Fibonacci number F(n), starting with F(1) = F(2) = 1.

The programs for A019274, the canonical program `A019274.P14139806031149399444` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A019274 has offset 1).

The definition of A019274 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A019274.P14139806031149399444

`a(n-1)+a(n-2)+2` with `a(0)=0, a(1)=0`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A019274

/-- `a(n-1)+a(n-2)+2` -/
def P14139806031149399444.Spec : Prop :=
  ∀ n, (P14139806031149399444.a n : ℤ) = A019274 (n + 1)

theorem P14139806031149399444.correct : P14139806031149399444.Spec := by
  intro n
  simp only [A019274, Nat.add_sub_cancel]

end A019274

/-! ## A019274.P4217896508326818369

`2*a(n-1)-a(n-3)` with `a(0)=0, a(1)=0, a(2)=2`
-/

namespace A019274.P4217896508326818369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 2] fun n a =>
  2 * a (n - 1) - a (n - 3)

end

end A019274.P4217896508326818369

namespace A019274

/-- `2*a(n-1)-a(n-3)` -/
def P4217896508326818369.Spec : Prop :=
  ∀ n, P4217896508326818369.a n = A019274 (n + 1)

end A019274

/-! ## A019274.P1119603416219997577

`2*A000071(n+1)`
-/

namespace A019274.P1119603416219997577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000071 (n + 1)

end

end A019274.P1119603416219997577

namespace A019274

/-- `2*A000071(n+1)` -/
def P1119603416219997577.Spec : Prop :=
  ∀ n, P1119603416219997577.a n = A019274 (n + 1)

end A019274

/-! ## A019274.P678812582712135658

`ogf(2x^2/(1-2x+x^3))`
-/

namespace A019274.P678812582712135658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 2] [1, -2, 0, 1] n

end

end A019274.P678812582712135658

namespace A019274

/-- `ogf(2x^2/(1-2x+x^3))` -/
def P678812582712135658.Spec : Prop :=
  ∀ n, P678812582712135658.a n = A019274 (n + 1)

end A019274

/-! ## A019274.P11135126183667786364

`floor(ϕ*(a(n-1)+1))` with `a(0)=0, a(1)=0, a(2)=2`
-/

namespace A019274.P11135126183667786364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 2] fun n a =>
  ⌊Real.goldenRatio * (a (n - 1) + 1 : ℝ)⌋

end

end A019274.P11135126183667786364

namespace A019274

/-- `floor(ϕ*(a(n-1)+1))` -/
def P11135126183667786364.Spec : Prop :=
  ∀ n, P11135126183667786364.a n = A019274 (n + 1)

end A019274

/-! ## A019274.P17448235762957037040

`a(n-1)-xor(-2, a(n-2))` with `a(0)=0, a(1)=0`
-/

namespace A019274.P17448235762957037040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  a (n - 1) - Int.xor (-2) (a (n - 2))

end

end A019274.P17448235762957037040

namespace A019274

/-- `a(n-1)-xor(-2, a(n-2))` -/
def P17448235762957037040.Spec : Prop :=
  ∀ n, P17448235762957037040.a n = A019274 (n + 1)

end A019274

/-! ## A019274.P13659341102646890636

`3-floor(1-a(n-1)-a(n-2))` with `a(0)=0, a(1)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A019274.P13659341102646890636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  3 - (1 - a (n - 1) - a (n - 2))

end

end A019274.P13659341102646890636

namespace A019274

/-- `3-floor(1-a(n-1)-a(n-2))` -/
def P13659341102646890636.Spec : Prop :=
  ∀ n, P13659341102646890636.a n = A019274 (n + 1)

end A019274

/-! ## A019274.P2738483115686821218

`4-(4/2-a(n-1)-a(n-2))` with `a(0)=0, a(1)=0`
-/

namespace A019274.P2738483115686821218
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 0] fun n a =>
  4 - ((4 : ℚ) / 2 - a (n - 1) - a (n - 2))

end

end A019274.P2738483115686821218

namespace A019274

/-- `4-(4/2-a(n-1)-a(n-2))` -/
def P2738483115686821218.Spec : Prop :=
  ∀ n, P2738483115686821218.a n = (A019274 (n + 1) : ℚ)

end A019274

/-! ## A019274.P4765638420426028992

`∑[a(n-1)-(a(n-3)-a(n-1))]` with `a(0)=0, a(1)=0, a(2)=2, a(3)=2`
-/

namespace A019274.P4765638420426028992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 2, 2] fun n f1 =>
  f1 (n - 1) - (f1 (n - 3) - f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A019274.P4765638420426028992

namespace A019274

/-- `∑[a(n-1)-(a(n-3)-a(n-1))]` -/
def P4765638420426028992.Spec : Prop :=
  ∀ n, P4765638420426028992.a n = A019274 (n + 1)

end A019274

/-! ## A019274.P6927219542617341022

`a(n-1)-(a(n-1)%2-2-a(n-2))` with `a(0)=0, a(1)=0`
-/

namespace A019274.P6927219542617341022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  a (n - 1) - (Int.tmod (a (n - 1)) 2 - 2 - a (n - 2))

end

end A019274.P6927219542617341022

namespace A019274

/-- `a(n-1)-(a(n-1)%2-2-a(n-2))` -/
def P6927219542617341022.Spec : Prop :=
  ∀ n, P6927219542617341022.a n = A019274 (n + 1)

end A019274

/-! ## A019274.P7346223734352479561

`a(n-1)-(gcd(2, a(n-1))-4-a(n-2))` with `a(0)=0, a(1)=0`
-/

namespace A019274.P7346223734352479561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  a (n - 1) - ((Int.gcd 2 (a (n - 1)) : ℤ) - 4 - a (n - 2))

end

end A019274.P7346223734352479561

namespace A019274

/-- `a(n-1)-(gcd(2, a(n-1))-4-a(n-2))` -/
def P7346223734352479561.Spec : Prop :=
  ∀ n, P7346223734352479561.a n = A019274 (n + 1)

end A019274

/-! ## A019274.P675263399554733113

`A001595(n)-1`
-/

namespace A019274.P675263399554733113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001595 n - 1

end

end A019274.P675263399554733113

namespace A019274

/-- `A001595(n)-1` -/
def P675263399554733113.Spec : Prop :=
  ∀ n, P675263399554733113.a n = A019274 (n + 1)

end A019274

/-! ## A019274.P3862610600553213431

`∑[A198834(n+1)]`
-/

namespace A019274.P3862610600553213431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198834 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A019274.P3862610600553213431

namespace A019274

/-- `∑[A198834(n+1)]` -/
def P3862610600553213431.Spec : Prop :=
  ∀ n, P3862610600553213431.a n = A019274 (n + 1)

end A019274

/-! ## A019274.P2607904870720507002

`∑[A006355(n)]-1`
-/

namespace A019274.P2607904870720507002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006355 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A019274.P2607904870720507002

namespace A019274

/-- `∑[A006355(n)]-1` -/
def P2607904870720507002.Spec : Prop :=
  ∀ n, P2607904870720507002.a n = A019274 (n + 1)

end A019274

/-! ## A019274.P10384608718201561631

`∑[A118658(n)]-2`
-/

namespace A019274.P10384608718201561631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118658 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A019274.P10384608718201561631

namespace A019274

/-- `∑[A118658(n)]-2` -/
def P10384608718201561631.Spec : Prop :=
  ∀ n, P10384608718201561631.a n = A019274 (n + 1)

end A019274

/-! ## A019274.P1307349859705764578

`A055389(n+1)-2`
-/

namespace A019274.P1307349859705764578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055389 (n + 1) - 2

end

end A019274.P1307349859705764578

namespace A019274

/-- `A055389(n+1)-2` -/
def P1307349859705764578.Spec : Prop :=
  ∀ n, P1307349859705764578.a n = A019274 (n + 1)

end A019274

/-! ## A019274.P6830048523504873327

`A001588(n+1)-3`
-/

namespace A019274.P6830048523504873327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001588 (n + 1) - 3

end

end A019274.P6830048523504873327

namespace A019274

/-- `A001588(n+1)-3` -/
def P6830048523504873327.Spec : Prop :=
  ∀ n, P6830048523504873327.a n = A019274 (n + 1)

end A019274

/-! ## A019274.P991312827708089870

`A006355(n+2)-2`
-/

namespace A019274.P991312827708089870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006355 (n + 2) - 2

end

end A019274.P991312827708089870

namespace A019274

/-- `A006355(n+2)-2` -/
def P991312827708089870.Spec : Prop :=
  ∀ n, P991312827708089870.a n = A019274 (n + 1)

end A019274

/-! ## A019274.P14154706151568538018

`A118658(n+2)-2`
-/

namespace A019274.P14154706151568538018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118658 (n + 2) - 2

end

end A019274.P14154706151568538018

namespace A019274

/-- `A118658(n+2)-2` -/
def P14154706151568538018.Spec : Prop :=
  ∀ n, P14154706151568538018.a n = A019274 (n + 1)

end A019274

/-! ## A019274.P2030914809406260163

`A163733(n+3)-2`
-/

namespace A019274.P2030914809406260163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163733 (n + 3) - 2

end

end A019274.P2030914809406260163

namespace A019274

/-- `A163733(n+3)-2` -/
def P2030914809406260163.Spec : Prop :=
  ∀ n, P2030914809406260163.a n = A019274 (n + 1)

end A019274

/-!
# A019276: Megaperfect numbers: numbers n where A019294(n) = min {m: n divides sigma^(m) (n)} increases to a record; sigma^(m) means apply the sum-of-divisors function m times.

The programs for A019276, there is no canonical definition to state claims against.
-/

/-! ## A019276.P8583712951251777169

`A120431(A111333(n+1)^A136400(n))`
-/

namespace A019276.P8583712951251777169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120431 (SequenceMachineLib.roundAway ((A111333 (n + 1) : ℚ) ^ (A136400 n : ℤ))).toNat

end

end A019276.P8583712951251777169

/-! ## A019276.P16137404871814230487

`A120431(A111333(n+1)%A094776(n))`
-/

namespace A019276.P16137404871814230487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120431 (Int.tmod (A111333 (n + 1)) (A094776 n)).toNat

end

end A019276.P16137404871814230487

/-! ## A019276.P15386030989641400054

`lt[A110141(n), A000201(A037445(n+1))]`
-/

namespace A019276.P15386030989641400054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110141 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000201 (A037445 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A019276.P15386030989641400054

/-! ## A019276.P13857657448168947712

`A120431(A111333(n+1))%A019283(n+1)`
-/

namespace A019276.P13857657448168947712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A120431 (A111333 (n + 1)).toNat) (A019283 (n + 1))

end

end A019276.P13857657448168947712

/-!
# A019277: Records in A019294, number of iterations of the sigma function to reach a multiple of the starting value.

The programs for A019277, there is no canonical definition to state claims against.
-/

/-! ## A019277.P14265672312044144885

`A019294(A019276(n+1))`
-/

namespace A019277.P14265672312044144885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019294 (A019276 (n + 1)).toNat

end

end A019277.P14265672312044144885

/-! ## A019277.P10908098906407705259

`record[A019294(n+1)]`
-/

namespace A019277.P10908098906407705259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019294 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A019277.P10908098906407705259

/-!
# A019278: Numbers j such that sigma(sigma(j)) = k*j for some k.

The programs for A019278, there is no canonical definition to state claims against.
-/

/-! ## A019278.P15354622180728124871

`record[gcd(n+1, A000203(A000203(n+1)))]`
-/

namespace A019278.P15354622180728124871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A000203 (A000203 (n + 1)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A019278.P15354622180728124871

/-! ## A019278.P16559201728368308395

`record[gcd(n-1, ∑{d}[∑{d}[1-n, #], #])]`
-/

namespace A019278.P16559201728368308395
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (n : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f3 n).natAbs, d

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n : ℤ) - 1) ((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A019278.P16559201728368308395

/-! ## A019278.P3982501835234436389

`record[A353751(n+1)]`
-/

namespace A019278.P3982501835234436389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353751 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A019278.P3982501835234436389

/-! ## A019278.P16456969651735934075

`eq[1, A318060(n+1)]+1`
-/

namespace A019278.P16456969651735934075
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318060 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A019278.P16456969651735934075

/-! ## A019278.P1330683485207570975

`record[gcd(n+1, A051027(n+1))]`
-/

namespace A019278.P1330683485207570975
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A051027 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A019278.P1330683485207570975

/-!
# A019279: Superperfect numbers: numbers k such that sigma(sigma(k)) = 2*k where sigma is the sum-of-divisors function (A000203).

The programs for A019279, there is no canonical definition to state claims against.
-/

/-! ## A019279.P9497882816192243372

`2^A090748(n+1)`
-/

namespace A019279.P9497882816192243372
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A090748 (n + 1) : ℤ)

end

end A019279.P9497882816192243372

/-! ## A019279.P10689394197030192694

`(1+A000668(n+1))/2`
-/

namespace A019279.P10689394197030192694
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 + A000668 (n + 1) : ℚ) / 2

end

end A019279.P10689394197030192694

/-! ## A019279.P6715267022406456527

`2^A000043(n+1)/2`
-/

namespace A019279.P6715267022406456527
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A000043 (n + 1) : ℤ) / 2

end

end A019279.P6715267022406456527

/-! ## A019279.P10950283775935155685

`A072868(n+1)/2`
-/

namespace A019279.P10950283775935155685
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A072868 (n + 1) : ℚ) / 2

end

end A019279.P10950283775935155685

/-!
# A019280: Let sigma_m(n) be result of applying the sum-of-divisors function m times to n; call n (m,k)-perfect if sigma_m(n) = k*n; sequence gives log_2 of the (2,2)-perfect numbers.

The programs for A019280, there is no canonical definition to state claims against.
-/

/-! ## A019280.P8945069748940795757

`A090748(comp[(6*n)²])`
-/

namespace A019280.P8945069748940795757
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (6 * n) ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090748 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A019280.P8945069748940795757

/-! ## A019280.P5057013571949714479

`A090748(n+1)+char[32]`
-/

namespace A019280.P5057013571949714479
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  32

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090748 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A019280.P5057013571949714479

/-! ## A019280.P76114850538861467

`A000043(comp[39*n])-1`
-/

namespace A019280.P76114850538861467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  39 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000043 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) - 1

end

end A019280.P76114850538861467

/-! ## A019280.P15628273079307009134

`A061645(n+1)/2-(char[32]+1)²`
-/

namespace A019280.P15628273079307009134
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  32

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061645 (n + 1) : ℚ) / 2 - ((((if ∃ j, f1 j = n then 1 else 0) + 1) ^ 2 : ℕ) : ℚ)

end

end A019280.P15628273079307009134

/-! ## A019280.P1593736660764010482

`record[A090748(A269393(n+1))]`
-/

namespace A019280.P1593736660764010482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090748 (A269393 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A019280.P1593736660764010482

/-!
# A019283: Let sigma_m (n) be result of applying sum-of-divisors function m times to n; call n (m,k)-perfect if sigma_m (n) = k*n; sequence gives the (2,6)-perfect numbers.

The programs for A019283, there is no canonical definition to state claims against.
-/

/-! ## A019283.P18292751654312333502

`A115774(A003319(n)+A002342(n+1))`
-/

namespace A019283.P18292751654312333502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115774 (A003319 n + A002342 (n + 1)).toNat

end

end A019283.P18292751654312333502

/-!
# A019285: Let sigma_m (n) be result of applying sum-of-divisors function m times to n; call n (m,k)-perfect if sigma_m (n) = k*n; sequence gives the (2,8)-perfect numbers.

The programs for A019285, there is no canonical definition to state claims against.
-/

/-! ## A019285.P16785669369570101557

`A020739(9*A199638(2*n+5))`
-/

namespace A019285.P16785669369570101557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020739 (9 * A199638 (2 * n + 5)).toNat

end

end A019285.P16785669369570101557

/-!
# A019292: Let sigma_m (n) be result of applying sum-of-divisors function m times to n; call n (m,k)-perfect if sigma_m (n) = k*n; sequence gives the (3,k)-perfect numbers.

The programs for A019292, there is no canonical definition to state claims against.
-/

/-! ## A019292.P5096827271368140235

`eq[0, A000203(A051027(n+1)+A000007(n))%(n+1)]+1`
-/

namespace A019292.P5096827271368140235
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000203 (A051027 (n + 1) + A000007 n).toNat) (n + 1 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A019292.P5096827271368140235

/-!
# A019293: Let sigma_m (n) be result of applying sum-of-divisors function m times to n; call n (m,k)-perfect if sigma_m (n) = k*n; sequence gives the (4,k)-perfect numbers.

The programs for A019293, there is no canonical definition to state claims against.
-/

/-! ## A019293.P10281451093162772473

`record[gcd(n+1, A129076(n+1))]`
-/

namespace A019293.P10281451093162772473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A129076 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A019293.P10281451093162772473

/-! ## A019293.P5173857517311092695

`record[gcd(A129076(n+1), A131738(n))]`
-/

namespace A019293.P5173857517311092695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A129076 (n + 1)) (A131738 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A019293.P5173857517311092695

/-! ## A019293.P9831324490186804104

`∑[A003986(A189172(A007486(n+1)))]`
-/

namespace A019293.P9831324490186804104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003986 (A189172 (A007486 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A019293.P9831324490186804104

/-! ## A019293.P1435467604526212316

`record[floor((n+3)²/8)%A351042(n+2)]`
-/

namespace A019293.P1435467604526212316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊((n + 3) ^ 2 : ℚ) / 8⌋ (A351042 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A019293.P1435467604526212316

/-! ## A019293.P7026602509248888169

`∑[A232551(record[A303314(n+1)])]`
-/

namespace A019293.P7026602509248888169
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303314 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232551 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A019293.P7026602509248888169

/-!
# A019298: Number of balls in pyramid with base either a regular hexagon or a hexagon with alternate sides differing by 1 (balls in hexagonal pyramid of height n taken from hexagonal close-packing).

The programs for A019298, the canonical program `A019298.P2934862953537980601` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A019298 has offset 0).

The definition of A019298 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A019298.P2934862953537980601

`floor((n²+1)*(2*n+3)/8)`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A019298

/-- `floor((n²+1)*(2*n+3)/8)` -/
def P2934862953537980601.Spec : Prop :=
  ∀ n, P2934862953537980601.a n = A019298 n

theorem P2934862953537980601.correct : P2934862953537980601.Spec := by
  intro n
  simp only [A019298]

end A019298

/-! ## A019298.P11986587158684558110

`∑[∑[comp[lcm(3, n+1)]]]`
-/

namespace A019298.P11986587158684558110
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 3 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A019298.P11986587158684558110

namespace A019298

/-- `∑[∑[comp[lcm(3, n+1)]]]` -/
def P11986587158684558110.Spec : Prop :=
  ∀ n, (P11986587158684558110.a n : ℤ) = A019298 n

end A019298

/-! ## A019298.P15486750821315677355

`∑[∑[record[lcm(9, n)/9]]]`
-/

namespace A019298.P15486750821315677355
noncomputable section

def f3 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 9 n : ℚ) / 9

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A019298.P15486750821315677355

namespace A019298

/-- `∑[∑[record[lcm(9, n)/9]]]` -/
def P15486750821315677355.Spec : Prop :=
  ∀ n, P15486750821315677355.a n = (A019298 n : ℚ)

end A019298

/-! ## A019298.P294005205381295371

`∑[∑[record[n/gcd(3, n)]]]`
-/

namespace A019298.P294005205381295371
noncomputable section

def f3 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (Nat.gcd 3 n : ℚ)

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A019298.P294005205381295371

namespace A019298

/-- `∑[∑[record[n/gcd(3, n)]]]` -/
def P294005205381295371.Spec : Prop :=
  ∀ n, P294005205381295371.a n = (A019298 n : ℚ)

end A019298

/-! ## A019298.P4605827301586348948

`∑[∑[record[n*n²%3]]]`
-/

namespace A019298.P4605827301586348948
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (n ^ 2 % 3)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A019298.P4605827301586348948

namespace A019298

/-- `∑[∑[record[n*n²%3]]]` -/
def P4605827301586348948.Spec : Prop :=
  ∀ n, (P4605827301586348948.a n : ℤ) = A019298 n

end A019298

/-! ## A019298.P14594268535450791852

`Δ[or(1, n^4)/4]/4`
-/

namespace A019298.P14594268535450791852
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 (n ^ 4) : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) / 4

end

end A019298.P14594268535450791852

namespace A019298

/-- `Δ[or(1, n^4)/4]/4` -/
def P14594268535450791852.Spec : Prop :=
  ∀ n, P14594268535450791852.a n = (A019298 n : ℚ)

end A019298

/-! ## A019298.P7020282709372263227

`∑[∑[comp[a(n-1)+3]]]` with `a(0)=3`
-/

namespace A019298.P7020282709372263227
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [3] fun n f3 =>
  f3 (n - 1) + 3

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A019298.P7020282709372263227

namespace A019298

/-- `∑[∑[comp[a(n-1)+3]]]` -/
def P7020282709372263227.Spec : Prop :=
  ∀ n, (P7020282709372263227.a n : ℤ) = A019298 n

end A019298

/-! ## A019298.P13087386639579664814

`∑[∑[comp[3*C(n+1, n)]]]`
-/

namespace A019298.P13087386639579664814
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * Nat.choose (n + 1) n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A019298.P13087386639579664814

namespace A019298

/-- `∑[∑[comp[3*C(n+1, n)]]]` -/
def P13087386639579664814.Spec : Prop :=
  ∀ n, (P13087386639579664814.a n : ℤ) = A019298 n

end A019298

/-! ## A019298.P15199300928897625508

`∑[∑[a(n-2)+3]]` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A019298.P15199300928897625508
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2] fun n f2 =>
  f2 (n - 2) + 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A019298.P15199300928897625508

namespace A019298

/-- `∑[∑[a(n-2)+3]]` -/
def P15199300928897625508.Spec : Prop :=
  ∀ n, (P15199300928897625508.a n : ℤ) = A019298 n

end A019298

/-! ## A019298.P10082452060402271313

`∑[∑[comp[∑[3-a(n-1)]]]]` with `a(0)=3`
-/

namespace A019298.P10082452060402271313
noncomputable section

def f4 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f4 =>
  3 - f4 (n - 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A019298.P10082452060402271313

namespace A019298

/-- `∑[∑[comp[∑[3-a(n-1)]]]]` -/
def P10082452060402271313.Spec : Prop :=
  ∀ n, (P10082452060402271313.a n : ℤ) = A019298 n

end A019298

/-! ## A019298.P9257951367610240989

`∑[∑[∑[3-a(n-1)]]]` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A019298.P9257951367610240989
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1] fun n f3 =>
  3 - f3 (n - 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A019298.P9257951367610240989

namespace A019298

/-- `∑[∑[∑[3-a(n-1)]]]` -/
def P9257951367610240989.Spec : Prop :=
  ∀ n, P9257951367610240989.a n = A019298 n

end A019298

/-! ## A019298.P2053679819947532907

`∑[ogf((x+x^2+x^3)/(1-2x+2x^3-x^4))]`
-/

namespace A019298.P2053679819947532907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 1, 1] [1, -2, 0, 2, -1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A019298.P2053679819947532907

namespace A019298

/-- `∑[ogf((x+x^2+x^3)/(1-2x+2x^3-x^4))]` -/
def P2053679819947532907.Spec : Prop :=
  ∀ n, P2053679819947532907.a n = A019298 n

end A019298

/-! ## A019298.P3571952903946687061

`(n^3+n)/2-a(n-1)` with `a(0)=0`
-/

namespace A019298.P3571952903946687061
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  (n ^ 3 + n : ℚ) / 2 - a (n - 1)

end

end A019298.P3571952903946687061

namespace A019298

/-- `(n^3+n)/2-a(n-1)` -/
def P3571952903946687061.Spec : Prop :=
  ∀ n, P3571952903946687061.a n = (A019298 n : ℚ)

end A019298

/-! ## A019298.P12616762319248181401

`C(∑[n]+1, 2)-round(n²²/8)`
-/

namespace A019298.P12616762319248181401
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j + 1) 2 : ℤ) - SequenceMachineLib.roundAway (((n ^ 2) ^ 2 : ℚ) / 8)

end

end A019298.P12616762319248181401

namespace A019298

/-- `C(∑[n]+1, 2)-round(n²²/8)` -/
def P12616762319248181401.Spec : Prop :=
  ∀ n, P12616762319248181401.a n = A019298 n

end A019298

/-! ## A019298.P1780154856388793711

`∑[∑[∑[gcd(2, n+1)]]-(2*n+1)]`
-/

namespace A019298.P1780154856388793711
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - (2 * n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A019298.P1780154856388793711

namespace A019298

/-- `∑[∑[∑[gcd(2, n+1)]]-(2*n+1)]` -/
def P1780154856388793711.Spec : Prop :=
  ∀ n, P1780154856388793711.a n = A019298 n

end A019298

/-! ## A019298.P12188069015713337013

`a(n-1)-floor(n*(n/4-n))` with `a(0)=0`
-/

namespace A019298.P12188069015713337013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) - ⌊(n : ℚ) * ((n : ℚ) / 4 - (n : ℚ))⌋

end

end A019298.P12188069015713337013

namespace A019298

/-- `a(n-1)-floor(n*(n/4-n))` -/
def P12188069015713337013.Spec : Prop :=
  ∀ n, P12188069015713337013.a n = A019298 n

end A019298

/-! ## A019298.P12228859399475418993

`∑[A077043(n)]`
-/

namespace A019298.P12228859399475418993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077043 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A019298.P12228859399475418993

namespace A019298

/-- `∑[A077043(n)]` -/
def P12228859399475418993.Spec : Prop :=
  ∀ n, P12228859399475418993.a n = A019298 n

end A019298

/-! ## A019298.P5167031015627101696

`Δ[A011863(n)]`
-/

namespace A019298.P5167031015627101696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011863 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A019298.P5167031015627101696

namespace A019298

/-- `Δ[A011863(n)]` -/
def P5167031015627101696.Spec : Prop :=
  ∀ n, P5167031015627101696.a n = A019298 n

end A019298

/-! ## A019298.P16692960001876799508

`A212960(n)/4`
-/

namespace A019298.P16692960001876799508
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A212960 n : ℚ) / 4

end

end A019298.P16692960001876799508

namespace A019298

/-- `A212960(n)/4` -/
def P16692960001876799508.Spec : Prop :=
  ∀ n, P16692960001876799508.a n = (A019298 n : ℚ)

end A019298

/-!
# A019299: First n elements of Thue-Morse sequence A010059 read as a binary number.

The programs for A019299, the canonical program `A019299.P4441328656889891956` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A019299 has offset 0).

The definition of A019299 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A019299.P13917974997780507753

`char[xor(n, 2*n)]+2*a(n-1)` with `a(0)=1`
-/

namespace A019299.P13917974997780507753
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (if ∃ j, f1 j = n then 1 else 0) + 2 * a (n - 1)

end

end A019299.P13917974997780507753

namespace A019299

/-- `char[xor(n, 2*n)]+2*a(n-1)` -/
def P13917974997780507753.Spec : Prop :=
  ∀ n, (P13917974997780507753.a n : ℤ) = A019299 n

end A019299

/-! ## A019299.P14385962125790478975

`or(2*a(n-1), char[xor(n, 2*n)])` with `a(0)=1`
-/

namespace A019299.P14385962125790478975
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lor (2 * a (n - 1)) (if ∃ j, f1 j = n then 1 else 0)

end

end A019299.P14385962125790478975

namespace A019299

/-- `or(2*a(n-1), char[xor(n, 2*n)])` -/
def P14385962125790478975.Spec : Prop :=
  ∀ n, (P14385962125790478975.a n : ℤ) = A019299 n

end A019299

/-! ## A019299.P10709374318504955788

`xor(2*a(n-1), char[xor(n, 2*n)])` with `a(0)=1`
-/

namespace A019299.P10709374318504955788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.xor (2 * a (n - 1)) (if ∃ j, f1 j = n then 1 else 0)

end

end A019299.P10709374318504955788

namespace A019299

/-- `xor(2*a(n-1), char[xor(n, 2*n)])` -/
def P10709374318504955788.Spec : Prop :=
  ∀ n, (P10709374318504955788.a n : ℤ) = A019299 n

end A019299

/-! ## A019299.P4441328656889891956

`or(2*a(n-1), A010059(n))` with `a(0)=1`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A019299

/-- `or(2*a(n-1), A010059(n))` -/
def P4441328656889891956.Spec : Prop :=
  ∀ n, P4441328656889891956.a n = A019299 n

theorem P4441328656889891956.correct : P4441328656889891956.Spec := by
  intro n
  simp only [A019299]

end A019299

/-! ## A019299.P15023298252454211713

`char[A048724(n)]+2*a(n-1)` with `a(0)=1`
-/

namespace A019299.P15023298252454211713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048724 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + 2 * a (n - 1)

end

end A019299.P15023298252454211713

namespace A019299

/-- `char[A048724(n)]+2*a(n-1)` -/
def P15023298252454211713.Spec : Prop :=
  ∀ n, (P15023298252454211713.a n : ℤ) = A019299 n

end A019299

/-! ## A019299.P5279674391742007083

`2*(a(n-1)+1)-A001285(n)` with `a(0)=1`
-/

namespace A019299.P5279674391742007083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * (a (n - 1) + 1) - A001285 n

end

end A019299.P5279674391742007083

namespace A019299

/-- `2*(a(n-1)+1)-A001285(n)` -/
def P5279674391742007083.Spec : Prop :=
  ∀ n, P5279674391742007083.a n = A019299 n

end A019299

/-! ## A019299.P4162315887776648651

`1-A010060(n)+2*a(n-1)` with `a(0)=1`
-/

namespace A019299.P4162315887776648651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - A010060 n + 2 * a (n - 1)

end

end A019299.P4162315887776648651

namespace A019299

/-- `1-A010060(n)+2*a(n-1)` -/
def P4162315887776648651.Spec : Prop :=
  ∀ n, P4162315887776648651.a n = A019299 n

end A019299

/-! ## A019299.P1794554418751018442

`or(2*a(n-1), char[A001969(n+1)])` with `a(0)=1`
-/

namespace A019299.P1794554418751018442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001969 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lor (2 * a (n - 1)) (if ∃ j, f1 j = (n : ℤ) then 1 else 0)

end

end A019299.P1794554418751018442

namespace A019299

/-- `or(2*a(n-1), char[A001969(n+1)])` -/
def P1794554418751018442.Spec : Prop :=
  ∀ n, (P1794554418751018442.a n : ℤ) = A019299 n

end A019299

/-! ## A019299.P2396507691754644559

`a(n-1)+A092436(n)+a(n-1)` with `a(0)=1`
-/

namespace A019299.P2396507691754644559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A092436 n + a (n - 1))

end

end A019299.P2396507691754644559

namespace A019299

/-- `a(n-1)+A092436(n)+a(n-1)` -/
def P2396507691754644559.Spec : Prop :=
  ∀ n, P2396507691754644559.a n = A019299 n

end A019299

/-! ## A019299.P7540287623314088068

`2*a(n-1)+1-A000120(n)%2` with `a(0)=1`
-/

namespace A019299.P7540287623314088068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) + 1 - Int.tmod (A000120 n) 2

end

end A019299.P7540287623314088068

namespace A019299

/-- `2*a(n-1)+1-A000120(n)%2` -/
def P7540287623314088068.Spec : Prop :=
  ∀ n, P7540287623314088068.a n = A019299 n

end A019299

/-! ## A019299.P17706959678167333504

`∑[abs(A316826(n)-2*a(n-1))+1]` with `a(0)=1`
-/

namespace A019299.P17706959678167333504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  |A316826 n - 2 * f1 (n - 1)| + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A019299.P17706959678167333504

namespace A019299

/-- `∑[abs(A316826(n)-2*a(n-1))+1]` -/
def P17706959678167333504.Spec : Prop :=
  ∀ n, P17706959678167333504.a n = A019299 n

end A019299

/-! ## A019299.P13755184911321381938

`A126646(n)-A019300(n)`
-/

namespace A019299.P13755184911321381938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n - A019300 n

end

end A019299.P13755184911321381938

namespace A019299

/-- `A126646(n)-A019300(n)` -/
def P13755184911321381938.Spec : Prop :=
  ∀ n, P13755184911321381938.a n = A019299 n

end A019299

/-! ## A019299.P4839560885134512134

`∑[A000079(n)]-A019300(n)`
-/

namespace A019299.P4839560885134512134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A019300 n

end

end A019299.P4839560885134512134

namespace A019299

/-- `∑[A000079(n)]-A019300(n)` -/
def P4839560885134512134.Spec : Prop :=
  ∀ n, P4839560885134512134.a n = A019299 n

end A019299

/-! ## A019299.P16526398793071218982

`∑[∑[A011782(n)]]-A019300(n)`
-/

namespace A019299.P16526398793071218982
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A019300 n

end

end A019299.P16526398793071218982

namespace A019299

/-- `∑[∑[A011782(n)]]-A019300(n)` -/
def P16526398793071218982.Spec : Prop :=
  ∀ n, P16526398793071218982.a n = A019299 n

end A019299

/-! ## A019299.P14950908942732878800

`or(2*a(n-1), A059841(A000120(n)))` with `a(0)=1`
-/

namespace A019299.P14950908942732878800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.lor (2 * a (n - 1)) (A059841 (A000120 n).toNat)

end

end A019299.P14950908942732878800

namespace A019299

/-- `or(2*a(n-1), A059841(A000120(n)))` -/
def P14950908942732878800.Spec : Prop :=
  ∀ n, P14950908942732878800.a n = A019299 n

end A019299

