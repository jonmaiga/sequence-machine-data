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
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C034
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
import Seq.B002.C005
import Seq.B003.C000
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
import Seq.B007.C002
import Seq.B010.C000
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
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A288801: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 507", based on the 5-celled von Neumann neighborhood.

The programs for A288801, there is no canonical definition to state claims against.
-/

/-! ## A288801.P12237586422431422209

`A288768(char[1]+n)`
-/

namespace A288801.P12237586422431422209
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288768 ((if ∃ j, f1 j = n then 1 else 0) + n)

end

end A288801.P12237586422431422209

/-! ## A288801.P11113699526271188168

`or(char[1], A288768(n))`
-/

namespace A288801.P11113699526271188168
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A288768 n)

end

end A288801.P11113699526271188168

/-! ## A288801.P7339816264479265782

`xor(char[A288769(n)], A288768(n))`
-/

namespace A288801.P7339816264479265782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288769 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A288768 n)

end

end A288801.P7339816264479265782

/-! ## A288801.P1108100862953284392

`A288768(n)+A000007((1-n)²)`
-/

namespace A288801.P1108100862953284392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288768 n + A000007 ((1 - (n : ℤ)) ^ 2).toNat

end

end A288801.P1108100862953284392

/-! ## A288801.P4933664070161642524

`A286811(n)-char[A005408(n+1)]`
-/

namespace A288801.P4933664070161642524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286811 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A288801.P4933664070161642524

/-! ## A288801.P9358958269695626573

`A286811(n)-char[A286783(n+1)]`
-/

namespace A288801.P9358958269695626573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286783 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286811 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A288801.P9358958269695626573

/-! ## A288801.P4537848997609568808

`A286811(n)-char[A099375(n)+2]`
-/

namespace A288801.P4537848997609568808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n + 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286811 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A288801.P4537848997609568808

/-! ## A288801.P14388048750620962036

`A286811(n)-char[A286795(n+3)]`
-/

namespace A288801.P14388048750620962036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286795 (n + 3)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286811 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A288801.P14388048750620962036

/-! ## A288801.P15989477319238165386

`A288768(n)+A288803(n)-A288770(n)`
-/

namespace A288801.P15989477319238165386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288768 n + (A288803 n - A288770 n)

end

end A288801.P15989477319238165386

/-! ## A288801.P1595230437830980948

`A286811(n)+A159075(A159075(n)+A055396(n+1))`
-/

namespace A288801.P1595230437830980948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286811 n + A159075 (A159075 n + A055396 (n + 1)).toNat

end

end A288801.P1595230437830980948

/-!
# A288802: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 507", based on the 5-celled von Neumann neighborhood.

The programs for A288802, there is no canonical definition to state claims against.
-/

/-! ## A288802.P5759596809267050782

`or(A285476(n), A288769(n))`
-/

namespace A288802.P5759596809267050782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A285476 n) (A288769 n)

end

end A288802.P5759596809267050782

/-! ## A288802.P12256560972064203972

`A288769(n)+char[1]*A288768(n)`
-/

namespace A288802.P12256560972064203972
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288769 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) * A288768 n

end

end A288802.P12256560972064203972

/-! ## A288802.P400981366984595151

`lcm(A288769(n), A288801(A048298(n)))`
-/

namespace A288802.P400981366984595151
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A288769 n) (A288801 (A048298 n).toNat)

end

end A288802.P400981366984595151

/-! ## A288802.P1881757253132876641

`A014963(A005935(n+1))*A288769(n)`
-/

namespace A288802.P1881757253132876641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A005935 (n + 1)).toNat * A288769 n

end

end A288802.P1881757253132876641

/-! ## A288802.P234437906850690056

`A007088(A288804(n))`
-/

namespace A288802.P234437906850690056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A288804 n).toNat

end

end A288802.P234437906850690056

/-!
# A288803: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 507", based on the 5-celled von Neumann neighborhood.

The programs for A288803, there is no canonical definition to state claims against.
-/

/-! ## A288803.P14688915961857562841

`A288770(char[1]+n)`
-/

namespace A288803.P14688915961857562841
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288770 ((if ∃ j, f1 j = n then 1 else 0) + n)

end

end A288803.P14688915961857562841

/-! ## A288803.P16140526793502189995

`or(char[1], A288770(n))`
-/

namespace A288803.P16140526793502189995
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A288770 n)

end

end A288803.P16140526793502189995

/-! ## A288803.P8136347588678487347

`A288770(n)+A063524(n)`
-/

namespace A288803.P8136347588678487347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288770 n + A063524 n

end

end A288803.P8136347588678487347

/-! ## A288803.P13149111425839005799

`A288770(n)-A159075(n)`
-/

namespace A288803.P13149111425839005799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288770 n - A159075 n

end

end A288803.P13149111425839005799

/-! ## A288803.P5023219992385762217

`A288770(n)+A078827(C(2, n))`
-/

namespace A288803.P5023219992385762217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288770 n + A078827 (Nat.choose 2 n)

end

end A288803.P5023219992385762217

/-! ## A288803.P6811235117225222238

`or(A287188(n)-1, A287197(n))`
-/

namespace A288803.P6811235117225222238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A287188 n - 1) (A287197 n)

end

end A288803.P6811235117225222238

/-! ## A288803.P14256234111325991508

`A254667(n)+A288770(n)-n`
-/

namespace A288803.P14256234111325991508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254667 n + (A288770 n - (n : ℤ))

end

end A288803.P14256234111325991508

/-! ## A288803.P11082353189966816421

`char[1]+A287188(n)-A000035(n)`
-/

namespace A288803.P11082353189966816421
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (A287188 n - A000035 n)

end

end A288803.P11082353189966816421

/-! ## A288803.P13018320284149759534

`A288770(n)+A000007(A028242(n))`
-/

namespace A288803.P13018320284149759534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288770 n + A000007 (A028242 n).toNat

end

end A288803.P13018320284149759534

/-! ## A288803.P11246363281022450396

`A288770(n)+A065335(A000040(n+1))`
-/

namespace A288803.P11246363281022450396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288770 n + A065335 (A000040 (n + 1)).toNat

end

end A288803.P11246363281022450396

/-! ## A288803.P2392403860880265595

`A288770(n)+A288771(n)%A288804(n)`
-/

namespace A288803.P2392403860880265595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288770 n + Int.tmod (A288771 n) (A288804 n)

end

end A288803.P2392403860880265595

/-! ## A288803.P16490613681013873151

`A288770(n)+A288801(n)-A288768(n)`
-/

namespace A288803.P16490613681013873151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288770 n + (A288801 n - A288768 n)

end

end A288803.P16490613681013873151

/-!
# A288804: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 507", based on the 5-celled von Neumann neighborhood.

The programs for A288804, there is no canonical definition to state claims against.
-/

/-! ## A288804.P18078364976674349924

`A288771(n)+2*char[1]`
-/

namespace A288804.P18078364976674349924
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288771 n + ((2 * (if ∃ j, f1 j = n then 1 else 0) : ℕ) : ℤ)

end

end A288804.P18078364976674349924

/-! ## A288804.P16963115751630837339

`lcm(A260196(n), A288771(n))`
-/

namespace A288804.P16963115751630837339
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A260196 n) (A288771 n)

end

end A288804.P16963115751630837339

/-! ## A288804.P17369616256028959178

`or(A130706(n), A288771(n))`
-/

namespace A288804.P17369616256028959178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A130706 n) (A288771 n)

end

end A288804.P17369616256028959178

/-! ## A288804.P13611056880454548703

`or(Δ[A062383(n)], A288771(n))`
-/

namespace A288804.P13611056880454548703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062383 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (n + 1) - f1 n) (A288771 n)

end

end A288804.P13611056880454548703

/-! ## A288804.P6575088696919748613

`or(A193356(n+2), A288771(n))`
-/

namespace A288804.P6575088696919748613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A193356 (n + 2)) (A288771 n)

end

end A288804.P6575088696919748613

/-! ## A288804.P12616441615543827618

`or(A288770(n)%3, A288771(n))`
-/

namespace A288804.P12616441615543827618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Int.tmod (A288770 n) 3) (A288771 n)

end

end A288804.P12616441615543827618

/-! ## A288804.P8049755144231788383

`A288771(n)*A288803(n*char[1])`
-/

namespace A288804.P8049755144231788383
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288771 n * A288803 (n * (if ∃ j, f1 j = n then 1 else 0))

end

end A288804.P8049755144231788383

/-! ## A288804.P16376042519896487454

`A001792(and(n, A001792(n)))*A288771(n)`
-/

namespace A288804.P16376042519896487454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001792 (Int.land (n : ℤ) (A001792 n)).toNat * A288771 n

end

end A288804.P16376042519896487454

/-! ## A288804.P12122686892366192963

`A128724(A000124(n))*A288771(n)`
-/

namespace A288804.P12122686892366192963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128724 (A000124 n).toNat * A288771 n

end

end A288804.P12122686892366192963

/-! ## A288804.P16669825066922001018

`A014963(∑[n+1])*A288771(n)`
-/

namespace A288804.P16669825066922001018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (∑ j ∈ Finset.range (n + 1), f1 j) * A288771 n

end

end A288804.P16669825066922001018

/-!
# A288805: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 510", based on the 5-celled von Neumann neighborhood.

The programs for A288805, there is no canonical definition to state claims against.
-/

/-! ## A288805.P15323660636196673733

`A000042(n+1)-A288809(n)%A000042(n+1)`
-/

namespace A288805.P15323660636196673733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (n + 1) - Int.tmod (A288809 n) (A000042 (n + 1))

end

end A288805.P15323660636196673733

/-! ## A288805.P11125034613552875333

`A007088(A288807(n))`
-/

namespace A288805.P11125034613552875333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A288807 n).toNat

end

end A288805.P11125034613552875333

/-! ## A288805.P6546967934571810614

`A007088(floor(A001317(n)/A060546(n)))`
-/

namespace A288805.P6546967934571810614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 ⌊(A001317 n : ℚ) / (A060546 n : ℚ)⌋.toNat

end

end A288805.P6546967934571810614

/-! ## A288805.P3120437463025080796

`A007088(floor(A001317(n)/Δ[A027383(n)]))`
-/

namespace A288805.P3120437463025080796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027383 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 ⌊(A001317 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)⌋.toNat

end

end A288805.P3120437463025080796

/-! ## A288805.P14415921792102513055

`A007088(floor(A001317(n)/∏[A000034(n)]))`
-/

namespace A288805.P14415921792102513055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 ⌊(A001317 n : ℚ) / ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)⌋.toNat

end

end A288805.P14415921792102513055

/-!
# A288806: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 510", based on the 5-celled von Neumann neighborhood.

The programs for A288806, there is no canonical definition to state claims against.
-/

/-! ## A288806.P9839291403524663123

`lcm(A286508(n), A288805(n))`
-/

namespace A288806.P9839291403524663123
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A286508 n) (A288805 n)

end

end A288806.P9839291403524663123

/-! ## A288806.P15576190496120913195

`A007088(A133179(n))*A286508(n)`
-/

namespace A288806.P15576190496120913195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A133179 n).toNat * A286508 n

end

end A288806.P15576190496120913195

/-! ## A288806.P17639109143259857206

`lcm(A007088(A133179(n)), A285435(n))`
-/

namespace A288806.P17639109143259857206
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A007088 (A133179 n).toNat) (A285435 n)

end

end A288806.P17639109143259857206

/-! ## A288806.P17062324595555205870

`A007088(A060546(n))*A007088(A133179(n))`
-/

namespace A288806.P17062324595555205870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A060546 n).toNat * A007088 (A133179 n).toNat

end

end A288806.P17062324595555205870

/-! ## A288806.P11029944219109136153

`A286508(n)*A305989(A288807(n))`
-/

namespace A288806.P11029944219109136153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286508 n * A305989 (A288807 n).toNat

end

end A288806.P11029944219109136153

/-!
# A288807: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 510", based on the 5-celled von Neumann neighborhood.

The programs for A288807, the canonical program `A288807.P2449499733387383223` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A288807 has offset 0).

The definition of A288807 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 663 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A288807.P2449499733387383223

`lcm(A174296(n), A285436(n))/A000034(n)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A288807

/-- `lcm(A174296(n), A285436(n))/A000034(n)` -/
def P2449499733387383223.Spec : Prop :=
  ∀ n, P2449499733387383223.a n = (A288807 n : ℚ)

end A288807

/-! ## A288807.P8739028870738832632

`floor(A001317(n)/A060546(n))`
-/

namespace A288807.P8739028870738832632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001317 n : ℚ) / (A060546 n : ℚ)⌋

end

end A288807.P8739028870738832632

namespace A288807

/-- `floor(A001317(n)/A060546(n))` -/
def P8739028870738832632.Spec : Prop :=
  ∀ n, P8739028870738832632.a n = A288807 n

end A288807

/-! ## A288807.P17691437703689453665

`floor(A001317(n)/Δ[A027383(n)])`
-/

namespace A288807.P17691437703689453665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027383 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001317 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)⌋

end

end A288807.P17691437703689453665

namespace A288807

/-- `floor(A001317(n)/Δ[A027383(n)])` -/
def P17691437703689453665.Spec : Prop :=
  ∀ n, P17691437703689453665.a n = A288807 n

end A288807

/-! ## A288807.P7809726102906979223

`floor(A001317(n)/∏[A000034(n)])`
-/

namespace A288807.P7809726102906979223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001317 n : ℚ) / ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)⌋

end

end A288807.P7809726102906979223

namespace A288807

/-- `floor(A001317(n)/∏[A000034(n)])` -/
def P7809726102906979223.Spec : Prop :=
  ∀ n, P7809726102906979223.a n = A288807 n

end A288807

/-! ## A288807.P3023673390186092171

`floor(A001317(n)/A016116(n+1))`
-/

namespace A288807.P3023673390186092171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001317 n : ℚ) / (A016116 (n + 1) : ℚ)⌋

end

end A288807.P3023673390186092171

namespace A288807

/-- `floor(A001317(n)/A016116(n+1))` -/
def P3023673390186092171.Spec : Prop :=
  ∀ n, P3023673390186092171.a n = A288807 n

end A288807

/-! ## A288807.P4168633355123374224

`floor(A001317(n)/A000079(A110654(n)))`
-/

namespace A288807.P4168633355123374224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001317 n : ℚ) / (A000079 (A110654 n).toNat : ℚ)⌋

end

end A288807.P4168633355123374224

namespace A288807

/-- `floor(A001317(n)/A000079(A110654(n)))` -/
def P4168633355123374224.Spec : Prop :=
  ∀ n, P4168633355123374224.a n = A288807 n

end A288807

/-! ## A288807.P18072888283926836902

`A288808(n)+A288812(n)-A288811(n)`
-/

namespace A288807.P18072888283926836902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288808 n + (A288812 n - A288811 n)

end

end A288807.P18072888283926836902

namespace A288807

/-- `A288808(n)+A288812(n)-A288811(n)` -/
def P18072888283926836902.Spec : Prop :=
  ∀ n, P18072888283926836902.a n = A288807 n

end A288807

/-! ## A288807.P2999262181505762375

`A126646(n)-A288811(n)%A126646(n)`
-/

namespace A288807.P2999262181505762375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n - Int.tmod (A288811 n) (A126646 n)

end

end A288807.P2999262181505762375

namespace A288807

/-- `A126646(n)-A288811(n)%A126646(n)` -/
def P2999262181505762375.Spec : Prop :=
  ∀ n, P2999262181505762375.a n = A288807 n

end A288807

/-!
# A288808: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 510", based on the 5-celled von Neumann neighborhood.

The programs for A288808, the canonical program `A288808.P2515137361207868188` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A288808 has offset 0).

The definition of A288808 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 393 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A288808.P2515137361207868188

`A060546(n)*A133179(n)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A288808

/-- `A060546(n)*A133179(n)` -/
def P2515137361207868188.Spec : Prop :=
  ∀ n, P2515137361207868188.a n = A288808 n

theorem P2515137361207868188.correct : P2515137361207868188.Spec := by
  intro n
  simp only [A288808]

end A288808

/-! ## A288808.P8646725608051681872

`lcm(A152166(n), A288807(n))`
-/

namespace A288808.P8646725608051681872
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A152166 n) (A288807 n)

end

end A288808.P8646725608051681872

namespace A288808

/-- `lcm(A152166(n), A288807(n))` -/
def P8646725608051681872.Spec : Prop :=
  ∀ n, (P8646725608051681872.a n : ℤ) = A288808 n

end A288808

/-! ## A288808.P18169203325868961287

`lcm(A174296(n), A285437(n))`
-/

namespace A288808.P18169203325868961287
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A174296 n) (A285437 n)

end

end A288808.P18169203325868961287

namespace A288808

/-- `lcm(A174296(n), A285437(n))` -/
def P18169203325868961287.Spec : Prop :=
  ∀ n, (P18169203325868961287.a n : ℤ) = A288808 n

end A288808

/-! ## A288808.P1829102080774133682

`Δ[A027383(n)]*A133179(n)`
-/

namespace A288808.P1829102080774133682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027383 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A133179 n

end

end A288808.P1829102080774133682

namespace A288808

/-- `Δ[A027383(n)]*A133179(n)` -/
def P1829102080774133682.Spec : Prop :=
  ∀ n, P1829102080774133682.a n = A288808 n

end A288808

/-! ## A288808.P2207851204922011715

`∏[A000034(n)]*A133179(n)`
-/

namespace A288808.P2207851204922011715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A133179 n

end

end A288808.P2207851204922011715

namespace A288808

/-- `∏[A000034(n)]*A133179(n)` -/
def P2207851204922011715.Spec : Prop :=
  ∀ n, P2207851204922011715.a n = A288808 n

end A288808

/-! ## A288808.P15322781071710807268

`lcm(Δ[A077957(n)], A133179(n))`
-/

namespace A288808.P15322781071710807268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077957 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (f1 (n + 1) - f1 n) (A133179 n)

end

end A288808.P15322781071710807268

namespace A288808

