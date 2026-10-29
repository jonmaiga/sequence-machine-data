import SequenceMachineLib.Basic
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C005
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C015
import Seq.B000.C018
import Seq.B000.C025
import Seq.B000.C029
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C036
import Seq.B000.C038
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C049
import Seq.B001.C000
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C012
import Seq.B001.C013
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C001
import Seq.B004.C003
import Seq.B005.C000
import Seq.B006.C000
import Seq.B007.C000
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
# A394000: Achilles numbers whose prime power factor exponents are not all pairwise coprime.

The programs for A394000, there is no canonical definition to state claims against.
-/

/-! ## A394000.P1645501794771601764

`∩[A052486(n+1), A072413(n+1)]`
-/

namespace A394000.P1645501794771601764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052486 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072413 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A394000.P1645501794771601764

/-!
# A394013: Numbers that are neither the sum nor difference of two 3-smooth numbers.

The programs for A394013, there is no canonical definition to state claims against.
-/

/-! ## A394013.P15463936280514808094

`∩[A081329(n+1), A290365(n+1)]`
-/

namespace A394013.P15463936280514808094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081329 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290365 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A394013.P15463936280514808094

/-! ## A394013.P4278842392842793726

`∩[A290365(n+1), A323046(n+1)]`
-/

namespace A394013.P4278842392842793726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290365 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323046 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A394013.P4278842392842793726

/-!
# A394014: a(1)=1; for n >= 1, a(n+1) = prime(k) where k > a(n) is least k such that prime(k) - k is prime.

The programs for A394014, there is no canonical definition to state claims against.
-/

/-! ## A394014.P15159819232405044498

`A109257(a(n-1))` with `a(0)=1`
-/

namespace A394014.P15159819232405044498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A109257 (a (n - 1)).toNat

end

end A394014.P15159819232405044498

/-!
# A394016: Triangle read by rows: T(n, k) = 1 if k appears in the n X n multiplication table, otherwise 0.

The programs for A394016, there is no canonical definition to state claims against.
-/

/-! ## A394016.P15835893418334667006

`A285421(A187224(A187224((2*n+1)²)))`
-/

namespace A394016.P15835893418334667006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285421 (A187224 (A187224 ((2 * n + 1) ^ 2)).toNat).toNat

end

end A394016.P15835893418334667006

/-! ## A394016.P8785924453433090406

`A010059(A136147(3*n+2)-A010059(n))`
-/

namespace A394016.P8785924453433090406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010059 (A136147 (3 * n + 2) - A010059 n).toNat

end

end A394016.P8785924453433090406

/-! ## A394016.P11502522247881978594

`A108087(A039953(3*(n+1)))%2`
-/

namespace A394016.P11502522247881978594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A108087 (A039953 (3 * (n + 1))).toNat) 2

end

end A394016.P11502522247881978594

/-! ## A394016.P18224970214009406549

`A245837(A200925(n+1))`
-/

namespace A394016.P18224970214009406549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245837 (A200925 (n + 1)).toNat

end

end A394016.P18224970214009406549

/-! ## A394016.P18038690841419165705

`A268310(gcd(2, ∏{p}[n, #])*A384218(n+1))`
-/

namespace A394016.P18038690841419165705
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268310 ((Nat.gcd 2 (∏ p ∈ Nat.primeFactors (f1 n), p) : ℤ) * A384218 (n + 1)).toNat

end

end A394016.P18038690841419165705

/-!
# A394017: Expansion of g.f.: Product_{k>=1} 1 / (1 - x^(k^2 + 2)).

The programs for A394017, there is no canonical definition to state claims against.
-/

/-! ## A394017.P2301605213625773292

`A366988(A334638(n+1))`
-/

namespace A394017.P2301605213625773292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366988 (A334638 (n + 1)).toNat

end

end A394017.P2301605213625773292

/-! ## A394017.P11906187953488856195

`A025844(n)*A063919(A329050(n))`
-/

namespace A394017.P11906187953488856195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025844 n * A063919 (A329050 n).toNat

end

end A394017.P11906187953488856195

/-! ## A394017.P9533932464559562488

`gcd(A025844(n), A042970(A214829(n)))`
-/

namespace A394017.P9533932464559562488
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A025844 n) (A042970 (A214829 n).toNat)

end

end A394017.P9533932464559562488

/-! ## A394017.P13295383589231280831

`A363878(A206608(n+2))`
-/

namespace A394017.P13295383589231280831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363878 (A206608 (n + 2)).toNat

end

end A394017.P13295383589231280831

/-! ## A394017.P9659254982330483013

`and(A001221(A278346(n+3)), A111123(n))`
-/

namespace A394017.P9659254982330483013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001221 (A278346 (n + 3)).toNat) (A111123 n)

end

end A394017.P9659254982330483013

/-!
# A394018: Expansion of g.f.: Product_{k>=1} 1 / (1 - x^(k^2 + 3)).

The programs for A394018, there is no canonical definition to state claims against.
-/

