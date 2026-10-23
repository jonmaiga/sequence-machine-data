import SequenceMachineLib.Basic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C027
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C002
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B008.C000
import Seq.B010.C000
import Seq.B012.C000
import Seq.B013.C000
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
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022

/-!
# A042101: Denominators of continued fraction convergents to sqrt(574).

The programs for A042101, there is no canonical definition to state claims against.
-/

/-! ## A042101.P14103170017412678923

`A004525(A042103(n))`
-/

namespace A042101.P14103170017412678923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A042103 n).toNat

end

end A042101.P14103170017412678923

/-! ## A042101.P9973406024931053132

`A065033(A042103(n)-1)`
-/

namespace A042101.P9973406024931053132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A042103 n - 1).toNat

end

end A042101.P9973406024931053132

/-!
# A042102: Numerators of continued fraction convergents to sqrt(575).

The programs for A042102, the canonical program `A042102.P17267403583004917864` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A042102 has offset 0).

The definition of A042102 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 117 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A042102.P17267403583004917864

`∪[A114051(n+1), Δ[A114051(n)]]`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A042102

/-- `∪[A114051(n+1), Δ[A114051(n)]]` -/
def P17267403583004917864.Spec : Prop :=
  ∀ n, (P17267403583004917864.a n : ℤ) = A042102 n

theorem P17267403583004917864.correct : P17267403583004917864.Spec := by
  intro n
  simp only [A042102]

end A042102

/-!
# A042103: Denominators of continued fraction convergents to sqrt(575).

The programs for A042103, the canonical program `A042103.P1497681573511559934` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A042103 has offset 0).

The definition of A042103 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A042103.P1497681573511559934

`48*a(n-2)-a(n-4)` with `a(0)=1, a(1)=1, a(2)=47, a(3)=48`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A042103

/-- `48*a(n-2)-a(n-4)` -/
def P1497681573511559934.Spec : Prop :=
  ∀ n, P1497681573511559934.a n = A042103 n

theorem P1497681573511559934.correct : P1497681573511559934.Spec := by
  intro n
  simp only [A042103]

end A042103

/-! ## A042103.P6996998378195556447

`A036554(A042101(n))-A042101(n)`
-/

namespace A042103.P6996998378195556447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036554 (A042101 n).toNat - A042101 n

end

end A042103.P6996998378195556447

namespace A042103

/-- `A036554(A042101(n))-A042101(n)` -/
def P6996998378195556447.Spec : Prop :=
  ∀ n, P6996998378195556447.a n = A042103 n

end A042103

/-!
# A042105: Denominators of continued fraction convergents to sqrt(577).

The programs for A042105, the canonical program `A042105.P17037170167803502363` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A042105 has offset 0).

The definition of A042105 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A042105.P17037170167803502363

`48*a(n-1)+a(n-2)` with `a(0)=1, a(1)=48`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A042105

/-- `48*a(n-1)+a(n-2)` -/
def P17037170167803502363.Spec : Prop :=
  ∀ n, (P17037170167803502363.a n : ℤ) = A042105 n

theorem P17037170167803502363.correct : P17037170167803502363.Spec := by
  intro n
  simp only [A042105]

end A042105

/-! ## A042105.P8347979528656152387

`xor(1, a(n-1)²)/a(n-2)` with `a(0)=1, a(1)=48`
-/

namespace A042105.P8347979528656152387
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 48] fun n a =>
  (Int.xor 1 (SequenceMachineLib.roundAway (a (n - 1) ^ 2)) : ℚ) / a (n - 2)

end

end A042105.P8347979528656152387

namespace A042105

/-- `xor(1, a(n-1)²)/a(n-2)` -/
def P8347979528656152387.Spec : Prop :=
  ∀ n, P8347979528656152387.a n = (A042105 n : ℚ)

end A042105

/-! ## A042105.P15457243864292728990

`floor((a(n-1)²+1)/a(n-2))` with `a(0)=1, a(1)=48`
-/

namespace A042105.P15457243864292728990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 48] fun n a =>
  ⌊(a (n - 1) ^ 2 + 1 : ℚ) / (a (n - 2) : ℚ)⌋

end

end A042105.P15457243864292728990

namespace A042105

/-- `floor((a(n-1)²+1)/a(n-2))` -/
def P15457243864292728990.Spec : Prop :=
  ∀ n, P15457243864292728990.a n = A042105 n

end A042105

/-!
# A042106: Numerators of continued fraction convergents to sqrt(578).

The programs for A042106, there is no canonical definition to state claims against.
-/

/-! ## A042106.P4681999752433536075

`A119016(∑[A033999(n)+8])`
-/

namespace A042106.P4681999752433536075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n + 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119016 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A042106.P4681999752433536075

/-! ## A042106.P13291829434724238484

`A331115(A059841(n)+6*n+5)`
-/

namespace A042106.P13291829434724238484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331115 (A059841 n + (6 * n + 5 : ℤ)).toNat

end

end A042106.P13291829434724238484

/-! ## A042106.P15920211093860223341

`A143607(A059841(n)+8*n+6)`
-/

namespace A042106.P15920211093860223341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143607 (A059841 n + (8 * n + 6 : ℤ)).toNat

end

end A042106.P15920211093860223341

/-! ## A042106.P3059807294496620989

`A143607(8*n+7-A000035(n))`
-/

namespace A042106.P3059807294496620989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143607 ((8 * n + 7 : ℤ) - A000035 n).toNat

end

end A042106.P3059807294496620989

/-! ## A042106.P7809235520119854338

`A082766(A004768(n)-A000035(n))`
-/

namespace A042106.P7809235520119854338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082766 (A004768 n - A000035 n).toNat

end

end A042106.P7809235520119854338

/-! ## A042106.P108237779433534454

`A082766(xor(A000035(n), A004768(n)))`
-/

namespace A042106.P108237779433534454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082766 (Int.xor (A000035 n) (A004768 n)).toNat

end

end A042106.P108237779433534454

/-! ## A042106.P8013979837385374455

`A082766(A017509(n)-A007310(n+1))`
-/

namespace A042106.P8013979837385374455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082766 (A017509 n - A007310 (n + 1)).toNat

end

end A042106.P8013979837385374455

/-! ## A042106.P4337411621446430163

`A082766(A053438(n+1)+A016921(n+1))`
-/

namespace A042106.P4337411621446430163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082766 (A053438 (n + 1) + A016921 (n + 1)).toNat

end

end A042106.P4337411621446430163

/-! ## A042106.P9281798122616415020

`A082766(A271114(n+1)+A053438(n+1))`
-/

namespace A042106.P9281798122616415020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082766 (A271114 (n + 1) + A053438 (n + 1)).toNat

end

end A042106.P9281798122616415020

/-! ## A042106.P3104742660345764343

`A119016(A271114(n+1)+A053438(n+1))`
-/

namespace A042106.P3104742660345764343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119016 (A271114 (n + 1) + A053438 (n + 1)).toNat

end

end A042106.P3104742660345764343

/-!
# A042110: Numerators of continued fraction convergents to sqrt(580).

The programs for A042110, there is no canonical definition to state claims against.
-/

/-! ## A042110.P9633425303762976853

`gcd(2, n)*A041264(n)`
-/

namespace A042110.P9633425303762976853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 n : ℤ) * A041264 n

end

end A042110.P9633425303762976853

/-! ## A042110.P12896511168233612066

`A000034(n+1)*A041264(n)`
-/

namespace A042110.P12896511168233612066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (n + 1) * A041264 n

end

end A042110.P12896511168233612066

/-! ## A042110.P16201940204903323847

`A090316(n+1)/A000034(n)`
-/