/-- `lcm(Δ[A077957(n)], A133179(n))` -/
def P15322781071710807268.Spec : Prop :=
  ∀ n, (P15322781071710807268.a n : ℤ) = A288808 n

end A288808

/-! ## A288808.P16653386365404371190

`A000079(A110654(n))*A133179(n)`
-/

namespace A288808.P16653386365404371190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A110654 n).toNat * A133179 n

end

end A288808.P16653386365404371190

namespace A288808

/-- `A000079(A110654(n))*A133179(n)` -/
def P16653386365404371190.Spec : Prop :=
  ∀ n, P16653386365404371190.a n = A288808 n

end A288808

/-!
# A288809: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 513", based on the 5-celled von Neumann neighborhood.

The programs for A288809, there is no canonical definition to state claims against.
-/

/-! ## A288809.P14353562760133267079

`floor(acot(n))-(A288805(n)-A000042(n+1))`
-/

namespace A288809.P14353562760133267079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (n : ℝ)⌋ - (A288805 n - A000042 (n + 1))

end

end A288809.P14353562760133267079

/-! ## A288809.P10966996162036204202

`A288806(n)+A288810(n)-A288805(n)`
-/

namespace A288809.P10966996162036204202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288806 n + (A288810 n - A288805 n)

end

end A288809.P10966996162036204202

/-! ## A288809.P11966182503323481807

`Δ[A057427(n)+A014824(n)]-A288805(n)`
-/

namespace A288809.P11966182503323481807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A014824 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A288805 n

end

end A288809.P11966182503323481807

/-! ## A288809.P1006979399788434013

`A000042(n+1)+A000007(n)-A288805(n)`
-/

namespace A288809.P1006979399788434013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (n + 1) + (A000007 n - A288805 n)

end

end A288809.P1006979399788434013

/-! ## A288809.P15137647481254600606

`A007088(A288811(n))`
-/

namespace A288809.P15137647481254600606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A288811 n).toNat

end

end A288809.P15137647481254600606

/-!
# A288810: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 513", based on the 5-celled von Neumann neighborhood.

The programs for A288810, there is no canonical definition to state claims against.
-/

/-! ## A288810.P9691306919087422245

`A288805(n)+A288809(n)-A288806(n)`
-/

namespace A288810.P9691306919087422245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288805 n + (A288809 n - A288806 n)

end

end A288810.P9691306919087422245

/-! ## A288810.P5552909600548223303

`A000042(n+1)-A288806(n)%A000042(n+1)`
-/

namespace A288810.P5552909600548223303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (n + 1) - Int.tmod (A288806 n) (A000042 (n + 1))

end

end A288810.P5552909600548223303

/-! ## A288810.P17569808468130655766

`A007088(A288812(n))`
-/

namespace A288810.P17569808468130655766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A288812 n).toNat

end

end A288810.P17569808468130655766

/-! ## A288810.P3207548893149654360

`A007088(A095121(n)+1-A288808(n))`
-/

namespace A288810.P3207548893149654360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A095121 n + (1 - A288808 n)).toNat

end

end A288810.P3207548893149654360

/-! ## A288810.P13404542640221368063

`A007088(1-(A288808(n)-A095121(n)))`
-/

namespace A288810.P13404542640221368063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (1 - (A288808 n - A095121 n)).toNat

end

end A288810.P13404542640221368063

/-!
# A288811: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 513", based on the 5-celled von Neumann neighborhood.

The programs for A288811, the canonical program `A288811.P11306443262646702706` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A288811 has offset 0).

The definition of A288811 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A288811.P11306443262646702706

`A095121(n)+1-A288807(n)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A288811

/-- `A095121(n)+1-A288807(n)` -/
def P11306443262646702706.Spec : Prop :=
  ∀ n, P11306443262646702706.a n = A288811 n

theorem P11306443262646702706.correct : P11306443262646702706.Spec := by
  intro n
  simp only [A288811]

end A288811

/-! ## A288811.P18002907349701850472

`xor(record[A324821(n+1)], A288807(n))`
-/

namespace A288811.P18002907349701850472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A288807 n)

end

end A288811.P18002907349701850472

namespace A288811

/-- `xor(record[A324821(n+1)], A288807(n))` -/
def P18002907349701850472.Spec : Prop :=
  ∀ n, P18002907349701850472.a n = A288811 n

end A288811

/-! ## A288811.P7344842107702227430

`A052955(A004277(n))-A288807(n)`
-/

namespace A288811.P7344842107702227430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052955 (A004277 n).toNat - A288807 n

end

end A288811.P7344842107702227430

namespace A288811

/-- `A052955(A004277(n))-A288807(n)` -/
def P7344842107702227430.Spec : Prop :=
  ∀ n, P7344842107702227430.a n = A288811 n

end A288811

/-! ## A288811.P16970190180726953120

`A288338(n)+A288897(n)-A288807(n)`
-/

namespace A288811.P16970190180726953120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288338 n + (A288897 n - A288807 n)

end

end A288811.P16970190180726953120

namespace A288811

/-- `A288338(n)+A288897(n)-A288807(n)` -/
def P16970190180726953120.Spec : Prop :=
  ∀ n, P16970190180726953120.a n = A288811 n

end A288811

/-! ## A288811.P8911071170078687141

`A288808(n)+A288812(n)-A288807(n)`
-/

namespace A288811.P8911071170078687141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288808 n + (A288812 n - A288807 n)

end

end A288811.P8911071170078687141

namespace A288811

/-- `A288808(n)+A288812(n)-A288807(n)` -/
def P8911071170078687141.Spec : Prop :=
  ∀ n, P8911071170078687141.a n = A288811 n

end A288811

/-! ## A288811.P15139559838863536936

`A126646(n)-A288807(n)%A000079(n)`
-/

namespace A288811.P15139559838863536936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n - Int.tmod (A288807 n) (A000079 n)

end

end A288811.P15139559838863536936

namespace A288811

/-- `A126646(n)-A288807(n)%A000079(n)` -/
def P15139559838863536936.Spec : Prop :=
  ∀ n, P15139559838863536936.a n = A288811 n

end A288811

/-! ## A288811.P12764694290893513775

`xor(A126646(n)%A286508(n), A288807(n))`
-/

namespace A288811.P12764694290893513775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (Int.tmod (A126646 n) (A286508 n)) (A288807 n)

end

end A288811.P12764694290893513775

namespace A288811

/-- `xor(A126646(n)%A286508(n), A288807(n))` -/
def P12764694290893513775.Spec : Prop :=
  ∀ n, P12764694290893513775.a n = A288811 n

end A288811

/-!
# A288812: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 513", based on the 5-celled von Neumann neighborhood.

The programs for A288812, the canonical program `A288812.P14573539789979862981` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A288812 has offset 0).

The definition of A288812 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A288812.P14573539789979862981

`A095121(n)+1-A288808(n)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A288812

/-- `A095121(n)+1-A288808(n)` -/
def P14573539789979862981.Spec : Prop :=
  ∀ n, P14573539789979862981.a n = A288812 n

theorem P14573539789979862981.correct : P14573539789979862981.Spec := by
  intro n
  simp only [A288812]

end A288812

/-! ## A288812.P16370747475974780671

`or(1, A126646(n)-A288808(n))`
-/

namespace A288812.P16370747475974780671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A126646 n - A288808 n)

end

end A288812.P16370747475974780671

namespace A288812

/-- `or(1, A126646(n)-A288808(n))` -/
def P16370747475974780671.Spec : Prop :=
  ∀ n, P16370747475974780671.a n = A288812 n

end A288812

/-! ## A288812.P9797743330278856341

`A288338(n)+A288897(n)-A288808(n)`
-/

namespace A288812.P9797743330278856341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288338 n + (A288897 n - A288808 n)

end

end A288812.P9797743330278856341

namespace A288812

/-- `A288338(n)+A288897(n)-A288808(n)` -/
def P9797743330278856341.Spec : Prop :=
  ∀ n, P9797743330278856341.a n = A288812 n

end A288812

/-! ## A288812.P7042620218109531937

`A288807(n)+A288811(n)-A288808(n)`
-/

namespace A288812.P7042620218109531937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288807 n + (A288811 n - A288808 n)

end

end A288812.P7042620218109531937

namespace A288812

/-- `A288807(n)+A288811(n)-A288808(n)` -/
def P7042620218109531937.Spec : Prop :=
  ∀ n, P7042620218109531937.a n = A288812 n

end A288812

/-! ## A288812.P3546943557388157391

`A126646(n)-A288808(n)%A001317(n)`
-/

namespace A288812.P3546943557388157391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n - Int.tmod (A288808 n) (A001317 n)

end

end A288812.P3546943557388157391

namespace A288812

/-- `A126646(n)-A288808(n)%A001317(n)` -/
def P3546943557388157391.Spec : Prop :=
  ∀ n, P3546943557388157391.a n = A288812 n

end A288812

/-! ## A288812.P10896976252718640570

`xor(A126646(n)%A048477(n), A288808(n))`
-/

namespace A288812.P10896976252718640570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (Int.tmod (A126646 n) (A048477 n)) (A288808 n)

end

end A288812.P10896976252718640570

namespace A288812

/-- `xor(A126646(n)%A048477(n), A288808(n))` -/
def P10896976252718640570.Spec : Prop :=
  ∀ n, P10896976252718640570.a n = A288812 n

end A288812

/-!
# A288813: Irregular triangle read by rows: T(m, k) is the list of squarefree numbers A002110(m) < t < 2*A002110(m) such that A001221(t) = m.

The programs for A288813, there is no canonical definition to state claims against.
-/

/-! ## A288813.P5341422450429894005

`∩[A366882(n+1), A288784(n)]`
-/

namespace A288813.P5341422450429894005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366882 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288784 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A288813.P5341422450429894005

/-! ## A288813.P1428680960901905999

`record[∏{p}[A328763(n), #/A099545(n+1)]]`
-/

namespace A288813.P1428680960901905999
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328763 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, (p : ℚ) / (A099545 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288813.P1428680960901905999

/-!
# A288814: a(n) is the smallest composite number whose prime divisors (with multiplicity) sum to n.

The programs for A288814, there is no canonical definition to state claims against.
-/

/-! ## A288814.P9459452639950095474

`A280739(n+4)-A255061(A368000(n+1))`
-/

namespace A288814.P9459452639950095474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280739 (n + 4) - A255061 (A368000 (n + 1)).toNat

end

end A288814.P9459452639950095474

/-!
# A288815: Paired Jacobsthal function applied to the product of the first n primes.

The programs for A288815, there is no canonical definition to state claims against.
-/

/-! ## A288815.P16165397921347883889

`A086553(A218904(n+1))`
-/

namespace A288815.P16165397921347883889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086553 (A218904 (n + 1)).toNat

end

end A288815.P16165397921347883889

/-! ## A288815.P7758036921003777738

`A005869(A131060(a(n-1)+2^(n-1)))` with `a(0)=2`
-/

namespace A288815.P7758036921003777738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A005869 (A131060 (SequenceMachineLib.roundAway ((a (n - 1) : ℚ) + (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ))).toNat).toNat

end

end A288815.P7758036921003777738

/-!
# A288817: Number of set partitions of [n] such that each subset is sum-free.

The programs for A288817, there is no canonical definition to state claims against.
-/

/-! ## A288817.P12704988365428605681

`A132085(or(2, A009212(n)))`
-/

namespace A288817.P12704988365428605681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132085 (Int.lor 2 (A009212 n)).toNat

end

end A288817.P12704988365428605681

/-! ## A288817.P6532887302382307992

`A132085(xor(2, A009212(n)))`
-/

namespace A288817.P6532887302382307992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132085 (Int.xor 2 (A009212 n)).toNat

end

end A288817.P6532887302382307992

/-! ## A288817.P12322079896603047578

`A132085(A137557(n+1)-n)`
-/

namespace A288817.P12322079896603047578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132085 (A137557 (n + 1) - (n : ℤ)).toNat

end

end A288817.P12322079896603047578

/-! ## A288817.P16732796668815464759

`A132085(A009212(n)+A000009(n))`
-/

namespace A288817.P16732796668815464759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132085 (A009212 n + A000009 n).toNat

end

end A288817.P16732796668815464759

/-!
# A288818: Number of ways in which one can insert * and ^ into the decimal digits of n to create a valid (see comments) base-ten factorization statement.

The programs for A288818, there is no canonical definition to state claims against.
-/

/-! ## A288818.P15487451920672279563

`or(A010051(n+1), A102683(A117791(n)))`
-/

namespace A288818.P15487451920672279563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010051 (n + 1)) (A102683 (A117791 n).toNat)

end

end A288818.P15487451920672279563

/-! ## A288818.P8409356082451140341

`or(A102683(A117791(n)), A283991(n+1))`
-/

namespace A288818.P8409356082451140341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A102683 (A117791 n).toNat) (A283991 (n + 1))

end

end A288818.P8409356082451140341

/-! ## A288818.P775823668840447246

`A127323(A006983(n+1))+A010051(n+1)`
-/

namespace A288818.P775823668840447246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127323 (A006983 (n + 1)).toNat + A010051 (n + 1)

end

end A288818.P775823668840447246

/-! ## A288818.P4732101958653586914

`A024155(A275065(n))+A010051(n+1)`
-/

namespace A288818.P4732101958653586914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024155 (A275065 n).toNat + A010051 (n + 1)

end

end A288818.P4732101958653586914

/-! ## A288818.P10909409613772491011

`A111899(n+1)+A010051(A319708(n+1))`
-/

namespace A288818.P10909409613772491011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111899 (n + 1) + A010051 (A319708 (n + 1)).toNat

end

end A288818.P10909409613772491011

/-!
# A288819: Record maxima in A288818.

The programs for A288819, there is no canonical definition to state claims against.
-/

/-! ## A288819.P4759156835530695823

`lt[A129522(A129527(3*n+2)), A129560(2*n+5)]`
-/

namespace A288819.P4759156835530695823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129522 (A129527 (3 * n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129560 (2 * n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A288819.P4759156835530695823

/-! ## A288819.P8991043835262079444

`lt[A001222(A039879(2*(n+1))), 3]`
-/

namespace A288819.P8991043835262079444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A039879 (2 * (n + 1))).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A288819.P8991043835262079444

/-! ## A288819.P16174774821098040489

`record[A275633(n+2)%A275579(n+1)]`
-/

namespace A288819.P16174774821098040489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A275633 (n + 2)) (A275579 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288819.P16174774821098040489

/-! ## A288819.P9295844745947446604

`eq[A007862(n+1), A008479(A008487(n))]`
-/

namespace A288819.P9295844745947446604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007862 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008479 (A008487 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A288819.P9295844745947446604

/-! ## A288819.P8863466222280621778

`lt[A080099(A079125(n+5)), A309570(n)]`
-/

namespace A288819.P8863466222280621778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080099 (A079125 (n + 5)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309570 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A288819.P8863466222280621778

/-!
# A288820: Indices of records in A288818.

The programs for A288820, there is no canonical definition to state claims against.
-/

/-! ## A288820.P16108983380379673084

`A195264(A258096(∑[n]))`
-/

namespace A288820.P16108983380379673084
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195264 (A258096 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A288820.P16108983380379673084

/-!
# A288822: Numbers k such that 10^k - 800001 is prime.

The programs for A288822, there is no canonical definition to state claims against.
-/

/-! ## A288822.P17320400599000666022

`A171829(A055257(n+1))`
-/

namespace A288822.P17320400599000666022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171829 (A055257 (n + 1)).toNat

end

end A288822.P17320400599000666022

/-!
# A288824: Numbers k such that (26*10^k + 61)/3 is prime.

The programs for A288824, there is no canonical definition to state claims against.
-/

/-! ## A288824.P5770406127514955255

`eq[A025448(n), A062157(A117108(n+1))]`
-/

namespace A288824.P5770406127514955255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025448 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (A117108 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A288824.P5770406127514955255

/-!
# A288825: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 515", based on the 5-celled von Neumann neighborhood.

The programs for A288825, the canonical program `A288825.P14440546485086933183` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A288825 has offset 0).

The definition of A288825 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A288825.P15565745798430786460

`or(1, ∑[10^n]-10^floor(n/2))`
-/

namespace A288825.P15565745798430786460
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) - (10 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ)))

end

end A288825.P15565745798430786460

namespace A288825

/-- `or(1, ∑[10^n]-10^floor(n/2))` -/
def P15565745798430786460.Spec : Prop :=
  ∀ n, P15565745798430786460.a n = A288825 n

end A288825

/-! ## A288825.P14440546485086933183

`A000042(n+1)-A178500(floor(n/2))`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A288825

/-- `A000042(n+1)-A178500(floor(n/2))` -/
def P14440546485086933183.Spec : Prop :=
  ∀ n, P14440546485086933183.a n = A288825 n

theorem P14440546485086933183.correct : P14440546485086933183.Spec := by
  intro n
  simp only [A288825]

end A288825

/-! ## A288825.P5077181508078715207

`∑[A011557(n)]-A178500(A004526(n))`
-/

namespace A288825.P5077181508078715207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011557 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A178500 (A004526 n).toNat

end

end A288825.P5077181508078715207

namespace A288825

/-- `∑[A011557(n)]-A178500(A004526(n))` -/
def P5077181508078715207.Spec : Prop :=
  ∀ n, P5077181508078715207.a n = A288825 n

end A288825

/-! ## A288825.P14657928920542207969

`A002275(n+1)-A178500(A004526(n))`
-/

namespace A288825.P14657928920542207969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 (n + 1) - A178500 (A004526 n).toNat

end

end A288825.P14657928920542207969

namespace A288825

/-- `A002275(n+1)-A178500(A004526(n))` -/
def P14657928920542207969.Spec : Prop :=
  ∀ n, P14657928920542207969.a n = A288825 n

end A288825

/-! ## A288825.P9104990174994587134

`A007088(A288827(n))`
-/

namespace A288825.P9104990174994587134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A288827 n).toNat

end

end A288825.P9104990174994587134

namespace A288825

/-- `A007088(A288827(n))` -/
def P9104990174994587134.Spec : Prop :=
  ∀ n, P9104990174994587134.a n = A288825 n

end A288825

/-!
# A288826: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 515", based on the 5-celled von Neumann neighborhood.

The programs for A288826, the canonical program `A288826.P8999188853409678325` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A288826 has offset 0).