/-! ## A394018.P9646866859112921272

`A025871(n)%∑{d}[A382328(n)+1, #]`
-/

namespace A394018.P9646866859112921272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382328 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A025871 n) ((∑ d ∈ Nat.divisors (f1 n).natAbs, d : ℕ) : ℤ)

end

end A394018.P9646866859112921272

/-! ## A394018.P13831821869825482935

`A025871(n)*A185116(A005673(n+2))`
-/

namespace A394018.P13831821869825482935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025871 n * A185116 (A005673 (n + 2)).toNat

end

end A394018.P13831821869825482935

/-! ## A394018.P11678306919411178376

`A083913(A169622(n+2))`
-/

namespace A394018.P11678306919411178376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083913 (A169622 (n + 2)).toNat

end

end A394018.P11678306919411178376

/-! ## A394018.P9707823013473243559

`A357375(A003598(n+1))`
-/

namespace A394018.P9707823013473243559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357375 (A003598 (n + 1)).toNat

end

end A394018.P9707823013473243559

/-! ## A394018.P12928447304916092588

`A268643(A225173(n+1))`
-/

namespace A394018.P12928447304916092588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 (A225173 (n + 1)).toNat

end

end A394018.P12928447304916092588

/-!
# A394019: Expansion of g.f.: Product_{k>=1} 1 / (1 - x^(k^2 + 4)).

The programs for A394019, there is no canonical definition to state claims against.
-/

/-! ## A394019.P13102509741034316047

`A070445(A194052(3*n+4))%3`
-/

namespace A394019.P13102509741034316047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070445 (A194052 (3 * n + 4)).toNat) 3

end

end A394019.P13102509741034316047

/-! ## A394019.P13400069657586246991

`A352516(A000705(n+1)*A105825(n+5))`
-/

namespace A394019.P13400069657586246991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352516 (A000705 (n + 1) * A105825 (n + 5)).toNat

end

end A394019.P13400069657586246991

/-! ## A394019.P5278466970212097208

`and(A096258(n), A340061(A134922(2*n+5)))`
-/

namespace A394019.P5278466970212097208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A096258 n) (A340061 (A134922 (2 * n + 5)).toNat)

end

end A394019.P5278466970212097208

/-! ## A394019.P1631110207939801697

`A007949(A378082(3*n+4)+A082647(n+1))`
-/

namespace A394019.P1631110207939801697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (A378082 (3 * n + 4) + A082647 (n + 1)).toNat

end

end A394019.P1631110207939801697

/-! ## A394019.P11179917099766731534

`A387030(A176911(n+1))`
-/

namespace A394019.P11179917099766731534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387030 (A176911 (n + 1)).toNat

end

end A394019.P11179917099766731534

/-!
# A394020: Expansion of g.f.: Product_{k>=1} 1 / (1 - x^(k^2 + 5)).

The programs for A394020, there is no canonical definition to state claims against.
-/

/-! ## A394020.P3044426164993107283

`A330986(A314969(n))`
-/

namespace A394020.P3044426164993107283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330986 (A314969 n).toNat

end

end A394020.P3044426164993107283

/-! ## A394020.P17989583214448014746

`A246903(A318612(n+1))%A016014(2*(n+2))`
-/

namespace A394020.P17989583214448014746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A246903 (A318612 (n + 1)).toNat) (A016014 (2 * (n + 2)))

end

end A394020.P17989583214448014746

/-! ## A394020.P9559918904017321233

`A175967(A187219(2*n+3))%A288723(2*n+5)`
-/

namespace A394020.P9559918904017321233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A175967 (A187219 (2 * n + 3)).toNat) (A288723 (2 * n + 5))

end

end A394020.P9559918904017321233

/-! ## A394020.P12402067268534258134

`and(A124769(A266493(n+1)), A257123(n+4))`
-/

namespace A394020.P12402067268534258134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A124769 (A266493 (n + 1)).toNat) (A257123 (n + 4))

end

end A394020.P12402067268534258134

/-! ## A394020.P10813064130741251320

`A115199(A310275(n))`
-/

namespace A394020.P10813064130741251320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115199 (A310275 n).toNat

end

end A394020.P10813064130741251320

/-!
# A394021: Number of partitions p of n with multiplicity of each part at most 2, satisfying max(p) <= 2 * min(p).

The programs for A394021, there is no canonical definition to state claims against.
-/

/-! ## A394021.P1361999697067217429

`A226029(A288587(n+1))`
-/

namespace A394021.P1361999697067217429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226029 (A288587 (n + 1)).toNat

end

end A394021.P1361999697067217429

/-! ## A394021.P1987466154042861283

`A000120(A003099(n+3)-A352513(n))`
-/

namespace A394021.P1987466154042861283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A003099 (n + 3) - A352513 n).toNat

end

end A394021.P1987466154042861283

/-!
# A394024: Number of partitions p of n with multiplicity of each part at most 3, satisfying max(p) <= 3 * min(p).