namespace A042110.P16201940204903323847
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090316 (n + 1) : ℚ) / (A000034 n : ℚ)

end

end A042110.P16201940204903323847

/-! ## A042110.P3693525379827933199

`(3-A000034(n))*A041264(n)`
-/

namespace A042110.P3693525379827933199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 - A000034 n) * A041264 n

end

end A042110.P3693525379827933199

/-! ## A042110.P2259260972149448252

`A125916(A016861(n+1))*A041264(n)`
-/

namespace A042110.P2259260972149448252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125916 (A016861 (n + 1)).toNat * A041264 n

end

end A042110.P2259260972149448252

/-! ## A042110.P13969375774709638492

`A090316(n+1)/A125916(A016861(n))`
-/

namespace A042110.P13969375774709638492
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090316 (n + 1) : ℚ) / (A125916 (A016861 n).toNat : ℚ)

end

end A042110.P13969375774709638492

/-! ## A042110.P10419099826137133491

`2/A125916(A016861(n))*A041264(n)`
-/

namespace A042110.P10419099826137133491
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A125916 (A016861 n).toNat : ℚ) * (A041264 n : ℚ)

end

end A042110.P10419099826137133491

/-!
# A042111: Denominators of continued fraction convergents to sqrt(580).

The programs for A042111, there is no canonical definition to state claims against.
-/

/-! ## A042111.P6059645266077162211

`lcm(2, A041265(n))/2`
-/

namespace A042111.P6059645266077162211
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A041265 n) : ℚ) / 2

end

end A042111.P6059645266077162211

/-! ## A042111.P15686743775972180109

`A041265(n)/A000034(n)`
-/

namespace A042111.P15686743775972180109
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041265 n : ℚ) / (A000034 n : ℚ)

end

end A042111.P15686743775972180109

/-! ## A042111.P7165353729894926006

`A041265(n)/Δ[A032766(n)]`
-/

namespace A042111.P7165353729894926006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041265 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A042111.P7165353729894926006

/-! ## A042111.P6319078972514855805

`A041265(n)/Δ[A001651(n+1)]`
-/

namespace A042111.P6319078972514855805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041265 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A042111.P6319078972514855805

/-! ## A042111.P9620249834421558558

`A041265(n)/A125916(A016861(n))`
-/

namespace A042111.P9620249834421558558
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041265 n : ℚ) / (A125916 (A016861 n).toNat : ℚ)

end

end A042111.P9620249834421558558

/-!
# A042113: Denominators of continued fraction convergents to sqrt(581).

The programs for A042113, there is no canonical definition to state claims against.
-/

/-! ## A042113.P12844477127598657706

`A348553(A042112(n))-A042112(n)`
-/

namespace A042113.P12844477127598657706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348553 (A042112 n).toNat - A042112 n

end

end A042113.P12844477127598657706

/-!
# A042117: Denominators of continued fraction convergents to sqrt(583).

The programs for A042117, there is no canonical definition to state claims against.
-/

/-! ## A042117.P11266753391175932384

`A216679(a(n-1)+gcd(n+1, a(n-1)))` with `a(0)=1, a(1)=6, a(2)=7`
-/

namespace A042117.P11266753391175932384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 6, 7] fun n a =>
  A216679 (a (n - 1) + (Int.gcd (n + 1 : ℤ) (a (n - 1)) : ℤ)).toNat

end

end A042117.P11266753391175932384

/-!
# A042118: Numerators of continued fraction convergents to sqrt(584).

The programs for A042118, there is no canonical definition to state claims against.
-/

/-! ## A042118.P3639242446514670385

`gcd(2, n)*A041266(n)`
-/

namespace A042118.P3639242446514670385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 n : ℤ) * A041266 n

end

end A042118.P3639242446514670385

/-! ## A042118.P11951152909299887729

`Δ[A007494(n)]*A041266(n)`
-/

namespace A042118.P11951152909299887729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A041266 n

end

end A042118.P11951152909299887729

/-! ## A042118.P9267293694400587332

`A000034(n+1)*A041266(n)`
-/

namespace A042118.P9267293694400587332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (n + 1) * A041266 n

end

end A042118.P9267293694400587332

/-! ## A042118.P18201081966718288850

`A040001(n+2)*A041266(n)`
-/

namespace A042118.P18201081966718288850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (n + 2) * A041266 n

end

end A042118.P18201081966718288850

/-! ## A042118.P6741683944154180167

`2/A000034(n)*A041266(n)`
-/

namespace A042118.P6741683944154180167
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A000034 n : ℚ) * (A041266 n : ℚ)

end

end A042118.P6741683944154180167

/-! ## A042118.P7555931602007458144

`A041266(n)*A080425(A001651(n+1))`
-/

namespace A042118.P7555931602007458144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041266 n * A080425 (A001651 (n + 1)).toNat

end

end A042118.P7555931602007458144

/-!
# A042119: Denominators of continued fraction convergents to sqrt(584).

The programs for A042119, there is no canonical definition to state claims against.
-/

/-! ## A042119.P7413760131379794720

`lcm(2, A041267(n))/2`
-/

namespace A042119.P7413760131379794720
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A041267 n) : ℚ) / 2

end

end A042119.P7413760131379794720

/-! ## A042119.P18219782888328765552

`A041267(n)/A000034(n)`
-/

namespace A042119.P18219782888328765552
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041267 n : ℚ) / (A000034 n : ℚ)

end

end A042119.P18219782888328765552

/-! ## A042119.P5052038807888355826

`A041267(n)/(A000035(n)+1)`
-/

namespace A042119.P5052038807888355826
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041267 n : ℚ) / (A000035 n + 1 : ℚ)

end

end A042119.P5052038807888355826

/-! ## A042119.P11505725362292110937

`A041267(n)/A036447(n)%3`
-/

namespace A042119.P11505725362292110937
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041267 n : ℚ) / (Int.tmod (A036447 n) 3 : ℚ)

end

end A042119.P11505725362292110937

/-! ## A042119.P14639975403393584668

`A041267(n)/A006519(n²+1)`
-/

namespace A042119.P14639975403393584668
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041267 n : ℚ) / (A006519 (n ^ 2 + 1) : ℚ)

end

end A042119.P14639975403393584668

/-! ## A042119.P15561503913567878172

`A041267(n)/A340346(n²+1)`
-/

namespace A042119.P15561503913567878172
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041267 n : ℚ) / (A340346 (n ^ 2 + 1) : ℚ)

end

end A042119.P15561503913567878172

/-! ## A042119.P10649716942554658169

`A041267(n)/Δ[A001651(n+1)]`
-/

namespace A042119.P10649716942554658169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041267 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A042119.P10649716942554658169

/-! ## A042119.P4259682132812542863

`A041267(n)/A014963(A006519(n+1))`
-/

namespace A042119.P4259682132812542863
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041267 n : ℚ) / (A014963 (A006519 (n + 1)).toNat : ℚ)

end

end A042119.P4259682132812542863

/-! ## A042119.P14811734206911375478

`A041267(n)/A020639(A340346(n+1))`
-/

namespace A042119.P14811734206911375478
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041267 n : ℚ) / (A020639 (A340346 (n + 1)).toNat : ℚ)

end

end A042119.P14811734206911375478

/-!
# A042126: Numerators of continued fraction convergents to sqrt(588).

The programs for A042126, there is no canonical definition to state claims against.
-/

/-! ## A042126.P9174151363904581594

`Δ[A007494(n)]*A041268(n)`
-/

namespace A042126.P9174151363904581594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A041268 n

end

end A042126.P9174151363904581594

/-! ## A042126.P8119881489469355379

`ratio[A060546(n)]*A041268(n)`
-/