The definition of A288826 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A288826.P4505532446968197296

`A000042(n+1)-A286508(n)%A288809(n)`
-/

namespace A288826.P4505532446968197296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (n + 1) - Int.tmod (A286508 n) (A288809 n)

end

end A288826.P4505532446968197296

namespace A288826

/-- `A000042(n+1)-A286508(n)%A288809(n)` -/
def P4505532446968197296.Spec : Prop :=
  ∀ n, P4505532446968197296.a n = A288826 n

end A288826

/-! ## A288826.P8999188853409678325

`A094026(2*n+1)-A011557(n+1)%A094026(n+1)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A288826

/-- `A094026(2*n+1)-A011557(n+1)%A094026(n+1)` -/
def P8999188853409678325.Spec : Prop :=
  ∀ n, P8999188853409678325.a n = A288826 n

theorem P8999188853409678325.correct : P8999188853409678325.Spec := by
  intro n
  simp only [A288826]

end A288826

/-! ## A288826.P9472788708764978754

`A007088(A288828(n))`
-/

namespace A288826.P9472788708764978754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A288828 n).toNat

end

end A288826.P9472788708764978754

namespace A288826

/-- `A007088(A288828(n))` -/
def P9472788708764978754.Spec : Prop :=
  ∀ n, P9472788708764978754.a n = A288826 n

end A288826

/-! ## A288826.P11244821780659760239

`A007088(A134824(n)+A122746(n))`
-/

namespace A288826.P11244821780659760239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A134824 n + A122746 n).toNat

end

end A288826.P11244821780659760239

namespace A288826

/-- `A007088(A134824(n)+A122746(n))` -/
def P11244821780659760239.Spec : Prop :=
  ∀ n, P11244821780659760239.a n = A288826 n

end A288826

/-! ## A288826.P8287990090261100269

`A007088(A122746(n)-A036563(n)%2)`
-/

namespace A288826.P8287990090261100269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A122746 n - Int.tmod (A036563 n) 2).toNat

end

end A288826.P8287990090261100269

namespace A288826

/-- `A007088(A122746(n)-A036563(n)%2)` -/
def P8287990090261100269.Spec : Prop :=
  ∀ n, P8287990090261100269.a n = A288826 n

end A288826

/-!
# A288827: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 515", based on the 5-celled von Neumann neighborhood.

The programs for A288827, the canonical program `A288827.P320174240893427926` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A288827 has offset 0).

The definition of A288827 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A288827.P320174240893427926

`3*a(n-1)-6*a(n-3)+4*a(n-4)` with `a(0)=1, a(1)=3, a(2)=5, a(3)=13, a(4)=27, a(5)=59`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A288827

/-- `3*a(n-1)-6*a(n-3)+4*a(n-4)` -/
def P320174240893427926.Spec : Prop :=
  ∀ n, P320174240893427926.a n = A288827 n

theorem P320174240893427926.correct : P320174240893427926.Spec := by
  intro n
  simp only [A288827]

end A288827

/-! ## A288827.P16352775892295826655

`or(1, A126646(n)-A016116(n))`
-/

namespace A288827.P16352775892295826655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A126646 n - A016116 n)

end

end A288827.P16352775892295826655

namespace A288827

/-- `or(1, A126646(n)-A016116(n))` -/
def P16352775892295826655.Spec : Prop :=
  ∀ n, P16352775892295826655.a n = A288827 n

end A288827

/-! ## A288827.P3968535428871345908

`A000079(n+1)-or(1, A016116(n))`
-/

namespace A288827.P3968535428871345908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1) - Int.lor 1 (A016116 n)

end

end A288827.P3968535428871345908

namespace A288827

/-- `A000079(n+1)-or(1, A016116(n))` -/
def P3968535428871345908.Spec : Prop :=
  ∀ n, P3968535428871345908.a n = A288827 n

end A288827

/-! ## A288827.P7982670719998618278

`A000079(n+1)-or(1, A131572(n))`
-/

namespace A288827.P7982670719998618278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1) - Int.lor 1 (A131572 n)

end

end A288827.P7982670719998618278

namespace A288827

/-- `A000079(n+1)-or(1, A131572(n))` -/
def P7982670719998618278.Spec : Prop :=
  ∀ n, P7982670719998618278.a n = A288827 n

end A288827

/-! ## A288827.P10707933261197875533

`A000225(n+1)-A155559(A004526(n))`
-/

namespace A288827.P10707933261197875533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (n + 1) - A155559 (A004526 n).toNat

end

end A288827.P10707933261197875533

namespace A288827

/-- `A000225(n+1)-A155559(A004526(n))` -/
def P10707933261197875533.Spec : Prop :=
  ∀ n, P10707933261197875533.a n = A288827 n

end A288827

/-! ## A288827.P8508265685406386965

`A000079(n+1)-or(1, A000079(A004526(n)))`
-/

namespace A288827.P8508265685406386965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1) - Int.lor 1 (A000079 (A004526 n).toNat)

end

end A288827.P8508265685406386965

namespace A288827

/-- `A000079(n+1)-or(1, A000079(A004526(n)))` -/
def P8508265685406386965.Spec : Prop :=
  ∀ n, P8508265685406386965.a n = A288827 n

end A288827

/-! ## A288827.P13609887158368725507

`A081118(round(n²/2)+1)`
-/

namespace A288827.P13609887158368725507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081118 (SequenceMachineLib.roundAway ((n ^ 2 : ℚ) / 2) + 1).toNat

end

end A288827.P13609887158368725507

namespace A288827

/-- `A081118(round(n²/2)+1)` -/
def P13609887158368725507.Spec : Prop :=
  ∀ n, P13609887158368725507.a n = A288827 n

end A288827

/-! ## A288827.P17604636907825307400

`A224195(A000982(n)+1)-2`
-/

namespace A288827.P17604636907825307400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224195 (A000982 n + 1).toNat - 2

end

end A288827.P17604636907825307400

namespace A288827

/-- `A224195(A000982(n)+1)-2` -/
def P17604636907825307400.Spec : Prop :=
  ∀ n, P17604636907825307400.a n = A288827 n

end A288827

/-! ## A288827.P1457769637946965822

`A354294(n+1)-A025485(n²)`
-/

namespace A288827.P1457769637946965822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354294 (n + 1) - A025485 (n ^ 2)

end

end A288827.P1457769637946965822

namespace A288827

/-- `A354294(n+1)-A025485(n²)` -/
def P1457769637946965822.Spec : Prop :=
  ∀ n, P1457769637946965822.a n = A288827 n

end A288827

/-! ## A288827.P14563186978384818462

`A224195(A004526(n²+1)+1)-2`
-/

namespace A288827.P14563186978384818462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224195 (A004526 (n ^ 2 + 1) + 1).toNat - 2

end

end A288827.P14563186978384818462

namespace A288827

/-- `A224195(A004526(n²+1)+1)-2` -/
def P14563186978384818462.Spec : Prop :=
  ∀ n, P14563186978384818462.a n = A288827 n

end A288827

/-!
# A288828: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 515", based on the 5-celled von Neumann neighborhood.

The programs for A288828, the canonical program `A288828.P4093762577739422167` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A288828 has offset 0).

The definition of A288828 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A288828.P4093762577739422167

`a(n-1)-xor(-A052552(n), a(n-1))` with `a(0)=1`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A288828

/-- `a(n-1)-xor(-A052552(n), a(n-1))` -/
def P4093762577739422167.Spec : Prop :=
  ∀ n, P4093762577739422167.a n = A288828 n

theorem P4093762577739422167.correct : P4093762577739422167.Spec := by
  intro n
  simp only [A288828]

end A288828

/-! ## A288828.P757782127049574689

`A134824(n)+A122746(n)`
-/

namespace A288828.P757782127049574689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 n + A122746 n

end

end A288828.P757782127049574689

namespace A288828

/-- `A134824(n)+A122746(n)` -/
def P757782127049574689.Spec : Prop :=
  ∀ n, P757782127049574689.a n = A288828 n

end A288828

/-! ## A288828.P6655191901782099289

`A122746(n)-A036563(n)%2`
-/

namespace A288828.P6655191901782099289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122746 n - Int.tmod (A036563 n) 2

end

end A288828.P6655191901782099289

namespace A288828

/-- `A122746(n)-A036563(n)%2` -/
def P6655191901782099289.Spec : Prop :=
  ∀ n, P6655191901782099289.a n = A288828 n

end A288828

/-! ## A288828.P3782373615408828191

`or(A122746(n)-1, A000079(n))`
-/

namespace A288828.P3782373615408828191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A122746 n - 1) (A000079 n)

end

end A288828.P3782373615408828191

namespace A288828

/-- `or(A122746(n)-1, A000079(n))` -/
def P3782373615408828191.Spec : Prop :=
  ∀ n, P3782373615408828191.a n = A288828 n

end A288828

/-! ## A288828.P12253831538163098649

`or(1, A122746(n)-A060576(n))`
-/

namespace A288828.P12253831538163098649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A122746 n - A060576 n)

end

end A288828.P12253831538163098649

namespace A288828

/-- `or(1, A122746(n)-A060576(n))` -/
def P12253831538163098649.Spec : Prop :=
  ∀ n, P12253831538163098649.a n = A288828 n

end A288828

/-! ## A288828.P3504187301016091749

`or(A122746(n)-1, A075195(n+1))`
-/

namespace A288828.P3504187301016091749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A122746 n - 1) (A075195 (n + 1))

end

end A288828.P3504187301016091749

namespace A288828

/-- `or(A122746(n)-1, A075195(n+1))` -/
def P3504187301016091749.Spec : Prop :=
  ∀ n, P3504187301016091749.a n = A288828 n

end A288828

/-! ## A288828.P5789037070733004525

`or(A051437(n), A156589(A065033(n)))`
-/

namespace A288828.P5789037070733004525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A051437 n) (A156589 (A065033 n).toNat)

end

end A288828.P5789037070733004525

namespace A288828

/-- `or(A051437(n), A156589(A065033(n)))` -/
def P5789037070733004525.Spec : Prop :=
  ∀ n, P5789037070733004525.a n = A288828 n

end A288828

/-! ## A288828.P12625347663825092468

`A052955(A060000(2*n+1))-A016116(n+1)`
-/

namespace A288828.P12625347663825092468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052955 (A060000 (2 * n + 1)).toNat - A016116 (n + 1)

end

end A288828.P12625347663825092468

namespace A288828

/-- `A052955(A060000(2*n+1))-A016116(n+1)` -/
def P12625347663825092468.Spec : Prop :=
  ∀ n, P12625347663825092468.a n = A288828 n

end A288828

/-! ## A288828.P2456991643685802196

`A000225(n+1)-A027383(n+1)%A027383(n)`
-/

namespace A288828.P2456991643685802196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (n + 1) - Int.tmod (A027383 (n + 1)) (A027383 n)

end

end A288828.P2456991643685802196

namespace A288828

/-- `A000225(n+1)-A027383(n+1)%A027383(n)` -/
def P2456991643685802196.Spec : Prop :=
  ∀ n, P2456991643685802196.a n = A288828 n

end A288828

/-! ## A288828.P9988581414594594084

`A000225(n+1)-A016116(n+1)%A052955(n)`
-/

namespace A288828.P9988581414594594084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (n + 1) - Int.tmod (A016116 (n + 1)) (A052955 n)

end

end A288828.P9988581414594594084

namespace A288828

/-- `A000225(n+1)-A016116(n+1)%A052955(n)` -/
def P9988581414594594084.Spec : Prop :=
  ∀ n, P9988581414594594084.a n = A288828 n

end A288828

/-! ## A288828.P11799940708803413143

`or(A000225(n+1)-A016116(n+1), A268956(n+2))`
-/

namespace A288828.P11799940708803413143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000225 (n + 1) - A016116 (n + 1)) (A268956 (n + 2))

end

end A288828.P11799940708803413143

namespace A288828

/-- `or(A000225(n+1)-A016116(n+1), A268956(n+2))` -/
def P11799940708803413143.Spec : Prop :=
  ∀ n, P11799940708803413143.a n = A288828 n

end A288828

/-! ## A288828.P17572857186974447170

`or(A000225(n+1)-A016116(n+1), A016116(2*n))`
-/

namespace A288828.P17572857186974447170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000225 (n + 1) - A016116 (n + 1)) (A016116 (2 * n))

end

end A288828.P17572857186974447170

namespace A288828

/-- `or(A000225(n+1)-A016116(n+1), A016116(2*n))` -/
def P17572857186974447170.Spec : Prop :=
  ∀ n, P17572857186974447170.a n = A288828 n

end A288828

/-! ## A288828.P5128144370449477971

`or(A094024(2*n+1)-A016116(n+1), A016116(2*n))`
-/

namespace A288828.P5128144370449477971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A094024 (2 * n + 1) - A016116 (n + 1)) (A016116 (2 * n))

end

end A288828.P5128144370449477971

namespace A288828

/-- `or(A094024(2*n+1)-A016116(n+1), A016116(2*n))` -/
def P5128144370449477971.Spec : Prop :=
  ∀ n, P5128144370449477971.a n = A288828 n

end A288828

/-! ## A288828.P181949155102953779

`3*a(n-1)-6*a(n-3)+4*a(n-4)` with `a(0)=1, a(1)=3, a(2)=5, a(3)=11, a(4)=27, a(5)=55`
-/

namespace A288828.P181949155102953779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 5, 11, 27, 55] fun n a =>
  3 * a (n - 1) - 6 * a (n - 3) + 4 * a (n - 4)

end

end A288828.P181949155102953779

namespace A288828

/-- `3*a(n-1)-6*a(n-3)+4*a(n-4)` -/
def P181949155102953779.Spec : Prop :=
  ∀ n, P181949155102953779.a n = A288828 n

end A288828

/-! ## A288828.P129728193681367494

`record[xor(A000225(n), A005418(n+1))]`
-/

namespace A288828.P129728193681367494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000225 n) (A005418 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288828.P129728193681367494

namespace A288828

/-- `record[xor(A000225(n), A005418(n+1))]` -/
def P129728193681367494.Spec : Prop :=
  ∀ n, P129728193681367494.a n = A288828 n

end A288828

/-! ## A288828.P7837583113958132592

`or(A288664(2*n+1)-A016116(n+1), A016116(2*n))`
-/

namespace A288828.P7837583113958132592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A288664 (2 * n + 1) - A016116 (n + 1)) (A016116 (2 * n))

end

end A288828.P7837583113958132592

namespace A288828

/-- `or(A288664(2*n+1)-A016116(n+1), A016116(2*n))` -/
def P7837583113958132592.Spec : Prop :=
  ∀ n, P7837583113958132592.a n = A288828 n

end A288828

/-! ## A288828.P16506667033402579449

`or(A288664(2*n+1)-A131572(n+1), A131572(2*n+1))`
-/

namespace A288828.P16506667033402579449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A288664 (2 * n + 1) - A131572 (n + 1)) (A131572 (2 * n + 1))

end

end A288828.P16506667033402579449

namespace A288828

/-- `or(A288664(2*n+1)-A131572(n+1), A131572(2*n+1))` -/
def P16506667033402579449.Spec : Prop :=
  ∀ n, P16506667033402579449.a n = A288828 n

end A288828

/-!
# A288829: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 517", based on the 5-celled von Neumann neighborhood.

The programs for A288829, there is no canonical definition to state claims against.
-/

/-! ## A288829.P14207220116237994931

`A007088(A288831(n))`
-/

namespace A288829.P14207220116237994931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A288831 n).toNat

end

end A288829.P14207220116237994931

/-! ## A288829.P9235968298489339109

`A185544(2*A288831(n))`
-/

namespace A288829.P9235968298489339109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A288831 n).toNat

end

end A288829.P9235968298489339109

/-! ## A288829.P17934638206933260627

`A185544(A288831(n)+A288831(n))`
-/

namespace A288829.P17934638206933260627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A288831 n + A288831 n).toNat

end

end A288829.P17934638206933260627

/-! ## A288829.P18295369319537503872

`A288899(A004891(n+1))`
-/

namespace A288829.P18295369319537503872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288899 (A004891 (n + 1)).toNat

end

end A288829.P18295369319537503872

/-!
# A288830: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 517", based on the 5-celled von Neumann neighborhood.

The programs for A288830, there is no canonical definition to state claims against.
-/

/-! ## A288830.P1907422965166830017

`A007088(A288832(n))`
-/

namespace A288830.P1907422965166830017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A288832 n).toNat

end

end A288830.P1907422965166830017

/-! ## A288830.P3765391033646476735

`A305989(lcm(2, A288831(n))/2)`
-/

namespace A288830.P3765391033646476735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (SequenceMachineLib.roundAway ((Int.lcm 2 (A288831 n) : ℚ) / 2)).toNat

end

end A288830.P3765391033646476735

/-! ## A288830.P16040120616641942366

`A305989(A288831(n))`
-/

namespace A288830.P16040120616641942366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (A288831 n).toNat

end

end A288830.P16040120616641942366

/-! ## A288830.P1100483435099781407

`A185544(2*A288832(n))`
-/

namespace A288830.P1100483435099781407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A288832 n).toNat

end

end A288830.P1100483435099781407

/-! ## A288830.P12833283006841148527

`A185544(lcm(2, A288832(n)))`
-/

namespace A288830.P12833283006841148527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (Int.lcm 2 (A288832 n))

end

end A288830.P12833283006841148527

/-!
# A288831: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 517", based on the 5-celled von Neumann neighborhood.

The programs for A288831, there is no canonical definition to state claims against.
-/

/-! ## A288831.P1262155101729929075

`or(A122746(n), A341793(A010049(n)))`
-/

namespace A288831.P1262155101729929075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A122746 n) (A341793 ((A010049 n).toNat + 10))

end

end A288831.P1262155101729929075

/-! ## A288831.P1922937977098878950

`or(A077267(A184510(n)), A288901(n))`
-/

namespace A288831.P1922937977098878950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A077267 (A184510 n).toNat) (A288901 n)

end

end A288831.P1922937977098878950

/-! ## A288831.P2189979189762787873

`or(A025462(A291114(n)), A288901(n))`
-/

namespace A288831.P2189979189762787873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A025462 (A291114 n).toNat) (A288901 n)

end

end A288831.P2189979189762787873

/-! ## A288831.P8010480599532643677

`or(A288901(n), A341793(A010049(n)))`
-/

namespace A288831.P8010480599532643677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A288901 n) (A341793 ((A010049 n).toNat + 10))

end

end A288831.P8010480599532643677

/-!
# A288832: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 517", based on the 5-celled von Neumann neighborhood.

The programs for A288832, there is no canonical definition to state claims against.
-/

/-! ## A288832.P8187235202151505989

`A325401(lcm(2, A288831(n))/2)`
-/

namespace A288832.P8187235202151505989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (SequenceMachineLib.roundAway ((Int.lcm 2 (A288831 n) : ℚ) / 2)).toNat

end

end A288832.P8187235202151505989

/-! ## A288832.P1944108259969381788

`A325401(A288831(n))`
-/

namespace A288832.P1944108259969381788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (A288831 n).toNat

end

end A288832.P1944108259969381788

/-! ## A288832.P4012585412961768543

`A030101(and(-1, A288831(n)))`
-/

namespace A288832.P4012585412961768543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (Int.land (-1) (A288831 n)).toNat

end

end A288832.P4012585412961768543

/-! ## A288832.P12181949826036698853

`A030101(or(2^n, A288831(n)))`
-/

namespace A288832.P12181949826036698853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (Int.lor (2 ^ n : ℤ) (A288831 n)).toNat

end

end A288832.P12181949826036698853

/-! ## A288832.P15441676096552925603

`A030101(ceil(acot(n))*A288831(n))`
-/

namespace A288832.P15441676096552925603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (⌈SequenceMachineLib.acot (n : ℝ)⌉ * A288831 n).toNat

end

end A288832.P15441676096552925603

/-!
# A288834: a(n) = (n+1) * 3^(n-1).

The programs for A288834, the canonical program `A288834.P11438510228507860857` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A288834 has offset 1).

The definition of A288834 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+2)*3^n` (program `A288834.P11438510228507860857`, by `A288834.P11438510228507860857.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A288834.P11438510228507860857

`(n+2)*3^n`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A288834

/-- `(n+2)*3^n` -/
def P11438510228507860857.Spec : Prop :=
  ∀ n, (P11438510228507860857.a n : ℤ) = A288834 (n + 1)

theorem P11438510228507860857.correct : P11438510228507860857.Spec := by
  intro n
  simp only [A288834, Nat.add_sub_cancel]

end A288834

/-! ## A288834.P13826146967836843377

`6*a(n-1)-9*a(n-2)` with `a(0)=2, a(1)=9`
-/

namespace A288834.P13826146967836843377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 9] fun n a =>
  6 * a (n - 1) - 9 * a (n - 2)

end

end A288834.P13826146967836843377

namespace A288834

/-- `6*a(n-1)-9*a(n-2)` -/
def P13826146967836843377.Spec : Prop :=
  ∀ n, P13826146967836843377.a n = A288834 (n + 1)

theorem P13826146967836843377.correct : P13826146967836843377.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A288834, Nat.add_sub_cancel, A288834.P13826146967836843377.a, A288834.P11438510228507860857.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A288834, Nat.add_sub_cancel, A288834.P13826146967836843377.a, A288834.P11438510228507860857.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [h1, h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A288834

/-! ## A288834.P17960259727973234772

`A027471(n+3)/3`
-/

namespace A288834.P17960259727973234772
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027471 (n + 3) : ℚ) / 3

end

end A288834.P17960259727973234772

namespace A288834

/-- `A027471(n+3)/3` -/
def P17960259727973234772.Spec : Prop :=
  ∀ n, P17960259727973234772.a n = (A288834 (n + 1) : ℚ)

end A288834

/-! ## A288834.P5279822173850433880

`3^n/tan(acot(n+2))`
-/

namespace A288834.P5279822173850433880
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℝ) / Real.tan (SequenceMachineLib.acot (n + 2 : ℝ))

end

end A288834.P5279822173850433880

namespace A288834

/-- `3^n/tan(acot(n+2))` -/
def P5279822173850433880.Spec : Prop :=
  ∀ n, P5279822173850433880.a n = (A288834 (n + 1) : ℝ)

end A288834

/-! ## A288834.P6830805892997426723

`3^n/cot(atan(n+2))`
-/

namespace A288834.P6830805892997426723
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℝ) / Real.cot (Real.arctan (n + 2 : ℝ))

end

end A288834.P6830805892997426723

namespace A288834

/-- `3^n/cot(atan(n+2))` -/
def P6830805892997426723.Spec : Prop :=
  ∀ n, P6830805892997426723.a n = (A288834 (n + 1) : ℝ)

end A288834

/-! ## A288834.P11825040646537411003

`C(n+2, n+1)/3^-n`
-/

namespace A288834.P11825040646537411003
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 2) (n + 1) : ℚ) / (3 : ℚ) ^ (-(n : ℤ) : ℤ)

end

end A288834.P11825040646537411003

namespace A288834

/-- `C(n+2, n+1)/3^-n` -/
def P11825040646537411003.Spec : Prop :=
  ∀ n, P11825040646537411003.a n = (A288834 (n + 1) : ℚ)

theorem P11825040646537411003.correct : P11825040646537411003.Spec := by
  intro n
  simp only [A288834, Nat.add_sub_cancel, A288834.P11825040646537411003.a, A288834.P11438510228507860857.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A288834

/-! ## A288834.P9279843307268247526

`a(n-1)+a(n-1)+a(n-1)+3^n` with `a(0)=2`
-/

namespace A288834.P9279843307268247526
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + (a (n - 1) + (a (n - 1) + 3 ^ n))

end

end A288834.P9279843307268247526

namespace A288834

/-- `a(n-1)+a(n-1)+a(n-1)+3^n` -/
def P9279843307268247526.Spec : Prop :=
  ∀ n, (P9279843307268247526.a n : ℤ) = A288834 (n + 1)

theorem P9279843307268247526.correct : P9279843307268247526.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A288834, Nat.add_sub_cancel, A288834.P9279843307268247526.a, A288834.P11438510228507860857.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A288834, Nat.add_sub_cancel, A288834.P9279843307268247526.a, A288834.P11438510228507860857.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A288834

/-! ## A288834.P4788004675975190093

`A027261(n+1)/2`
-/

namespace A288834.P4788004675975190093
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027261 (n + 1) : ℚ) / 2

end

end A288834.P4788004675975190093

namespace A288834

/-- `A027261(n+1)/2` -/
def P4788004675975190093.Spec : Prop :=
  ∀ n, P4788004675975190093.a n = (A288834 (n + 1) : ℚ)

end A288834

/-! ## A288834.P15784903394855594355

`A159715(n+2)/2`
-/

namespace A288834.P15784903394855594355
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A159715 (n + 2) : ℚ) / 2

end

end A288834.P15784903394855594355

namespace A288834

/-- `A159715(n+2)/2` -/
def P15784903394855594355.Spec : Prop :=
  ∀ n, P15784903394855594355.a n = (A288834 (n + 1) : ℚ)

end A288834

/-! ## A288834.P8568634964872046966

`abs((n+2)*A352779(n))`
-/

namespace A288834.P8568634964872046966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n + 2 : ℤ) * A352779 n|

end

end A288834.P8568634964872046966

namespace A288834

/-- `abs((n+2)*A352779(n))` -/
def P8568634964872046966.Spec : Prop :=
  ∀ n, P8568634964872046966.a n = A288834 (n + 1)

end A288834

/-! ## A288834.P9686621968977146441

`A036290(n)+Δ[3^n]`
-/

namespace A288834.P9686621968977146441
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036290 n + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A288834.P9686621968977146441

namespace A288834

/-- `A036290(n)+Δ[3^n]` -/
def P9686621968977146441.Spec : Prop :=
  ∀ n, P9686621968977146441.a n = A288834 (n + 1)

end A288834

/-! ## A288834.P15521994056028726294

`(n+2)*A008776(n)/2`
-/

namespace A288834.P15521994056028726294
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 2 : ℤ) * A008776 n : ℚ) / 2

end

end A288834.P15521994056028726294

namespace A288834

/-- `(n+2)*A008776(n)/2` -/
def P15521994056028726294.Spec : Prop :=
  ∀ n, P15521994056028726294.a n = (A288834 (n + 1) : ℚ)

end A288834

/-! ## A288834.P11395279733151651774

`A027471(n+2)+3^n`
-/

namespace A288834.P11395279733151651774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027471 (n + 2) + (3 ^ n : ℤ)

end

end A288834.P11395279733151651774

namespace A288834

/-- `A027471(n+2)+3^n` -/
def P11395279733151651774.Spec : Prop :=
  ∀ n, P11395279733151651774.a n = A288834 (n + 1)

end A288834

/-! ## A288834.P1152219298524521686

`A064017(n+2)-3^n`
-/

namespace A288834.P1152219298524521686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064017 (n + 2) - (3 ^ n : ℤ)

end

end A288834.P1152219298524521686

namespace A288834

/-- `A064017(n+2)-3^n` -/
def P1152219298524521686.Spec : Prop :=
  ∀ n, P1152219298524521686.a n = A288834 (n + 1)

end A288834

/-! ## A288834.P16295094704297685731

`(n+2)*A025192(n+1)/2`
-/

namespace A288834.P16295094704297685731
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 2 : ℤ) * A025192 (n + 1) : ℚ) / 2

end

end A288834.P16295094704297685731

namespace A288834

/-- `(n+2)*A025192(n+1)/2` -/
def P16295094704297685731.Spec : Prop :=
  ∀ n, P16295094704297685731.a n = (A288834 (n + 1) : ℚ)

end A288834

/-! ## A288834.P11722320046448692181

`2*A229472(n+3)-(n+2)`
-/

namespace A288834.P11722320046448692181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A229472 (n + 3) - (n + 2 : ℤ)

end

end A288834.P11722320046448692181

namespace A288834

/-- `2*A229472(n+3)-(n+2)` -/
def P11722320046448692181.Spec : Prop :=
  ∀ n, P11722320046448692181.a n = A288834 (n + 1)

end A288834

/-! ## A288834.P10975332905349445620

`A000244(n)+3*a(n-1)` with `a(0)=2`
-/

namespace A288834.P10975332905349445620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A000244 n + 3 * a (n - 1)

end

end A288834.P10975332905349445620

namespace A288834

/-- `A000244(n)+3*a(n-1)` -/
def P10975332905349445620.Spec : Prop :=
  ∀ n, P10975332905349445620.a n = A288834 (n + 1)

end A288834

/-! ## A288834.P8510430685208298576

`(n+2)*A024023(n)+2+n`
-/

namespace A288834.P8510430685208298576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A024023 n + 2 + (n : ℤ)

end

end A288834.P8510430685208298576

namespace A288834

/-- `(n+2)*A024023(n)+2+n` -/
def P8510430685208298576.Spec : Prop :=
  ∀ n, P8510430685208298576.a n = A288834 (n + 1)

end A288834

/-! ## A288834.P6696123667778811595

`A050914(n)+A048473(n)`
-/

namespace A288834.P6696123667778811595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050914 n + A048473 n

end

end A288834.P6696123667778811595

namespace A288834

/-- `A050914(n)+A048473(n)` -/
def P6696123667778811595.Spec : Prop :=
  ∀ n, P6696123667778811595.a n = A288834 (n + 1)

end A288834

/-!
# A288835: a(n) = (1/2!)*3^n*(n+3)*(n).

The programs for A288835, the canonical program `A288835.P8248292442320499123` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A288835 has offset 1).

The definition of A288835 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A288835.P8248292442320499123

`(n+1)*(n+4)*3^(n+1)/2`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A288835

/-- `(n+1)*(n+4)*3^(n+1)/2` -/
def P8248292442320499123.Spec : Prop :=
  ∀ n, P8248292442320499123.a n = (A288835 (n + 1) : ℚ)

end A288835

/-! ## A288835.P6142224880892447123

`3*a(n-1)+(n+2)*3^(n+1)` with `a(0)=6`
-/

namespace A288835.P6142224880892447123
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [6] fun n a =>
  3 * a (n - 1) + (n + 2) * 3 ^ (n + 1)

end

end A288835.P6142224880892447123

namespace A288835

/-- `3*a(n-1)+(n+2)*3^(n+1)` -/
def P6142224880892447123.Spec : Prop :=
  ∀ n, (P6142224880892447123.a n : ℤ) = A288835 (n + 1)

end A288835

/-! ## A288835.P3929323352511317109

`∑[((n+3)²-3)*A000244(n)]`
-/

namespace A288835.P3929323352511317109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n + 3) ^ 2 : ℤ) - 3) * A000244 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A288835.P3929323352511317109

namespace A288835

/-- `∑[((n+3)²-3)*A000244(n)]` -/
def P3929323352511317109.Spec : Prop :=
  ∀ n, P3929323352511317109.a n = A288835 (n + 1)

end A288835

/-! ## A288835.P4928311791667407447

`abs(∑[n+2]*Δ[A007051(n+1)])`
-/

namespace A288835.P4928311791667407447
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * (f2 (n + 1) - f2 n)|

end

end A288835.P4928311791667407447

namespace A288835

/-- `abs(∑[n+2]*Δ[A007051(n+1)])` -/
def P4928311791667407447.Spec : Prop :=
  ∀ n, P4928311791667407447.a n = A288835 (n + 1)

end A288835

/-! ## A288835.P14016845591607205588

`A027472(n+4)-A000244(n+1)`
-/

namespace A288835.P14016845591607205588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027472 (n + 4) - A000244 (n + 1)

end

end A288835.P14016845591607205588

namespace A288835

/-- `A027472(n+4)-A000244(n+1)` -/
def P14016845591607205588.Spec : Prop :=
  ∀ n, P14016845591607205588.a n = A288835 (n + 1)

end A288835

/-! ## A288835.P2999729053883966071

`2*A069515(n+2)-A129530(n+1)`
-/

namespace A288835.P2999729053883966071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A069515 (n + 2) - A129530 (n + 1)

end

end A288835.P2999729053883966071

namespace A288835

/-- `2*A069515(n+2)-A129530(n+1)` -/
def P2999729053883966071.Spec : Prop :=
  ∀ n, P2999729053883966071.a n = A288835 (n + 1)

end A288835

/-! ## A288835.P16801458367481222034

`A027472(n+4)-A056449(2*n+1)`
-/

namespace A288835.P16801458367481222034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027472 (n + 4) - A056449 (2 * n + 1)

end

end A288835.P16801458367481222034

namespace A288835

/-- `A027472(n+4)-A056449(2*n+1)` -/
def P16801458367481222034.Spec : Prop :=
  ∀ n, P16801458367481222034.a n = A288835 (n + 1)

end A288835

/-! ## A288835.P16536076617800456

`A036290(n+1)+A000217(n+1)*A000244(n+1)`
-/

namespace A288835.P16536076617800456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036290 (n + 1) + A000217 (n + 1) * A000244 (n + 1)

end

end A288835.P16536076617800456

namespace A288835

/-- `A036290(n+1)+A000217(n+1)*A000244(n+1)` -/
def P16536076617800456.Spec : Prop :=
  ∀ n, P16536076617800456.a n = A288835 (n + 1)

end A288835

/-! ## A288835.P12919407653835549629

`A000244(n+1)*A253145(n+1)-A000244(n+1)`
-/

namespace A288835.P12919407653835549629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (n + 1) * A253145 (n + 1) - A000244 (n + 1)

end

end A288835.P12919407653835549629

namespace A288835

/-- `A000244(n+1)*A253145(n+1)-A000244(n+1)` -/
def P12919407653835549629.Spec : Prop :=
  ∀ n, P12919407653835549629.a n = A288835 (n + 1)

end A288835

/-! ## A288835.P8838897755254068637

`A036290(n+1)+A116138(n+1)/2`
-/

namespace A288835.P8838897755254068637
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036290 (n + 1) : ℚ) + (A116138 (n + 1) : ℚ) / 2

end

end A288835.P8838897755254068637

namespace A288835

/-- `A036290(n+1)+A116138(n+1)/2` -/
def P8838897755254068637.Spec : Prop :=
  ∀ n, P8838897755254068637.a n = (A288835 (n + 1) : ℚ)

end A288835

/-! ## A288835.P573327759215342194

`A006043(n+1)/2-A000244(n+1)`
-/

namespace A288835.P573327759215342194
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006043 (n + 1) : ℚ) / 2 - (A000244 (n + 1) : ℚ)

end

end A288835.P573327759215342194

namespace A288835

/-- `A006043(n+1)/2-A000244(n+1)` -/
def P573327759215342194.Spec : Prop :=
  ∀ n, P573327759215342194.a n = (A288835 (n + 1) : ℚ)

end A288835

/-! ## A288835.P14943864832529536281

`A116138(n+1)-A128797(n+1)/2`
-/

namespace A288835.P14943864832529536281
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A116138 (n + 1) : ℚ) - (A128797 (n + 1) : ℚ) / 2

end

end A288835.P14943864832529536281

namespace A288835

/-- `A116138(n+1)-A128797(n+1)/2` -/
def P14943864832529536281.Spec : Prop :=
  ∀ n, P14943864832529536281.a n = (A288835 (n + 1) : ℚ)

end A288835

/-!
# A288836: a(n) = (1/3!)*3^(n+1)*(n+5)*(n+1)*(n).

The programs for A288836, the canonical program `A288836.P4043594117800811720` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A288836 has offset 1).

The definition of A288836 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 195 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A288836.P4043594117800811720

`3^(n+2)*∑[∑[n+2]]`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A288836

/-- `3^(n+2)*∑[∑[n+2]]` -/
def P4043594117800811720.Spec : Prop :=
  ∀ n, (P4043594117800811720.a n : ℤ) = A288836 (n + 1)

theorem P4043594117800811720.correct : P4043594117800811720.Spec := by
  intro n
  simp only [A288836, Nat.add_sub_cancel]

end A288836

/-! ## A288836.P15666879770557920801

`(n+6)*A116138(n+1)/2`
-/

namespace A288836.P15666879770557920801
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 6 : ℤ) * A116138 (n + 1) : ℚ) / 2

end

end A288836.P15666879770557920801

namespace A288836

/-- `(n+6)*A116138(n+1)/2` -/
def P15666879770557920801.Spec : Prop :=
  ∀ n, P15666879770557920801.a n = (A288836 (n + 1) : ℚ)

end A288836

/-! ## A288836.P17927164926113450996

`(n+7)*A129530(n+2)-A129530(n+2)`
-/

namespace A288836.P17927164926113450996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 7 : ℤ) * A129530 (n + 2) - A129530 (n + 2)

end

end A288836.P17927164926113450996

namespace A288836

/-- `(n+7)*A129530(n+2)-A129530(n+2)` -/
def P17927164926113450996.Spec : Prop :=
  ∀ n, P17927164926113450996.a n = A288836 (n + 1)

end A288836

/-!
# A288838: a(n) = (1/4!)*3^(n+2)*(n+7)*(n+2)*(n+1)*(n).

The programs for A288838, the canonical program `A288838.P13518470386936589638` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A288838 has offset 1).

The definition of A288838 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A288838.P13518470386936589638

`3^(n+1)*3*(n+1)*(n+2)*(n+3)*(n+8)/8`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A288838

/-- `3^(n+1)*3*(n+1)*(n+2)*(n+3)*(n+8)/8` -/
def P13518470386936589638.Spec : Prop :=
  ∀ n, P13518470386936589638.a n = (A288838 (n + 1) : ℚ)

end A288838

/-! ## A288838.P14852672789361004829

`∑[A055998(n+4)/2*A116138(n+1)]`
-/

namespace A288838.P14852672789361004829
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055998 (n + 4) : ℚ) / 2 * (A116138 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A288838.P14852672789361004829

namespace A288838

/-- `∑[A055998(n+4)/2*A116138(n+1)]` -/
def P14852672789361004829.Spec : Prop :=
  ∀ n, P14852672789361004829.a n = (A288838 (n + 1) : ℚ)

end A288838

/-!
# A288841: Number of matchings in the n-barbell graph.

The programs for A288841, there is no canonical definition to state claims against.
-/

/-! ## A288841.P4732487014391512186

`A111883(n+1)+A111883(n)`
-/

namespace A288841.P4732487014391512186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111883 (n + 1) + A111883 n

end

end A288841.P4732487014391512186

/-! ## A288841.P3607955811981306337

`A000085(n+1)²+A000085(n)²`
-/

namespace A288841.P3607955811981306337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000085 (n + 1) ^ 2 + A000085 n ^ 2

end

end A288841.P3607955811981306337

/-!
# A288842: Triangle (sans apex) of coefficients of terms of the form (eM_1)^j*(eM_2)^k re construction of triangle A287768.

The programs for A288842, there is no canonical definition to state claims against.
-/

/-! ## A288842.P10608257956636830509

`A029635(n+1)*A098355(A083920(n))`
-/

namespace A288842.P10608257956636830509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029635 (n + 1) * A098355 (A083920 n).toNat

end

end A288842.P10608257956636830509

/-! ## A288842.P14893171304940094282

`A029635(n+1)/A007318(n+1)*A055373(n+1)`
-/

namespace A288842.P14893171304940094282
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029635 (n + 1) : ℚ) / (A007318 (n + 1) : ℚ) * (A055373 (n + 1) : ℚ)

end

end A288842.P14893171304940094282

/-!
# A288845: Values of n such that 4^n ends in n, or expomorphic numbers in base 4.

The programs for A288845, there is no canonical definition to state claims against.
-/

/-! ## A288845.P13527349342278387166

`∑[record[A011557(n)*A133614(n)]]`
-/

namespace A288845.P13527349342278387166
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011557 n * A133614 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A288845.P13527349342278387166

/-! ## A288845.P6361765890672488099

`∑[A000027(A290545(n))*A133614(n)]`
-/

namespace A288845.P6361765890672488099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A290545 n).toNat * A133614 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A288845.P6361765890672488099

/-!
# A288849: Number of distinct rational numbers that can be obtained in n steps by a straight-line program (SLP) starting at 1 using addition, subtraction, multiplication and division.

The programs for A288849, there is no canonical definition to state claims against.
-/

/-! ## A288849.P4480868749315754799

`∑[A255072(A289383(n))+1]`
-/

namespace A288849.P4480868749315754799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255072 (A289383 n).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A288849.P4480868749315754799

/-! ## A288849.P7814996147377505035

`A194223(A005346(n+1))+A194213(n+3)`
-/

namespace A288849.P7814996147377505035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194223 (A005346 (n + 1)).toNat + A194213 (n + 3)

end

end A288849.P7814996147377505035

/-!
# A288850: Number of distinct nonnegative rational numbers that can be obtained in n steps by a straight-line program (SLP) starting at 1 using addition, subtraction, multiplication and division.

The programs for A288850, there is no canonical definition to state claims against.
-/

/-! ## A288850.P14608532868707619375

`A192945(n)+A001222(A034385(n))`
-/

namespace A288850.P14608532868707619375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192945 n + A001222 (A034385 n).toNat

end

end A288850.P14608532868707619375

/-! ## A288850.P8585596461020667125

`A276043(A000079(n))+A000081(n)`
-/

namespace A288850.P8585596461020667125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276043 (A000079 n).toNat + A000081 n

end

end A288850.P8585596461020667125

/-!
# A288851: Exponents a(1), a(2), ... such that E_6, 1 - 504*q - 16632*q^2 - ... (A013973) is equal to (1-q)^a(1) (1-q^2)^a(2) (1-q^3)^a(3) ... .

The programs for A288851, there is no canonical definition to state claims against.
-/

/-! ## A288851.P15376189055825066511

`12*A289396(n+1)`
-/

namespace A288851.P15376189055825066511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  12 * A289396 (n + 1)

end

end A288851.P15376189055825066511

/-! ## A288851.P4483146541299796783

`A289061(n+1)/2+12`
-/

namespace A288851.P4483146541299796783
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A289061 (n + 1) : ℚ) / 2 + 12

end

end A288851.P4483146541299796783

/-! ## A288851.P3741529975006361341

`A289024(n+1)-A110163(n+1)`
-/

namespace A288851.P3741529975006361341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289024 (n + 1) - A110163 (n + 1)

end

end A288851.P3741529975006361341

/-! ## A288851.P2754179754010878008

`A289029(n+1)-A288471(n+1)`
-/

namespace A288851.P2754179754010878008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289029 (n + 1) - A288471 (n + 1)

end

end A288851.P2754179754010878008

/-!
# A288853: Triangle read by rows: T(n,k) is the number of surjective linear mappings from an n-dimensional vector space over F_2 onto a k-dimensional vector space, n>=0, 0<=k<=n.

The programs for A288853, there is no canonical definition to state claims against.
-/

/-! ## A288853.P492208843960765857

`A286331(n)/A022166(n)`
-/

namespace A288853.P492208843960765857
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A286331 n : ℚ) / (A022166 n : ℚ)

end

end A288853.P492208843960765857

/-! ## A288853.P5594058923365227780

`A348622(n)/A117401(n)`
-/

namespace A288853.P5594058923365227780
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A348622 n : ℚ) / (A117401 n : ℚ)

end

end A288853.P5594058923365227780

/-! ## A288853.P15596720697012431119

`gcd(A286331(n), A348622(n))`
-/

namespace A288853.P15596720697012431119
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A286331 n) (A348622 n)

end

end A288853.P15596720697012431119

/-! ## A288853.P9803738918334852652

`A348622(n)/sqrt(A118185(n))`
-/

namespace A288853.P9803738918334852652
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A348622 n : ℝ) / Real.sqrt (A118185 n : ℝ)

end

end A288853.P9803738918334852652

/-! ## A288853.P7671586706271113423

`A002884(A002262(n))*A022166(n)`
-/

namespace A288853.P7671586706271113423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002884 (A002262 n).toNat * A022166 n

end

end A288853.P7671586706271113423

/-!
# A288854: The unique longest sequence of squares where each number (after the first) is obtained by prefixing a single digit to its predecessor.

The programs for A288854, there is no canonical definition to state claims against.
-/

/-! ## A288854.P8029654666067740538

`record[(5*A157405(n))²]`
-/

namespace A288854.P8029654666067740538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * A157405 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288854.P8029654666067740538

/-!
# A288855: 1-limiting word of the mapping 00->1000, 10->011, starting with 00.

The programs for A288855, there is no canonical definition to state claims against.
-/

/-! ## A288855.P8043022944101503945

`char[A288857(n+1)-1]`
-/

namespace A288855.P8043022944101503945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288857 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A288855.P8043022944101503945

/-! ## A288855.P13659552341284430149

`char[comp[A288856(n+1)-1]]`
-/

namespace A288855.P13659552341284430149
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288856 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A288855.P13659552341284430149

/-! ## A288855.P3069831913979813395

`char[comp[A288856(Δ[n²]-n)]-1]`
-/

namespace A288855.P3069831913979813395
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288856 ((f3 (n + 1) : ℤ) - (f3 n : ℤ) - (n : ℤ)).toNat

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A288855.P3069831913979813395

/-! ## A288855.P5952844704169146889

`char[record[A288857(A344180(n))]-1]`
-/

namespace A288855.P5952844704169146889
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288857 (A344180 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A288855.P5952844704169146889

/-! ## A288855.P6721498709498527645

`abs(char[A288856(A028310(n))-1]-1)`
-/

namespace A288855.P6721498709498527645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288856 (A028310 n).toNat - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - 1|

end

end A288855.P6721498709498527645

/-!
# A288856: Positions of 0 in A288855; complement of A288857.

The programs for A288856, there is no canonical definition to state claims against.
-/

/-! ## A288856.P16110026498419236413

`eq[0, A288855(n+1)]+1`
-/

namespace A288856.P16110026498419236413
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288855 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A288856.P16110026498419236413

/-! ## A288856.P2647387043972750766

`eq[0, A288855(A028310(n))]`
-/

namespace A288856.P2647387043972750766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288855 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A288856.P2647387043972750766

/-! ## A288856.P13520676055266351009

`A020725(eq[0, A288855(n+1)])`
-/

namespace A288856.P13520676055266351009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288855 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A288856.P13520676055266351009

/-! ## A288856.P12845398689432597704

`A020725(lt[A288855(n+1), 1])`
-/

namespace A288856.P12845398689432597704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288855 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A288856.P12845398689432597704

/-! ## A288856.P9046875918798315598

`eq[char[A288857(n+1)], A000007(n)]`
-/

namespace A288856.P9046875918798315598
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288857 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A288856.P9046875918798315598

/-! ## A288856.P5280541994790968362

`eq[char[A288857(n+1)], A091225(2*(n+1))]`
-/

namespace A288856.P5280541994790968362
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288857 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091225 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A288856.P5280541994790968362

/-!
# A288857: Positions of 1 in A288855; complement of A288856.

The programs for A288857, there is no canonical definition to state claims against.
-/

/-! ## A288857.P13905553046203954455

`comp[A288856(n+1)-1]+1`
-/

namespace A288857.P13905553046203954455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288856 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A288857.P13905553046203954455

/-! ## A288857.P7715274982069952661

`filter[n+1, A288855(#)]`
-/

namespace A288857.P7715274982069952661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A288855 (f1 j) = 1) n)

end

end A288857.P7715274982069952661

/-! ## A288857.P3665940250259563425

`lt[0, A288855(n+1)]+1`
-/

namespace A288857.P3665940250259563425
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288855 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A288857.P3665940250259563425

/-! ## A288857.P12880439537879903409

`record[A000027(n+1)*A288855(n+1)]`
-/

namespace A288857.P12880439537879903409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) * A288855 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288857.P12880439537879903409