The programs for A394024, there is no canonical definition to state claims against.
-/

/-! ## A394024.P10399671063769645366

`A156253(lt[A143588(n+3), A257505(n+1)])`
-/

namespace A394024.P10399671063769645366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143588 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257505 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156253 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A394024.P10399671063769645366

/-!
# A394031: Maximum size of a subset of GF(2)^n being a Sidon set.

The programs for A394031, there is no canonical definition to state claims against.
-/

/-! ## A394031.P1678320805578228272

`ogf((2+x+x^2+2x^3+x^4+2x^5+3x^6+6x^7+6x^8+10x^9)/(1-x))`
-/

namespace A394031.P1678320805578228272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 1, 1, 2, 1, 2, 3, 6, 6, 10] [1, -1] n

end

end A394031.P1678320805578228272

/-! ## A394031.P10124277006551588616

`A022306(A343942(n))+1`
-/

namespace A394031.P10124277006551588616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022306 (A343942 n).toNat + 1

end

end A394031.P10124277006551588616

/-! ## A394031.P6931650782376671416

`A156874(A298803(n+1))`
-/

namespace A394031.P6931650782376671416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156874 (A298803 (n + 1)).toNat

end

end A394031.P6931650782376671416

/-! ## A394031.P10269917494663213861

`A302058(A396176(n+1))`
-/

namespace A394031.P10269917494663213861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302058 (A396176 (n + 1)).toNat

end

end A394031.P10269917494663213861

/-! ## A394031.P3892696837734761131

`A061266(A248604(n+2))`
-/

namespace A394031.P3892696837734761131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061266 (A248604 (n + 2)).toNat

end

end A394031.P3892696837734761131

/-!
# A394033: Rectangular array, read by descending antidiagonals: denominators in the best lower approximating array to the golden ratio, phi (A001622). (See Comments).

The programs for A394033, there is no canonical definition to state claims against.
-/

/-! ## A394033.P4535666044323361333

`A005206(A394034(n+1))`
-/

namespace A394033.P4535666044323361333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (A394034 (n + 1)).toNat

end

end A394033.P4535666044323361333

/-!
# A394034: Rectangular array, read by descending antidiagonals: numerators in the best lower approximating array to the golden ratio, phi (A001622). (See A394033.)

The programs for A394034, there is no canonical definition to state claims against.
-/

/-! ## A394034.P1637111125875474761

`A000201(A394033(n+1))`
-/

namespace A394034.P1637111125875474761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000201 (A394033 (n + 1)).toNat

end

end A394034.P1637111125875474761

/-!
# A394035: Rectangular array, read by descending antidiagonals: denominators in the best upper approximating array to the golden ratio, phi (A001622) (see Comments).

The programs for A394035, there is no canonical definition to state claims against.
-/

/-! ## A394035.P16422614548503243902

`A319433(A394036(n+1))`
-/

namespace A394035.P16422614548503243902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319433 (A394036 (n + 1)).toNat

end

end A394035.P16422614548503243902

/-! ## A394035.P12411142222428137678

`A060143(A394036(n+1))`
-/

namespace A394035.P12411142222428137678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060143 (A394036 (n + 1)).toNat

end

end A394035.P12411142222428137678

/-!
# A394036: Rectangular array, read by descending antidiagonals: numerators in the best upper approximating array to the golden ratio, phi (A001622). (See A394035.)

The programs for A394036, there is no canonical definition to state claims against.
-/

/-! ## A394036.P11606945250634939844

`A004956(A394035(n+1))`
-/

namespace A394036.P11606945250634939844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004956 (A394035 (n + 1)).toNat

end

end A394036.P11606945250634939844

/-!
# A394038: a(n) = number of triples (x, y, z) such that 2*x^2 + y*z = n, where x, y, z are positive integers satisfying 0 < x < y < z.

The programs for A394038, there is no canonical definition to state claims against.
-/

/-! ## A394038.P7108569342970306930

`A394788(n)-A338732(n)`
-/

namespace A394038.P7108569342970306930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394788 n - A338732 n

end

end A394038.P7108569342970306930

/-! ## A394038.P6936279173182580074

`A191515(A129095(n+1))`
-/

namespace A394038.P6936279173182580074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191515 (A129095 (n + 1)).toNat

end

end A394038.P6936279173182580074

/-! ## A394038.P12775802923913707857

`A340999(A314503(n+1))`
-/

namespace A394038.P12775802923913707857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340999 ((A314503 (n + 1)).toNat + 204)

end

end A394038.P12775802923913707857

/-! ## A394038.P10832609628002652764

`A125005(A320132(n)+A156351(3*(n+1)))`
-/

namespace A394038.P10832609628002652764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125005 (A320132 n + A156351 (3 * (n + 1))).toNat

end

end A394038.P10832609628002652764

/-! ## A394038.P15785008724673521282

`A124761(A007947(n+1)*A048881(3*n+2))`
-/

namespace A394038.P15785008724673521282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124761 (A007947 (n + 1) * A048881 (3 * n + 2)).toNat