namespace A042126.P8119881489469355379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060546 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ) * (A041268 n : ℚ)

end

end A042126.P8119881489469355379

/-! ## A042126.P6970942340694479489

`A000034(n+1)*A041268(n)`
-/

namespace A042126.P6970942340694479489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (n + 1) * A041268 n

end

end A042126.P6970942340694479489

/-! ## A042126.P5117566263922950126

`2/A000034(n)*A041268(n)`
-/

namespace A042126.P5117566263922950126
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A000034 n : ℚ) * (A041268 n : ℚ)

end

end A042126.P5117566263922950126

/-! ## A042126.P3511327501652802221

`A014695((n+1)²)*A041268(n)`
-/

namespace A042126.P3511327501652802221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014695 ((n + 1) ^ 2) * A041268 n

end

end A042126.P3511327501652802221

/-! ## A042126.P198070920283125366

`A010673(n+1)!*A041268(n)`
-/

namespace A042126.P198070920283125366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A010673 (n + 1)).toNat : ℤ) * A041268 n

end

end A042126.P198070920283125366

/-!
# A042127: Denominators of continued fraction convergents to sqrt(588).

The programs for A042127, the canonical program `A042127.P11072726425988701643` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A042127 has offset 0).

The definition of A042127 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A042127.P11072726425988701643

`194*a(n-2)-a(n-4)` with `a(0)=1, a(1)=4, a(2)=193, a(3)=776`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A042127

/-- `194*a(n-2)-a(n-4)` -/
def P11072726425988701643.Spec : Prop :=
  ∀ n, P11072726425988701643.a n = A042127 n

theorem P11072726425988701643.correct : P11072726425988701643.Spec := by
  intro n
  simp only [A042127]

end A042127

/-! ## A042127.P5021267762476192107

`lcm(2, A041269(n))/2`
-/

namespace A042127.P5021267762476192107
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A041269 n) : ℚ) / 2

end

end A042127.P5021267762476192107

namespace A042127

/-- `lcm(2, A041269(n))/2` -/
def P5021267762476192107.Spec : Prop :=
  ∀ n, P5021267762476192107.a n = (A042127 n : ℚ)

end A042127

/-! ## A042127.P7031015450441370605

`A041269(n)/A000034(n)`
-/

namespace A042127.P7031015450441370605
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041269 n : ℚ) / (A000034 n : ℚ)

end

end A042127.P7031015450441370605

namespace A042127

/-- `A041269(n)/A000034(n)` -/
def P7031015450441370605.Spec : Prop :=
  ∀ n, P7031015450441370605.a n = (A042127 n : ℚ)

end A042127

/-! ## A042127.P6604720449551906131

`A041269(n)/A010673(n)!`
-/

namespace A042127.P6604720449551906131
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041269 n : ℚ) / (Nat.factorial (A010673 n).toNat : ℚ)

end

end A042127.P6604720449551906131

namespace A042127

/-- `A041269(n)/A010673(n)!` -/
def P6604720449551906131.Spec : Prop :=
  ∀ n, P6604720449551906131.a n = (A042127 n : ℚ)

end A042127

/-! ## A042127.P6819658707886973973

`A041269(n)/Δ[A032766(n)]`
-/

namespace A042127.P6819658707886973973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041269 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A042127.P6819658707886973973

namespace A042127

/-- `A041269(n)/Δ[A032766(n)]` -/
def P6819658707886973973.Spec : Prop :=
  ∀ n, P6819658707886973973.a n = (A042127 n : ℚ)

end A042127

/-! ## A042127.P18411831029597010197

`A041269(n)/A001075(n)%3`
-/

namespace A042127.P18411831029597010197
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041269 n : ℚ) / (Int.tmod (A001075 n) 3 : ℚ)

end

end A042127.P18411831029597010197

namespace A042127

/-- `A041269(n)/A001075(n)%3` -/
def P18411831029597010197.Spec : Prop :=
  ∀ n, P18411831029597010197.a n = (A042127 n : ℚ)

end A042127

/-! ## A042127.P10952691542812341352

`A041269(n)/A006519(n²+1)`
-/

namespace A042127.P10952691542812341352
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041269 n : ℚ) / (A006519 (n ^ 2 + 1) : ℚ)

end

end A042127.P10952691542812341352

namespace A042127

/-- `A041269(n)/A006519(n²+1)` -/
def P10952691542812341352.Spec : Prop :=
  ∀ n, P10952691542812341352.a n = (A042127 n : ℚ)

end A042127

/-! ## A042127.P5536803859730290341

`A041269(n)/A001221(A033476(n))`
-/

namespace A042127.P5536803859730290341
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041269 n : ℚ) / (A001221 (A033476 n).toNat : ℚ)

end

end A042127.P5536803859730290341

namespace A042127

/-- `A041269(n)/A001221(A033476(n))` -/
def P5536803859730290341.Spec : Prop :=
  ∀ n, P5536803859730290341.a n = (A042127 n : ℚ)

end A042127

/-! ## A042127.P2314330780065841508

`A041269(n)/A000032(∑[A033999(n)])`
-/

namespace A042127.P2314330780065841508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041269 n : ℚ) / (A000032 (∑ j ∈ Finset.range (n + 1), f1 j).toNat : ℚ)

end

end A042127.P2314330780065841508

namespace A042127

/-- `A041269(n)/A000032(∑[A033999(n)])` -/
def P2314330780065841508.Spec : Prop :=
  ∀ n, P2314330780065841508.a n = (A042127 n : ℚ)

end A042127

/-! ## A042127.P10484905813607739750

`A041269(n)/A014963(A006519(n+1))`
-/

namespace A042127.P10484905813607739750
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041269 n : ℚ) / (A014963 (A006519 (n + 1)).toNat : ℚ)

end

end A042127.P10484905813607739750

namespace A042127

/-- `A041269(n)/A014963(A006519(n+1))` -/
def P10484905813607739750.Spec : Prop :=
  ∀ n, P10484905813607739750.a n = (A042127 n : ℚ)

end A042127

/-!
# A042129: Denominators of continued fraction convergents to sqrt(589).

The programs for A042129, there is no canonical definition to state claims against.
-/

/-! ## A042129.P4138504874922948324

`A346474(n)+A304716(A000079(n))`
-/

namespace A042129.P4138504874922948324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346474 n + A304716 (A000079 n).toNat

end

end A042129.P4138504874922948324

/-!
# A042131: Denominators of continued fraction convergents to sqrt(590).

The programs for A042131, there is no canonical definition to state claims against.
-/

/-! ## A042131.P2518634522971772698

`A352961(A329627(n+1))`
-/

namespace A042131.P2518634522971772698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352961 (A329627 (n + 1)).toNat

end

end A042131.P2518634522971772698

/-! ## A042131.P231259827642918955

`A231501(n)+A068307(A091054(n+2))`
-/

namespace A042131.P231259827642918955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231501 n + A068307 (A091054 (n + 2)).toNat

end

end A042131.P231259827642918955

/-!
# A042133: Denominators of continued fraction convergents to sqrt(591).

The programs for A042133, there is no canonical definition to state claims against.
-/

/-! ## A042133.P11050693948166003066

`A007306(A123894(n)-A141310(n))`
-/

namespace A042133.P11050693948166003066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007306 (A123894 n - A141310 n).toNat

end

end A042133.P11050693948166003066

/-! ## A042133.P11706453782921351527

`A007306(A123894(n)-A020639(n+1))`
-/

namespace A042133.P11706453782921351527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007306 (A123894 n - A020639 (n + 1)).toNat

end

end A042133.P11706453782921351527

/-!
# A042134: Numerators of continued fraction convergents to sqrt(592).