/-! ## A288857.P3688248157220402672

`eq[n, A028310(n)*A288855(A028310(n))]`
-/

namespace A288857.P3688248157220402672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n * A288855 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A288857.P3688248157220402672

/-! ## A288857.P2264347827869127846

`record[A038722(A038722(n+1))*A288855(n+1)]`
-/

namespace A288857.P2264347827869127846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (A038722 (n + 1)).toNat * A288855 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288857.P2264347827869127846

/-! ## A288857.P10811984371226320036

`eq[char[A288856(n+1)], A091225(2*(n+1))]`
-/

namespace A288857.P10811984371226320036
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288856 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091225 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A288857.P10811984371226320036

/-! ## A288857.P2746925205874181787

`record[A008619(n)*A288855(A008619(n))]`
-/

namespace A288857.P2746925205874181787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n * A288855 (A008619 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288857.P2746925205874181787

/-! ## A288857.P2623872842274038269

`record[A000463(2*n+1)*A288855(n+1)]`
-/

namespace A288857.P2623872842274038269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (2 * n + 1) * A288855 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288857.P2623872842274038269

/-! ## A288857.P6503837638043595209

`record[A268385(A268385(n+1))*A288855(n+1)]`
-/

namespace A288857.P6503837638043595209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268385 (A268385 (n + 1)).toNat * A288855 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288857.P6503837638043595209

/-!
# A288858: 2-limiting word of the mapping 00->1000, 10->011, starting with 00.

The programs for A288858, there is no canonical definition to state claims against.
-/

/-! ## A288858.P13673032507186781866

`char[A288860(n+1)-1]`
-/

namespace A288858.P13673032507186781866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288860 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A288858.P13673032507186781866

/-! ## A288858.P5499501990061825175

`char[comp[A288859(n+1)-1]]`
-/

namespace A288858.P5499501990061825175
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288859 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A288858.P5499501990061825175

/-! ## A288858.P1368850754219893714

`1-char[A288859(xor(1, n)+1)-1]`
-/

namespace A288858.P1368850754219893714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288859 (Nat.xor 1 n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A288858.P1368850754219893714

/-! ## A288858.P8293822175551170215

`1-char[A288859(abs(xor(n, -2)))-1]`
-/

namespace A288858.P8293822175551170215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288859 |Int.xor (n : ℤ) (-2)|.toNat - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A288858.P8293822175551170215

/-! ## A288858.P16421822432034512236

`(char[A288859(round(sqrt(n²+1)))-1]-1)²`
-/

namespace A288858.P16421822432034512236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288859 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - 1) ^ 2

end

end A288858.P16421822432034512236

/-! ## A288858.P4598419162416332140

`xor(1, char[A288859(A344180(n))-1])`
-/

namespace A288858.P4598419162416332140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288859 (A344180 n).toNat - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (if ∃ j, f1 j = (n : ℤ) then 1 else 0)

end

end A288858.P4598419162416332140

/-! ## A288858.P16031537542466189062

`1-char[A288859(A344180(n+1))-1]`
-/

namespace A288858.P16031537542466189062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288859 (A344180 (n + 1)).toNat - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A288858.P16031537542466189062

/-! ## A288858.P7904869185721063911

`A000040(n+1)%2-char[A288859(n+2)-1]`
-/

namespace A288858.P7904869185721063911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288859 (n + 2) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) 2 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A288858.P7904869185721063911