end

end A394038.P15785008724673521282

/-!
# A394045: a(0) = 0, a(n) = Sum_{k=1..n} binomial(n+1, k+1)*A053507(k) for n > 0.

The programs for A394045, the canonical program `A394045.P572451701111646751` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A394045 has offset 0).

The definition of A394045 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A394045.P572451701111646751

`∑{#}[n-1, C(n+1, #+1+1)*A053507(#+1)]`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A394045

/-- `∑{#}[n-1, C(n+1, #+1+1)*A053507(#+1)]` -/
def P572451701111646751.Spec : Prop :=
  ∀ n, P572451701111646751.a n = A394045 n

theorem P572451701111646751.correct : P572451701111646751.Spec := by
  intro n
  simp only [A394045]

end A394045

/-! ## A394045.P2724484190923879206

`A020069(3*n+4)%A007782(A000392(n))`
-/

namespace A394045.P2724484190923879206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020069 (3 * n + 4)) (A007782 (A000392 n).toNat)

end

end A394045.P2724484190923879206

namespace A394045

/-- `A020069(3*n+4)%A007782(A000392(n))` -/
def P2724484190923879206.Spec : Prop :=
  ∀ n, P2724484190923879206.a n = A394045 n

end A394045

/-!
# A394047: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals downwards, where column k is the expansion of B(x)^k, where B(x) is the g.f. of A393889.

The programs for A394047, there is no canonical definition to state claims against.
-/

/-! ## A394047.P11994281205217753016

`A384804(n)-A193496(A108411(n))`
-/

namespace A394047.P11994281205217753016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384804 n - A193496 (A108411 n).toNat

end

end A394047.P11994281205217753016

/-!
# A394048: The product of the smallest primes in every congruence class modulo n which are relatively prime to n.

The programs for A394048, there is no canonical definition to state claims against.
-/

/-! ## A394048.P4259657880195004408

`A000720(2*A379527(2*n+1))`
-/

namespace A394048.P4259657880195004408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (2 * A379527 (2 * n + 1)).toNat

end

end A394048.P4259657880195004408

/-!
# A394049: Smallest number k that is neither squarefree nor squareful such that rad(k) | s(n), where s = A120944 is the sequence of squarefree composite numbers and rad = A007947.

The programs for A394049, the canonical program `A394049.P14023928957558719581` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A394049 has offset 1).

The definition of A394049 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A020639, A119288, A120944, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A394049.P14023928957558719581

`A020639(A120944(n+1))²*A119288(A120944(n+1))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A394049

/-- `A020639(A120944(n+1))²*A119288(A120944(n+1))` -/
def P14023928957558719581.Spec : Prop :=
  ∀ n, P14023928957558719581.a n = A394049 (n + 1)

theorem P14023928957558719581.correct : P14023928957558719581.Spec := by
  intro n
  simp only [A394049, Nat.add_sub_cancel]

end A394049

/-!
# A394050: Achilles numbers with more than 2 distinct prime factors, whose exponents that are all pairwise indivisible.

The programs for A394050, there is no canonical definition to state claims against.
-/

/-! ## A394050.P4491249029564125814

`∩[A317102(n+1), A393708(n+1)]`
-/

namespace A394050.P4491249029564125814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317102 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393708 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A394050.P4491249029564125814

/-!
# A394051: Hofstadter Q-sequence perturbed by (-1)^n.

The programs for A394051, the canonical program `A394051.P14398310074069352782` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A394051 has offset 1).

The definition of A394051 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A394051.P14398310074069352782

`a(n-a(n-1))+a(n-a(n-2))+(-1)^(n+1)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A394051

/-- `a(n-a(n-1))+a(n-a(n-2))+(-1)^(n+1)` -/
def P14398310074069352782.Spec : Prop :=
  ∀ n, P14398310074069352782.a n = A394051 (n + 1)

theorem P14398310074069352782.correct : P14398310074069352782.Spec := by
  intro n
  simp only [A394051, Nat.add_sub_cancel]

end A394051

/-!
# A394052: Irregular triangle read by rows: T(n,k) is the number of positive integers <= n with exactly k divisors.

The programs for A394052, there is no canonical definition to state claims against.
-/

/-! ## A394052.P17019681480572743528

`or(A240025(A112493(n+3)), A249809(n+1))`
-/

namespace A394052.P17019681480572743528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A240025 (A112493 (n + 3)).toNat) (A249809 (n + 1))

end

end A394052.P17019681480572743528

/-! ## A394052.P2683563506296148207

`A055642(A000045(n+3)*A240025(n))`
-/

namespace A394052.P2683563506296148207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A000045 (n + 3) * A240025 n).toNat

end

end A394052.P2683563506296148207

/-! ## A394052.P8633946754452885577

`A249809(n+1)^A249809(A104546(n))`
-/

namespace A394052.P8633946754452885577
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A249809 (n + 1) : ℚ) ^ (A249809 (A104546 n).toNat : ℤ)