The programs for A042134, there is no canonical definition to state claims against.
-/

/-! ## A042134.P7175190650957028824

`gcd(2, n)²*A041060(n)`
-/

namespace A042134.P7175190650957028824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 n ^ 2 : ℤ) * A041060 n

end

end A042134.P7175190650957028824

/-! ## A042134.P150299221458733774

`Δ[A007494(n)]*A041270(n)`
-/

namespace A042134.P150299221458733774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A041270 n

end

end A042134.P150299221458733774

/-! ## A042134.P14160657429374581491

`A000034(n+1)²*A041060(n)`
-/

namespace A042134.P14160657429374581491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (n + 1) ^ 2 * A041060 n

end

end A042134.P14160657429374581491

/-! ## A042134.P12148740867324293025

`(2/A000034(n))²*A041060(n)`
-/

namespace A042134.P12148740867324293025
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 / (A000034 n : ℚ)) ^ 2 * (A041060 n : ℚ)

end

end A042134.P12148740867324293025

/-! ## A042134.P10393855383099803716

`ratio[A000034(n)]*A086928(n+1)`
-/

namespace A042134.P10393855383099803716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ) * (A086928 (n + 1) : ℚ)

end

end A042134.P10393855383099803716

/-! ## A042134.P5887854257459304453

`A086928(n+1)/ratio[A000034(n+1)]`
-/

namespace A042134.P5887854257459304453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A086928 (n + 1) : ℚ) / ((f1 (n + 1) : ℚ) / (f1 n : ℚ))

end

end A042134.P5887854257459304453

/-! ## A042134.P12660022492456649303

`A106524(A106524(n))²*A041060(n)`
-/

namespace A042134.P12660022492456649303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106524 (A106524 n).toNat ^ 2 * A041060 n

end

end A042134.P12660022492456649303

/-!
# A042135: Denominators of continued fraction convergents to sqrt(592).

The programs for A042135, the canonical program `A042135.P10074391598035256981` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A042135 has offset 0).

The definition of A042135 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A042135.P10074391598035256981

`146*a(n-2)-a(n-4)` with `a(0)=1, a(1)=3, a(2)=145, a(3)=438`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A042135

/-- `146*a(n-2)-a(n-4)` -/
def P10074391598035256981.Spec : Prop :=
  ∀ n, P10074391598035256981.a n = A042135 n

theorem P10074391598035256981.correct : P10074391598035256981.Spec := by
  intro n
  simp only [A042135]

end A042135

/-! ## A042135.P16829694758188500809

`lcm(2, A041271(n))/2`
-/

namespace A042135.P16829694758188500809
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A041271 n) : ℚ) / 2

end

end A042135.P16829694758188500809

namespace A042135

/-- `lcm(2, A041271(n))/2` -/
def P16829694758188500809.Spec : Prop :=
  ∀ n, P16829694758188500809.a n = (A042135 n : ℚ)

end A042135

/-! ## A042135.P5155904259289242772

`A041271(n)/A000034(n)`
-/

namespace A042135.P5155904259289242772
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041271 n : ℚ) / (A000034 n : ℚ)

end

end A042135.P5155904259289242772

namespace A042135

/-- `A041271(n)/A000034(n)` -/
def P5155904259289242772.Spec : Prop :=
  ∀ n, P5155904259289242772.a n = (A042135 n : ℚ)

end A042135

/-! ## A042135.P1425283962219557750

`A041061(n)/A000034(n)²`
-/

namespace A042135.P1425283962219557750
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041061 n : ℚ) / (A000034 n ^ 2 : ℚ)

end

end A042135.P1425283962219557750

namespace A042135

/-- `A041061(n)/A000034(n)²` -/
def P1425283962219557750.Spec : Prop :=
  ∀ n, P1425283962219557750.a n = (A042135 n : ℚ)

end A042135

/-! ## A042135.P8234568929068779250

`A041271(n)/(A000035(n)+1)`
-/

namespace A042135.P8234568929068779250
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041271 n : ℚ) / (A000035 n + 1 : ℚ)

end

end A042135.P8234568929068779250

namespace A042135

/-- `A041271(n)/(A000035(n)+1)` -/
def P8234568929068779250.Spec : Prop :=
  ∀ n, P8234568929068779250.a n = (A042135 n : ℚ)

end A042135

/-! ## A042135.P9084561342491773431

`A041271(n)/gcd(2, A016777(n))`
-/

namespace A042135.P9084561342491773431
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041271 n : ℚ) / (Int.gcd 2 (A016777 n) : ℚ)

end

end A042135.P9084561342491773431

namespace A042135

/-- `A041271(n)/gcd(2, A016777(n))` -/
def P9084561342491773431.Spec : Prop :=
  ∀ n, P9084561342491773431.a n = (A042135 n : ℚ)

end A042135

/-! ## A042135.P4469211528612531917

`A041061(n)/(A000035(n)+1)²`
-/

namespace A042135.P4469211528612531917
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041061 n : ℚ) / ((A000035 n + 1) ^ 2 : ℚ)

end

end A042135.P4469211528612531917

namespace A042135

/-- `A041061(n)/(A000035(n)+1)²` -/
def P4469211528612531917.Spec : Prop :=
  ∀ n, P4469211528612531917.a n = (A042135 n : ℚ)

end A042135

/-! ## A042135.P11844843551711188572

`A041271(n)/(Δ[A008619(n)]+1)`
-/

namespace A042135.P11844843551711188572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041271 n : ℚ) / (f1 (n + 1) - f1 n + 1 : ℚ)

end

end A042135.P11844843551711188572

namespace A042135

/-- `A041271(n)/(Δ[A008619(n)]+1)` -/
def P11844843551711188572.Spec : Prop :=
  ∀ n, P11844843551711188572.a n = (A042135 n : ℚ)

end A042135

/-! ## A042135.P2717479566784750898

`A041271(n)/gcd(2*n, A052410(n+1))`
-/

namespace A042135.P2717479566784750898
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041271 n : ℚ) / (Int.gcd (2 * n : ℤ) (A052410 (n + 1)) : ℚ)

end

end A042135.P2717479566784750898

namespace A042135

/-- `A041271(n)/gcd(2*n, A052410(n+1))` -/
def P2717479566784750898.Spec : Prop :=
  ∀ n, P2717479566784750898.a n = (A042135 n : ℚ)

end A042135

/-! ## A042135.P15117870141086355222

`A041271(n)/A001511(A106524(n))`
-/

namespace A042135.P15117870141086355222
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041271 n : ℚ) / (A001511 (A106524 n).toNat : ℚ)

end

end A042135.P15117870141086355222

namespace A042135

/-- `A041271(n)/A001511(A106524(n))` -/
def P15117870141086355222.Spec : Prop :=
  ∀ n, P15117870141086355222.a n = (A042135 n : ℚ)

end A042135

/-!
# A042138: Numerators of continued fraction convergents to sqrt(594).

The programs for A042138, there is no canonical definition to state claims against.
-/

/-! ## A042138.P8911927319014387354

`A313689(6*A042139(n))-4*A042139(n)`
-/

namespace A042138.P8911927319014387354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313689 (6 * A042139 n).toNat - 4 * A042139 n

end

end A042138.P8911927319014387354

/-!
# A042139: Denominators of continued fraction convergents to sqrt(594).

The programs for A042139, there is no canonical definition to state claims against.
-/

/-! ## A042139.P1053491638214433258

`A272976(A125809(n))-n`
-/

namespace A042139.P1053491638214433258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272976 (A125809 n).toNat - (n : ℤ)

end

end A042139.P1053491638214433258