/-! ## A288858.P5223862371706058312

`(char[A288859(A344180(n))-1]-1)^A062383(n)`
-/

namespace A288858.P5223862371706058312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288859 (A344180 n).toNat - 1

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - 1 : ℚ) ^ (A062383 n : ℤ)

end

end A288858.P5223862371706058312

/-!
# A288859: Positions of 0 in A288858; complement of A288860.

The programs for A288859, there is no canonical definition to state claims against.
-/

/-! ## A288859.P3934845337484059914

`eq[0, A288858(n+1)]+1`
-/

namespace A288859.P3934845337484059914
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288858 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A288859.P3934845337484059914

/-! ## A288859.P1786493816718659093

`lt[n*char[A288860(n+1)], n]`
-/

namespace A288859.P1786493816718659093
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288860 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A288859.P1786493816718659093

/-! ## A288859.P16674942224422171491

`lt[n*A288858(A028310(n)), n]`
-/

namespace A288859.P16674942224422171491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A288858 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A288859.P16674942224422171491

/-! ## A288859.P12354437938293132892

`eq[char[A288860(n+1)], A091225(2*(n+1))]`
-/

namespace A288859.P12354437938293132892
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288860 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091225 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A288859.P12354437938293132892

/-! ## A288859.P9460454268572989078

`eq[A000007(n), A288858(A028310(n))]`
-/

namespace A288859.P9460454268572989078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288858 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A288859.P9460454268572989078

/-! ## A288859.P14453889647047481953

`eq[A000038(n), A288858(A028310(n))]`
-/

namespace A288859.P14453889647047481953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288858 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A288859.P14453889647047481953

/-! ## A288859.P10718930766049641611

`eq[A000007(n), A288858(A065033(2*n))]`
-/

namespace A288859.P10718930766049641611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288858 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A288859.P10718930766049641611

/-! ## A288859.P9393465586610379157

`eq[A000038(n), A288858(A065033(2*n))]`
-/

namespace A288859.P9393465586610379157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288858 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A288859.P9393465586610379157

/-!
# A288860: Positions of 1 in A288858; complement of A288859.

The programs for A288860, there is no canonical definition to state claims against.
-/

/-! ## A288860.P12882388949045056407

`comp[A288859(n+1)-1]+1`
-/

namespace A288860.P12882388949045056407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288859 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A288860.P12882388949045056407

/-! ## A288860.P4032058865343353810

`filter[n+1, A288858(#)]`
-/

namespace A288860.P4032058865343353810
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A288858 (f1 j) = 1) n)

end

end A288860.P4032058865343353810

/-! ## A288860.P11112257274755829255

`eq[1, A288858(n+1)]+1`
-/

namespace A288860.P11112257274755829255
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288858 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A288860.P11112257274755829255