end

end A394052.P8633946754452885577

/-! ## A394052.P15700254522860450622

`A249809(n+1)^A249809(A332340(n))`
-/

namespace A394052.P15700254522860450622
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A249809 (n + 1) : ℚ) ^ (A249809 (A332340 n).toNat : ℤ)

end

end A394052.P15700254522860450622

/-! ## A394052.P5175754488188849597

`A043537(gcd(A038760(n), A088163(n+2)))`
-/

namespace A394052.P5175754488188849597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043537 (Int.gcd (A038760 n) (A088163 (n + 2)))

end

end A394052.P5175754488188849597

/-!
# A394054: Irregular triangle read by rows: T(n,k) is the number of positive integers <= n with exactly k 2-dense sublists of divisors.

The programs for A394054, there is no canonical definition to state claims against.
-/

/-! ## A394054.P12123024078133426895

`A325837(A252424(n+2))`
-/

namespace A394054.P12123024078133426895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325837 (A252424 (n + 2)).toNat

end

end A394054.P12123024078133426895

/-! ## A394054.P10757716605498314718

`A044947(A030144(2*n+1)+A000803(n+3))`
-/

namespace A394054.P10757716605498314718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044947 (A030144 (2 * n + 1) + A000803 (n + 3)).toNat

end

end A394054.P10757716605498314718

/-! ## A394054.P10852523839509077431

`A000119(lt[A006556(n+3), A194447(3*(n+1))])`
-/

namespace A394054.P10852523839509077431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006556 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194447 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000119 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A394054.P10852523839509077431

/-!
# A394056: Number of positive integers <= n with 4 divisors.

The programs for A394056, the canonical program `A394056.P9651377908040561774` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A394056 has offset 1).

The definition of A394056 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A394056.P9651377908040561774

`A000720(floor((n+1)^(1/3)))+∑{#}[A000720(floor(sqrt(n+1)))-1, A000720(floor((n+1)/A000040(#+1)))-(#+1)]`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A394056

/-- `A000720(floor((n+1)^(1/3)))+∑{#}[A000720(floor(sqrt(n+1)))-1, A000720(floor((n+1)/A000040(#+1)))-(#+1)]` -/
def P9651377908040561774.Spec : Prop :=
  ∀ n, P9651377908040561774.a n = A394056 (n + 1)

theorem P9651377908040561774.correct : P9651377908040561774.Spec := by
  intro n
  simp only [A394056, Nat.add_sub_cancel]

end A394056

/-! ## A394056.P3416054200138163262

`∑[A354927(n+1)]-1`
-/

namespace A394056.P3416054200138163262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354927 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A394056.P3416054200138163262

namespace A394056

/-- `∑[A354927(n+1)]-1` -/
def P3416054200138163262.Spec : Prop :=
  ∀ n, P3416054200138163262.a n = A394056 (n + 1)

end A394056

/-! ## A394056.P16970781920604635963

`∑[C(4, A000005(n+1))%2]`
-/

namespace A394056.P16970781920604635963
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 4 (A000005 (n + 1)).toNat % 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A394056.P16970781920604635963

namespace A394056

/-- `∑[C(4, A000005(n+1))%2]` -/
def P16970781920604635963.Spec : Prop :=
  ∀ n, (P16970781920604635963.a n : ℤ) = A394056 (n + 1)

end A394056

/-! ## A394056.P5612638347492100917

`∑[A240467(∏{e}[n+1, #+1])]`
-/

namespace A394056.P5612638347492100917
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240467 (∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A394056.P5612638347492100917

namespace A394056

/-- `∑[A240467(∏{e}[n+1, #+1])]` -/
def P5612638347492100917.Spec : Prop :=
  ∀ n, P5612638347492100917.a n = A394056 (n + 1)

end A394056

/-! ## A394056.P4500631119398380850

`∑[A185014(A000005(n+1))]`
-/

namespace A394056.P4500631119398380850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185014 (A000005 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A394056.P4500631119398380850

namespace A394056

/-- `∑[A185014(A000005(n+1))]` -/
def P4500631119398380850.Spec : Prop :=
  ∀ n, P4500631119398380850.a n = A394056 (n + 1)

end A394056

/-! ## A394056.P10996430039034563402

`∑[and(A047789(n), A354927(n+1))]`
-/

namespace A394056.P10996430039034563402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A047789 n) (A354927 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A394056.P10996430039034563402

namespace A394056

/-- `∑[and(A047789(n), A354927(n+1))]` -/
def P10996430039034563402.Spec : Prop :=
  ∀ n, P10996430039034563402.a n = A394056 (n + 1)

end A394056

/-! ## A394056.P12452471509852294130

`∑[and(A000040(n+1), A354927(n+1))]`
-/

namespace A394056.P12452471509852294130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000040 (n + 1)) (A354927 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A394056.P12452471509852294130

namespace A394056

/-- `∑[and(A000040(n+1), A354927(n+1))]` -/
def P12452471509852294130.Spec : Prop :=
  ∀ n, P12452471509852294130.a n = A394056 (n + 1)

end A394056

/-! ## A394056.P2987091308541899038

`∑[char[eq[4, A286605(n+1)]]]`
-/

namespace A394056.P2987091308541899038
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286605 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f3 j : ℤ) = f4 j) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A394056.P2987091308541899038