/-!
# A042141: Denominators of continued fraction convergents to sqrt(595).

The programs for A042141, there is no canonical definition to state claims against.
-/

/-! ## A042141.P3923640951244625051

`A002260(A151323(n)+A002131(n+1))`
-/

namespace A042141.P3923640951244625051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A151323 n + A002131 (n + 1)).toNat

end

end A042141.P3923640951244625051

/-! ## A042141.P9655485167472398726

`A208233(A280084(n+1)+A105925(n))`
-/

namespace A042141.P9655485167472398726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208233 (A280084 (n + 1) + A105925 n).toNat

end

end A042141.P9655485167472398726

/-!
# A042145: Denominators of continued fraction convergents to sqrt(597).

The programs for A042145, there is no canonical definition to state claims against.
-/

/-! ## A042145.P9957660709463717524

`A284565(A016127(n)-1+n)`
-/

namespace A042145.P9957660709463717524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284565 (A016127 n - 1 + (n : ℤ)).toNat

end

end A042145.P9957660709463717524

/-! ## A042145.P14537354203284624132

`A123209(record[Δ[A130152(n+1)]])`
-/

namespace A042145.P14537354203284624132
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130152 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123209 ((f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + 33)

end

end A042145.P14537354203284624132

/-!
# A042147: Denominators of continued fraction convergents to sqrt(598).

The programs for A042147, there is no canonical definition to state claims against.
-/

/-! ## A042147.P931291569955915578

`a(n-2)+a(n-1)*A040573(n)` with `a(0)=1, a(1)=2`
-/

namespace A042147.P931291569955915578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 2) + a (n - 1) * A040573 n

end

end A042147.P931291569955915578

/-! ## A042147.P5551713971292632816

`A316313(A318848(2*n+5)-A262611(n+1))`
-/

namespace A042147.P5551713971292632816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316313 (A318848 (2 * n + 5) - A262611 (n + 1)).toNat

end

end A042147.P5551713971292632816

/-!
# A042149: Denominators of continued fraction convergents to sqrt(599).

The programs for A042149, there is no canonical definition to state claims against.
-/

/-! ## A042149.P1754334366933140687

`A096530(A119438(n))`
-/

namespace A042149.P1754334366933140687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096530 (A119438 n).toNat

end

end A042149.P1754334366933140687

/-!
# A042150: Numerators of continued fraction convergents to sqrt(600).

The programs for A042150, there is no canonical definition to state claims against.
-/

/-! ## A042150.P826079135118870524

`gcd(2, n)*A041274(n)`
-/

namespace A042150.P826079135118870524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 n : ℤ) * A041274 n

end

end A042150.P826079135118870524

/-! ## A042150.P5758899655137171412

`A000034(n+1)*A041274(n)`
-/

namespace A042150.P5758899655137171412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (n + 1) * A041274 n

end

end A042150.P5758899655137171412

/-! ## A042150.P236641488231084499

`2/A000034(n)*A041274(n)`
-/

namespace A042150.P236641488231084499
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A000034 n : ℚ) * (A041274 n : ℚ)

end

end A042150.P236641488231084499

/-! ## A042150.P7204990416821473397

`A010144(A016789(n))*A041274(n)`
-/

namespace A042150.P7204990416821473397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010144 (A016789 n).toNat * A041274 n

end

end A042150.P7204990416821473397

/-! ## A042150.P5441009480608337625

`A041275(n+1)/A042151(n+1)*A041274(n)`
-/

namespace A042150.P5441009480608337625
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041275 (n + 1) : ℚ) / (A042151 (n + 1) : ℚ) * (A041274 n : ℚ)

end

end A042150.P5441009480608337625

/-!
# A042151: Denominators of continued fraction convergents to sqrt(600).

The programs for A042151, the canonical program `A042151.P8442895041224723279` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A042151 has offset 0).

The definition of A042151 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A042151.P8442895041224723279

`98*a(n-2)-a(n-4)` with `a(0)=1, a(1)=2, a(2)=97, a(3)=196`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A042151

/-- `98*a(n-2)-a(n-4)` -/
def P8442895041224723279.Spec : Prop :=
  ∀ n, P8442895041224723279.a n = A042151 n

theorem P8442895041224723279.correct : P8442895041224723279.Spec := by
  intro n
  simp only [A042151]

end A042151

/-! ## A042151.P2137300973245275744

`lcm(2, A041275(n))/2`
-/

namespace A042151.P2137300973245275744
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A041275 n) : ℚ) / 2

end

end A042151.P2137300973245275744

namespace A042151

/-- `lcm(2, A041275(n))/2` -/
def P2137300973245275744.Spec : Prop :=
  ∀ n, P2137300973245275744.a n = (A042151 n : ℚ)

end A042151

/-! ## A042151.P12809821330607087078

`A041275(n)/A000034(n)`
-/

namespace A042151.P12809821330607087078
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041275 n : ℚ) / (A000034 n : ℚ)

end

end A042151.P12809821330607087078

namespace A042151

/-- `A041275(n)/A000034(n)` -/
def P12809821330607087078.Spec : Prop :=
  ∀ n, P12809821330607087078.a n = (A042151 n : ℚ)

end A042151

/-! ## A042151.P58459202250944497

`A041275(n)/Δ[A032766(n)]`
-/

namespace A042151.P58459202250944497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041275 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A042151.P58459202250944497

namespace A042151

/-- `A041275(n)/Δ[A032766(n)]` -/
def P58459202250944497.Spec : Prop :=
  ∀ n, P58459202250944497.a n = (A042151 n : ℚ)

end A042151

/-! ## A042151.P1475579622920968998

`A041275(n)/Δ[A007494(n+1)]`
-/

namespace A042151.P1475579622920968998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041275 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A042151.P1475579622920968998

namespace A042151

/-- `A041275(n)/Δ[A007494(n+1)]` -/
def P1475579622920968998.Spec : Prop :=
  ∀ n, P1475579622920968998.a n = (A042151 n : ℚ)

end A042151

/-! ## A042151.P7839696071037572017

`Δ[A007494(n)/2]*A041275(n)`
-/

namespace A042151.P7839696071037572017
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007494 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * (A041275 n : ℚ)

end

end A042151.P7839696071037572017

namespace A042151

/-- `Δ[A007494(n)/2]*A041275(n)` -/
def P7839696071037572017.Spec : Prop :=
  ∀ n, P7839696071037572017.a n = (A042151 n : ℚ)

end A042151

/-! ## A042151.P15304473362621706198

`A041275(n)/A130321(Δ[A007494(n)])`
-/

namespace A042151.P15304473362621706198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041275 n : ℚ) / (A130321 (f1 (n + 1) - f1 n).toNat : ℚ)

end

end A042151.P15304473362621706198

namespace A042151

/-- `A041275(n)/A130321(Δ[A007494(n)])` -/
def P15304473362621706198.Spec : Prop :=
  ∀ n, P15304473362621706198.a n = (A042151 n : ℚ)

end A042151

/-! ## A042151.P13731551851200467166

`A041275(n)/A001511(n²+1)`
-/

namespace A042151.P13731551851200467166
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041275 n : ℚ) / (A001511 (n ^ 2 + 1) : ℚ)

end

end A042151.P13731551851200467166

namespace A042151

/-- `A041275(n)/A001511(n²+1)` -/
def P13731551851200467166.Spec : Prop :=
  ∀ n, P13731551851200467166.a n = (A042151 n : ℚ)

end A042151

/-! ## A042151.P6363685330994489430

`gcd(∑[A302330(n)], A041275(n))`
-/

namespace A042151.P6363685330994489430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302330 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∑ j ∈ Finset.range (n + 1), f1 j) (A041275 n)