/-! ## A288860.P6405847201282419635

`record[(n+2)*A288858(n+2)]`
-/

namespace A288860.P6405847201282419635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A288858 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288860.P6405847201282419635

/-! ## A288860.P15303111649007707031

`lt[0, A288858(A028310(n))]`
-/

namespace A288860.P15303111649007707031
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288858 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A288860.P15303111649007707031

/-! ## A288860.P8773494777367375508

`A020725(eq[1, A288858(n+1)])`
-/

namespace A288860.P8773494777367375508
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288858 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A288860.P8773494777367375508

/-! ## A288860.P632989980341708216

`lt[A091225(2*(n+1)), A288858(n+1)]+1`
-/

namespace A288860.P632989980341708216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091225 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288858 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A288860.P632989980341708216

/-! ## A288860.P2665407400133507828

`eq[1, A288858(A000007(n)+n)]`
-/

namespace A288860.P2665407400133507828
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288858 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A288860.P2665407400133507828

/-! ## A288860.P2996599459465190922

`eq[char[A288859(n+1)], A000007(n)]`
-/

namespace A288860.P2996599459465190922
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288859 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A288860.P2996599459465190922

/-! ## A288860.P1033514283186037433

`eq[char[A288859(n+1)], A000038(n)]`
-/

namespace A288860.P1033514283186037433
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288859 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A288860.P1033514283186037433

/-! ## A288860.P2581973754384919377

`eq[1, A288858(A065033(2*n))]`
-/

namespace A288860.P2581973754384919377
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288858 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A288860.P2581973754384919377

/-!
# A288861: 3-limiting word of the mapping 00->1000, 10->011, starting with 00.

The programs for A288861, there is no canonical definition to state claims against.
-/

/-! ## A288861.P14734004704649217171

`char[A288863(n+1)-1]`
-/

namespace A288861.P14734004704649217171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288863 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A288861.P14734004704649217171

/-! ## A288861.P7843712242562277754

`char[comp[A288862(n+1)-1]]`
-/

namespace A288861.P7843712242562277754
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288862 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A288861.P7843712242562277754

/-! ## A288861.P12541751576098577705

`A321694(or(A047208(n+1), A340678(n+1)))`
-/

namespace A288861.P12541751576098577705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321694 (Int.lor (A047208 (n + 1)) (A340678 (n + 1))).toNat

end

end A288861.P12541751576098577705

/-! ## A288861.P15452033080500738174

`A188295(A312562(n)+A133684(n))`
-/

namespace A288861.P15452033080500738174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188295 (A312562 n + A133684 n).toNat

end

end A288861.P15452033080500738174

/-! ## A288861.P3374991460691613175

`A204435(A255684(n+1))`
-/

namespace A288861.P3374991460691613175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204435 (A255684 (n + 1)).toNat

end

end A288861.P3374991460691613175

/-!
# A288862: Positions of 0 in A288861; complement of A288863.

The programs for A288862, there is no canonical definition to state claims against.
-/

/-! ## A288862.P7774253368695429072

`eq[0, A288861(n+1)]+1`
-/

namespace A288862.P7774253368695429072
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288861 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A288862.P7774253368695429072

/-! ## A288862.P15813070559009682426

`lt[n*A288861(A028310(n)), n]`
-/

namespace A288862.P15813070559009682426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A288861 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A288862.P15813070559009682426

/-! ## A288862.P14680033975147538485

`eq[char[A288863(n+1)], A091225(2*(n+1))]`
-/

namespace A288862.P14680033975147538485
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288863 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091225 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A288862.P14680033975147538485

/-! ## A288862.P4940482473185792172

`record[n+1-A267047(n)*A288861(n+1)]`
-/

namespace A288862.P4940482473185792172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A267047 n * A288861 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288862.P4940482473185792172

/-! ## A288862.P17794751533215024726

`record[n+1-A014132(n+1)*A288861(n+1)]`
-/

namespace A288862.P17794751533215024726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A014132 (n + 1) * A288861 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288862.P17794751533215024726

/-! ## A288862.P15719249545771672508

`record[n+1-A079946(n+1)*A288861(n+1)]`
-/

namespace A288862.P15719249545771672508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A079946 (n + 1) * A288861 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288862.P15719249545771672508

/-! ## A288862.P7748498720240634784

`eq[A000007(n), A288861(A028310(n))]`
-/

namespace A288862.P7748498720240634784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288861 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A288862.P7748498720240634784

/-! ## A288862.P9129102559479616939

`eq[A000038(n), A288861(A028310(n))]`
-/

namespace A288862.P9129102559479616939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288861 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A288862.P9129102559479616939

/-! ## A288862.P15294852031514994034

`record[A055396(A288861(n+1)+A000040(n+1))]`
-/

namespace A288862.P15294852031514994034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A288861 (n + 1) + A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288862.P15294852031514994034

/-!
# A288863: Positions of 1 in A288861; complement of A288862.

The programs for A288863, there is no canonical definition to state claims against.
-/

/-! ## A288863.P7410424382222599790

`comp[A288862(n+1)-1]+1`
-/

namespace A288863.P7410424382222599790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288862 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A288863.P7410424382222599790

/-! ## A288863.P14877000857280552223

`filter[n+1, A288861(#)]`
-/

namespace A288863.P14877000857280552223
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A288861 (f1 j) = 1) n)

end

end A288863.P14877000857280552223

/-! ## A288863.P8227175239181799291

`lt[0, A288861(n+1)]+1`
-/

namespace A288863.P8227175239181799291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288861 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A288863.P8227175239181799291

/-! ## A288863.P5627318947501545453

`record[(n+2)*A288861(n+2)]`
-/

namespace A288863.P5627318947501545453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A288861 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288863.P5627318947501545453

/-! ## A288863.P6808248184664966634

`lt[0, A288861(A028310(n))]`
-/

namespace A288863.P6808248184664966634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288861 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A288863.P6808248184664966634

/-! ## A288863.P17924825115404370480

`A020725(eq[1, A288861(n+1)])`
-/

namespace A288863.P17924825115404370480
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288861 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A288863.P17924825115404370480

/-! ## A288863.P15440929400969440539

`eq[1, A288861(A000007(n)+n)]`
-/

namespace A288863.P15440929400969440539
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288861 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A288863.P15440929400969440539

/-! ## A288863.P14933645980241629865

`eq[char[A288862(n+1)], A000007(n)]`
-/

namespace A288863.P14933645980241629865
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288862 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A288863.P14933645980241629865

/-! ## A288863.P12498662453602351751

`eq[char[A288862(n+1)], A000038(n)]`
-/

namespace A288863.P12498662453602351751
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288862 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A288863.P12498662453602351751

/-!
# A288864: 4-limiting word of the mapping 00->1000, 10->011, starting with 00.

The programs for A288864, there is no canonical definition to state claims against.
-/

/-! ## A288864.P13986337552021028451

`char[A288866(n+1)-1]`
-/

namespace A288864.P13986337552021028451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288866 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A288864.P13986337552021028451

/-! ## A288864.P17225007692043039651

`char[comp[A288865(n+1)-1]]`
-/

namespace A288864.P17225007692043039651
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288865 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A288864.P17225007692043039651

/-! ## A288864.P8379253768941980475

`char[A023443(A288866(n+1))]`
-/

namespace A288864.P8379253768941980475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A288866 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A288864.P8379253768941980475

/-! ## A288864.P6603850631438237751

`char[A023443(comp[A288865(n+1)])]`
-/

namespace A288864.P6603850631438237751
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288865 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A288864.P6603850631438237751

/-! ## A288864.P4262485144891683756

`char[A349431(2*A006519(n+1))+A288866(n+1)]`
-/

namespace A288864.P4262485144891683756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349431 (2 * A006519 (n + 1)).toNat + A288866 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A288864.P4262485144891683756

/-! ## A288864.P10102135594959550166

`char[A349431(A020639(2*(n+1)))+A288866(n+1)]`
-/

namespace A288864.P10102135594959550166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349431 (A020639 (2 * (n + 1))).toNat + A288866 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A288864.P10102135594959550166

/-!
# A288865: Positions of 0 in A288864; complement of A288866.

The programs for A288865, there is no canonical definition to state claims against.
-/

/-! ## A288865.P10454604084594364860

`eq[0, A288864(n+1)]+1`
-/

namespace A288865.P10454604084594364860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288864 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A288865.P10454604084594364860

/-! ## A288865.P10000055405084627745

`lt[n*A288864(A028310(n)), n]`
-/

namespace A288865.P10000055405084627745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A288864 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A288865.P10000055405084627745

/-! ## A288865.P9598171100377184369

`record[(1-A288864(n+1))*A000027(n+1)]`
-/

namespace A288865.P9598171100377184369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A288864 (n + 1)) * A000027 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288865.P9598171100377184369

/-! ## A288865.P13244570974125098205

`record[n+1-A008586(n*A288864(n+1))]`
-/

namespace A288865.P13244570974125098205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A008586 ((n : ℤ) * A288864 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288865.P13244570974125098205

/-! ## A288865.P14578914829299304519

`record[n+1-A109044(n*A288864(n+1))]`
-/

namespace A288865.P14578914829299304519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A109044 ((n : ℤ) * A288864 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288865.P14578914829299304519

/-! ## A288865.P6136131588273170804

`record[n+1-A160895(n+1)*A288864(n+1)]`
-/

namespace A288865.P6136131588273170804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A160895 (n + 1) * A288864 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288865.P6136131588273170804

/-! ## A288865.P13144491770726034853

`eq[char[A288866(n+1)], A091225(2*(n+1))]`
-/

namespace A288865.P13144491770726034853
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288866 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091225 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A288865.P13144491770726034853

/-! ## A288865.P14748785993695233558

`A000720(p?[A288864(n+1)+A000040(n+1)])`
-/

namespace A288865.P14748785993695233558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288864 (n + 1) + A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A288865.P14748785993695233558

/-! ## A288865.P17993981273360665545

`record[A008619(2*n)-n*A288864(n+1)]`
-/

namespace A288865.P17993981273360665545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * n) - (n : ℤ) * A288864 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288865.P17993981273360665545

/-!
# A288866: Positions of 1 in A288864; complement of A288865.

The programs for A288866, there is no canonical definition to state claims against.
-/

/-! ## A288866.P7399157978067517285

`comp[A288865(n+1)-1]+1`
-/

namespace A288866.P7399157978067517285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288865 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A288866.P7399157978067517285

/-! ## A288866.P781073872596905431

`filter[n+1, A288864(#)]`
-/

namespace A288866.P781073872596905431
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A288864 (f1 j) = 1) n)

end

end A288866.P781073872596905431

/-! ## A288866.P17543954092765425114

`lt[0, A288864(n+1)]+1`
-/

namespace A288866.P17543954092765425114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288864 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A288866.P17543954092765425114

/-! ## A288866.P17577387864779398567

`record[(n+2)*A288864(n+2)]`
-/

namespace A288866.P17577387864779398567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A288864 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288866.P17577387864779398567

/-! ## A288866.P15943860796212186548

`lt[0, A288864(A028310(n))]`
-/

namespace A288866.P15943860796212186548
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288864 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A288866.P15943860796212186548

/-! ## A288866.P14834905548290969686

`A020725(eq[1, A288864(n+1)])`
-/

namespace A288866.P14834905548290969686
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288864 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A288866.P14834905548290969686

/-! ## A288866.P2679685974980368748

`eq[1, A288864(A000007(n)+n)]`
-/

namespace A288866.P2679685974980368748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288864 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A288866.P2679685974980368748

/-! ## A288866.P607526210507745060

`eq[char[A288865(n+1)], A000007(n)]`
-/

namespace A288866.P607526210507745060
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288865 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A288866.P607526210507745060

/-! ## A288866.P13105568019484773935

`eq[2, A288864(A028310(n))+1]%A288228(n+1)²`
-/

namespace A288866.P13105568019484773935
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288864 (A028310 n).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) (A288228 (n + 1) ^ 2)

end

end A288866.P13105568019484773935

/-! ## A288866.P2201695121466182436

`A000720(p?[A000040(n+1)*A288864(n+1)])`
-/

namespace A288866.P2201695121466182436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A288864 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A288866.P2201695121466182436

/-!
# A288869: Numerators of z-sequence for the Sheffer matrix T = P*Lah = A271703 = A007318*A271703 = (exp(t), t/(1-t)).

The programs for A288869, there is no canonical definition to state claims against.
-/

/-! ## A288869.P2735360369242566518

`(-1)^n*A052852(round(sqrt(n²+1)))`
-/

namespace A288869.P2735360369242566518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A052852 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

end

end A288869.P2735360369242566518

/-! ## A288869.P15811368371451631907

`A033999(n)*A059110(A000124(n))`
-/

namespace A288869.P15811368371451631907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A059110 (A000124 n).toNat

end

end A288869.P15811368371451631907

/-! ## A288869.P9367658835093492666

`A033999(n)*A176120(A027379(n))`
-/

namespace A288869.P9367658835093492666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A176120 (A027379 n).toNat

end

end A288869.P9367658835093492666

/-! ## A288869.P11065337074576406943

`A033999(n)*A176120(A055998(n))`
-/

namespace A288869.P11065337074576406943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A176120 (A055998 n).toNat

end

end A288869.P11065337074576406943

/-! ## A288869.P2868483805285366333

`A059110(A000124(n))/A033999(n+2)`
-/

namespace A288869.P2868483805285366333
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059110 (A000124 n).toNat : ℚ) / (A033999 (n + 2) : ℚ)

end

end A288869.P2868483805285366333

/-! ## A288869.P3454674955222022357

`A033999(n)*A059114(∑[A028310(n)])`
-/

namespace A288869.P3454674955222022357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A059114 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A288869.P3454674955222022357

/-!
# A288870: Triangle T from array A(k,n) = (2*k+1)*2^n + 1, k >=0, n >= 0 read by downwards antidiagonals.

The programs for A288870, the canonical program `A288870.P11047461779992407775` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A288870 has offset 0).

The definition of A288870 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A288870.P11047461779992407775

`A054582(n)+1`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A288870

/-- `A054582(n)+1` -/
def P11047461779992407775.Spec : Prop :=
  ∀ n, P11047461779992407775.a n = A288870 n

theorem P11047461779992407775.correct : P11047461779992407775.Spec := by
  intro n
  simp only [A288870]

end A288870

/-! ## A288870.P6164557463401119999

`A075300(n)+2`
-/

namespace A288870.P6164557463401119999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075300 n + 2

end

end A288870.P6164557463401119999

namespace A288870

/-- `A075300(n)+2` -/
def P6164557463401119999.Spec : Prop :=
  ∀ n, P6164557463401119999.a n = A288870 n

end A288870

/-! ## A288870.P7463146377852483664

`(A241957(n+1)+3)/2`
-/

namespace A288870.P7463146377852483664
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A241957 (n + 1) + 3 : ℚ) / 2

end

end A288870.P7463146377852483664

namespace A288870

/-- `(A241957(n+1)+3)/2` -/
def P7463146377852483664.Spec : Prop :=
  ∀ n, P7463146377852483664.a n = (A288870 n : ℚ)

end A288870

/-! ## A288870.P17596717492116409624

`A257791(n+1)/4+1`
-/

namespace A288870.P17596717492116409624
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A257791 (n + 1) : ℚ) / 4 + 1

end

end A288870.P17596717492116409624

namespace A288870

/-- `A257791(n+1)/4+1` -/
def P17596717492116409624.Spec : Prop :=
  ∀ n, P17596717492116409624.a n = (A288870 n : ℚ)

end A288870

/-! ## A288870.P10745429841963642573

`A376102(n)+A130321(n)`
-/

namespace A288870.P10745429841963642573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376102 n + A130321 n

end

end A288870.P10745429841963642573

namespace A288870

/-- `A376102(n)+A130321(n)` -/
def P10745429841963642573.Spec : Prop :=
  ∀ n, P10745429841963642573.a n = A288870 n

end A288870

/-! ## A288870.P18029686540638010167

`A135764(A038722(n+1))+1`
-/

namespace A288870.P18029686540638010167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135764 (A038722 (n + 1)).toNat + 1

end

end A288870.P18029686540638010167

namespace A288870

/-- `A135764(A038722(n+1))+1` -/
def P18029686540638010167.Spec : Prop :=
  ∀ n, P18029686540638010167.a n = A288870 n

end A288870

/-! ## A288870.P11672672475265548308

`A135764(A061579(n)+1)+1`
-/

namespace A288870.P11672672475265548308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135764 (A061579 n + 1).toNat + 1

end

end A288870.P11672672475265548308

namespace A288870

/-- `A135764(A061579(n)+1)+1` -/
def P11672672475265548308.Spec : Prop :=
  ∀ n, P11672672475265548308.a n = A288870 n

end A288870

/-! ## A288870.P18104407347198640730

`2*A054582(n)-A075300(n)`
-/

namespace A288870.P18104407347198640730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A054582 n - A075300 n

end

end A288870.P18104407347198640730

namespace A288870

/-- `2*A054582(n)-A075300(n)` -/
def P18104407347198640730.Spec : Prop :=
  ∀ n, P18104407347198640730.a n = A288870 n

end A288870

/-! ## A288870.P1112532965986700011

`n-(A023443(n)-A054582(n))`
-/

namespace A288870.P1112532965986700011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A023443 n - A054582 n)

end

end A288870.P1112532965986700011

namespace A288870

/-- `n-(A023443(n)-A054582(n))` -/
def P1112532965986700011.Spec : Prop :=
  ∀ n, P1112532965986700011.a n = A288870 n

end A288870

/-! ## A288870.P10423312655055165541

`A000124(n)-(∑[n]-A054582(n))`
-/

namespace A288870.P10423312655055165541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n - (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A054582 n)

end

end A288870.P10423312655055165541

namespace A288870

/-- `A000124(n)-(∑[n]-A054582(n))` -/
def P10423312655055165541.Spec : Prop :=
  ∀ n, P10423312655055165541.a n = A288870 n

end A288870

/-! ## A288870.P13246791922378233034