namespace A394056

/-- `∑[char[eq[4, A286605(n+1)]]]` -/
def P2987091308541899038.Spec : Prop :=
  ∀ n, (P2987091308541899038.a n : ℤ) = A394056 (n + 1)

end A394056

/-! ## A394056.P16892931014876328374

`∑[A051344(A029968(∏{e}[n+1, #+1]))]`
-/

namespace A394056.P16892931014876328374
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051344 (A029968 (∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A394056.P16892931014876328374

namespace A394056

/-- `∑[A051344(A029968(∏{e}[n+1, #+1]))]` -/
def P16892931014876328374.Spec : Prop :=
  ∀ n, P16892931014876328374.a n = A394056 (n + 1)

end A394056

/-! ## A394056.P7843447218547688948

`∑[A333755(A190180(2^∏{e}[n+1, #+1]-1))]`
-/

namespace A394056.P7843447218547688948
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333755 (A190180 (2 ^ (∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1)) - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A394056.P7843447218547688948

namespace A394056

/-- `∑[A333755(A190180(2^∏{e}[n+1, #+1]-1))]` -/
def P7843447218547688948.Spec : Prop :=
  ∀ n, P7843447218547688948.a n = A394056 (n + 1)

end A394056

/-!
# A394060: a(n+1) = a(n) + 2*d(a(n)) if s(a(n)) <= a(n), else 2*a(n) - s(a(n)), with a(1) = 1; d(k) is the number of divisors of k A000005 and s(k) is the aliquot sum of k A001065.

The programs for A394060, there is no canonical definition to state claims against.
-/

/-! ## A394060.P9673523503380000632

`A053438(lt[A065744(n+2), A172293(n)])`
-/

namespace A394060.P9673523503380000632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065744 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172293 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053438 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A394060.P9673523503380000632

/-!
# A394061: Prime number produced by summing the distinct prime factors of the numbers in A393096.

The programs for A394061, there is no canonical definition to state claims against.
-/

/-! ## A394061.P9735354741453901521

`A008472(A393096(n+1))`
-/

namespace A394061.P9735354741453901521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (A393096 (n + 1)).toNat

end

end A394061.P9735354741453901521

/-! ## A394061.P1454036204193694857

`∑{p}[A393096(n+1), #]`
-/

namespace A394061.P1454036204193694857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393096 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A394061.P1454036204193694857

/-! ## A394061.P11508670004367060932

`A393096(n+1)-A394062(n+1)`
-/

namespace A394061.P11508670004367060932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393096 (n + 1) - A394062 (n + 1)

end

end A394061.P11508670004367060932

/-! ## A394061.P1557365696243957889

`A318675(A318675(A393096(n+1))²)`
-/

namespace A394061.P1557365696243957889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318675 (A318675 (A393096 (n + 1)).toNat ^ 2).toNat

end

end A394061.P1557365696243957889

/-!
# A394062: a(n) = A393096(n) - sopf(A393096(n)) where sopf(n) is the sum of distinct primes of n.

The programs for A394062, there is no canonical definition to state claims against.
-/

/-! ## A394062.P6572708915363787056

`A393096(n+1)-A008472(A393096(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A394062.P6572708915363787056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393096 (n + 1) - A008472 (A393096 (n + 1)).toNat

end

end A394062.P6572708915363787056

/-! ## A394062.P3170349094537821522

`A393096(n+1)-A394061(n+1)`
-/

namespace A394062.P3170349094537821522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393096 (n + 1) - A394061 (n + 1)

end

end A394062.P3170349094537821522

/-! ## A394062.P12510463757994255722

`A076694(A393096(n+1))`
-/

namespace A394062.P12510463757994255722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076694 (A393096 (n + 1)).toNat

end

end A394062.P12510463757994255722

/-! ## A394062.P7335594497386580343

`A353832(2^A376759(2*(n+1)))`
-/

namespace A394062.P7335594497386580343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353832 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A376759 (2 * (n + 1)) : ℤ))).toNat

end

end A394062.P7335594497386580343

/-!
# A394063: a(n) = n^n * numerator(hypergeom([1, -n], [], -1/(n + 1))).

The programs for A394063, there is no canonical definition to state claims against.
-/

/-! ## A394063.P828054461714897038

`(A090878(n+1)-A036505(n))*A000312(n)`
-/

namespace A394063.P828054461714897038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A090878 (n + 1) - A036505 n) * A000312 n

end

end A394063.P828054461714897038

/-!
# A394064: a(n) = n^n * denominator(hypergeom([1, -n], [], -1/(n + 1))).

The programs for A394064, there is no canonical definition to state claims against.
-/

/-! ## A394064.P10197311577731249756

`n^n*A036505(n)`
-/

namespace A394064.P10197311577731249756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ n : ℤ) * A036505 n

end

end A394064.P10197311577731249756

/-! ## A394064.P15169029156205134685

`A000312(n+1)/A051696(n+1)*A000312(n)`
-/

namespace A394064.P15169029156205134685
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000312 (n + 1) : ℚ) / (A051696 (n + 1) : ℚ) * (A000312 n : ℚ)

end

end A394064.P15169029156205134685

/-!
# A394069: Number of unsatisfiable 3-SAT formulas with 2 variables and n clauses in the multiset clause model.

The programs for A394069, there is no canonical definition to state claims against.
-/

/-! ## A394069.P13280820540276545723

`A396351(∑[n+1]+2)`
-/

namespace A394069.P13280820540276545723
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396351 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A394069.P13280820540276545723

/-!
# A394078: a(n) = Sum_{k=0..n} (-1)^(k + 1) * k^(n - k) * Gamma(k, -k) / exp(k). Row sums of A393142.

The programs for A394078, there is no canonical definition to state claims against.
-/

/-! ## A394078.P15548558460906792896

`A115384(A136217(∑[n]))`
-/

namespace A394078.P15548558460906792896
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115384 (A136217 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A394078.P15548558460906792896

/-! ## A394078.P9965797224080693952

`A156077(A262430(n)+A090351(n))`
-/

namespace A394078.P9965797224080693952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156077 (A262430 n + A090351 n).toNat

end

end A394078.P9965797224080693952

/-!
# A394079: Row sums of A394080.

The programs for A394079, there is no canonical definition to state claims against.
-/

/-! ## A394079.P10557681185014359007

`A241763(a(n-1)-n)` with `a(0)=1, a(1)=3`
-/

namespace A394079.P10557681185014359007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A241763 (a (n - 1) - (n : ℤ)).toNat

end

end A394079.P10557681185014359007

/-!
# A394080: Triangle read by rows. T(n, k) = T(n, k - 1) + Sum_{j=0..floor((n-1)/2)} T(2 * j, k - 1) * T(n - 1 - 2 * j, k) if n, k > 0, otherwise 1.

The programs for A394080, there is no canonical definition to state claims against.
-/

/-! ## A394080.P16283327272078211849

`A050446(A245300(n))`
-/

namespace A394080.P16283327272078211849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050446 (A245300 n).toNat

end

end A394080.P16283327272078211849

/-!
# A394085: a(n) = sigma(n) - Sum_{p|n, p prime, gcd(p,n/p) = 1} (p-1).

The programs for A394085, the canonical program `A394085.P10152136709517601280` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A394085 has offset 1).

The definition of A394085 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A394085.P10152136709517601280

`A000203(n+1)-A063956(n+1)+A056169(n+1)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A394085

/-- `A000203(n+1)-A063956(n+1)+A056169(n+1)` -/
def P10152136709517601280.Spec : Prop :=
  ∀ n, P10152136709517601280.a n = A394085 (n + 1)

theorem P10152136709517601280.correct : P10152136709517601280.Spec := by
  intro n
  simp only [A394085, Nat.add_sub_cancel]

end A394085

/-! ## A394085.P3768298022751007706

`A345266(n+1)+A023890(n+1)`
-/

namespace A394085.P3768298022751007706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345266 (n + 1) + A023890 (n + 1)

end

end A394085.P3768298022751007706

namespace A394085

/-- `A345266(n+1)+A023890(n+1)` -/
def P3768298022751007706.Spec : Prop :=
  ∀ n, P3768298022751007706.a n = A394085 (n + 1)

theorem P3768298022751007706.correct : P3768298022751007706.Spec := by
  intro n
  simp only [A394085, Nat.add_sub_cancel, A394085.P3768298022751007706.a, A394085.P10152136709517601280.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A023890, A023890.P4514850295399263827.a, A056169, A056169.P17430176249366647977.a, A063956, A063956.P10696679261973728554.a, A345266, A345266.P10002656146987510819.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A008472, A008472.P6567490011312877583.f1, A008472.P6567490011312877583.a, A055231, A055231.P8962300905713718501.a, A063958, A063958.P11394189410281115173.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A071773, A071773.P10551485978970375506.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A394085

/-! ## A394085.P13717228168277772706

`A007503(n+1)-A394651(n+1)`
-/

namespace A394085.P13717228168277772706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007503 (n + 1) - A394651 (n + 1)

end

end A394085.P13717228168277772706

namespace A394085

/-- `A007503(n+1)-A394651(n+1)` -/
def P13717228168277772706.Spec : Prop :=
  ∀ n, P13717228168277772706.a n = A394085 (n + 1)

theorem P13717228168277772706.correct : P13717228168277772706.Spec := by
  intro n
  simp only [A394085, Nat.add_sub_cancel, A394085.P13717228168277772706.a, A394085.P10152136709517601280.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A007503, A007503.P13484425310514315912.a, A056169, A056169.P17430176249366647977.a, A063956, A063956.P10696679261973728554.a, A394651, A394651.P12518876512393771500.a, A000005, A000005.P16091521709108585461.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A008472, A008472.P6567490011312877583.f1, A008472.P6567490011312877583.a, A055231, A055231.P8962300905713718501.a, A063958, A063958.P11394189410281115173.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A071773, A071773.P10551485978970375506.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A394085

/-!
# A394086: Number of partitions of n where the smallest part divides all others, has multiplicity at most 2, and all larger parts are distinct.

The programs for A394086, there is no canonical definition to state claims against.
-/

/-! ## A394086.P15147052437503272740

`∑{d}[n+1, A000009(#-1)]`
-/

namespace A394086.P15147052437503272740
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000009 (d - 1)

end

end A394086.P15147052437503272740

/-!
# A394091: Greatest partial alternating sum of the n-th composition in standard order (row n of A066099). Row-maxima of A391983.

The programs for A394091, there is no canonical definition to state claims against.
-/

/-! ## A394091.P18352804599709937414

`A334029(A033630(n)*A153141(n))`
-/

namespace A394091.P18352804599709937414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334029 (A033630 n * A153141 n).toNat

end

end A394091.P18352804599709937414

/-! ## A394091.P2579278172144439087

`A385213(A163511(n))`
-/

namespace A394091.P2579278172144439087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385213 (A163511 n).toNat

end

end A394091.P2579278172144439087

/-! ## A394091.P9530210124012916404

`A385213(A332817(n))`
-/

namespace A394091.P9530210124012916404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385213 (A332817 n).toNat

end

end A394091.P9530210124012916404

/-! ## A394091.P6371968569253325518

`A051903(A342192(3*n+4))*A065120(n)`
-/

namespace A394091.P6371968569253325518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A342192 (3 * n + 4)).toNat * A065120 n

end

end A394091.P6371968569253325518

/-!
# A394092: Negated least part of the partial alternating sums of the n-th composition in standard order (row n of A391983).

The programs for A394092, there is no canonical definition to state claims against.
-/

/-! ## A394092.P15255069066905447699

`A392705(A151622(2*n)+n)`
-/

namespace A394092.P15255069066905447699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392705 (A151622 (2 * n) + (n : ℤ)).toNat

end

end A394092.P15255069066905447699

/-!
# A394093: Greatest 0-based partial alternating sum of the prime indices of n.

The programs for A394093, there is no canonical definition to state claims against.
-/

/-! ## A394093.P16109944756657463983

`A394091(A333220(n+1))`
-/

namespace A394093.P16109944756657463983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394091 (A333220 (n + 1)).toNat

end

end A394093.P16109944756657463983

/-! ## A394093.P6186010891277434459

`A335446(A003961(n+1))+A286469(n+1)`
-/

namespace A394093.P6186010891277434459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335446 (A003961 (n + 1)).toNat + A286469 (n + 1)

end

end A394093.P6186010891277434459

/-! ## A394093.P18256099062343588753

`A000120(A297172(n+1))%A268252(n+3)`
-/

namespace A394093.P18256099062343588753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000120 (A297172 (n + 1)).toNat) (A268252 (n + 3))

end

end A394093.P18256099062343588753

/-! ## A394093.P10573382771475714510

`A001221(A335049(n+1))`
-/

namespace A394093.P10573382771475714510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A335049 (n + 1)).toNat

end

end A394093.P10573382771475714510

/-! ## A394093.P18154566263395240062

`A124768(A297172(n+1))`
-/

namespace A394093.P18154566263395240062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124768 (A297172 (n + 1)).toNat

end

end A394093.P18154566263395240062

/-!
# A394096: Number of sets S of nonempty ternary words with n total letters such that no words in S share letters.

The programs for A394096, the canonical program `A394096.P14938851520592758722` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A394096 has offset 0).

The definition of A394096 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A394096.P14938851520592758722

`ogf((1-5x+12x^2-18x^3+6x^4+6x^5)/(1-8x+24x^2-34x^3+23x^4-6x^5))`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A394096

/-- `ogf((1-5x+12x^2-18x^3+6x^4+6x^5)/(1-8x+24x^2-34x^3+23x^4-6x^5))` -/
def P14938851520592758722.Spec : Prop :=
  ∀ n, P14938851520592758722.a n = A394096 n

theorem P14938851520592758722.correct : P14938851520592758722.Spec := by
  intro n
  simp only [A394096]

end A394096

/-! ## A394096.P17953761783595877979

`A318759(A326354(n))`
-/

namespace A394096.P17953761783595877979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318759 (A326354 n).toNat

end

end A394096.P17953761783595877979

namespace A394096

/-- `A318759(A326354(n))` -/
def P17953761783595877979.Spec : Prop :=
  ∀ n, P17953761783595877979.a n = A394096 n

end A394096