end

end A042151.P6363685330994489430

namespace A042151

/-- `gcd(∑[A302330(n)], A041275(n))` -/
def P6363685330994489430.Spec : Prop :=
  ∀ n, (P6363685330994489430.a n : ℤ) = A042151 n

end A042151

/-!
# A042156: Numerators of continued fraction convergents to sqrt(603).

The programs for A042156, there is no canonical definition to state claims against.
-/

/-! ## A042156.P372278018892740747

`A088473(A041453(n))+A042062(n)`
-/

namespace A042156.P372278018892740747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088473 (A041453 n).toNat + A042062 n

end

end A042156.P372278018892740747

/-!
# A042157: Denominators of continued fraction convergents to sqrt(603).

The programs for A042157, there is no canonical definition to state claims against.
-/

/-! ## A042157.P4563919385404168935

`A005843(A041453(n))-A041073(n)`
-/

namespace A042157.P4563919385404168935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A041453 n).toNat - A041073 n

end

end A042157.P4563919385404168935

/-! ## A042157.P10589752463972407924

`A056239(A121673(n)+1)`
-/

namespace A042157.P10589752463972407924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A121673 n + 1).toNat

end

end A042157.P10589752463972407924

/-!
# A042158: Numerators of continued fraction convergents to sqrt(604).

The programs for A042158, there is no canonical definition to state claims against.
-/

/-! ## A042158.P7019393495906030854

`A042256(n)-A239215(A042257(n))`
-/

namespace A042158.P7019393495906030854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042256 n - A239215 (A042257 n).toNat

end

end A042158.P7019393495906030854

/-!
# A042162: Numerators of continued fraction convergents to sqrt(606).

The programs for A042162, there is no canonical definition to state claims against.
-/

/-! ## A042162.P3673787849575019749

`A022394(∑[A033301(n)!])`
-/

namespace A042162.P3673787849575019749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A033301 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022394 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A042162.P3673787849575019749

/-! ## A042162.P6480722199535611010

`A022394(A064094(n)+A004891(n+1))`
-/

namespace A042162.P6480722199535611010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022394 (A064094 n + A004891 (n + 1)).toNat

end

end A042162.P6480722199535611010

/-! ## A042162.P9815282833686288766

`A184528(A041808(n))`
-/

namespace A042162.P9815282833686288766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184528 (A041808 n).toNat

end

end A042162.P9815282833686288766

/-!
# A042163: Denominators of continued fraction convergents to sqrt(606).

The programs for A042163, there is no canonical definition to state claims against.
-/

/-! ## A042163.P4685707713048939759

`a(n-2)+a(n-1)*A005136(a(n-2))` with `a(0)=1, a(1)=1`
-/

namespace A042163.P4685707713048939759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) + a (n - 1) * A005136 (a (n - 2)).toNat

end

end A042163.P4685707713048939759

/-! ## A042163.P2026900338690207211

`A143694(A137402(n))`
-/

namespace A042163.P2026900338690207211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143694 (A137402 n).toNat

end

end A042163.P2026900338690207211

/-! ## A042163.P1472625247953371478

`A271315(A025737(n+1))`
-/

namespace A042163.P1472625247953371478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271315 (A025737 (n + 1)).toNat

end

end A042163.P1472625247953371478

/-! ## A042163.P6533298298922660280

`A271315(A194153(n+2))`
-/

namespace A042163.P6533298298922660280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271315 (A194153 (n + 2)).toNat

end

end A042163.P6533298298922660280

/-! ## A042163.P16159307227458800948

`A194698(A042162(n)-A000013(n))`
-/

namespace A042163.P16159307227458800948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194698 (A042162 n - A000013 n).toNat

end

end A042163.P16159307227458800948

/-!
# A042171: Denominators of continued fraction convergents to sqrt(610).

The programs for A042171, there is no canonical definition to state claims against.
-/

/-! ## A042171.P5290941907817249527

`A209007(∑[9*n]+1)+24*C(n, 4)`
-/

namespace A042171.P5290941907817249527
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209007 (∑ j ∈ Finset.range (n + 1), f1 j + 1) + (24 * Nat.choose n 4 : ℤ)

end

end A042171.P5290941907817249527

/-! ## A042171.P8173053142904478285