`A130321(n)*A158405(n+1)+1`
-/

namespace A288870.P13246791922378233034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n * A158405 (n + 1) + 1

end

end A288870.P13246791922378233034

namespace A288870

/-- `A130321(n)*A158405(n+1)+1` -/
def P13246791922378233034.Spec : Prop :=
  ∀ n, P13246791922378233034.a n = A288870 n

end A288870

/-! ## A288870.P9067697496989432574

`A118416(n+1)/A059268(n)+1`
-/

namespace A288870.P9067697496989432574
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A118416 (n + 1) : ℚ) / (A059268 n : ℚ) + 1

end

end A288870.P9067697496989432574

namespace A288870

/-- `A118416(n+1)/A059268(n)+1` -/
def P9067697496989432574.Spec : Prop :=
  ∀ n, P9067697496989432574.a n = (A288870 n : ℚ)

end A288870

/-! ## A288870.P2075624831641262604

`A075302(A061579(n))+2`
-/

namespace A288870.P2075624831641262604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075302 (A061579 n).toNat + 2

end

end A288870.P2075624831641262604

namespace A288870

/-- `A075302(A061579(n))+2` -/
def P2075624831641262604.Spec : Prop :=
  ∀ n, P2075624831641262604.a n = A288870 n

end A288870

/-! ## A288870.P12509834925006435972

`A014682(A241957(n+1)+1)+1`
-/

namespace A288870.P12509834925006435972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A241957 (n + 1) + 1).toNat + 1

end

end A288870.P12509834925006435972

namespace A288870

/-- `A014682(A241957(n+1)+1)+1` -/
def P12509834925006435972.Spec : Prop :=
  ∀ n, P12509834925006435972.a n = A288870 n

end A288870

/-! ## A288870.P11926109914502409228

`A139708(A345254(n+1))+1`
-/

namespace A288870.P11926109914502409228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139708 (A345254 (n + 1)).toNat + 1

end

end A288870.P11926109914502409228

namespace A288870

/-- `A139708(A345254(n+1))+1` -/
def P11926109914502409228.Spec : Prop :=
  ∀ n, P11926109914502409228.a n = A288870 n

end A288870

/-!
# A288871: Triangle t needed for the e.g.f.s of the column sequences of A288870 with leading zeros.

The programs for A288871, there is no canonical definition to state claims against.
-/

/-! ## A288871.P8422184878695670315

`A118413(comp[∑[n]])+∏[char[∑[n]]+1]`
-/

namespace A288871.P8422184878695670315
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f4 j = n then 1 else 0) + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118413 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) + ((∏ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ)

end

end A288871.P8422184878695670315

/-! ## A288871.P5553222321971129216

`A140513(n)+A118413(comp[∑[n]])`
-/

namespace A288871.P5553222321971129216
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140513 n + A118413 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A288871.P5553222321971129216

/-! ## A288871.P17453772157912198689

`2*A173786(n)+A118413(n+1)`
-/

namespace A288871.P17453772157912198689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A173786 n + A118413 (n + 1)

end

end A288871.P17453772157912198689

/-! ## A288871.P3453203427602057335

`A173786(comp[∑[n]])+A118413(n+1)`
-/

namespace A288871.P3453203427602057335
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173786 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) + A118413 (n + 1)

end

end A288871.P3453203427602057335

/-! ## A288871.P7014556416199668816

`A087322(n+1)+A008619(A204985(n+1))`
-/

namespace A288871.P7014556416199668816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087322 (n + 1) + A008619 (A204985 (n + 1)).toNat

end

end A288871.P7014556416199668816

/-! ## A288871.P10524860767007522772

`A018900(n+1)+A118413(n+1)+A059268(n)`
-/

namespace A288871.P10524860767007522772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018900 (n + 1) + (A118413 (n + 1) + A059268 n)

end

end A288871.P10524860767007522772

/-! ## A288871.P10134336829283918235

`A018900(n+1)+A059268(n)*A111650(n+1)`
-/

namespace A288871.P10134336829283918235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018900 (n + 1) + A059268 n * A111650 (n + 1)

end

end A288871.P10134336829283918235

/-!
# A288872: Denominators for generalized Bernoulli numbers B[5,j](n), for j=1..4, n >= 0.

The programs for A288872, the canonical program `A288872.P1540144498736755834` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A288872 has offset 0).

The definition of A288872 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A288872.P1540144498736755834

`lcm(5, A027642(n))/5`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A288872

/-- `lcm(5, A027642(n))/5` -/
def P1540144498736755834.Spec : Prop :=
  ∀ n, P1540144498736755834.a n = (A288872 n : ℚ)

end A288872

/-! ## A288872.P9151904145095168380

`A027642(n)/gcd(5, A141056(n))`
-/

namespace A288872.P9151904145095168380
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027642 n : ℚ) / (Int.gcd 5 (A141056 n) : ℚ)

end

end A288872.P9151904145095168380

namespace A288872

/-- `A027642(n)/gcd(5, A141056(n))` -/
def P9151904145095168380.Spec : Prop :=
  ∀ n, P9151904145095168380.a n = (A288872 n : ℚ)

end A288872

/-! ## A288872.P10088803485877707691

`A027642(n)/A001844(val(A027642(n), 5))`
-/

namespace A288872.P10088803485877707691
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027642 n : ℚ) / (A001844 (SequenceMachineLib.valuation (A027642 n).toNat 5) : ℚ)

end

end A288872.P10088803485877707691

namespace A288872

/-- `A027642(n)/A001844(val(A027642(n), 5))` -/
def P10088803485877707691.Spec : Prop :=
  ∀ n, P10088803485877707691.a n = (A288872 n : ℚ)

end A288872

/-! ## A288872.P3646966273964374613

`A027642(n)/A099504(val(A027642(n), 5))`
-/

namespace A288872.P3646966273964374613
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027642 n : ℚ) / (A099504 (SequenceMachineLib.valuation (A027642 n).toNat 5) : ℚ)

end

end A288872.P3646966273964374613

namespace A288872

/-- `A027642(n)/A099504(val(A027642(n), 5))` -/
def P3646966273964374613.Spec : Prop :=
  ∀ n, P3646966273964374613.a n = (A288872 n : ℚ)

end A288872

/-! ## A288872.P7774340154602314077

`A027642(n)/A313533(val(A027642(n), 5))`
-/

namespace A288872.P7774340154602314077
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027642 n : ℚ) / (A313533 (SequenceMachineLib.valuation (A027642 n).toNat 5) : ℚ)

end

end A288872.P7774340154602314077

namespace A288872

/-- `A027642(n)/A313533(val(A027642(n), 5))` -/
def P7774340154602314077.Spec : Prop :=
  ∀ n, P7774340154602314077.a n = (A288872 n : ℚ)

end A288872

/-! ## A288872.P17155377136609671612

`gcd(A024049(n), A027642(n))`
-/

namespace A288872.P17155377136609671612
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A024049 n) (A027642 n)

end

end A288872.P17155377136609671612

namespace A288872

/-- `gcd(A024049(n), A027642(n))` -/
def P17155377136609671612.Spec : Prop :=
  ∀ n, (P17155377136609671612.a n : ℤ) = A288872 n

end A288872

/-! ## A288872.P6374085635048166147

`A157867(n)/∑[A005054(n)]`
-/

namespace A288872.P6374085635048166147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005054 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A157867 n : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A288872.P6374085635048166147

namespace A288872

/-- `A157867(n)/∑[A005054(n)]` -/
def P6374085635048166147.Spec : Prop :=
  ∀ n, P6374085635048166147.a n = (A288872 n : ℚ)

end A288872

/-! ## A288872.P4223958491977357913

`gcd(ceil(A002445(n)/5), A227540(n))`
-/

namespace A288872.P4223958491977357913
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ⌈(A002445 n : ℚ) / 5⌉ (A227540 n)

end

end A288872.P4223958491977357913

namespace A288872

/-- `gcd(ceil(A002445(n)/5), A227540(n))` -/
def P4223958491977357913.Spec : Prop :=
  ∀ n, (P4223958491977357913.a n : ℤ) = A288872 n

end A288872

/-!
# A288873: Numerators of scaled Bernoulli numbers 4^n*B(n), with B(n) = A027641(n)/A027642(n).

The programs for A288873, there is no canonical definition to state claims against.
-/

/-! ## A288873.P1945027512263386920

`A027641(n)*A081294(n)`
-/

namespace A288873.P1945027512263386920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027641 n * A081294 n

end

end A288873.P1945027512263386920

/-! ## A288873.P9073811862857599231

`A009117(n)*A164555(n)`
-/

namespace A288873.P9073811862857599231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009117 n * A164555 n

end

end A288873.P9073811862857599231

/-! ## A288873.P12964401060028042809

`A122803(n)*A239275(n)`
-/

namespace A288873.P12964401060028042809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122803 n * A239275 n

end

end A288873.P12964401060028042809

/-! ## A288873.P10713054654498799709

`A027641(n)*A158302(2*n)`
-/

namespace A288873.P10713054654498799709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027641 n * A158302 (2 * n)

end

end A288873.P10713054654498799709

/-! ## A288873.P2592252258124267522

`A000079(A004273(n))*A027641(n)`
-/

namespace A288873.P2592252258124267522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A004273 n).toNat * A027641 n

end

end A288873.P2592252258124267522

/-!
# A288874: Row reversed version of triangle A201637 (second-order Eulerian triangle).

The programs for A288874, there is no canonical definition to state claims against.
-/

/-! ## A288874.P445902124312231638

`A201637(A061579(n))`
-/

namespace A288874.P445902124312231638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201637 (A061579 n).toNat

end

end A288874.P445902124312231638

/-! ## A288874.P7822811689362666635

`A163936(A066182(n+1))`
-/

namespace A288874.P7822811689362666635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163936 (A066182 (n + 1)).toNat

end

end A288874.P7822811689362666635

/-! ## A288874.P968712847142092355

`A201637(A038722(n+1)-1)`
-/

namespace A288874.P968712847142092355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201637 (A038722 (n + 1) - 1).toNat

end

end A288874.P968712847142092355

/-! ## A288874.P15606705794890965186

`A201637(A002024(n+1)²-(n+1))`
-/

namespace A288874.P15606705794890965186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201637 (A002024 (n + 1) ^ 2 - (n + 1 : ℤ)).toNat

end

end A288874.P15606705794890965186

/-! ## A288874.P3220506796963173825

`A201637(A002024(n+1)*A002024(n+1)-(n+1))`
-/

namespace A288874.P3220506796963173825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201637 (A002024 (n + 1) * A002024 (n + 1) - (n + 1 : ℤ)).toNat

end

end A288874.P3220506796963173825

/-! ## A288874.P7459807518642401614

`A201637(A038722(n+2))`
-/

namespace A288874.P7459807518642401614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201637 (A038722 (n + 2)).toNat

end

end A288874.P7459807518642401614

/-!
# A288875: Triangle read by rows. The rows give the coefficients of the numerator polynomials for the o.g.f.s of the diagonal sequences of triangle A028338.

The programs for A288875, there is no canonical definition to state claims against.
-/

/-! ## A288875.P2658698202346219897

`A214406(∑[2*n]%comp[∑[n]])`
-/

namespace A288875.P2658698202346219897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214406 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A288875.P2658698202346219897

/-! ## A288875.P12729046897114898673

`A214406(∑[char[∑[n]]]²-n-1)`
-/

namespace A288875.P12729046897114898673
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214406 ((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - (n : ℤ) - 1).toNat

end

end A288875.P12729046897114898673

/-! ## A288875.P7032637044541296908

`gcd(A000038(n), A214406(A061579(n)))`
-/

namespace A288875.P7032637044541296908
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A214406 (A061579 n).toNat)

end

end A288875.P7032637044541296908

/-! ## A288875.P6536801447502697745

`abs(A000038(n+2)-A214406(A061579(n)))`
-/

namespace A288875.P6536801447502697745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000038 (n + 2) - A214406 (A061579 n).toNat|

end

end A288875.P6536801447502697745

/-! ## A288875.P17565636210981615595

`A214406(A061579(n))%A052957(n)`
-/

namespace A288875.P17565636210981615595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A214406 (A061579 n).toNat) (A052957 n)

end

end A288875.P17565636210981615595

/-! ## A288875.P631246262887639759

`A290315(A061579(n))/A130321(n)`
-/

namespace A288875.P631246262887639759
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A290315 (A061579 n).toNat : ℚ) / (A130321 n : ℚ)

end

end A288875.P631246262887639759

/-!
# A288876: a(n) = binomial(n+4, n)^2. Square of the fifth diagonal sequence of A007318 (Pascal). Fifth diagonal sequence of A008459.

The programs for A288876, the canonical program `A288876.P7027354788572423255` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A288876 has offset 0).

The definition of A288876 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A288876.P7027354788572423255

`C(n+4, 4)²`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A288876

/-- `C(n+4, 4)²` -/
def P7027354788572423255.Spec : Prop :=
  ∀ n, (P7027354788572423255.a n : ℤ) = A288876 n

theorem P7027354788572423255.correct : P7027354788572423255.Spec := by
  intro n
  simp only [A288876]

end A288876

/-! ## A288876.P8864513009531216856

`C(n+4, 4)^2`
-/

namespace A288876.P8864513009531216856
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 4) 4 ^ 2

end

end A288876.P8864513009531216856

namespace A288876

/-- `C(n+4, 4)^2` -/
def P8864513009531216856.Spec : Prop :=
  ∀ n, (P8864513009531216856.a n : ℤ) = A288876 n

theorem P8864513009531216856.correct : P8864513009531216856.Spec := by
  intro n
  simp only [A288876, Nat.add_sub_cancel, A288876.P8864513009531216856.a, A288876.P7027354788572423255.a, SequenceMachineLib.memo_apply]

end A288876

/-! ## A288876.P9632154936305032379

`∑[∑[∑[n+1]]]²`
-/

namespace A288876.P9632154936305032379
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A288876.P9632154936305032379

namespace A288876

/-- `∑[∑[∑[n+1]]]²` -/
def P9632154936305032379.Spec : Prop :=
  ∀ n, (P9632154936305032379.a n : ℤ) = A288876 n

end A288876

/-! ## A288876.P10827627993519799534

`root(C(n+4, 4), 1/2)`
-/

namespace A288876.P10827627993519799534
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 4) 4 : ℝ) ^ (1 / ((1 : ℚ) / 2 : ℝ))

end

end A288876.P10827627993519799534

namespace A288876

/-- `root(C(n+4, 4), 1/2)` -/
def P10827627993519799534.Spec : Prop :=
  ∀ n, P10827627993519799534.a n = (A288876 n : ℝ)

theorem P10827627993519799534.correct : P10827627993519799534.Spec := by
  intro n
  simp only [A288876, Nat.add_sub_cancel, A288876.P10827627993519799534.a, A288876.P7027354788572423255.a, SequenceMachineLib.memo_apply]
  try simp

end A288876

/-! ## A288876.P11152729987205969917

`(4/n+1)²*a(n-1)` with `a(0)=1`
-/

namespace A288876.P11152729987205969917
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (4 / (n : ℚ) + 1) ^ 2 * a (n - 1)

end

end A288876.P11152729987205969917

namespace A288876

/-- `(4/n+1)²*a(n-1)` -/
def P11152729987205969917.Spec : Prop :=
  ∀ n, P11152729987205969917.a n = (A288876 n : ℚ)

end A288876

/-! ## A288876.P13322222956886615797

`a(n-1)/(n/(n+4))²` with `a(0)=1`
-/

namespace A288876.P13322222956886615797
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) / ((n : ℚ) / (n + 4 : ℚ)) ^ 2

end

end A288876.P13322222956886615797

namespace A288876

/-- `a(n-1)/(n/(n+4))²` -/
def P13322222956886615797.Spec : Prop :=
  ∀ n, P13322222956886615797.a n = (A288876 n : ℚ)

end A288876

/-! ## A288876.P14186861079613591054

`∑[∑[∑[n+1]]]^(2%(n+2))`
-/

namespace A288876.P14186861079613591054
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ (2 % (n + 2))

end

end A288876.P14186861079613591054

namespace A288876

/-- `∑[∑[∑[n+1]]]^(2%(n+2))` -/
def P14186861079613591054.Spec : Prop :=
  ∀ n, (P14186861079613591054.a n : ℤ) = A288876 n

end A288876

/-! ## A288876.P9856921586196050189

`∑[∑[∑[n+1]]]^gcd(2, 2*n)`
-/

namespace A288876.P9856921586196050189
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ Nat.gcd 2 (2 * n)

end

end A288876.P9856921586196050189

namespace A288876

/-- `∑[∑[∑[n+1]]]^gcd(2, 2*n)` -/
def P9856921586196050189.Spec : Prop :=
  ∀ n, (P9856921586196050189.a n : ℤ) = A288876 n

end A288876

/-! ## A288876.P6648079132409582991

`∑[∑[∑[n+1]]]^ceil(atan(n+1))`
-/

namespace A288876.P6648079132409582991
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) ^ (⌈Real.arctan (n + 1 : ℝ)⌉ : ℤ)

end

end A288876.P6648079132409582991

namespace A288876

/-- `∑[∑[∑[n+1]]]^ceil(atan(n+1))` -/
def P6648079132409582991.Spec : Prop :=
  ∀ n, P6648079132409582991.a n = (A288876 n : ℚ)

end A288876

/-! ## A288876.P12292940968574274905

`floor(∑[∑[∑[a(n-1)-1]]]²)` with `a(0)=-1`

`floor` is left out, it is the identity on integers.
-/