`a(n-2)+a(n-1)*A126688(a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A042171.P8173053142904478285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) + a (n - 1) * A126688 (a (n - 1)).toNat

end

end A042171.P8173053142904478285

/-!
# A042172: Numerators of continued fraction convergents to sqrt(611).

The programs for A042172, there is no canonical definition to state claims against.
-/

/-! ## A042172.P12894495403561504823

`A134930(A041987(n))+A041986(n)`
-/

namespace A042172.P12894495403561504823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134930 (A041987 n).toNat + A041986 n

end

end A042172.P12894495403561504823

/-!
# A042173: Denominators of continued fraction convergents to sqrt(611).

The programs for A042173, there is no canonical definition to state claims against.
-/

/-! ## A042173.P9472196559117353079

`A093873(abs(2-A099970(n)))`
-/

namespace A042173.P9472196559117353079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093873 |2 - A099970 n|.toNat

end

end A042173.P9472196559117353079

/-! ## A042173.P10519456383219722201

`A093873(A099970(n)-A053644(n))`
-/

namespace A042173.P10519456383219722201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093873 (A099970 n - A053644 n).toNat

end

end A042173.P10519456383219722201

/-!
# A042174: Numerators of continued fraction convergents to sqrt(612).

The programs for A042174, there is no canonical definition to state claims against.
-/

/-! ## A042174.P1374548199158259197

`gcd(2, n)*A041280(n)`
-/

namespace A042174.P1374548199158259197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 n : ℤ) * A041280 n

end

end A042174.P1374548199158259197

/-! ## A042174.P6283282882297362154

`(A059841(n)+1)*A041280(n)`
-/

namespace A042174.P6283282882297362154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A059841 n + 1) * A041280 n

end

end A042174.P6283282882297362154

/-! ## A042174.P3155974220531066006

`A041280(n)*A134451(n+2)`
-/

namespace A042174.P3155974220531066006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041280 n * A134451 (n + 2)

end

end A042174.P3155974220531066006

/-! ## A042174.P10613482366642610720

`(2-A000035(n))*A041280(n)`
-/

namespace A042174.P10613482366642610720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A000035 n) * A041280 n

end

end A042174.P10613482366642610720

/-! ## A042174.P11084555835951226873

`A014963(A090088(n+1))*A041280(n)`
-/

namespace A042174.P11084555835951226873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A090088 (n + 1)).toNat * A041280 n

end

end A042174.P11084555835951226873

/-! ## A042174.P17290706474319028817

`A041280(n)*A155997(A000217(n))`
-/

namespace A042174.P17290706474319028817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041280 n * A155997 (A000217 n).toNat

end

end A042174.P17290706474319028817

/-!
# A042175: Denominators of continued fraction convergents to sqrt(612).

The programs for A042175, there is no canonical definition to state claims against.
-/

/-! ## A042175.P11758981464579539234

`lcm(2, A041281(n))/2`
-/

namespace A042175.P11758981464579539234
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A041281 n) : ℚ) / 2

end

end A042175.P11758981464579539234

/-! ## A042175.P6866963273363574959

`A041281(n)/A000034(n)`
-/

namespace A042175.P6866963273363574959
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041281 n : ℚ) / (A000034 n : ℚ)

end

end A042175.P6866963273363574959

/-! ## A042175.P8280317191453642944

`A041281(n)/Δ[A032766(n)]`
-/

namespace A042175.P8280317191453642944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041281 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A042175.P8280317191453642944

/-! ## A042175.P172137499102709607

`A041281(n)/A014709(2*n)`
-/

namespace A042175.P172137499102709607
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041281 n : ℚ) / (A014709 (2 * n) : ℚ)

end

end A042175.P172137499102709607

/-! ## A042175.P3555626561061257404

`A041281(n)/(2-∑[A033999(n)])`
-/

namespace A042175.P3555626561061257404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041281 n : ℚ) / ((2 - ∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A042175.P3555626561061257404

/-! ## A042175.P12978190215771769027

`A041281(n)/(2-Δ[A110654(n)])`
-/

namespace A042175.P12978190215771769027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041281 n : ℚ) / (2 - (f1 (n + 1) - f1 n) : ℚ)

end

end A042175.P12978190215771769027

/-! ## A042175.P15937255406255327674

`A041281(n)/A006519(n²+1)`
-/

namespace A042175.P15937255406255327674
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041281 n : ℚ) / (A006519 (n ^ 2 + 1) : ℚ)

end

end A042175.P15937255406255327674

/-!
# A042177: Denominators of continued fraction convergents to sqrt(613).

The programs for A042177, there is no canonical definition to state claims against.
-/

/-! ## A042177.P966683792936546342

`A248044(xor(6, A248028(n)))`
-/

namespace A042177.P966683792936546342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248044 (Int.xor 6 (A248028 n)).toNat

end

end A042177.P966683792936546342

/-! ## A042177.P10133206217423342007

`A240388((A000108(n+1)-n)²)`
-/

namespace A042177.P10133206217423342007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240388 ((A000108 (n + 1) - (n : ℤ)) ^ 2).toNat

end

end A042177.P10133206217423342007

/-!
# A042181: Denominators of continued fraction convergents to sqrt(615).

The programs for A042181, there is no canonical definition to state claims against.
-/

/-! ## A042181.P15025054356985209981

`A004277(A041409(n))-A041037(n)`
-/

namespace A042181.P15025054356985209981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A041409 n).toNat - A041037 n

end

end A042181.P15025054356985209981

/-! ## A042181.P12050447951131880937

`A266646(lt[n, n*n%6]^floor(n/2))`
-/

namespace A042181.P12050447951131880937
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (n % 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266646 (SequenceMachineLib.roundAway ((SequenceMachineLib.nth (fun j => f1 j < f2 j) n : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ))).toNat

end

end A042181.P12050447951131880937

/-!
# A042187: Denominators of continued fraction convergents to sqrt(618).

The programs for A042187, there is no canonical definition to state claims against.
-/

/-! ## A042187.P11946361344586752372

`A350633(a(n-1)+1)+1` with `a(0)=1, a(1)=1, a(2)=7`
-/

namespace A042187.P11946361344586752372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 7] fun n a =>
  A350633 (a (n - 1) + 1).toNat + 1

end

end A042187.P11946361344586752372

/-!
# A042189: Denominators of continued fraction convergents to sqrt(619).

The programs for A042189, there is no canonical definition to state claims against.
-/

/-! ## A042189.P2085800574342077979

`A245489(n)+A065717(A274073(n))`
-/

namespace A042189.P2085800574342077979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245489 n + A065717 (A274073 n).toNat

end

end A042189.P2085800574342077979

/-!
# A042190: Numerators of continued fraction convergents to sqrt(620).

The programs for A042190, there is no canonical definition to state claims against.
-/

/-! ## A042190.P2042237523197906917

`gcd(2, n)*A041284(n)`
-/

namespace A042190.P2042237523197906917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 n : ℤ) * A041284 n

end

end A042190.P2042237523197906917

/-! ## A042190.P15913292031157558951

`A000034(n+1)*A041284(n)`
-/

namespace A042190.P15913292031157558951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (n + 1) * A041284 n

end

end A042190.P15913292031157558951

/-! ## A042190.P7630025097302971094

`A041284(n)*A134451(n+2)`
-/

namespace A042190.P7630025097302971094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041284 n * A134451 (n + 2)

end

end A042190.P7630025097302971094

/-! ## A042190.P12208407779370614870

`A014710(2*n)*A041284(n)`
-/

namespace A042190.P12208407779370614870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014710 (2 * n) * A041284 n

end

end A042190.P12208407779370614870

/-! ## A042190.P6112052418684017900

`2/A000034(n)*A041284(n)`
-/

namespace A042190.P6112052418684017900
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A000034 n : ℚ) * (A041284 n : ℚ)

end

end A042190.P6112052418684017900

/-! ## A042190.P15728950872571979900

`A010144(A016789(n))*A041284(n)`
-/

namespace A042190.P15728950872571979900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010144 (A016789 n).toNat * A041284 n

end

end A042190.P15728950872571979900

/-!
# A042191: Denominators of continued fraction convergents to sqrt(620).

The programs for A042191, there is no canonical definition to state claims against.
-/

/-! ## A042191.P7838487830506815764

`A041285(n)/A000034(n)`
-/

namespace A042191.P7838487830506815764
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041285 n : ℚ) / (A000034 n : ℚ)

end

end A042191.P7838487830506815764

/-! ## A042191.P9457966201895007081

`A041285(n)/A134451(n+1)`
-/

namespace A042191.P9457966201895007081
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041285 n : ℚ) / (A134451 (n + 1) : ℚ)

end

end A042191.P9457966201895007081

/-! ## A042191.P4508359397014763364

`A041285(n)/Δ[A001651(n+1)]`
-/

namespace A042191.P4508359397014763364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041285 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A042191.P4508359397014763364

/-! ## A042191.P16430411767625474027

`A041285(n)/A014710(2*(n+1))`
-/

namespace A042191.P16430411767625474027
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041285 n : ℚ) / (A014710 (2 * (n + 1)) : ℚ)

end

end A042191.P16430411767625474027

/-! ## A042191.P15402175306674426668

`A041285(n)/A020639(A006519(n+1))`
-/

namespace A042191.P15402175306674426668
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041285 n : ℚ) / (A020639 (A006519 (n + 1)).toNat : ℚ)

end

end A042191.P15402175306674426668

/-! ## A042191.P8942113728213537503

`A041285(n)/A020639(A333403(n+1))`
-/

namespace A042191.P8942113728213537503
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041285 n : ℚ) / (A020639 (A333403 (n + 1)).toNat : ℚ)

end

end A042191.P8942113728213537503

/-! ## A042191.P1336682268841523489

`A041285(n)/A263845(n²)`
-/

namespace A042191.P1336682268841523489
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041285 n : ℚ) / (A263845 (n ^ 2) : ℚ)

end

end A042191.P1336682268841523489

/-! ## A042191.P12806321391663086501

`A041285(n)/A006519(n²+1)`
-/

namespace A042191.P12806321391663086501
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041285 n : ℚ) / (A006519 (n ^ 2 + 1) : ℚ)

end

end A042191.P12806321391663086501

/-!
# A042193: Denominators of continued fraction convergents to sqrt(621).

The programs for A042193, there is no canonical definition to state claims against.
-/

/-! ## A042193.P18281035463386385100

`A038025(A145074(n)+1)`
-/

namespace A042193.P18281035463386385100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038025 (A145074 n + 1).toNat

end

end A042193.P18281035463386385100

/-!
# A042197: Denominators of continued fraction convergents to sqrt(623).

The programs for A042197, there is no canonical definition to state claims against.
-/

/-! ## A042197.P10909230566432006408

`A140106(A042199(n))+1`
-/

namespace A042197.P10909230566432006408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (A042199 n).toNat + 1

end

end A042197.P10909230566432006408

/-! ## A042197.P1960231242109605750

`A194200(A042199(n)+1)`
-/

namespace A042197.P1960231242109605750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194200 (A042199 n + 1).toNat

end

end A042197.P1960231242109605750

/-!
# A042198: Numerators of continued fraction convergents to sqrt(624).

The programs for A042198, there is no canonical definition to state claims against.
-/

/-! ## A042198.P8173798669793572454

`gcd(2, n)*A041286(n)`
-/

namespace A042198.P8173798669793572454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 n : ℤ) * A041286 n

end

end A042198.P8173798669793572454

/-! ## A042198.P463228597097420229

`Δ[A007494(n)]*A041286(n)`
-/

namespace A042198.P463228597097420229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A041286 n

end

end A042198.P463228597097420229

/-! ## A042198.P14706923413613865437

`A000034(n+1)*A041286(n)`
-/

namespace A042198.P14706923413613865437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (n + 1) * A041286 n

end

end A042198.P14706923413613865437

/-! ## A042198.P4786025449595653997

`A041286(n)*A134451(n+2)`
-/

namespace A042198.P4786025449595653997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041286 n * A134451 (n + 2)

end

end A042198.P4786025449595653997

/-! ## A042198.P6563639956263911014

`A014710(2*n)*A041286(n)`
-/

namespace A042198.P6563639956263911014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014710 (2 * n) * A041286 n

end

end A042198.P6563639956263911014

/-! ## A042198.P720075807934476172

`2/A000034(n)*A041286(n)`
-/

namespace A042198.P720075807934476172
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A000034 n : ℚ) * (A041286 n : ℚ)

end

end A042198.P720075807934476172

/-! ## A042198.P11940012517647281036

`Δ[A007494(n)]²*A041064(n)`
-/

namespace A042198.P11940012517647281036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2 * A041064 n

end

end A042198.P11940012517647281036

/-! ## A042198.P10119236229768295400

`A000034(n+1)²*A041064(n)`
-/

namespace A042198.P10119236229768295400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (n + 1) ^ 2 * A041064 n

end

end A042198.P10119236229768295400

/-! ## A042198.P10070249020201506408

`(2/A000034(n))²*A041064(n)`
-/

namespace A042198.P10070249020201506408
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 / (A000034 n : ℚ)) ^ 2 * (A041064 n : ℚ)

end

end A042198.P10070249020201506408

/-!
# A042199: Denominators of continued fraction convergents to sqrt(624).

The programs for A042199, the canonical program `A042199.P9696894213873405834` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A042199 has offset 0).

The definition of A042199 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 118 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A042199.P9696894213873405834

`A041287(n)/A000034(n)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A042199

/-- `A041287(n)/A000034(n)` -/
def P9696894213873405834.Spec : Prop :=
  ∀ n, P9696894213873405834.a n = (A042199 n : ℚ)

end A042199

/-! ## A042199.P1811405148024245868

`A041287(n)/(A000035(n)+1)`
-/

namespace A042199.P1811405148024245868
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041287 n : ℚ) / (A000035 n + 1 : ℚ)

end

end A042199.P1811405148024245868

namespace A042199

/-- `A041287(n)/(A000035(n)+1)` -/
def P1811405148024245868.Spec : Prop :=
  ∀ n, P1811405148024245868.a n = (A042199 n : ℚ)

end A042199

/-! ## A042199.P4967177042994094480

`A041287(n)/A134451(n+1)`
-/

namespace A042199.P4967177042994094480
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041287 n : ℚ) / (A134451 (n + 1) : ℚ)

end

end A042199.P4967177042994094480

namespace A042199

/-- `A041287(n)/A134451(n+1)` -/
def P4967177042994094480.Spec : Prop :=
  ∀ n, P4967177042994094480.a n = (A042199 n : ℚ)

end A042199

/-! ## A042199.P18172137294151392643

`A041065(n)/(A000035(n)+1)²`
-/

namespace A042199.P18172137294151392643
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041065 n : ℚ) / ((A000035 n + 1) ^ 2 : ℚ)

end

end A042199.P18172137294151392643

namespace A042199

/-- `A041065(n)/(A000035(n)+1)²` -/
def P18172137294151392643.Spec : Prop :=
  ∀ n, P18172137294151392643.a n = (A042199 n : ℚ)

end A042199

/-! ## A042199.P11935678007526612698

`A041287(n)/A318454(n²+1)`
-/

namespace A042199.P11935678007526612698
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041287 n : ℚ) / (A318454 (n ^ 2 + 1) : ℚ)

end

end A042199.P11935678007526612698

namespace A042199

/-- `A041287(n)/A318454(n²+1)` -/
def P11935678007526612698.Spec : Prop :=
  ∀ n, P11935678007526612698.a n = (A042199 n : ℚ)

end A042199

/-! ## A042199.P15454352391025764352

`A041287(n)/A014710(2*(n+1))`
-/

namespace A042199.P15454352391025764352
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041287 n : ℚ) / (A014710 (2 * (n + 1)) : ℚ)

end

end A042199.P15454352391025764352

namespace A042199

/-- `A041287(n)/A014710(2*(n+1))` -/
def P15454352391025764352.Spec : Prop :=
  ∀ n, P15454352391025764352.a n = (A042199 n : ℚ)

end A042199

/-! ## A042199.P16514731089764970803

`A041287(n)/A034444(A006519(n+1))`
-/

namespace A042199.P16514731089764970803
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041287 n : ℚ) / (A034444 (A006519 (n + 1)).toNat : ℚ)

end

end A042199.P16514731089764970803

namespace A042199

/-- `A041287(n)/A034444(A006519(n+1))` -/
def P16514731089764970803.Spec : Prop :=
  ∀ n, P16514731089764970803.a n = (A042199 n : ℚ)

end A042199

/-! ## A042199.P2225737586565916149

`A041287(n)/A034444(A318454(n+1))`
-/

namespace A042199.P2225737586565916149
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041287 n : ℚ) / (A034444 (A318454 (n + 1)).toNat : ℚ)

end

end A042199.P2225737586565916149

namespace A042199

/-- `A041287(n)/A034444(A318454(n+1))` -/
def P2225737586565916149.Spec : Prop :=
  ∀ n, P2225737586565916149.a n = (A042199 n : ℚ)

end A042199

/-! ## A042199.P4704510309495218017

`A041065(n)/A014963(A006519(n+1))²`
-/

namespace A042199.P4704510309495218017
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041065 n : ℚ) / (A014963 (A006519 (n + 1)).toNat ^ 2 : ℚ)

end

end A042199.P4704510309495218017

namespace A042199

/-- `A041065(n)/A014963(A006519(n+1))²` -/
def P4704510309495218017.Spec : Prop :=
  ∀ n, P4704510309495218017.a n = (A042199 n : ℚ)

end A042199

/-! ## A042199.P12180480890202909247

`A041287(n)/A006519(n²+1)`
-/

namespace A042199.P12180480890202909247
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041287 n : ℚ) / (A006519 (n ^ 2 + 1) : ℚ)

end

end A042199.P12180480890202909247

namespace A042199

/-- `A041287(n)/A006519(n²+1)` -/
def P12180480890202909247.Spec : Prop :=
  ∀ n, P12180480890202909247.a n = (A042199 n : ℚ)

end A042199

/-! ## A042199.P12836615971894515294

`A041065(n)/A006519(n²+3)`
-/

namespace A042199.P12836615971894515294
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041065 n : ℚ) / (A006519 (n ^ 2 + 3) : ℚ)

end

end A042199.P12836615971894515294

namespace A042199

/-- `A041065(n)/A006519(n²+3)` -/
def P12836615971894515294.Spec : Prop :=
  ∀ n, P12836615971894515294.a n = (A042199 n : ℚ)

end A042199