namespace A288876.P12292940968574274905
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.rec [-1] fun n f3 =>
  f3 (n - 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A288876.P12292940968574274905

namespace A288876

/-- `floor(∑[∑[∑[a(n-1)-1]]]²)` -/
def P12292940968574274905.Spec : Prop :=
  ∀ n, P12292940968574274905.a n = A288876 n

end A288876

/-! ## A288876.P18221872486257768401

`∑[∑[n+1]+a(n-1)]^2` with `a(0)=1`
-/

namespace A288876.P18221872486257768401
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  ∑ j ∈ Finset.range (n + 1), f2 j + f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A288876.P18221872486257768401

namespace A288876

/-- `∑[∑[n+1]+a(n-1)]^2` -/
def P18221872486257768401.Spec : Prop :=
  ∀ n, (P18221872486257768401.a n : ℤ) = A288876 n

end A288876

/-! ## A288876.P11075917386385859619

`∑[A000292(n+1)]^2`
-/

namespace A288876.P11075917386385859619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A288876.P11075917386385859619

namespace A288876

/-- `∑[A000292(n+1)]^2` -/
def P11075917386385859619.Spec : Prop :=
  ∀ n, P11075917386385859619.a n = A288876 n

end A288876

/-! ## A288876.P8287046344412501328

`∑[∑[∑[A245380(n+1)]]]`
-/

namespace A288876.P8287046344412501328
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245380 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A288876.P8287046344412501328

namespace A288876

/-- `∑[∑[∑[A245380(n+1)]]]` -/
def P8287046344412501328.Spec : Prop :=
  ∀ n, P8287046344412501328.a n = A288876 n

end A288876

/-! ## A288876.P8443163535480347380

`A001297(n+1)²/A000537(n+1)`
-/

namespace A288876.P8443163535480347380
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001297 (n + 1) ^ 2 : ℚ) / (A000537 (n + 1) : ℚ)

end

end A288876.P8443163535480347380

namespace A288876

/-- `A001297(n+1)²/A000537(n+1)` -/
def P8443163535480347380.Spec : Prop :=
  ∀ n, P8443163535480347380.a n = (A288876 n : ℚ)

end A288876

/-! ## A288876.P9747390508965808402

`A001297(n+1)²/A000217(n+1)²`
-/

namespace A288876.P9747390508965808402
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001297 (n + 1) ^ 2 : ℚ) / (A000217 (n + 1) ^ 2 : ℚ)

end

end A288876.P9747390508965808402

namespace A288876

/-- `A001297(n+1)²/A000217(n+1)²` -/
def P9747390508965808402.Spec : Prop :=
  ∀ n, P9747390508965808402.a n = (A288876 n : ℚ)

end A288876

/-! ## A288876.P9102583811351809649

`∑[A132458(n+4)]`
-/

namespace A288876.P9102583811351809649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132458 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A288876.P9102583811351809649

namespace A288876

/-- `∑[A132458(n+4)]` -/
def P9102583811351809649.Spec : Prop :=
  ∀ n, P9102583811351809649.a n = A288876 n

end A288876

/-! ## A288876.P7843180153054980033

`record[(A052762(A028242(n)+3)/24)²]`
-/

namespace A288876.P7843180153054980033
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A052762 (A028242 n + 3).toNat : ℚ) / 24) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288876.P7843180153054980033

namespace A288876

/-- `record[(A052762(A028242(n)+3)/24)²]` -/
def P7843180153054980033.Spec : Prop :=
  ∀ n, P7843180153054980033.a n = (A288876 n : ℚ)

end A288876

/-! ## A288876.P18306103571972456463

`A189976(2*(n+4))*A189976(2*(n+4))`
-/

namespace A288876.P18306103571972456463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189976 (2 * (n + 4)) * A189976 (2 * (n + 4))

end

end A288876.P18306103571972456463

namespace A288876

/-- `A189976(2*(n+4))*A189976(2*(n+4))` -/
def P18306103571972456463.Spec : Prop :=
  ∀ n, P18306103571972456463.a n = A288876 n

end A288876

/-! ## A288876.P1769553807412471490

`A331575(2*(n+4))`
-/

namespace A288876.P1769553807412471490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331575 (2 * (n + 4))

end

end A288876.P1769553807412471490

namespace A288876

/-- `A331575(2*(n+4))` -/
def P1769553807412471490.Spec : Prop :=
  ∀ n, P1769553807412471490.a n = A288876 n

end A288876

/-! ## A288876.P3444265368677233609

`A080951(n)/A011782(n)²*A080951(n)`
-/

namespace A288876.P3444265368677233609
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080951 n : ℚ) / (A011782 n ^ 2 : ℚ) * (A080951 n : ℚ)

end

end A288876.P3444265368677233609

namespace A288876

/-- `A080951(n)/A011782(n)²*A080951(n)` -/
def P3444265368677233609.Spec : Prop :=
  ∀ n, P3444265368677233609.a n = (A288876 n : ℚ)

end A288876

/-!
# A288878: Primes of the form k!3 + 3^2, where k!3 is the triple factorial number (A007661).

The programs for A288878, there is no canonical definition to state claims against.
-/

/-! ## A288878.P17440013464827454063

`9+A007661(A247865(n+1))`
-/

namespace A288878.P17440013464827454063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 + A007661 (A247865 (n + 1)).toNat

end

end A288878.P17440013464827454063

/-! ## A288878.P4436930516817917169

`p?[A007661(n)+9]`
-/

namespace A288878.P4436930516817917169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007661 n + 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A288878.P4436930516817917169

/-! ## A288878.P5385760707421818688

`p?[A129116(∑[n+2]-1)+9]`
-/

namespace A288878.P5385760707421818688
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129116 (∑ j ∈ Finset.range (n + 1), f2 j - 1) + 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A288878.P5385760707421818688

/-!
# A288879: Primes of the form k!3 + 3^3, where k!3 is the triple factorial number (A007661).

The programs for A288879, there is no canonical definition to state claims against.
-/

/-! ## A288879.P820558014335846702

`27+A007661(A247886(n+1))`
-/

namespace A288879.P820558014335846702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  27 + A007661 (A247886 (n + 1)).toNat

end

end A288879.P820558014335846702

/-! ## A288879.P2569330123542493921

`p?[A007661(n)+27]`
-/

namespace A288879.P2569330123542493921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007661 n + 27

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A288879.P2569330123542493921

/-! ## A288879.P8049350379412622374

`p?[A288889(n+1)+24]`
-/

namespace A288879.P8049350379412622374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288889 (n + 1) + 24

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A288879.P8049350379412622374

/-!
# A288880: Primes of the form k!3 + 3^4, where k!3 is the triple factorial number (A007661).

The programs for A288880, there is no canonical definition to state claims against.
-/

/-! ## A288880.P13919832595453130086

`81+A007661(A247866(n+1))`
-/

namespace A288880.P13919832595453130086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  81 + A007661 (A247866 (n + 1)).toNat

end

end A288880.P13919832595453130086

/-!
# A288881: Primes of the form k!3 + 3^5, where k!3 is the triple factorial number (A007661).

The programs for A288881, there is no canonical definition to state claims against.
-/

/-! ## A288881.P5943102579886682798

`243+A007661(A247868(n+1))`
-/

namespace A288881.P5943102579886682798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  243 + A007661 (A247868 (n + 1)).toNat

end

end A288881.P5943102579886682798

/-!
# A288882: Primes of the form k!3 + 3^6, where k!3 is the triple factorial number (A007661).

The programs for A288882, there is no canonical definition to state claims against.
-/

/-! ## A288882.P6357612826744840192

`729+A007661(A247467(n+1))`
-/

namespace A288882.P6357612826744840192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  729 + A007661 (A247467 (n + 1)).toNat

end

end A288882.P6357612826744840192

/-!
# A288888: a(n) is the total number of elements in all sum-free subsets of {1,...,n}.

The programs for A288888, there is no canonical definition to state claims against.
-/

/-! ## A288888.P6536102147240370611

`A295138(n)+A243055(A143917(n))`
-/

namespace A288888.P6536102147240370611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295138 n + A243055 (A143917 n).toNat

end

end A288888.P6536102147240370611

/-!
# A288889: Primes of the form k!3+3, where k!3 is the triple factorial number (A007661).

The programs for A288889, there is no canonical definition to state claims against.
-/

/-! ## A288889.P3418081142080383008

`A007661(A249400(n+1))+3`
-/

namespace A288889.P3418081142080383008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007661 (A249400 (n + 1)).toNat + 3

end

end A288889.P3418081142080383008

/-! ## A288889.P5335266081514141847

`p?[A007661(n)+3]`
-/

namespace A288889.P5335266081514141847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007661 n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A288889.P5335266081514141847

/-! ## A288889.P18219602738243340131

`p?[Δ[A114347(n)]+3]`
-/

namespace A288889.P18219602738243340131
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114347 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A288889.P18219602738243340131

/-! ## A288889.P10958079689539724807

`p?[A129116(∑[n+2]-1)+3]`
-/

namespace A288889.P10958079689539724807
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129116 (∑ j ∈ Finset.range (n + 1), f2 j - 1) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A288889.P10958079689539724807

/-! ## A288889.P14865747719943021171

`p?[(n%3)!*A161474(n)+3]`
-/

namespace A288889.P14865747719943021171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n % 3) : ℤ) * A161474 n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A288889.P14865747719943021171

/-!
# A288890: Primes of the form k!4+2, where k!4 is the quadruple factorial number (A007662).

The programs for A288890, there is no canonical definition to state claims against.
-/

/-! ## A288890.P18167450539595962022

`A007662(A283553(n+2))+2`
-/

namespace A288890.P18167450539595962022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007662 (A283553 (n + 2)).toNat + 2

end

end A288890.P18167450539595962022

/-! ## A288890.P17110474121374142243

`p?[Δ[A108895(n)]+2]`
-/

namespace A288890.P17110474121374142243
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108895 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A288890.P17110474121374142243

/-! ## A288890.P9415505826321402078

`p?[A007662(n+1)+2]`
-/

namespace A288890.P9415505826321402078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007662 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A288890.P9415505826321402078

/-! ## A288890.P6074866350923496070

`record[A006530(∏[(2*n+1)/a(n-1)]+2)]` with `a(0)=1`
-/

namespace A288890.P6074866350923496070
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f2 =>
  (2 * n + 1 : ℚ) / f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway (∏ j ∈ Finset.range (n + 1), f2 j + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288890.P6074866350923496070

/-! ## A288890.P3598400779713861423

`record[A082284(A249100(∑[n]))]`
-/

namespace A288890.P3598400779713861423
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082284 (A249100 (∑ j ∈ Finset.range (n + 1), f2 j)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288890.P3598400779713861423

/-!
# A288891: Primes of the form k!6+2, where k!6 is the sextuple factorial number (A085158).

The programs for A288891, there is no canonical definition to state claims against.
-/

/-! ## A288891.P14988989322390399144

`A085158(A287207(n+2))+2`
-/

namespace A288891.P14988989322390399144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085158 (A287207 (n + 2)).toNat + 2

end

end A288891.P14988989322390399144

/-! ## A288891.P5546128707272091937

`p?[A085158(n+1)+2]`
-/

namespace A288891.P5546128707272091937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085158 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A288891.P5546128707272091937

/-!
# A288892: Primes of the form k!12+2, where k!12 is the 12-way factorial number.

The programs for A288892, there is no canonical definition to state claims against.
-/

/-! ## A288892.P15499667537051534427

`p?[record[or(n, A061674(n))]]`
-/

namespace A288892.P15499667537051534427
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A061674 n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A288892.P15499667537051534427

/-! ## A288892.P3925479324216491501

`p?[or(2*n+3, A000719(n))]`
-/

namespace A288892.P3925479324216491501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (2 * n + 3 : ℤ) (A000719 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A288892.P3925479324216491501

/-! ## A288892.P16179526404230032839

`or((p?[3*n+1]+2)/3, ∑[A215962(n+1)])`
-/

namespace A288892.P16179526404230032839
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215962 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.roundAway ((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) + 2 : ℚ) / 3)) (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A288892.P16179526404230032839

/-!
# A288893: Primes of the form k!14+2, where k!14 is the 14-way factorial number.

The programs for A288893, there is no canonical definition to state claims against.
-/

/-! ## A288893.P16900485900471444350

`p?[(n+1)*A271952(n)+2]`
-/

namespace A288893.P16900485900471444350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A271952 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A288893.P16900485900471444350

/-!
# A288895: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 521", based on the 5-celled von Neumann neighborhood.

The programs for A288895, there is no canonical definition to state claims against.
-/

/-! ## A288895.P2253261821719791585

`A000042(n+1)+A057428(n)*A288336(n)`
-/

namespace A288895.P2253261821719791585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (n + 1) + A057428 n * A288336 n

end

end A288895.P2253261821719791585

/-! ## A288895.P6772515908651700061

`A007088(A288897(n))`
-/

namespace A288895.P6772515908651700061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A288897 n).toNat

end

end A288895.P6772515908651700061

/-! ## A288895.P8766483597330414801

`A007088(A095121(n)+1-A288338(n))`
-/

namespace A288895.P8766483597330414801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A095121 n + (1 - A288338 n)).toNat

end

end A288895.P8766483597330414801

/-! ## A288895.P3619583963225638436

`A007088(1-(A288338(n)-A095121(n)))`
-/

namespace A288895.P3619583963225638436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (1 - (A288338 n - A095121 n)).toNat

end

end A288895.P3619583963225638436

/-! ## A288895.P8280273901251101208

`A007088(A288807(n)+A288811(n)-A288338(n))`
-/

namespace A288895.P8280273901251101208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A288807 n + (A288811 n - A288338 n)).toNat

end

end A288895.P8280273901251101208

/-!
# A288896: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 521", based on the 5-celled von Neumann neighborhood.

The programs for A288896, there is no canonical definition to state claims against.
-/

/-! ## A288896.P4298283344265785986

`A000042(n+1)-A057427(n)*A288337(n)`
-/

namespace A288896.P4298283344265785986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (n + 1) - A057427 n * A288337 n

end

end A288896.P4298283344265785986

/-! ## A288896.P4535817751361985762

`A000042(n+1)-and(A001489(n), A288337(n))`
-/

namespace A288896.P4535817751361985762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (n + 1) - Int.land (A001489 n) (A288337 n)

end

end A288896.P4535817751361985762

/-! ## A288896.P14681103753557158398

`A007088(A288898(n))`
-/

namespace A288896.P14681103753557158398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A288898 n).toNat

end

end A288896.P14681103753557158398

/-! ## A288896.P6659525719481408695

`A007088(A095121(n)+1-A288339(n))`
-/

namespace A288896.P6659525719481408695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A095121 n + (1 - A288339 n)).toNat

end

end A288896.P6659525719481408695

/-! ## A288896.P17502354397324056355

`A007088(1-(A288339(n)-A095121(n)))`
-/

namespace A288896.P17502354397324056355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (1 - (A288339 n - A095121 n)).toNat

end

end A288896.P17502354397324056355

/-!
# A288897: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 521", based on the 5-celled von Neumann neighborhood.

The programs for A288897, there is no canonical definition to state claims against.
-/

/-! ## A288897.P3633888639079947706

`A095121(n)+1-A288338(n)`
-/

namespace A288897.P3633888639079947706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095121 n + (1 - A288338 n)

end

end A288897.P3633888639079947706

/-! ## A288897.P4128370034288988892

`A288807(n)+A288811(n)-A288338(n)`
-/

namespace A288897.P4128370034288988892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288807 n + (A288811 n - A288338 n)

end

end A288897.P4128370034288988892

/-! ## A288897.P18124530059530196721

`A288808(n)+A288812(n)-A288338(n)`
-/

namespace A288897.P18124530059530196721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288808 n + (A288812 n - A288338 n)

end

end A288897.P18124530059530196721

/-! ## A288897.P12722972799132290610

`A126646(n)-A288338(n)%A000079(n)`
-/

namespace A288897.P12722972799132290610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n - Int.tmod (A288338 n) (A000079 n)

end

end A288897.P12722972799132290610

/-! ## A288897.P9920979841374839202

`xor(A126646(n)%A286508(n), A288338(n))`
-/

namespace A288897.P9920979841374839202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (Int.tmod (A126646 n) (A286508 n)) (A288338 n)

end

end A288897.P9920979841374839202

/-!
# A288898: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 521", based on the 5-celled von Neumann neighborhood.

The programs for A288898, there is no canonical definition to state claims against.
-/

/-! ## A288898.P14366972756248384544

`A095121(n)+1-A288339(n)`
-/

namespace A288898.P14366972756248384544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095121 n + (1 - A288339 n)

end

end A288898.P14366972756248384544

/-! ## A288898.P17000062689110470174

`or(1, A126646(n)-A288339(n))`
-/

namespace A288898.P17000062689110470174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A126646 n - A288339 n)

end

end A288898.P17000062689110470174

/-! ## A288898.P6598519814099495936

`or(1, ∑[A000079(n)]-A288339(n))`
-/

namespace A288898.P6598519814099495936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j - A288339 n)

end

end A288898.P6598519814099495936

/-! ## A288898.P10167928906852165670

`A288338(n)+A288897(n)-A288339(n)`
-/

namespace A288898.P10167928906852165670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288338 n + (A288897 n - A288339 n)

end

end A288898.P10167928906852165670

/-! ## A288898.P13868180575941069190

`A288807(n)+A288811(n)-A288339(n)`
-/

namespace A288898.P13868180575941069190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288807 n + (A288811 n - A288339 n)

end

end A288898.P13868180575941069190

/-! ## A288898.P17358566660158656696

`∑[A000079(n)]-A288339(n)%A175657(n)`
-/

namespace A288898.P17358566660158656696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - Int.tmod (A288339 n) (A175657 n)

end

end A288898.P17358566660158656696

/-!
# A288899: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 525", based on the 5-celled von Neumann neighborhood.

The programs for A288899, there is no canonical definition to state claims against.
-/

/-! ## A288899.P16119105842155647093

`A007088(A288901(n))`
-/

namespace A288899.P16119105842155647093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A288901 n).toNat

end

end A288899.P16119105842155647093

/-! ## A288899.P10071588212536556499

`A185544(2*A288901(n))`
-/

namespace A288899.P10071588212536556499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A288901 n).toNat

end

end A288899.P10071588212536556499

/-! ## A288899.P15826419003734550161

`A185544(A288901(n)+A288901(n))`
-/

namespace A288899.P15826419003734550161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A288901 n + A288901 n).toNat

end

end A288899.P15826419003734550161

