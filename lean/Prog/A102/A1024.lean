import SequenceMachineLib
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
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
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
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
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
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B011.C001
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

/-!
# A102400: Triangle, read by rows, where T(n,k) = Sum_{j=0..k} T(n-1,j)*(j+1)*[(k+1)*(k+2)/2 - j*(j+1)/2] for n>k>0, with T(0,0)=1 and T(n,n) = T(n,n-1) for n>0.

The programs for A102400, there is no canonical definition to state claims against.
-/

/-! ## A102400.P5243056356546328214

`A216530(A324088(n+1)+A091187(n+1))`
-/

namespace A102400.P5243056356546328214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216530 (A324088 (n + 1) + A091187 (n + 1)).toNat

end

end A102400.P5243056356546328214

/-!
# A102401: a(n) is the index of the permutation of order n having the least sum of pairwise products as given by A026035.

The programs for A102401, there is no canonical definition to state claims against.
-/

/-! ## A102401.P14701581054232087137

`(3*10^n)%A319425(n)`
-/

namespace A102401.P14701581054232087137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (3 * 10 ^ n : ℤ) (A319425 (n + 12))

end

end A102401.P14701581054232087137

/-!
# A102403: Number of Dyck paths of semilength n having no ascents of length 2.

The programs for A102403, there is no canonical definition to state claims against.
-/

/-! ## A102403.P15119967814815875240

`A102402(∑[∑[n%2]])`
-/

namespace A102403.P15119967814815875240
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102402 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A102403.P15119967814815875240

/-! ## A102403.P12658684723425549178

`A102402(∑[∑[and(1, n)]])`
-/

namespace A102403.P12658684723425549178
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102402 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A102403.P12658684723425549178

/-! ## A102403.P14825881285780010395

`A102402(∑[∑[2-gcd(2, n)]])`
-/

namespace A102403.P14825881285780010395
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (Nat.gcd 2 n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102402 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A102403.P14825881285780010395

/-! ## A102403.P11016153023471951895

`A102402(A002620(n+1))`
-/

namespace A102403.P11016153023471951895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102402 (A002620 (n + 1)).toNat

end

end A102403.P11016153023471951895

/-! ## A102403.P5977137891951279532

`A102402(A076921(n+1))`
-/

namespace A102403.P5977137891951279532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102402 (A076921 (n + 1)).toNat

end

end A102403.P5977137891951279532

/-! ## A102403.P17088508364441586234

`A102402(A182531(n+1))`
-/

namespace A102403.P17088508364441586234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102402 (A182531 (n + 1)).toNat

end

end A102403.P17088508364441586234

/-! ## A102403.P15354436790634845576

`A102402(A000217(n)-A002620(n))`
-/

namespace A102403.P15354436790634845576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102402 (A000217 n - A002620 n).toNat

end

end A102403.P15354436790634845576

/-!
# A102404: Triangle read by rows: T(n,k) is number of Dyck paths of semilength n having k ascents of length 1 starting at an even level.

The programs for A102404, there is no canonical definition to state claims against.
-/

/-! ## A102404.P17411456342281076529

`A089246(n)-A180969(A078164(3*n+4))`
-/

namespace A102404.P17411456342281076529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089246 n - A180969 (A078164 (3 * n + 4)).toNat

end

end A102404.P17411456342281076529

/-! ## A102404.P2037096631613884893

`A089246(n)-A125005(A152798(2*n))`
-/

namespace A102404.P2037096631613884893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089246 n - A125005 (A152798 (2 * n)).toNat

end

end A102404.P2037096631613884893

/-! ## A102404.P12657032661360849987

`A089246(n-A025466(A001629(n)))`
-/

namespace A102404.P12657032661360849987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089246 ((n : ℤ) - A025466 (A001629 n).toNat).toNat

end

end A102404.P12657032661360849987

/-! ## A102404.P6103131994040942119

`A089246(n-A010059(A060455(n)))`
-/

namespace A102404.P6103131994040942119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089246 ((n : ℤ) - A010059 (A060455 n).toNat).toNat

end

end A102404.P6103131994040942119

/-! ## A102404.P4505822405200641361

`A089246(n-A064911(A102400(n)))`
-/

namespace A102404.P4505822405200641361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089246 ((n : ℤ) - A064911 (A102400 n).toNat).toNat

end

end A102404.P4505822405200641361

/-!
# A102406: Number of Dyck paths of semilength n having no ascents of length 1 that start at an even level.

The programs for A102406, there is no canonical definition to state claims against.
-/

/-! ## A102406.P6023124033278191474

`A078481(n)-a(n-1)` with `a(0)=1`
-/

namespace A102406.P6023124033278191474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A078481 n - a (n - 1)

end

end A102406.P6023124033278191474

/-! ## A102406.P10225716579713959370

`A094507(A152947(n+1))-a(n-1)` with `a(0)=1`
-/

namespace A102406.P10225716579713959370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A094507 (A152947 (n + 1)).toNat - a (n - 1)

end

end A102406.P10225716579713959370

/-! ## A102406.P4537368457978577935

`A094507(A000124(n)-n)-a(n-1)` with `a(0)=1`
-/

namespace A102406.P4537368457978577935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A094507 (A000124 n - (n : ℤ)).toNat - a (n - 1)

end

end A102406.P4537368457978577935

/-! ## A102406.P7495202668686480800

`A102404(∑[n])`
-/

namespace A102406.P7495202668686480800
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102404 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A102406.P7495202668686480800

/-! ## A102406.P2359171662641777419

`and(-1, A102404(A000217(n)))`
-/

namespace A102406.P2359171662641777419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A102404 (A000217 n).toNat)

end

end A102406.P2359171662641777419

/-!
# A102407: Number of Dyck paths of semilength n having no ascents of length 1 that start at an odd level.

The programs for A102407, there is no canonical definition to state claims against.
-/

/-! ## A102407.P2167478736739676413

`A078481(abs(1-n))+A078481(n)`
-/

namespace A102407.P2167478736739676413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078481 |1 - (n : ℤ)|.toNat + A078481 n

end

end A102407.P2167478736739676413

/-! ## A102407.P2786181056075964740

`A102405(A022856(n+2))`
-/

namespace A102407.P2786181056075964740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102405 (A022856 (n + 2)).toNat

end

end A102407.P2786181056075964740

/-! ## A102407.P13184432246073825485

`A102405(A016028(n+1)-1)`
-/

namespace A102407.P13184432246073825485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102405 (A016028 (n + 1) - 1).toNat

end

end A102407.P13184432246073825485

/-! ## A102407.P10494337540939305333

`A102405(A000124(n)-A004275(n))`
-/

namespace A102407.P10494337540939305333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102405 (A000124 n - A004275 n).toNat

end

end A102407.P10494337540939305333

/-! ## A102407.P1798958379832863697

`A102405(A133263(n)-A004280(n+1))`
-/

namespace A102407.P1798958379832863697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102405 (A133263 n - A004280 (n + 1)).toNat

end

end A102407.P1798958379832863697

/-!
# A102408: Harmonic means associated with A090945.

The programs for A102408, there is no canonical definition to state claims against.
-/

/-! ## A102408.P11074753217192926592

`A001600(lt[A090651(3*n+2), A064989(2*n+3)])`
-/

namespace A102408.P11074753217192926592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090651 (3 * n + 2 + 1901)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001600 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A102408.P11074753217192926592

/-! ## A102408.P12882854558619805472

`A157850(n+2)-A010054(A001752(n))`
-/

namespace A102408.P12882854558619805472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157850 (n + 2) - A010054 (A001752 n).toNat

end

end A102408.P12882854558619805472

/-! ## A102408.P16172533413105356032

`A157850(n+2)-A353471(A087004(n+1))`
-/

namespace A102408.P16172533413105356032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157850 (n + 2) - A353471 (A087004 (n + 1)).toNat

end

end A102408.P16172533413105356032

/-! ## A102408.P1079479547889583114

`A157850(n+2)-A000045(A151620(n))`
-/

namespace A102408.P1079479547889583114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157850 (n + 2) - A000045 (A151620 n).toNat

end

end A102408.P1079479547889583114

/-! ## A102408.P13708911519137928274

`A157850(n+2)-A010057(A144115(n+1))`
-/

namespace A102408.P13708911519137928274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157850 (n + 2) - A010057 (A144115 (n + 1)).toNat

end

end A102408.P13708911519137928274

/-!
# A102413: Triangle read by rows: T(n,k) is the number of k-matchings in the n-sunlet graph (0 <= k <= n).

The programs for A102413, there is no canonical definition to state claims against.
-/

/-! ## A102413.P1858303622641708755

`A122542(A038722(n+2))+A122542(n)`
-/

namespace A102413.P1858303622641708755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122542 (A038722 (n + 2)).toNat + A122542 n

end

end A102413.P1858303622641708755

/-! ## A102413.P6452732175580515749

`A122542(n)+A266213(n)%A113413(n)`
-/

namespace A102413.P6452732175580515749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122542 n + Int.tmod (A266213 n) (A113413 n)

end

end A102413.P6452732175580515749

/-! ## A102413.P4709754822450156158

`A266213(n)+A122542(A065033(2*n))`
-/

namespace A102413.P4709754822450156158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266213 n + A122542 (A065033 (2 * n)).toNat

end

end A102413.P4709754822450156158

/-! ## A102413.P3956638703274737782

`A266213(n)+A122542(n)%A336575(n)`
-/

namespace A102413.P3956638703274737782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266213 n + Int.tmod (A122542 n) (A336575 n)

end

end A102413.P3956638703274737782

/-! ## A102413.P8099049224360684134

`A122542(n)+and(A000225(n), A266213(n))`
-/

namespace A102413.P8099049224360684134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122542 n + Int.land (A000225 n) (A266213 n)

end

end A102413.P8099049224360684134

/-! ## A102413.P8110545042957340037

`A008288(n)+A382444(n)-A382448(n)`
-/

namespace A102413.P8110545042957340037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008288 n + (A382444 n - A382448 n)

end

end A102413.P8110545042957340037

/-!
# A102414: Smallest semiprime greater than n-th prime.

The programs for A102414, the canonical program `A102414.P12501286491310177923` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A102414 has offset 1).

The definition of A102414 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A102414.P13317041814738764138

`A071192(A000040(n+1))`
-/

namespace A102414.P13317041814738764138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071192 (A000040 (n + 1)).toNat

end

end A102414.P13317041814738764138

namespace A102414

/-- `A071192(A000040(n+1))` -/
def P13317041814738764138.Spec : Prop :=
  ∀ n, P13317041814738764138.a n = A102414 (n + 1)

end A102414

/-! ## A102414.P11093025664172690294

`A071192(A008578(n+2))`
-/

namespace A102414.P11093025664172690294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071192 (A008578 (n + 2)).toNat

end

end A102414.P11093025664172690294

namespace A102414

/-- `A071192(A008578(n+2))` -/
def P11093025664172690294.Spec : Prop :=
  ∀ n, P11093025664172690294.a n = A102414 (n + 1)

end A102414

/-! ## A102414.P11680414395989168434

`A071192(A182986(n+2))`
-/

namespace A102414.P11680414395989168434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071192 (A182986 (n + 2)).toNat

end

end A102414.P11680414395989168434

namespace A102414

/-- `A071192(A182986(n+2))` -/
def P11680414395989168434.Spec : Prop :=
  ∀ n, P11680414395989168434.a n = A102414 (n + 1)

end A102414

/-! ## A102414.P834695789510304786

`A079890(eq[1, A032741(n)])`
-/

namespace A102414.P834695789510304786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079890 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A102414.P834695789510304786

namespace A102414

/-- `A079890(eq[1, A032741(n)])` -/
def P834695789510304786.Spec : Prop :=
  ∀ n, P834695789510304786.a n = A102414 (n + 1)

end A102414

/-! ## A102414.P15821229104417380178

`A079890(record[A006530(n+2)])`
-/

namespace A102414.P15821229104417380178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079890 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A102414.P15821229104417380178

namespace A102414

/-- `A079890(record[A006530(n+2)])` -/
def P15821229104417380178.Spec : Prop :=
  ∀ n, P15821229104417380178.a n = A102414 (n + 1)

end A102414

/-! ## A102414.P12764239040929858866

`A079890(record[A014963(n+2)])`
-/

namespace A102414.P12764239040929858866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079890 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A102414.P12764239040929858866

namespace A102414

/-- `A079890(record[A014963(n+2)])` -/
def P12764239040929858866.Spec : Prop :=
  ∀ n, P12764239040929858866.a n = A102414 (n + 1)

end A102414

/-! ## A102414.P6575104534184780515

`A079890(record[A020639(n+2)])`
-/

namespace A102414.P6575104534184780515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079890 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A102414.P6575104534184780515

namespace A102414

/-- `A079890(record[A020639(n+2)])` -/
def P6575104534184780515.Spec : Prop :=
  ∀ n, P6575104534184780515.a n = A102414 (n + 1)

end A102414

/-! ## A102414.P12501286491310177923

`A001358(A111457(n+1)+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A102414

/-- `A001358(A111457(n+1)+1)` -/
def P12501286491310177923.Spec : Prop :=
  ∀ n, P12501286491310177923.a n = A102414 (n + 1)

theorem P12501286491310177923.correct : P12501286491310177923.Spec := by
  intro n
  simp only [A102414, Nat.add_sub_cancel]

end A102414

/-! ## A102414.P7078000837539567983

`filter[A079890(n+1), A064911(#)]`
-/

namespace A102414.P7078000837539567983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079890 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A102414.P7078000837539567983

namespace A102414

/-- `filter[A079890(n+1), A064911(#)]` -/
def P7078000837539567983.Spec : Prop :=
  ∀ n, P7078000837539567983.a n = A102414 (n + 1)

end A102414

/-! ## A102414.P36352094917029664

`filter[A079890(n+2), A101040(#)]`
-/

namespace A102414.P36352094917029664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079890 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101040 (f1 j).toNat = 1) n)

end

end A102414.P36352094917029664

namespace A102414

/-- `filter[A079890(n+2), A101040(#)]` -/
def P36352094917029664.Spec : Prop :=
  ∀ n, P36352094917029664.a n = A102414 (n + 1)

end A102414

/-! ## A102414.P6508238004752581588

`A217612(n+1)+A000040(n+1)`
-/

namespace A102414.P6508238004752581588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217612 (n + 1) + A000040 (n + 1)

end

end A102414.P6508238004752581588

namespace A102414

/-- `A217612(n+1)+A000040(n+1)` -/
def P6508238004752581588.Spec : Prop :=
  ∀ n, P6508238004752581588.a n = A102414 (n + 1)

end A102414

/-! ## A102414.P17740417889122911131

`A217612(n+1)+record[A006530(n+2)]`
-/

namespace A102414.P17740417889122911131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217612 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A102414.P17740417889122911131

namespace A102414

/-- `A217612(n+1)+record[A006530(n+2)]` -/
def P17740417889122911131.Spec : Prop :=
  ∀ n, P17740417889122911131.a n = A102414 (n + 1)

end A102414

/-! ## A102414.P14565871606042451525

`A217612(n+1)+record[A014963(n+2)]`
-/

namespace A102414.P14565871606042451525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217612 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A102414.P14565871606042451525

namespace A102414

/-- `A217612(n+1)+record[A014963(n+2)]` -/
def P14565871606042451525.Spec : Prop :=
  ∀ n, P14565871606042451525.a n = A102414 (n + 1)

end A102414

/-! ## A102414.P16413191123364205042

`A217612(n+1)+record[A020639(n+2)]`
-/

namespace A102414.P16413191123364205042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217612 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A102414.P16413191123364205042

namespace A102414

/-- `A217612(n+1)+record[A020639(n+2)]` -/
def P16413191123364205042.Spec : Prop :=
  ∀ n, P16413191123364205042.a n = A102414 (n + 1)

end A102414

/-! ## A102414.P4420083012267924274

`record[A000010(n+1)]+A217612(n+1)+1`
-/

namespace A102414.P4420083012267924274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (A217612 (n + 1) + 1)

end

end A102414.P4420083012267924274

namespace A102414

/-- `record[A000010(n+1)]+A217612(n+1)+1` -/
def P4420083012267924274.Spec : Prop :=
  ∀ n, P4420083012267924274.a n = A102414 (n + 1)

end A102414

/-! ## A102414.P9258801417627232204

`A217612(n+1)+eq[1, A001222(n+1)]+1`
-/

namespace A102414.P9258801417627232204
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217612 (n + 1) + (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1 : ℤ)

end

end A102414.P9258801417627232204

namespace A102414

/-- `A217612(n+1)+eq[1, A001222(n+1)]+1` -/
def P9258801417627232204.Spec : Prop :=
  ∀ n, P9258801417627232204.a n = A102414 (n + 1)

end A102414

/-! ## A102414.P10045493179906987302

`A217612(n+1)+eq[2, A000005(n+1)]+1`
-/

namespace A102414.P10045493179906987302
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217612 (n + 1) + (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1 : ℤ)

end

end A102414.P10045493179906987302

namespace A102414

/-- `A217612(n+1)+eq[2, A000005(n+1)]+1` -/
def P10045493179906987302.Spec : Prop :=
  ∀ n, P10045493179906987302.a n = A102414 (n + 1)

end A102414

/-! ## A102414.P1779258934625754229

`A217612(n+1)+lt[A001222(n+2), 2]+2`
-/

namespace A102414.P1779258934625754229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217612 (n + 1) + (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2 : ℤ)

end

end A102414.P1779258934625754229

namespace A102414

/-- `A217612(n+1)+lt[A001222(n+2), 2]+2` -/
def P1779258934625754229.Spec : Prop :=
  ∀ n, P1779258934625754229.a n = A102414 (n + 1)

end A102414

/-! ## A102414.P10948782935514245847

`A217612(n+1)+comp[A018252(n+1)-1]+1`
-/

namespace A102414.P10948782935514245847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217612 (n + 1) + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1 : ℤ)

end

end A102414.P10948782935514245847

namespace A102414

/-- `A217612(n+1)+comp[A018252(n+1)-1]+1` -/
def P10948782935514245847.Spec : Prop :=
  ∀ n, P10948782935514245847.a n = A102414 (n + 1)

end A102414

/-! ## A102414.P14725163959343852008

`A001358(A072000(A373630(n+1))-n)`
-/

namespace A102414.P14725163959343852008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (A072000 (A373630 (n + 1)).toNat - (n : ℤ)).toNat

end

end A102414.P14725163959343852008

namespace A102414

/-- `A001358(A072000(A373630(n+1))-n)` -/
def P14725163959343852008.Spec : Prop :=
  ∀ n, P14725163959343852008.a n = A102414 (n + 1)

end A102414

/-!
# A102415: Greatest semiprime less than n-th prime.

The programs for A102415, the canonical program `A102415.P2630728663582649578` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A102415 has offset 3).

The definition of A102415 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8263 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A102415.P11183504472684702589

`A215848(n+1)-A121885(n+3)`
-/

namespace A102415.P11183504472684702589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215848 (n + 1) - A121885 (n + 3)

end

end A102415.P11183504472684702589

namespace A102415

/-- `A215848(n+1)-A121885(n+3)` -/
def P11183504472684702589.Spec : Prop :=
  ∀ n, P11183504472684702589.a n = A102415 (n + 3)

end A102415

/-! ## A102415.P14039681688234770495

`A045344(n+2)-A121885(n+3)`
-/

namespace A102415.P14039681688234770495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 2) - A121885 (n + 3)

end

end A102415.P14039681688234770495

namespace A102415

/-- `A045344(n+2)-A121885(n+3)` -/
def P14039681688234770495.Spec : Prop :=
  ∀ n, P14039681688234770495.a n = A102415 (n + 3)

end A102415

/-! ## A102415.P2459436634643642350

`A065091(n+2)-A121885(n+3)`
-/

namespace A102415.P2459436634643642350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 2) - A121885 (n + 3)

end

end A102415.P2459436634643642350

namespace A102415

/-- `A065091(n+2)-A121885(n+3)` -/
def P2459436634643642350.Spec : Prop :=
  ∀ n, P2459436634643642350.a n = A102415 (n + 3)

end A102415

/-! ## A102415.P15439261360121688903

`A000040(n+3)-A121885(n+3)`
-/

namespace A102415.P15439261360121688903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 3) - A121885 (n + 3)

end

end A102415.P15439261360121688903

namespace A102415

/-- `A000040(n+3)-A121885(n+3)` -/
def P15439261360121688903.Spec : Prop :=
  ∀ n, P15439261360121688903.a n = A102415 (n + 3)

end A102415

/-! ## A102415.P11234314179906377411

`A292926(n+1)-(A121885(n+3)+A006094(n+1))`
-/

namespace A102415.P11234314179906377411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292926 (n + 1) - (A121885 (n + 3) + A006094 (n + 1))

end

end A102415.P11234314179906377411

namespace A102415

/-- `A292926(n+1)-(A121885(n+3)+A006094(n+1))` -/
def P11234314179906377411.Spec : Prop :=
  ∀ n, P11234314179906377411.a n = A102415 (n + 3)

end A102415

/-! ## A102415.P12135211815146477098

`A005097(n+2)+A006254(n+2)-A121885(n+3)`
-/

namespace A102415.P12135211815146477098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (n + 2) + (A006254 (n + 2) - A121885 (n + 3))

end

end A102415.P12135211815146477098

namespace A102415

/-- `A005097(n+2)+A006254(n+2)-A121885(n+3)` -/
def P12135211815146477098.Spec : Prop :=
  ∀ n, P12135211815146477098.a n = A102415 (n + 3)

end A102415

/-! ## A102415.P5082800038745584096

`A087461(n+3)-(A258934(n+3)+A121885(n+3))`
-/

namespace A102415.P5082800038745584096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087461 (n + 3) - (A258934 (n + 3) + A121885 (n + 3))

end

end A102415.P5082800038745584096

namespace A102415

/-- `A087461(n+3)-(A258934(n+3)+A121885(n+3))` -/
def P5082800038745584096.Spec : Prop :=
  ∀ n, P5082800038745584096.a n = A102415 (n + 3)

end A102415

/-! ## A102415.P2630728663582649578

`A001358(A111457(n+3))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A102415

/-- `A001358(A111457(n+3))` -/
def P2630728663582649578.Spec : Prop :=
  ∀ n, P2630728663582649578.a n = A102415 (n + 3)

theorem P2630728663582649578.correct : P2630728663582649578.Spec := by
  intro n
  simp only [A102415, Nat.add_sub_cancel]

end A102415

/-! ## A102415.P10939246362389578336

`A102440(p?[2*n+5])`
-/

namespace A102415.P10939246362389578336
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102440 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A102415.P10939246362389578336

namespace A102415

/-- `A102440(p?[2*n+5])` -/
def P10939246362389578336.Spec : Prop :=
  ∀ n, P10939246362389578336.a n = A102415 (n + 3)

end A102415

/-! ## A102415.P8069635381842038051

`A102440(A215848(n+1))`
-/

namespace A102415.P8069635381842038051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102440 (A215848 (n + 1)).toNat

end

end A102415.P8069635381842038051

namespace A102415

/-- `A102440(A215848(n+1))` -/
def P8069635381842038051.Spec : Prop :=
  ∀ n, P8069635381842038051.a n = A102415 (n + 3)

end A102415

/-! ## A102415.P10424772621612847610

`A102440(A045344(n+2))`
-/

namespace A102415.P10424772621612847610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102440 (A045344 (n + 2)).toNat

end

end A102415.P10424772621612847610

namespace A102415

/-- `A102440(A045344(n+2))` -/
def P10424772621612847610.Spec : Prop :=
  ∀ n, P10424772621612847610.a n = A102415 (n + 3)

end A102415

/-! ## A102415.P13940549395951930731

`A102440(A065091(n+2))`
-/

namespace A102415.P13940549395951930731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102440 (A065091 (n + 2)).toNat

end

end A102415.P13940549395951930731

namespace A102415

/-- `A102440(A065091(n+2))` -/
def P13940549395951930731.Spec : Prop :=
  ∀ n, P13940549395951930731.a n = A102415 (n + 3)

end A102415

/-! ## A102415.P11184714280935253364

`A102440(A140475(n+2))`
-/

namespace A102415.P11184714280935253364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102440 (A140475 (n + 2)).toNat

end

end A102415.P11184714280935253364

namespace A102415

/-- `A102440(A140475(n+2))` -/
def P11184714280935253364.Spec : Prop :=
  ∀ n, P11184714280935253364.a n = A102415 (n + 3)

end A102415

/-! ## A102415.P699621549863422906

`A102440(A000040(n+3))`
-/

namespace A102415.P699621549863422906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102440 (A000040 (n + 3)).toNat

end

end A102415.P699621549863422906

namespace A102415

/-- `A102440(A000040(n+3))` -/
def P699621549863422906.Spec : Prop :=
  ∀ n, P699621549863422906.a n = A102415 (n + 3)

end A102415

/-! ## A102415.P2134995119784297911

`A001358(∑[A103668(n+2)])`
-/

namespace A102415.P2134995119784297911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103668 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A102415.P2134995119784297911

namespace A102415

/-- `A001358(∑[A103668(n+2)])` -/
def P2134995119784297911.Spec : Prop :=
  ∀ n, P2134995119784297911.a n = A102415 (n + 3)

end A102415

/-! ## A102415.P1828384123392756894

`A102414(n+3)-A283267(n+3)`
-/

namespace A102415.P1828384123392756894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102414 (n + 3) - A283267 (n + 3)

end

end A102415.P1828384123392756894

namespace A102415

/-- `A102414(n+3)-A283267(n+3)` -/
def P1828384123392756894.Spec : Prop :=
  ∀ n, P1828384123392756894.a n = A102415 (n + 3)

end A102415

/-! ## A102415.P1260529054447367176

`A102440(A102414(n+3)-A217612(n+3))`
-/

namespace A102415.P1260529054447367176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102440 (A102414 (n + 3) - A217612 (n + 3)).toNat

end

end A102415.P1260529054447367176

namespace A102415

/-- `A102440(A102414(n+3)-A217612(n+3))` -/
def P1260529054447367176.Spec : Prop :=
  ∀ n, P1260529054447367176.a n = A102415 (n + 3)

end A102415

/-! ## A102415.P1621889290066537848

`A072472(n+2)/A061214(n+2)-A121885(n+3)`
-/

namespace A102415.P1621889290066537848
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A072472 (n + 2) : ℚ) / (A061214 (n + 2) : ℚ) - (A121885 (n + 3) : ℚ)

end

end A102415.P1621889290066537848

namespace A102415

/-- `A072472(n+2)/A061214(n+2)-A121885(n+3)` -/
def P1621889290066537848.Spec : Prop :=
  ∀ n, P1621889290066537848.a n = (A102415 (n + 3) : ℚ)

end A102415

/-!
# A102417: In the lexicographically ordered table of permutations of [n], there are two entries that give the greatest sum of pairwise products and they are reversals of each other. The items in this sequence are the indices of the earlier of the two.

The programs for A102417, there is no canonical definition to state claims against.
-/

/-! ## A102417.P8143507552078515252

`∑[A059590(∑[A007179(n)])]`
-/

namespace A102417.P8143507552078515252
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007179 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059590 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102417.P8143507552078515252

/-! ## A102417.P12529310463542608992

`∑[A276081(∑[A007179(n)])]`
-/

namespace A102417.P12529310463542608992
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007179 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276081 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102417.P12529310463542608992

/-! ## A102417.P10677708038359314593

`∑[A059590(Δ[A274230(n)])]`
-/

namespace A102417.P10677708038359314593
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274230 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059590 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102417.P10677708038359314593

/-!
# A102418: Table of coefficients of Product_{k=1..n} (1+x^A000120(k)).

The programs for A102418, there is no canonical definition to state claims against.
-/

/-! ## A102418.P13014170213805658157

`A001399(A336498(n+1)%A275323(n+1))`
-/

namespace A102418.P13014170213805658157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001399 (Int.tmod (A336498 (n + 1)) (A275323 (n + 1))).toNat

end

end A102418.P13014170213805658157

/-! ## A102418.P8861481515542482030

`A353833(A336498(n+1))%A001213(n+1)`
-/

namespace A102418.P8861481515542482030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A353833 (A336498 (n + 1)).toNat) (A001213 (n + 1))

end

end A102418.P8861481515542482030

/-! ## A102418.P17609619605677188859

`A333764(A336498(n+1))%A378055(n+1)`
-/

namespace A102418.P17609619605677188859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A333764 (A336498 (n + 1)).toNat) (A378055 (n + 1))

end

end A102418.P17609619605677188859

/-! ## A102418.P15144998766298546794

`A130091(A336498(n+1))%A180323(n+1)`
-/

namespace A102418.P15144998766298546794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A130091 (A336498 (n + 1)).toNat) (A180323 (n + 1))

end

end A102418.P15144998766298546794

/-! ## A102418.P11359998020237404838

`A180348(A336498(n+1))%A180323(n+2)`
-/

namespace A102418.P11359998020237404838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A180348 (A336498 (n + 1)).toNat) (A180323 (n + 2))

end

end A102418.P11359998020237404838

/-!
# A102419: "Dropping time" in 3x+1 problem starting at n (number of steps to reach a lower number than starting value); a(1) = 0 by convention. Also called glide(n).

The programs for A102419, there is no canonical definition to state claims against.
-/

/-! ## A102419.P3696788819511759260

`A074473(n+1)-1`
-/

namespace A102419.P3696788819511759260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074473 (n + 1) - 1

end

end A102419.P3696788819511759260

/-! ## A102419.P2454772219553171261

`A023443(A074473(n+1))`
-/

namespace A102419.P2454772219553171261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A074473 (n + 1)).toNat

end

end A102419.P2454772219553171261

/-! ## A102419.P8973958537021078773

`A003056(C(A074473(n+1), 2))`
-/

namespace A102419.P8973958537021078773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (Nat.choose (A074473 (n + 1)).toNat 2)

end

end A102419.P8973958537021078773

/-! ## A102419.P2691914318920022727

`A189407(A126241(n+1)+1)-1`
-/

namespace A102419.P2691914318920022727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189407 (A126241 (n + 1) + 1).toNat - 1

end

end A102419.P2691914318920022727

/-! ## A102419.P8441158958489142641

`A082551(A000040(n+1))+A074473(n+1)`
-/

namespace A102419.P8441158958489142641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082551 (A000040 (n + 1)).toNat + A074473 (n + 1)

end

end A102419.P8441158958489142641

/-! ## A102419.P8233262627765391565

`A121868(A074473(2*(n+1)))+A074473(n+1)`
-/

namespace A102419.P8233262627765391565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121868 (A074473 (2 * (n + 1))).toNat + A074473 (n + 1)

end

end A102419.P8233262627765391565

/-! ## A102419.P13504419051161835407

`A175722(A088705(2*n+3))+A074473(n+1)`
-/

namespace A102419.P13504419051161835407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175722 (A088705 (2 * n + 3)).toNat + A074473 (n + 1)

end

end A102419.P13504419051161835407

/-! ## A102419.P8574796116836212791

`A060445(A006370(n))+A033999(n)-1`
-/

namespace A102419.P8574796116836212791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060445 (A006370 n).toNat + (A033999 n - 1)

end

end A102419.P8574796116836212791

/-! ## A102419.P10394604752597064447

`A060445(A006370(n))%A074473(n+1)`
-/

namespace A102419.P10394604752597064447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A060445 (A006370 n).toNat) (A074473 (n + 1))

end

end A102419.P10394604752597064447

/-!
# A102420: Number of partitions of n into exactly k = 5 parts with each part p <= 5.

The programs for A102420, there is no canonical definition to state claims against.
-/

/-! ## A102420.P16862078998636203800

`A170972(4*(n+2))-A056511(A259899(n+1))`
-/

namespace A102420.P16862078998636203800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170972 (4 * (n + 2)) - A056511 (A259899 (n + 1)).toNat

end

end A102420.P16862078998636203800

/-!
# A102421: To get a(n), start with 2n+1, multiply by 3 and add 1 and divide out any power of 2; then multiply by 3 and subtract 1 and divide out any power of 2.

The programs for A102421, the canonical program `A102421.P2977344612338206016` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A102421 has offset 0).

The definition of A102421 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A337349, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A102421.P2977344612338206016

`A337349(2*n+1)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A102421

/-- `A337349(2*n+1)` -/
def P2977344612338206016.Spec : Prop :=
  ∀ n, P2977344612338206016.a n = A102421 n

theorem P2977344612338206016.correct : P2977344612338206016.Spec := by
  intro n
  simp only [A102421]

end A102421

/-! ## A102421.P7454625252139714296

`A067745(A173732(n)+1)`
-/

namespace A102421.P7454625252139714296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067745 (A173732 n + 1).toNat

end

end A102421.P7454625252139714296

namespace A102421

/-- `A067745(A173732(n)+1)` -/
def P7454625252139714296.Spec : Prop :=
  ∀ n, P7454625252139714296.a n = A102421 n

end A102421

/-! ## A102421.P6218775856542348271

`A067745(A246425(n)+1+n)`
-/

namespace A102421.P6218775856542348271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067745 (A246425 n + 1 + (n : ℤ)).toNat

end

end A102421.P6218775856542348271

namespace A102421

/-- `A067745(A246425(n)+1+n)` -/
def P6218775856542348271.Spec : Prop :=
  ∀ n, P6218775856542348271.a n = A102421 n

end A102421

/-! ## A102421.P7874913406509689264

`A067745((A075677(n+1)+1)/2)`
-/

namespace A102421.P7874913406509689264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067745 (SequenceMachineLib.roundAway ((A075677 (n + 1) + 1 : ℚ) / 2)).toNat

end

end A102421.P7874913406509689264

namespace A102421

/-- `A067745((A075677(n+1)+1)/2)` -/
def P7874913406509689264.Spec : Prop :=
  ∀ n, P7874913406509689264.a n = A102421 n

end A102421

/-! ## A102421.P9637198515513407500

`A000265(A337349(n+1+n))`
-/

namespace A102421.P9637198515513407500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A337349 (n + 1 + n)).toNat

end

end A102421.P9637198515513407500

namespace A102421

/-- `A000265(A337349(n+1+n))` -/
def P9637198515513407500.Spec : Prop :=
  ∀ n, P9637198515513407500.a n = A102421 n

end A102421

/-! ## A102421.P13955137223929367206

`A075677(A075677(n+1))`
-/

namespace A102421.P13955137223929367206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075677 (A075677 (n + 1)).toNat

end

end A102421.P13955137223929367206

namespace A102421

/-- `A075677(A075677(n+1))` -/
def P13955137223929367206.Spec : Prop :=
  ∀ n, P13955137223929367206.a n = A102421 n

end A102421

/-! ## A102421.P13129593550456307244

`A000265(A166466(3*n+2)-1)`
-/

namespace A102421.P13129593550456307244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A166466 (3 * n + 2) - 1).toNat

end

end A102421.P13129593550456307244

namespace A102421

/-- `A000265(A166466(3*n+2)-1)` -/
def P13129593550456307244.Spec : Prop :=
  ∀ n, P13129593550456307244.a n = A102421 n

end A102421

/-! ## A102421.P6834110661298494918

`A000265(xor(1, A166466(3*n+2)))`
-/

namespace A102421.P6834110661298494918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (Int.xor 1 (A166466 (3 * n + 2))).toNat

end

end A102421.P6834110661298494918

namespace A102421

/-- `A000265(xor(1, A166466(3*n+2)))` -/
def P6834110661298494918.Spec : Prop :=
  ∀ n, P6834110661298494918.a n = A102421 n

end A102421

/-! ## A102421.P5357433098609623023

`A067745(A003602(2*n+n+2))`
-/

namespace A102421.P5357433098609623023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067745 (A003602 (2 * n + (n + 2))).toNat

end

end A102421.P5357433098609623023

namespace A102421

/-- `A067745(A003602(2*n+n+2))` -/
def P5357433098609623023.Spec : Prop :=
  ∀ n, P5357433098609623023.a n = A102421 n

end A102421

/-! ## A102421.P17232468190846892289

`A075677(A000265(A016789(n)))`
-/

namespace A102421.P17232468190846892289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075677 (A000265 (A016789 n).toNat).toNat

end

end A102421.P17232468190846892289

namespace A102421

/-- `A075677(A000265(A016789(n)))` -/
def P17232468190846892289.Spec : Prop :=
  ∀ n, P17232468190846892289.a n = A102421 n

end A102421

/-! ## A102421.P15220566391721806373

`A075677(A067745(A016789(n)-n))`
-/

namespace A102421.P15220566391721806373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075677 (A067745 (A016789 n - (n : ℤ)).toNat).toNat

end

end A102421.P15220566391721806373

namespace A102421

/-- `A075677(A067745(A016789(n)-n))` -/
def P15220566391721806373.Spec : Prop :=
  ∀ n, P15220566391721806373.a n = A102421 n

end A102421

/-! ## A102421.P14511096606925691304

`A000265(A168233(A000265(3*n+2)))`
-/

namespace A102421.P14511096606925691304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A168233 (A000265 (3 * n + 2)).toNat).toNat

end

end A102421.P14511096606925691304

namespace A102421

/-- `A000265(A168233(A000265(3*n+2)))` -/
def P14511096606925691304.Spec : Prop :=
  ∀ n, P14511096606925691304.a n = A102421 n

end A102421

/-! ## A102421.P6971833586637488951

`A000265(A001651(A000265(2*n+n+2)))`
-/

namespace A102421.P6971833586637488951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A001651 (A000265 (2 * n + (n + 2))).toNat).toNat

end

end A102421.P6971833586637488951

namespace A102421

/-- `A000265(A001651(A000265(2*n+n+2)))` -/
def P6971833586637488951.Spec : Prop :=
  ∀ n, P6971833586637488951.a n = A102421 n

end A102421

/-! ## A102421.P9715806934307543160

`A075677(A139391(A000265(A016825(n))))`
-/

namespace A102421.P9715806934307543160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075677 (A139391 (A000265 (A016825 n).toNat).toNat).toNat

end

end A102421.P9715806934307543160

namespace A102421

/-- `A075677(A139391(A000265(A016825(n))))` -/
def P9715806934307543160.Spec : Prop :=
  ∀ n, P9715806934307543160.a n = A102421 n

end A102421

/-! ## A102421.P11304394870348736097

`A000265(A123684(A000265(A006370(2*n+1))))`
-/

namespace A102421.P11304394870348736097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A123684 (A000265 (A006370 (2 * n + 1)).toNat).toNat).toNat

end

end A102421.P11304394870348736097

namespace A102421

/-- `A000265(A123684(A000265(A006370(2*n+1))))` -/
def P11304394870348736097.Spec : Prop :=
  ∀ n, P11304394870348736097.a n = A102421 n

end A102421

/-! ## A102421.P4313995236952021836

`A000265(A123684(A000265(A016777(2*n+1))))`
-/

namespace A102421.P4313995236952021836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A123684 (A000265 (A016777 (2 * n + 1)).toNat).toNat).toNat

end

end A102421.P4313995236952021836

namespace A102421

/-- `A000265(A123684(A000265(A016777(2*n+1))))` -/
def P4313995236952021836.Spec : Prop :=
  ∀ n, P4313995236952021836.a n = A102421 n

end A102421

/-! ## A102421.P10561807637967723023

`A000265(A123684(A000265(A306546(2*n+1))))`
-/

namespace A102421.P10561807637967723023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A123684 (A000265 (A306546 (2 * n + 1)).toNat).toNat).toNat

end

end A102421.P10561807637967723023

namespace A102421

/-- `A000265(A123684(A000265(A306546(2*n+1))))` -/
def P10561807637967723023.Spec : Prop :=
  ∀ n, P10561807637967723023.a n = A102421 n

end A102421

/-! ## A102421.P508923327822780500

`A139391(A347840(A139391(2*n+1)))`
-/

namespace A102421.P508923327822780500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139391 (A347840 (A139391 (2 * n + 1)).toNat).toNat

end

end A102421.P508923327822780500

namespace A102421

/-- `A139391(A347840(A139391(2*n+1)))` -/
def P508923327822780500.Spec : Prop :=
  ∀ n, P508923327822780500.a n = A102421 n

end A102421

/-! ## A102421.P10807236353656973173

`A139391(A347840(A065883(A139391(A347840(n+1)))))`
-/

namespace A102421.P10807236353656973173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139391 (A347840 (A065883 (A139391 (A347840 (n + 1)).toNat).toNat).toNat).toNat

end

end A102421.P10807236353656973173

namespace A102421

/-- `A139391(A347840(A065883(A139391(A347840(n+1)))))` -/
def P10807236353656973173.Spec : Prop :=
  ∀ n, P10807236353656973173.a n = A102421 n

end A102421

/-! ## A102421.P15856116133605211876

`A067745(2*A067745(2*(n+1)))`
-/

namespace A102421.P15856116133605211876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067745 (2 * A067745 (2 * (n + 1))).toNat

end

end A102421.P15856116133605211876

namespace A102421

/-- `A067745(2*A067745(2*(n+1)))` -/
def P15856116133605211876.Spec : Prop :=
  ∀ n, P15856116133605211876.a n = A102421 n

end A102421

/-!
# A102422: Number of partitions of n with k <= 5 parts and each part p <= 5.

The programs for A102422, there is no canonical definition to state claims against.
-/

/-! ## A102422.P8424659352051727973

`A102420(n+5)+A102420(n)`
-/

namespace A102422.P8424659352051727973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102420 (n + 5) + A102420 n

end

end A102422.P8424659352051727973

/-!
# A102424: Number of partitions of n with each part p <= 5 and each part's multiplicity m <= 5.

The programs for A102424, there is no canonical definition to state claims against.
-/

/-! ## A102424.P6131513128908623420

`A000196(A034827(n)+A015631(n+1))`
-/

namespace A102424.P6131513128908623420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A034827 n + A015631 (n + 1)).toNat

end

end A102424.P6131513128908623420

/-!
# A102425: Let pi be an unrestricted partition of n with the summands written as binary numbers; a(n) is the number of such partitions with an even number of binary ones.

The programs for A102425, there is no canonical definition to state claims against.
-/

/-! ## A102425.P6146915680026626840

`A000041(n)-A102437(n)`
-/

namespace A102425.P6146915680026626840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A102437 n

end

end A102425.P6146915680026626840

/-! ## A102425.P15884616394063426059

`∑[A002865(n)]-A102437(n)`
-/

namespace A102425.P15884616394063426059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A102437 n

end

end A102425.P15884616394063426059

/-! ## A102425.P10728183285687240341

`A000065(n)+1-A102437(n)`
-/

namespace A102425.P10728183285687240341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 n + (1 - A102437 n)

end

end A102425.P10728183285687240341

/-! ## A102425.P10199654091087728711

`A035363(2*n)-A102437(n)`
-/

namespace A102425.P10199654091087728711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (2 * n) - A102437 n

end

end A102425.P10199654091087728711

/-! ## A102425.P2432550158432491621

`A035444(A008586(n))-A102437(n)`
-/

namespace A102425.P2432550158432491621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 (A008586 n).toNat - A102437 n

end

end A102425.P2432550158432491621

/-! ## A102425.P845356032901902058

`A100824(2*n)-A102437(n)`
-/

namespace A102425.P845356032901902058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100824 (2 * n) - A102437 n

end

end A102425.P845356032901902058

/-! ## A102425.P16262836923897944756

`A218698(A000124(n))-A102437(n)`
-/

namespace A102425.P16262836923897944756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218698 (A000124 n).toNat - A102437 n

end

end A102425.P16262836923897944756

/-! ## A102425.P6824164079451547615

`A008284(A001844(n))-A102437(n)`
-/

namespace A102425.P6824164079451547615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008284 (A001844 n).toNat - A102437 n

end

end A102425.P6824164079451547615

/-!
# A102426: Triangle read by rows giving coefficients of polynomials defined by F(0,x)=0, F(1,x)=1, F(n,x) = F(n-1,x) + x*F(n-2,x).

The programs for A102426, the canonical program `A102426.P776678391830445668` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A102426 has offset 0).

The definition of A102426 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A102426.P776678391830445668

`A098925(abs(1-n))-A000007(n)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A102426

/-- `A098925(abs(1-n))-A000007(n)` -/
def P776678391830445668.Spec : Prop :=
  ∀ n, P776678391830445668.a n = A102426 n

theorem P776678391830445668.correct : P776678391830445668.Spec := by
  intro n
  simp only [A102426]

end A102426

/-! ## A102426.P13240050093088204327

`A057427(n)*A098925(abs(1-n))`
-/

namespace A102426.P13240050093088204327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A098925 |1 - (n : ℤ)|.toNat

end

end A102426.P13240050093088204327

namespace A102426

/-- `A057427(n)*A098925(abs(1-n))` -/
def P13240050093088204327.Spec : Prop :=
  ∀ n, P13240050093088204327.a n = A102426 n

end A102426

/-! ## A102426.P380389589953712156

`A098925(n-a(a(A001222(n))))` with `a(0)=0`
-/

namespace A102426.P380389589953712156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A098925 ((n : ℤ) - a (a (A001222 n).toNat).toNat).toNat

end

end A102426.P380389589953712156

namespace A102426

/-- `A098925(n-a(a(A001222(n))))` -/
def P380389589953712156.Spec : Prop :=
  ∀ n, P380389589953712156.a n = A102426 n

end A102426

/-! ## A102426.P14005733109938927279

`∑{e}[A006530(n+1), A098925(n-#)]`
-/

namespace A102426.P14005733109938927279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A098925 (n - Nat.factorization (f1 n).natAbs p)

end

end A102426.P14005733109938927279

namespace A102426

/-- `∑{e}[A006530(n+1), A098925(n-#)]` -/
def P14005733109938927279.Spec : Prop :=
  ∀ n, P14005733109938927279.a n = A102426 n

end A102426

/-! ## A102426.P970090300422227771

`A284938(record[(n+1)%(A284938(n+2)+n+1)]+1)`
-/

namespace A102426.P970090300422227771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A284938 (n + 2) + (n + 1 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284938 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1).toNat

end

end A102426.P970090300422227771

namespace A102426

/-- `A284938(record[(n+1)%(A284938(n+2)+n+1)]+1)` -/
def P970090300422227771.Spec : Prop :=
  ∀ n, P970090300422227771.a n = A102426 n

end A102426

/-! ## A102426.P1118541925098256819

`A098925(A029578(A004275(n)))%A007574(n+1)`
-/

namespace A102426.P1118541925098256819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A098925 (A029578 (A004275 n).toNat).toNat) (A007574 (n + 1))

end

end A102426.P1118541925098256819

namespace A102426

/-- `A098925(A029578(A004275(n)))%A007574(n+1)` -/
def P1118541925098256819.Spec : Prop :=
  ∀ n, P1118541925098256819.a n = A102426 n

end A102426

/-! ## A102426.P7081289146366270859

`A098925(A233583(A233583(n+1)))%A000079(n)`
-/

namespace A102426.P7081289146366270859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A098925 (A233583 (A233583 (n + 1)).toNat).toNat) (A000079 n)

end

end A102426.P7081289146366270859

namespace A102426

/-- `A098925(A233583(A233583(n+1)))%A000079(n)` -/
def P7081289146366270859.Spec : Prop :=
  ∀ n, P7081289146366270859.a n = A102426 n

end A102426

/-! ## A102426.P11967079944455065139

`A098925(A098925((1-n)²))%(n+1)²`
-/

namespace A102426.P11967079944455065139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A098925 (A098925 ((1 - (n : ℤ)) ^ 2).toNat).toNat) ((n + 1) ^ 2 : ℤ)

end

end A102426.P11967079944455065139

namespace A102426

/-- `A098925(A098925((1-n)²))%(n+1)²` -/
def P11967079944455065139.Spec : Prop :=
  ∀ n, P11967079944455065139.a n = A102426 n

end A102426

/-!
# A102427: Triangle based on downward diagonals of A102426.

The programs for A102427, there is no canonical definition to state claims against.
-/

/-! ## A102427.P4864077074575489206

`A108756(∑[char[∑[n]]]²-∑[char[comp[∑[n]]]])`
-/

namespace A102427.P4864077074575489206
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f7 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f7 j

open Classical in
def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f6 j ≠ x) n

open Classical in
def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f5 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108756 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - ∑ j ∈ Finset.range (n + 1), f4 j)

end

end A102427.P4864077074575489206

/-! ## A102427.P14184064532906186929

`A011973(A082156(n+1)+A002262(n))`
-/

namespace A102427.P14184064532906186929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011973 (A082156 (n + 1) + A002262 n).toNat

end

end A102427.P14184064532906186929

/-!
# A102428: Central column of triangle A102427.

The programs for A102428, the canonical program `A102428.P7794472988143770787` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A102428 has offset 0).

The definition of A102428 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 177 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A102428.P10853074887888697955

`C(comp[3*n]+n, ceil(n/2))`
-/

namespace A102428.P10853074887888697955
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + n) ⌈(n : ℚ) / 2⌉.toNat

end

end A102428.P10853074887888697955

namespace A102428

/-- `C(comp[3*n]+n, ceil(n/2))` -/
def P10853074887888697955.Spec : Prop :=
  ∀ n, (P10853074887888697955.a n : ℤ) = A102428 n

end A102428

/-! ## A102428.P7794472988143770787

`record[C(floor(5*n/3), A087509(n))]`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A102428

/-- `record[C(floor(5*n/3), A087509(n))]` -/
def P7794472988143770787.Spec : Prop :=
  ∀ n, (P7794472988143770787.a n : ℤ) = A102428 n

theorem P7794472988143770787.correct : P7794472988143770787.Spec := by
  intro n
  simp only [A102428]

end A102428

/-! ## A102428.P4477600985963791091

`record[C(A047220(n+1), round(n/3*n²%3))]`
-/

namespace A102428.P4477600985963791091
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A047220 (n + 1)).toNat (SequenceMachineLib.roundAway ((n : ℚ) / 3 * ((n ^ 2 % 3 : ℕ) : ℚ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A102428.P4477600985963791091

namespace A102428

/-- `record[C(A047220(n+1), round(n/3*n²%3))]` -/
def P4477600985963791091.Spec : Prop :=
  ∀ n, (P4477600985963791091.a n : ℤ) = A102428 n

end A102428

/-! ## A102428.P14667292683396080257

`A108756(2*(n+1)²-1)`
-/

namespace A102428.P14667292683396080257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108756 (2 * (n + 1) ^ 2 - 1)

end

end A102428.P14667292683396080257

namespace A102428

/-- `A108756(2*(n+1)²-1)` -/
def P14667292683396080257.Spec : Prop :=
  ∀ n, P14667292683396080257.a n = A102428 n

end A102428

/-! ## A102428.P6669219630808488966

`A134513(A081268(n))`
-/

namespace A102428.P6669219630808488966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134513 (A081268 n).toNat

end

end A102428.P6669219630808488966

namespace A102428

/-- `A134513(A081268(n))` -/
def P6669219630808488966.Spec : Prop :=
  ∀ n, P6669219630808488966.a n = A102428 n

end A102428

/-!
# A102429: Row sums of A102427.

The programs for A102429, the canonical program `A102429.P12839459425190765546` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A102429 has offset 0).

The definition of A102429 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 357 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A102429.P12839459425190765546

`∑[abs(Δ[A108742(n)])]`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A102429

/-- `∑[abs(Δ[A108742(n)])]` -/
def P12839459425190765546.Spec : Prop :=
  ∀ n, P12839459425190765546.a n = A102429 n

theorem P12839459425190765546.correct : P12839459425190765546.Spec := by
  intro n
  simp only [A102429]

end A102429

/-! ## A102429.P4995386786975761101

`A108742(n+1)-1`
-/

namespace A102429.P4995386786975761101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108742 (n + 1) - 1

end

end A102429.P4995386786975761101

namespace A102429

/-- `A108742(n+1)-1` -/
def P4995386786975761101.Spec : Prop :=
  ∀ n, P4995386786975761101.a n = A102429 n

end A102429

/-! ## A102429.P5460062333342468028

`A122789(2*n+7)-1`
-/

namespace A102429.P5460062333342468028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122789 (2 * n + 7) - 1

end

end A102429.P5460062333342468028

namespace A102429

/-- `A122789(2*n+7)-1` -/
def P5460062333342468028.Spec : Prop :=
  ∀ n, P5460062333342468028.a n = A102429 n

end A102429

/-! ## A102429.P13490815784495273185

`A052969(n)+∑[A052969(n+1)]`
-/

namespace A102429.P13490815784495273185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052969 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052969 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102429.P13490815784495273185

namespace A102429

/-- `A052969(n)+∑[A052969(n+1)]` -/
def P13490815784495273185.Spec : Prop :=
  ∀ n, P13490815784495273185.a n = A102429 n

end A102429

/-! ## A102429.P13414478995151343312

`A098578(2*n)+Δ[A003269(2*n)]`
-/

namespace A102429.P13414478995151343312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003269 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098578 (2 * n) + (f1 (n + 1) - f1 n)

end

end A102429.P13414478995151343312

namespace A102429

/-- `A098578(2*n)+Δ[A003269(2*n)]` -/
def P13414478995151343312.Spec : Prop :=
  ∀ n, P13414478995151343312.a n = A102429 n

end A102429

/-! ## A102429.P3489414262128045896

`A193146(2*n+1)+A017898(2*n+1)`
-/

namespace A102429.P3489414262128045896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193146 (2 * n + 1) + A017898 (2 * n + 1)

end

end A102429.P3489414262128045896

namespace A102429

/-- `A193146(2*n+1)+A017898(2*n+1)` -/
def P3489414262128045896.Spec : Prop :=
  ∀ n, P3489414262128045896.a n = A102429 n

end A102429

/-! ## A102429.P17858214173198227614

`A003411(2*n+1)-(A003269(2*n)+1)`
-/

namespace A102429.P17858214173198227614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003411 (2 * n + 1) - (A003269 (2 * n) + 1)

end

end A102429.P17858214173198227614

namespace A102429

/-- `A003411(2*n+1)-(A003269(2*n)+1)` -/
def P17858214173198227614.Spec : Prop :=
  ∀ n, P17858214173198227614.a n = A102429 n

end A102429

/-! ## A102429.P16810592351281289893

`A017898(2*n+1)+∑[A017898(A062545(n+1))]`
-/

namespace A102429.P16810592351281289893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017898 (A062545 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017898 (2 * n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102429.P16810592351281289893

namespace A102429

/-- `A017898(2*n+1)+∑[A017898(A062545(n+1))]` -/
def P16810592351281289893.Spec : Prop :=
  ∀ n, P16810592351281289893.a n = A102429 n

end A102429

/-! ## A102429.P10845264635059955501

`A017898(2*n+1)+A098578(2*n)+A017898(2*n)`
-/

namespace A102429.P10845264635059955501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017898 (2 * n + 1) + (A098578 (2 * n) + A017898 (2 * n))

end

end A102429.P10845264635059955501

namespace A102429

/-- `A017898(2*n+1)+A098578(2*n)+A017898(2*n)` -/
def P10845264635059955501.Spec : Prop :=
  ∀ n, P10845264635059955501.a n = A102429 n

end A102429

/-! ## A102429.P4002548476145449092

`A003269(2*n+1)+A168639(2*n)-A003269(2*n)`
-/

namespace A102429.P4002548476145449092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003269 (2 * n + 1) + (A168639 (2 * n) - A003269 (2 * n))

end

end A102429.P4002548476145449092

namespace A102429

/-- `A003269(2*n+1)+A168639(2*n)-A003269(2*n)` -/
def P4002548476145449092.Spec : Prop :=
  ∀ n, P4002548476145449092.a n = A102429 n

end A102429

/-! ## A102429.P11465900220234860336

`Δ[A052535(n+2)]-1`
-/

namespace A102429.P11465900220234860336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052535 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A102429.P11465900220234860336

namespace A102429

/-- `Δ[A052535(n+2)]-1` -/
def P11465900220234860336.Spec : Prop :=
  ∀ n, P11465900220234860336.a n = A102429 n

end A102429

/-! ## A102429.P11409328376284035394

`Δ[A098578(2*n+1)]-1`
-/

namespace A102429.P11409328376284035394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098578 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A102429.P11409328376284035394

namespace A102429

/-- `Δ[A098578(2*n+1)]-1` -/
def P11409328376284035394.Spec : Prop :=
  ∀ n, P11409328376284035394.a n = A102429 n

end A102429

/-! ## A102429.P13773199527506871459

`Δ[A017898(A020744(n))]-1`
-/

namespace A102429.P13773199527506871459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017898 (A020744 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A102429.P13773199527506871459

namespace A102429

/-- `Δ[A017898(A020744(n))]-1` -/
def P13773199527506871459.Spec : Prop :=
  ∀ n, P13773199527506871459.a n = A102429 n

end A102429

/-! ## A102429.P6185995311628614035

`Δ[Δ[A003411(2*n+1)]]-1`
-/

namespace A102429.P6185995311628614035
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003411 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A102429.P6185995311628614035

namespace A102429

/-- `Δ[Δ[A003411(2*n+1)]]-1` -/
def P6185995311628614035.Spec : Prop :=
  ∀ n, P6185995311628614035.a n = A102429 n

end A102429

/-!
# A102430: Triangle read by rows where T(n,k) is the number of integer partitions of n > 1 into powers of k > 1.

The programs for A102430, there is no canonical definition to state claims against.
-/

/-! ## A102430.P6706178143786212631

`A308558(comp[∑[n]]+1)`
-/

namespace A102430.P6706178143786212631
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308558 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)

end

end A102430.P6706178143786212631

/-! ## A102430.P3771089626313060386

`A308558(∑[char[∑[n]]]+2+n)%22`
-/

namespace A102430.P3771089626313060386
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A308558 (∑ j ∈ Finset.range (n + 1), f1 j + 2 + n)) 22

end

end A102430.P3771089626313060386

/-! ## A102430.P15975677490929344984

`filter[A308558(n+1), A128973(#)]`
-/

namespace A102430.P15975677490929344984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308558 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A128973 (f1 j).toNat = 1) n)

end

end A102430.P15975677490929344984

/-! ## A102430.P13431632958687511213

`filter[A308558(n+1), A324732(#)]`
-/

namespace A102430.P13431632958687511213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308558 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324732 (f1 j).toNat = 1) n)

end

end A102430.P13431632958687511213

/-! ## A102430.P2839163465044846050

`filter[A308558(n+1), A341591(#)]`
-/

namespace A102430.P2839163465044846050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308558 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341591 (f1 j).toNat = 1) n)

end

end A102430.P2839163465044846050

/-! ## A102430.P3825736336091878292

`filter[A308558(n+1), A354807(#)]`
-/

namespace A102430.P3825736336091878292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308558 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354807 (f1 j).toNat = 1) n)

end

end A102430.P3825736336091878292

/-! ## A102430.P14044958279397566502

`filter[A308558(n+1), A369006(#)]`
-/

namespace A102430.P14044958279397566502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308558 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369006 (f1 j).toNat = 1) n)

end

end A102430.P14044958279397566502

/-!
# A102431: Row sums of A102430.

The programs for A102431, there is no canonical definition to state claims against.
-/

/-! ## A102431.P11966000686913913771

`A102432(n+2)+n`
-/

namespace A102431.P11966000686913913771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102432 (n + 2) + (n : ℤ)

end

end A102431.P11966000686913913771

/-! ## A102431.P17448316078688683303

`∑[A064575(n+1)+1]`
-/

namespace A102431.P17448316078688683303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064575 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102431.P17448316078688683303

/-! ## A102431.P1970700405673048700

`A064572(n+2)+1+n`
-/

namespace A102431.P1970700405673048700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064572 (n + 2) + 1 + (n : ℤ)

end

end A102431.P1970700405673048700

/-! ## A102431.P11206004832192882192

`A064573(n+2)+∑[A064577(n+1)+1]`
-/

namespace A102431.P11206004832192882192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064577 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064573 (n + 2) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102431.P11206004832192882192

/-! ## A102431.P4420677403226954205

`n+1+A064574(n+2)+A064573(n+2)`
-/

namespace A102431.P4420677403226954205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + (A064574 (n + 2) + A064573 (n + 2))

end

end A102431.P4420677403226954205

/-! ## A102431.P9920682165512836968

`∑[A020725(Δ[A064572(n+1)])]`
-/

namespace A102431.P9920682165512836968
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064572 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102431.P9920682165512836968

/-! ## A102431.P991417199687436674

`A102434(n+2)-A001700(n+1)`
-/

namespace A102431.P991417199687436674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102434 (n + 2) - A001700 (n + 1)

end

end A102431.P991417199687436674

/-! ## A102431.P17741697881129136437

`A020725(A064572(n+2)+n)`
-/

namespace A102431.P17741697881129136437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A064572 (n + 2) + (n : ℤ)).toNat

end

end A102431.P17741697881129136437

/-!
# A102432: Number of distinct polynomials of degree < n and coefficients > 0 with solutions k > 1 such that p(k) = n.

The programs for A102432, there is no canonical definition to state claims against.
-/

/-! ## A102432.P11376688346115885652

`A064572(n+1)+1`
-/

namespace A102432.P11376688346115885652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064572 (n + 1) + 1

end

end A102432.P11376688346115885652

/-! ## A102432.P10165244663297511745

`∑[A064575(round(acot(n)+n))]`
-/

namespace A102432.P10165244663297511745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064575 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102432.P10165244663297511745

/-! ## A102432.P3308391955549362502

`A064575(n)+a(n-1)` with `a(0)=1`
-/

namespace A102432.P3308391955549362502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A064575 n + a (n - 1)

end

end A102432.P3308391955549362502

/-! ## A102432.P11810904627905787432

`∑[A064575(A028310(n))]`
-/

namespace A102432.P11810904627905787432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064575 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102432.P11810904627905787432

/-! ## A102432.P4429218758786357079

`∑[A064575(A065033(2*n))]`
-/

namespace A102432.P4429218758786357079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064575 (A065033 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102432.P4429218758786357079

/-! ## A102432.P1174026606117145242

`A064573(n+1)+A064574(n+1)+1`
-/

namespace A102432.P1174026606117145242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064573 (n + 1) + (A064574 (n + 1) + 1)

end

end A102432.P1174026606117145242

/-! ## A102432.P7695235050069468278

`A064573(n+1)+∑[A064577(A000007(n)+n)]+1`
-/

namespace A102432.P7695235050069468278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064577 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064573 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A102432.P7695235050069468278

/-! ## A102432.P7519985679819639543

`A064573(n+1)+∑[A064577(n+1)]-A064577(n+1)+1`
-/

namespace A102432.P7519985679819639543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064577 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064573 (n + 1) + (∑ j ∈ Finset.range (n + 1), f1 j - A064577 (n + 1)) + 1

end

end A102432.P7519985679819639543

/-! ## A102432.P2379499586910937840

`A064573(n+1)+∑[A064577(A322585(2*n+1)+n)]+1`
-/

namespace A102432.P2379499586910937840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064577 (A322585 (2 * n + 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064573 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A102432.P2379499586910937840

/-! ## A102432.P829254487301669573

`∑[A064575(A137735(n²))]`
-/

namespace A102432.P829254487301669573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064575 (A137735 (n ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102432.P829254487301669573

/-!
# A102433: Number of distinct polynomials of degree < n and coefficients > 0 with solutions k >= 1 such that p(k) = n.

The programs for A102433, there is no canonical definition to state claims against.
-/

/-! ## A102433.P14652565950251787596

`A102434(n+1)-n`
-/

namespace A102433.P14652565950251787596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102434 (n + 1) - (n : ℤ)

end

end A102433.P14652565950251787596

/-! ## A102433.P901018755001285782

`A064572(n+1)+∏[4-2/(n+1)]/2`
-/

namespace A102433.P901018755001285782
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 - 2 / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064572 (n + 1) : ℚ) + (∏ j ∈ Finset.range (n + 1), f1 j) / 2

end

end A102433.P901018755001285782

/-! ## A102433.P2070784973944488785

`A102432(n+1)+∏[4-2/(n+1)]/2-1`
-/

namespace A102433.P2070784973944488785
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 - 2 / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A102432 (n + 1) : ℚ) + ((∏ j ∈ Finset.range (n + 1), f1 j) / 2 - 1)

end

end A102433.P2070784973944488785

/-! ## A102433.P10037445636298790733

`record[A102434(A193592(n))]-n`
-/

namespace A102433.P10037445636298790733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102434 (A193592 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n : ℤ)

end

end A102433.P10037445636298790733

/-! ## A102433.P7401265345541008717

`A088218(n+1)+A064572(n+1)`
-/

namespace A102433.P7401265345541008717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088218 (n + 1) + A064572 (n + 1)

end

end A102433.P7401265345541008717

/-!
# A102434: Sum_{k=1..n} {number of partitions of n into powers k^m where 0<=m

The programs for A102434, there is no canonical definition to state claims against.
-/

/-! ## A102434.P1981231476005064029

`A064572(n+1)+A001700(n)+n`
-/

namespace A102434.P1981231476005064029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064572 (n + 1) + (A001700 n + (n : ℤ))

end

end A102434.P1981231476005064029

/-! ## A102434.P10192677103519395343

`A102432(n+1)+A010763(n)+n`
-/

namespace A102434.P10192677103519395343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102432 (n + 1) + (A010763 n + (n : ℤ))

end

end A102434.P10192677103519395343

/-! ## A102434.P5092349579299797233

`A064572(n+1)+record[A057977(n)]+n`
-/

namespace A102434.P5092349579299797233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057977 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064572 (n + 1) + (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (n : ℤ))

end

end A102434.P5092349579299797233

/-! ## A102434.P18366154189482579404

`A057977(2*n+1)+A064572(n+1)+n`
-/

namespace A102434.P18366154189482579404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057977 (2 * n + 1) + (A064572 (n + 1) + (n : ℤ))

end

end A102434.P18366154189482579404

/-! ## A102434.P8399019119762618601

`A102432(n+1)+A001700(n)-A024000(n)`
-/

namespace A102434.P8399019119762618601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102432 (n + 1) + (A001700 n - A024000 n)

end

end A102434.P8399019119762618601

/-!
# A102436: Number of matchings of the corona L'(n) of the ladder graph L(n)=P_2 X P_n. and the complete graph K(1); in other words, L'(n) is the graph constructed from L(n) by adding for each vertex v a new vertex v' and the edge vv'.

The programs for A102436, the canonical program `A102436.P12688050423626536798` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A102436 has offset 0).

The definition of A102436 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A102436.P12688050423626536798

`6*a(n-1)+4*a(n-2)-a(n-3)` with `a(0)=1, a(1)=5, a(2)=34`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A102436

/-- `6*a(n-1)+4*a(n-2)-a(n-3)` -/
def P12688050423626536798.Spec : Prop :=
  ∀ n, P12688050423626536798.a n = A102436 n

theorem P12688050423626536798.correct : P12688050423626536798.Spec := by
  intro n
  simp only [A102436]

end A102436

/-! ## A102436.P3999098442943385774

`ogf((1-x)/(1-6x-4x^2+x^3))`
-/

namespace A102436.P3999098442943385774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1] [1, -6, -4, 1] n

end

end A102436.P3999098442943385774

namespace A102436

/-- `ogf((1-x)/(1-6x-4x^2+x^3))` -/
def P3999098442943385774.Spec : Prop :=
  ∀ n, P3999098442943385774.a n = A102436 n

end A102436

/-!
# A102437: Let pi be an unrestricted partition of n with the summands written in binary notation. a(n) is the number of such partitions whose binary representation has an odd number of binary ones.

The programs for A102437, there is no canonical definition to state claims against.
-/

/-! ## A102437.P14751127473731288397

`A000041(n)-A102425(n)`
-/

namespace A102437.P14751127473731288397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A102425 n

end

end A102437.P14751127473731288397

/-! ## A102437.P9258361427088786920

`∑[A002865(n)]-A102425(n)`
-/

namespace A102437.P9258361427088786920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A102425 n

end

end A102437.P9258361427088786920

/-! ## A102437.P9056901772536951279

`A000065(n)+1-A102425(n)`
-/

namespace A102437.P9056901772536951279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 n + (1 - A102425 n)

end

end A102437.P9056901772536951279

/-! ## A102437.P14319853148094413807

`A035363(2*n)-A102425(n)`
-/

namespace A102437.P14319853148094413807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (2 * n) - A102425 n

end

end A102437.P14319853148094413807

/-! ## A102437.P7309925667696294245

`A035444(A008586(n))-A102425(n)`
-/

namespace A102437.P7309925667696294245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 (A008586 n).toNat - A102425 n

end

end A102437.P7309925667696294245

/-! ## A102437.P9030881518656487504

`A238394(n)+A238395(n)-A102425(n)`
-/

namespace A102437.P9030881518656487504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238394 n + (A238395 n - A102425 n)

end

end A102437.P9030881518656487504

/-! ## A102437.P6552839859783095013

`A100824(2*n)-A102425(n)`
-/

namespace A102437.P6552839859783095013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100824 (2 * n) - A102425 n

end

end A102437.P6552839859783095013

/-!
# A102438: a(n) = 100*n + 44.

The programs for A102438, the canonical program `A102438.P10708172860484478643` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A102438 has offset 0).

The definition of A102438 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A102438.P10708172860484478643

`2*a(n-1)-a(n-2)` with `a(0)=44, a(1)=144`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A102438

/-- `2*a(n-1)-a(n-2)` -/
def P10708172860484478643.Spec : Prop :=
  ∀ n, P10708172860484478643.a n = A102438 n

theorem P10708172860484478643.correct : P10708172860484478643.Spec := by
  intro n
  simp only [A102438]

end A102438

/-!
# A102439: a(n) = 100*n + 4.

The programs for A102439, the canonical program `A102439.P6969502430554889529` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A102439 has offset 0).

The definition of A102439 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A102439.P6969502430554889529

`2*a(n-1)-a(n-2)` with `a(0)=4, a(1)=104`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A102439

/-- `2*a(n-1)-a(n-2)` -/
def P6969502430554889529.Spec : Prop :=
  ∀ n, P6969502430554889529.a n = A102439 n

theorem P6969502430554889529.correct : P6969502430554889529.Spec := by
  intro n
  simp only [A102439]

end A102439

/-!
# A102440: Replace each prime factor of n that is greater than 3 with the greatest semiprime less than it.

The programs for A102440, there is no canonical definition to state claims against.
-/

/-! ## A102440.P14723771606765233594

`A055034(3*(n+1))-A045698(A300738(2*n+1))`
-/

namespace A102440.P14723771606765233594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055034 (3 * (n + 1)) - A045698 (A300738 (2 * n + 1)).toNat

end

end A102440.P14723771606765233594

/-! ## A102440.P12472601242736529181

`A111850(A065331(n+1)+A008706(n))`
-/

namespace A102440.P12472601242736529181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111850 (A065331 (n + 1) + A008706 n).toNat

end

end A102440.P12472601242736529181

/-! ## A102440.P12247151777457109125

`A111850(A065332(n+1)+A008706(n))`
-/

namespace A102440.P12247151777457109125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111850 (A065332 (n + 1) + A008706 n).toNat

end

end A102440.P12247151777457109125

/-! ## A102440.P6596843810981699432

`A111850(A313622(n)+A065331(n+1))`
-/

namespace A102440.P6596843810981699432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111850 (A313622 n + A065331 (n + 1)).toNat

end

end A102440.P6596843810981699432

/-! ## A102440.P14170327553312212580

`A111850(A313622(n)+A065332(n+1))`
-/

namespace A102440.P14170327553312212580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111850 (A313622 n + A065332 (n + 1)).toNat

end

end A102440.P14170327553312212580

/-!
# A102441: a(n) = A102440(A102440(n)).

The programs for A102441, there is no canonical definition to state claims against.
-/

/-! ## A102441.P16611426625874086451

`A102440(A102440(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A102441.P16611426625874086451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102440 (A102440 (n + 1)).toNat

end

end A102441.P16611426625874086451

/-!
# A102442: Number of iterations needed to transform n by A102440 into a 3-smooth number.

The programs for A102442, there is no canonical definition to state claims against.
-/

/-! ## A102442.P2752838011064347204

`round(∑{p}[A000010((n+1)²)², #/12])`
-/

namespace A102442.P2752838011064347204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 ((n + 1) ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ p ∈ Nat.primeFactors (f1 n).natAbs, (p : ℚ) / 12)

end

end A102442.P2752838011064347204

/-! ## A102442.P17822589696027680765

`A255270(A327802(A105562(n+1)²))`
-/

namespace A102442.P17822589696027680765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255270 (A327802 (A105562 (n + 1) ^ 2).toNat).toNat

end

end A102442.P17822589696027680765

/-! ## A102442.P7199102074701812469

`A061395(A163089(A061395(n+1)+1))`
-/

namespace A102442.P7199102074701812469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A163089 (A061395 (n + 1) + 1).toNat).toNat

end

end A102442.P7199102074701812469

/-! ## A102442.P15412057178742623131

`A156877(A006530(n+1)%A270890(n+5))`
-/

namespace A102442.P15412057178742623131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156877 (Int.tmod (A006530 (n + 1)) (A270890 (n + 5))).toNat

end

end A102442.P15412057178742623131

/-! ## A102442.P8084589430857648180

`A225643(A061395(n+1)%A227590(n+1))`
-/

namespace A102442.P8084589430857648180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225643 (Int.tmod (A061395 (n + 1)) (A227590 (n + 1))).toNat

end

end A102442.P8084589430857648180

/-!
# A102443: a(n)=b(n, A102442(n)), where b(n,0)=n and b(n,k+1)=A102440(b(n,k)).

The programs for A102443, there is no canonical definition to state claims against.
-/

/-! ## A102443.P7295890398876216759

`A102441(A102441(n+1)%A068653(n+1))`
-/

namespace A102443.P7295890398876216759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102441 (Int.tmod (A102441 (n + 1)) (A068653 (n + 1))).toNat

end

end A102443.P7295890398876216759

/-! ## A102443.P8628813064256795370

`A102441(A102441(n+1))%A080036(A055932(n+1))`
-/

namespace A102443.P8628813064256795370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A102441 (A102441 (n + 1)).toNat) (A080036 (A055932 (n + 1)).toNat)

end

end A102443.P8628813064256795370

/-! ## A102443.P15980193268053981564

`A102441(A102441(n+1))%A298686(n+1)`
-/

namespace A102443.P15980193268053981564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A102441 (A102441 (n + 1)).toNat) (A298686 (n + 1))

end

end A102443.P15980193268053981564

/-! ## A102443.P9464480508695094555

`A102441(A102441(n+1))%A043495(A000969(n))`
-/

namespace A102443.P9464480508695094555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A102441 (A102441 (n + 1)).toNat) (A043495 (A000969 n).toNat)

end

end A102443.P9464480508695094555

/-! ## A102443.P6308386445597735973

`A102441(A102441(n+1))*A304042(A007590(n))`
-/

namespace A102443.P6308386445597735973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102441 (A102441 (n + 1)).toNat * A304042 (A007590 n).toNat

end

end A102443.P6308386445597735973

/-! ## A102443.P10061990875544832251

`A102441(A018851(A102441(n+1)²))`
-/

namespace A102443.P10061990875544832251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102441 (A018851 (A102441 (n + 1) ^ 2).toNat).toNat

end

end A102443.P10061990875544832251

/-! ## A102443.P633527123438576738

`A102441(A102441(A135278(∑[n])))`
-/

namespace A102443.P633527123438576738
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102441 (A102441 (A135278 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat).toNat

end

end A102443.P633527123438576738

/-! ## A102443.P3731821212677725535

`A102441(A102441(A143182(∑[n])))`
-/

namespace A102443.P3731821212677725535
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102441 (A102441 (A143182 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat).toNat

end

end A102443.P3731821212677725535

/-! ## A102443.P14948615856766608362

`A102441(A102441(n+1)%p?[A008810(n)])`
-/

namespace A102443.P14948615856766608362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008810 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102441 (Int.tmod (A102441 (n + 1)) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))).toNat

end

end A102443.P14948615856766608362

/-! ## A102443.P15451315498566903082

`A001222(A145125(n+1))*A102441(A102441(n+1))`
-/

namespace A102443.P15451315498566903082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A145125 (n + 1)).toNat * A102441 (A102441 (n + 1)).toNat

end

end A102443.P15451315498566903082

/-! ## A102443.P7934736396680779653

`sqrt(A102441(A102441(n+1)²))`
-/

namespace A102443.P7934736396680779653
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A102441 (A102441 (n + 1) ^ 2).toNat : ℝ)

end

end A102443.P7934736396680779653

/-! ## A102443.P3617108037840595381

`A102441((n+1)*A102441(n+1))/A102441(n+1)`
-/

namespace A102443.P3617108037840595381
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A102441 ((n + 1 : ℤ) * A102441 (n + 1)).toNat : ℚ) / (A102441 (n + 1) : ℚ)

end

end A102443.P3617108037840595381

/-! ## A102443.P8903163049377194198

`A102441(A102441((n+1)²)/A102441(n+1))`
-/

namespace A102443.P8903163049377194198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102441 (SequenceMachineLib.roundAway ((A102441 ((n + 1) ^ 2) : ℚ) / (A102441 (n + 1) : ℚ))).toNat

end

end A102443.P8903163049377194198

/-!
# A102444: Smallest number m such that A102442(m)=n.

The programs for A102444, there is no canonical definition to state claims against.
-/

/-! ## A102444.P15813436496762199564

`A089730(A030157(n+2))`
-/

namespace A102444.P15813436496762199564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089730 (A030157 (n + 2)).toNat

end

end A102444.P15813436496762199564

/-! ## A102444.P15513994012959379196

`∑[record[A002129(A382214(n))]]`
-/

namespace A102444.P15513994012959379196
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002129 (A382214 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102444.P15513994012959379196

/-!
# A102445: Number of prime divisors (counted with multiplicity) of the central trinomial coefficients (A002426).

The programs for A102445, there is no canonical definition to state claims against.
-/

/-! ## A102445.P3194059032400508382

`A069010(A097007(n+1)-A276205(n+3))`
-/

namespace A102445.P3194059032400508382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 (A097007 (n + 1) - A276205 (n + 3)).toNat

end

end A102445.P3194059032400508382

/-! ## A102445.P3087240307491614049

`A102669(A191852(n+1)*A246275(3*n+4))`
-/

namespace A102445.P3087240307491614049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102669 (A191852 (n + 1) * A246275 (3 * n + 4)).toNat

end

end A102445.P3087240307491614049

/-! ## A102445.P8186648484165347154

`A002828(∑[A304109(2*(n+2))+A232534(n+1)])`
-/

namespace A102445.P8186648484165347154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304109 (2 * (n + 2)) + A232534 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A102445.P8186648484165347154

/-! ## A102445.P11109053400813819631

`A000120(A072670(A017281(n))*A134435(n+1))`
-/

namespace A102445.P11109053400813819631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A072670 (A017281 n).toNat * A134435 (n + 1)).toNat

end

end A102445.P11109053400813819631

/-!
# A102446: a(n) = a(n-1) + 4*a(n-2) for n>1, a(0) = a(1) = 2.

The programs for A102446, the canonical program `A102446.P4663528213397980581` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A102446 has offset 0).

The definition of A102446 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+4*a(n-2)` (program `A102446.P4663528213397980581`, by `A102446.P4663528213397980581.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A102446.P4663528213397980581

`a(n-1)+4*a(n-2)` with `a(0)=2, a(1)=2`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A102446

/-- `a(n-1)+4*a(n-2)` -/
def P4663528213397980581.Spec : Prop :=
  ∀ n, (P4663528213397980581.a n : ℤ) = A102446 n

theorem P4663528213397980581.correct : P4663528213397980581.Spec := by
  intro n
  simp only [A102446]

end A102446

/-! ## A102446.P3452278556359895054

`2*A006131(n)`
-/

namespace A102446.P3452278556359895054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006131 n

end

end A102446.P3452278556359895054

namespace A102446

/-- `2*A006131(n)` -/
def P3452278556359895054.Spec : Prop :=
  ∀ n, P3452278556359895054.a n = A102446 n

end A102446

/-! ## A102446.P14580685491015791402

`ogf(2/(1-x-4x^2))`
-/

namespace A102446.P14580685491015791402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2] [1, -1, -4] n

end

end A102446.P14580685491015791402

namespace A102446

/-- `ogf(2/(1-x-4x^2))` -/
def P14580685491015791402.Spec : Prop :=
  ∀ n, P14580685491015791402.a n = A102446 n

end A102446

/-! ## A102446.P15539192375810121007

`a(n-1)+lcm(8, a(n-2))` with `a(0)=2, a(1)=2`
-/

namespace A102446.P15539192375810121007
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 2] fun n a =>
  a (n - 1) + Nat.lcm 8 (a (n - 2))

end

end A102446.P15539192375810121007

namespace A102446

/-- `a(n-1)+lcm(8, a(n-2))` -/
def P15539192375810121007.Spec : Prop :=
  ∀ n, (P15539192375810121007.a n : ℤ) = A102446 n

end A102446

/-! ## A102446.P10805625212616819323

`abs(Δ[4*a(n-2)-a(n-1)])` with `a(0)=1, a(1)=3`
-/

namespace A102446.P10805625212616819323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  4 * f1 (n - 2) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A102446.P10805625212616819323

namespace A102446

/-- `abs(Δ[4*a(n-2)-a(n-1)])` -/
def P10805625212616819323.Spec : Prop :=
  ∀ n, P10805625212616819323.a n = A102446 n

end A102446

/-! ## A102446.P7546121768771747971

`a(n-1)+a(n-2)/(1/2)²` with `a(0)=2, a(1)=2`
-/

namespace A102446.P7546121768771747971
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2, 2] fun n a =>
  a (n - 1) + a (n - 2) / ((1 : ℚ) / 2) ^ 2

end

end A102446.P7546121768771747971

namespace A102446

/-- `a(n-1)+a(n-2)/(1/2)²` -/
def P7546121768771747971.Spec : Prop :=
  ∀ n, P7546121768771747971.a n = (A102446 n : ℚ)

end A102446

/-! ## A102446.P5454389459500983318

`4-(4*(1-a(n-2))-a(n-1))` with `a(0)=2, a(1)=2`
-/

namespace A102446.P5454389459500983318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n a =>
  4 - (4 * (1 - a (n - 2)) - a (n - 1))

end

end A102446.P5454389459500983318

namespace A102446

/-- `4-(4*(1-a(n-2))-a(n-1))` -/
def P5454389459500983318.Spec : Prop :=
  ∀ n, P5454389459500983318.a n = A102446 n

end A102446

/-! ## A102446.P14968035778551630433

`a(n-2)+a(n-2)+a(n-2)+a(n-1)+a(n-2)` with `a(0)=2, a(1)=2`
-/

namespace A102446.P14968035778551630433
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 2] fun n a =>
  a (n - 2) + (a (n - 2) + (a (n - 2) + (a (n - 1) + a (n - 2))))

end

end A102446.P14968035778551630433

namespace A102446

/-- `a(n-2)+a(n-2)+a(n-2)+a(n-1)+a(n-2)` -/
def P14968035778551630433.Spec : Prop :=
  ∀ n, (P14968035778551630433.a n : ℤ) = A102446 n

end A102446

/-! ## A102446.P14233643654946598249

`Δ[A193649(n+1)]`
-/

namespace A102446.P14233643654946598249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193649 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A102446.P14233643654946598249

namespace A102446

/-- `Δ[A193649(n+1)]` -/
def P14233643654946598249.Spec : Prop :=
  ∀ n, P14233643654946598249.a n = A102446 n

end A102446

/-! ## A102446.P2727352009212854367

`∑[2*A052923(n)]`
-/

namespace A102446.P2727352009212854367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A052923 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102446.P2727352009212854367

namespace A102446

/-- `∑[2*A052923(n)]` -/
def P2727352009212854367.Spec : Prop :=
  ∀ n, P2727352009212854367.a n = A102446 n

end A102446

/-! ## A102446.P15471553233053558255

`4*A193649(n)-2`
-/

namespace A102446.P15471553233053558255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A193649 n - 2

end

end A102446.P15471553233053558255

namespace A102446

/-- `4*A193649(n)-2` -/
def P15471553233053558255.Spec : Prop :=
  ∀ n, P15471553233053558255.a n = A102446 n

end A102446

/-! ## A102446.P6723541450355219832

`abs(∑[2*A122112(n)])`
-/

namespace A102446.P6723541450355219832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A122112 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A102446.P6723541450355219832

namespace A102446

/-- `abs(∑[2*A122112(n)])` -/
def P6723541450355219832.Spec : Prop :=
  ∀ n, P6723541450355219832.a n = A102446 n

end A102446

/-! ## A102446.P3700389223848959677

`2*(A265987(n+1)-1)`
-/

namespace A102446.P3700389223848959677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A265987 (n + 1) - 1)

end

end A102446.P3700389223848959677

namespace A102446

/-- `2*(A265987(n+1)-1)` -/
def P3700389223848959677.Spec : Prop :=
  ∀ n, P3700389223848959677.a n = A102446 n

end A102446

/-! ## A102446.P16125906963452566265

`2*A026597(n)-a(n-1)` with `a(0)=2`
-/

namespace A102446.P16125906963452566265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  2 * A026597 n - a (n - 1)

end

end A102446.P16125906963452566265

namespace A102446

/-- `2*A026597(n)-a(n-1)` -/
def P16125906963452566265.Spec : Prop :=
  ∀ n, P16125906963452566265.a n = A102446 n

end A102446

/-! ## A102446.P1040832869661114863

`A052923(n)+A026597(n)`
-/

namespace A102446.P1040832869661114863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052923 n + A026597 n

end

end A102446.P1040832869661114863

namespace A102446

/-- `A052923(n)+A026597(n)` -/
def P1040832869661114863.Spec : Prop :=
  ∀ n, P1040832869661114863.a n = A102446 n

end A102446

/-! ## A102446.P9758280763200066411

`A344236(n+1)+A176738(n)`
-/

namespace A102446.P9758280763200066411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344236 (n + 1) + A176738 n

end

end A102446.P9758280763200066411

namespace A102446

/-- `A344236(n+1)+A176738(n)` -/
def P9758280763200066411.Spec : Prop :=
  ∀ n, P9758280763200066411.a n = A102446 n

end A102446

/-! ## A102446.P10482336056077220553

`2*(A344261(n)+A344236(n))`
-/

namespace A102446.P10482336056077220553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A344261 n + A344236 n)

end

end A102446.P10482336056077220553

namespace A102446

/-- `2*(A344261(n)+A344236(n))` -/
def P10482336056077220553.Spec : Prop :=
  ∀ n, P10482336056077220553.a n = A102446 n

end A102446

/-! ## A102446.P14369238308623860140

`2*(A072265(n)-A052923(n))`
-/

namespace A102446.P14369238308623860140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A072265 n - A052923 n)

end

end A102446.P14369238308623860140

namespace A102446

/-- `2*(A072265(n)-A052923(n))` -/
def P14369238308623860140.Spec : Prop :=
  ∀ n, P14369238308623860140.a n = A102446 n

end A102446

/-! ## A102446.P32920899330108064

`Δ[A344236(n+1)+A000034(n)]`
-/

namespace A102446.P32920899330108064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344236 (n + 1) + A000034 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A102446.P32920899330108064

namespace A102446

/-- `Δ[A344236(n+1)+A000034(n)]` -/
def P32920899330108064.Spec : Prop :=
  ∀ n, P32920899330108064.a n = A102446 n

end A102446

/-! ## A102446.P15153513820829859484

`Δ[A344236(n+1)+A000035(n)]`
-/

namespace A102446.P15153513820829859484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344236 (n + 1) + A000035 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A102446.P15153513820829859484

namespace A102446

/-- `Δ[A344236(n+1)+A000035(n)]` -/
def P15153513820829859484.Spec : Prop :=
  ∀ n, P15153513820829859484.a n = A102446 n

end A102446

/-!
# A102448: a(n) is the number of ways to write n = k^2 * j, j <= k, gcd(k,j) = 1, where j and k are positive integers.

The programs for A102448, there is no canonical definition to state claims against.
-/

/-! ## A102448.P14293639075603503855

`A000007(A178047(n+1)%A350389(n+1))`
-/

namespace A102448.P14293639075603503855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (Int.tmod (A178047 (n + 1)) (A350389 (n + 1))).toNat

end

end A102448.P14293639075603503855

/-! ## A102448.P14366582622274703502

`A000038(A178047(Δ[n²]-n)%A350389(n+1))/2`
-/

namespace A102448.P14366582622274703502
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000038 (Int.tmod (A178047 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat) (A350389 (n + 1))).toNat : ℚ) / 2

end

end A102448.P14366582622274703502

/-! ## A102448.P5091329060884051678

`C(A102354(n+1), A278161(A328855(n+1)))`
-/

namespace A102448.P5091329060884051678
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A102354 (n + 1)).toNat (A278161 (A328855 (n + 1)).toNat).toNat

end

end A102448.P5091329060884051678

/-! ## A102448.P13095702417917033823

`and(A104124(A064988(n+1)), A323087(n+1))`
-/

namespace A102448.P13095702417917033823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A104124 (A064988 (n + 1)).toNat) (A323087 (n + 1))

end

end A102448.P13095702417917033823

/-! ## A102448.P10866198106698906636

`C(A102354(n+1), A001227(A343652(n+1)))`
-/

namespace A102448.P10866198106698906636
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A102354 (n + 1)).toNat (A001227 (A343652 (n + 1)).toNat).toNat

end

end A102448.P10866198106698906636

/-! ## A102448.P12750678174567979867

`A000007(A350388(n+1)%A102095(n+1))`
-/

namespace A102448.P12750678174567979867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (Int.tmod (A350388 (n + 1)) (A102095 (n + 1))).toNat

end

end A102448.P12750678174567979867

/-! ## A102448.P8983574494455338581

`and(A102354(n+1), A113716(n*A102354(n+1)))`
-/

namespace A102448.P8983574494455338581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A102354 (n + 1)) (A113716 ((n : ℤ) * A102354 (n + 1)).toNat)

end

end A102448.P8983574494455338581

/-! ## A102448.P11556895156530991400

`and(A102354(n+1), A369217(n))`
-/

namespace A102448.P11556895156530991400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A102354 (n + 1)) (A369217 n)

end

end A102448.P11556895156530991400

/-! ## A102448.P11454341983767134706

`and(A102354(n+1), A113716(n))`
-/

namespace A102448.P11454341983767134706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A102354 (n + 1)) (A113716 n)

end

end A102448.P11454341983767134706

/-!
# A102449: Number of canalizing Boolean functions with n input variables.

The programs for A102449, there is no canonical definition to state claims against.
-/

/-! ## A102449.P17570304580178746948

`A353579(A050090(a(n-1)))` with `a(0)=2`
-/

namespace A102449.P17570304580178746948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A353579 (A050090 (a (n - 1)).toNat).toNat

end

end A102449.P17570304580178746948

/-!
# A102450: A100806(A100806(n)).

The programs for A102450, there is no canonical definition to state claims against.
-/

/-! ## A102450.P8482811088881238535

`A100806(A100806(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A102450.P8482811088881238535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100806 (A100806 (n + 1)).toNat

end

end A102450.P8482811088881238535

/-!
# A102451: Inverse of A100806.

The programs for A102451, there is no canonical definition to state claims against.
-/

/-! ## A102451.P3926527675924346000

`A100806(A102452(n+1))`
-/

namespace A102451.P3926527675924346000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100806 (A102452 (n + 1)).toNat

end

end A102451.P3926527675924346000

/-! ## A102451.P3889732616330009883

`A000015(n+1)-A336121(A000051(n))`
-/

namespace A102451.P3889732616330009883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000015 (n + 1) - A336121 (A000051 n).toNat

end

end A102451.P3889732616330009883

/-! ## A102451.P2830122850090215737

`A188666(Δ[n²])-A336121(A000051(n))`
-/

namespace A102451.P2830122850090215737
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188666 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - A336121 (A000051 n).toNat

end

end A102451.P2830122850090215737

/-! ## A102451.P9869056231829105373

`A031218(A188666(2*n+1))-A336121(A000051(n))`
-/

namespace A102451.P9869056231829105373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031218 (A188666 (2 * n + 1)).toNat - A336121 (A000051 n).toNat

end

end A102451.P9869056231829105373

/-! ## A102451.P8041716229223582733

`Δ[A336121(A000051(n))+∑[n]]`
-/

namespace A102451.P8041716229223582733
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336121 (A000051 n).toNat + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A102451.P8041716229223582733

/-!
# A102452: A102450(A102450(n)).

The programs for A102452, there is no canonical definition to state claims against.
-/

/-! ## A102452.P14969327846790701837

`A102451(A102451(n+1))`
-/

namespace A102452.P14969327846790701837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102451 (A102451 (n + 1)).toNat

end

end A102452.P14969327846790701837

/-!
# A102453: A101212(A101212(n)).

The programs for A102453, there is no canonical definition to state claims against.
-/

/-! ## A102453.P7218897074661622063

`A101212(A101212(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A102453.P7218897074661622063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101212 (A101212 (n + 1)).toNat

end

end A102453.P7218897074661622063

/-!
# A102454: Inverse of A101212.

The programs for A102454, there is no canonical definition to state claims against.
-/

/-! ## A102454.P13074999169663545525

`A102455(A101212(n+1))`
-/

namespace A102454.P13074999169663545525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102455 (A101212 (n + 1)).toNat

end

end A102454.P13074999169663545525

/-! ## A102454.P11702432150904248304

`A151800(n)-A320655(A357132(n+1))`
-/

namespace A102454.P11702432150904248304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 n - A320655 (A357132 (n + 1)).toNat

end

end A102454.P11702432150904248304

/-! ## A102454.P8724731635591652609

`xor(A123882(n+1), A225654(A147263(n+1)))`
-/

namespace A102454.P8724731635591652609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A123882 (n + 1)) (A225654 (A147263 (n + 1)).toNat)

end

end A102454.P8724731635591652609

/-!
# A102455: A102453(A102453(n)).

The programs for A102455, there is no canonical definition to state claims against.
-/

/-! ## A102455.P7977646882795956160

`A102454(A102454(n+1))`
-/

namespace A102455.P7977646882795956160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102454 (A102454 (n + 1)).toNat

end

end A102455.P7977646882795956160

/-!
# A102456: a(n) = n!/A102356(n).

The programs for A102456, there is no canonical definition to state claims against.
-/

/-! ## A102456.P6697167416304330993

`n!/A102356(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A102456.P6697167416304330993
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) / (A102356 n : ℚ)

end

end A102456.P6697167416304330993

/-! ## A102456.P3529177551233479354

`A000142(n)/A102356(n)`
-/

namespace A102456.P3529177551233479354
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n : ℚ) / (A102356 n : ℚ)

end

end A102456.P3529177551233479354

/-! ## A102456.P13231523149923427929

`A098361(∑[n])/A102356(n)`
-/

namespace A102456.P13231523149923427929
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098361 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / (A102356 n : ℚ)

end

end A102456.P13231523149923427929

/-! ## A102456.P11939772853808189971

`∏[A028310(n)]/A102356(n)`
-/

namespace A102456.P11939772853808189971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A102356 n : ℚ)

end

end A102456.P11939772853808189971

/-!
# A102457: Least k >= 2 with n^(kn) == n (mod kn), also n^(kn-1) == 1 (mod k).

The programs for A102457, there is no canonical definition to state claims against.
-/

/-! ## A102457.P5738441826153682701

`A271669(n+2)/(n+2)`
-/

namespace A102457.P5738441826153682701
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A271669 (n + 2) : ℚ) / (n + 2 : ℚ)

end

end A102457.P5738441826153682701

/-!
# A102458: Numbers n with A102457(n) != lpf(n-1) (lpf = least prime factor).

The programs for A102458, there is no canonical definition to state claims against.
-/

/-! ## A102458.P657887586025223026

`comp[lcm(n, A102457(xor(1, n+2)))]+1`
-/

namespace A102458.P657887586025223026
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A102457 (Nat.xor 1 (n + 2)))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1

end

end A102458.P657887586025223026

/-!
# A102459: a(n) = A102457(k) for k in A102458. For these k, A102457(k) != lpf(k-1).

The programs for A102459, there is no canonical definition to state claims against.
-/

/-! ## A102459.P2821977150581647337

`A102457(A102458(n+1))`
-/

namespace A102459.P2821977150581647337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102457 (A102458 (n + 1)).toNat

end

end A102459.P2821977150581647337

/-!
# A102460: a(n) = 1 if n is a Lucas number, else a(n) = 0.

The programs for A102460, the canonical program `A102460.P15049539756938352044` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A102460 has offset 0).

The definition of A102460 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A102460.P15049539756938352044

`char[round(ϕ^n)]`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A102460

/-- `char[round(ϕ^n)]` -/
def P15049539756938352044.Spec : Prop :=
  ∀ n, (P15049539756938352044.a n : ℤ) = A102460 n

theorem P15049539756938352044.correct : P15049539756938352044.Spec := by
  intro n
  simp only [A102460]

end A102460

/-! ## A102460.P3031496974484197818

`and(1, char[A000032(n)])`
-/

namespace A102460.P3031496974484197818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (if ∃ j, f1 j = (n : ℤ) then 1 else 0)

end

end A102460.P3031496974484197818

namespace A102460

/-- `and(1, char[A000032(n)])` -/
def P3031496974484197818.Spec : Prop :=
  ∀ n, (P3031496974484197818.a n : ℤ) = A102460 n

end A102460

/-! ## A102460.P16402969789518390888

`and(1, char[A169985(n)])`
-/

namespace A102460.P16402969789518390888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169985 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (if ∃ j, f1 j = (n : ℤ) then 1 else 0)

end

end A102460.P16402969789518390888

namespace A102460

/-- `and(1, char[A169985(n)])` -/
def P16402969789518390888.Spec : Prop :=
  ∀ n, (P16402969789518390888.a n : ℤ) = A102460 n

end A102460

/-! ## A102460.P14578811397213197565

`and(1, char[A254729(n)])`
-/

namespace A102460.P14578811397213197565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254729 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (if ∃ j, f1 j = (n : ℤ) then 1 else 0)

end

end A102460.P14578811397213197565

namespace A102460

/-- `and(1, char[A254729(n)])` -/
def P14578811397213197565.Spec : Prop :=
  ∀ n, (P14578811397213197565.a n : ℤ) = A102460 n

end A102460

/-! ## A102460.P16924919352040995764

`and(1, char[Δ[A001610(n)]])`
-/

namespace A102460.P16924919352040995764
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001610 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (if ∃ j, f1 j = (n : ℤ) then 1 else 0)

end

end A102460.P16924919352040995764

namespace A102460

/-- `and(1, char[Δ[A001610(n)]])` -/
def P16924919352040995764.Spec : Prop :=
  ∀ n, (P16924919352040995764.a n : ℤ) = A102460 n

end A102460

/-! ## A102460.P9593677123479366013

`and(1, char[A111957(n+1)])`
-/

namespace A102460.P9593677123479366013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111957 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (if ∃ j, f1 j = (n : ℤ) then 1 else 0)

end

end A102460.P9593677123479366013

namespace A102460

/-- `and(1, char[A111957(n+1)])` -/
def P9593677123479366013.Spec : Prop :=
  ∀ n, (P9593677123479366013.a n : ℤ) = A102460 n

end A102460

/-! ## A102460.P7934587191912994785

`and(1, char[A280694(n+1)])`
-/

namespace A102460.P7934587191912994785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280694 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (if ∃ j, f1 j = (n : ℤ) then 1 else 0)

end

end A102460.P7934587191912994785

namespace A102460

/-- `and(1, char[A280694(n+1)])` -/
def P7934587191912994785.Spec : Prop :=
  ∀ n, (P7934587191912994785.a n : ℤ) = A102460 n

end A102460

/-! ## A102460.P8130234386050346968

`char[1]+char[A080023(n+1)]`
-/

namespace A102460.P8130234386050346968
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080023 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = n then 1 else 0) + (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

end

end A102460.P8130234386050346968

namespace A102460

/-- `char[1]+char[A080023(n+1)]` -/
def P8130234386050346968.Spec : Prop :=
  ∀ n, (P8130234386050346968.a n : ℤ) = A102460 n

end A102460

/-! ## A102460.P13263894860615710211

`char[2]+char[A000204(n+1)]`
-/

namespace A102460.P13263894860615710211
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000204 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = n then 1 else 0) + (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

end

end A102460.P13263894860615710211

namespace A102460

/-- `char[2]+char[A000204(n+1)]` -/
def P13263894860615710211.Spec : Prop :=
  ∀ n, (P13263894860615710211.a n : ℤ) = A102460 n

end A102460

/-! ## A102460.P4607292795846138523

`A000045(A130245(n)-A130242(n))`
-/

namespace A102460.P4607292795846138523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A130245 n - A130242 n).toNat

end

end A102460.P4607292795846138523

namespace A102460

/-- `A000045(A130245(n)-A130242(n))` -/
def P4607292795846138523.Spec : Prop :=
  ∀ n, P4607292795846138523.a n = A102460 n

end A102460

/-! ## A102460.P17218638033210254005

`A130259(A130245(n)-A130242(n))`
-/

namespace A102460.P17218638033210254005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130259 (A130245 n - A130242 n).toNat

end

end A102460.P17218638033210254005

namespace A102460

/-- `A130259(A130245(n)-A130242(n))` -/
def P17218638033210254005.Spec : Prop :=
  ∀ n, P17218638033210254005.a n = A102460 n

end A102460

/-! ## A102460.P992333302410876614

`Δ[A345379(n²-n)]`
-/

namespace A102460.P992333302410876614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345379 (n ^ 2 - n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A102460.P992333302410876614

namespace A102460

/-- `Δ[A345379(n²-n)]` -/
def P992333302410876614.Spec : Prop :=
  ∀ n, P992333302410876614.a n = A102460 n

end A102460

/-!
# A102461: Numbers n such that binomial(n,2) is in A027568.

The programs for A102461, there is no canonical definition to state claims against.
-/

/-! ## A102461.P4719348634286234508

`record[abs(1-3*n)*∏{p}[n, #-1]]`
-/

namespace A102461.P4719348634286234508
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (3 * n : ℤ)| * (∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A102461.P4719348634286234508

/-!
# A102462: Max{ k!/(a(1)!*a(2)!*..*a(n)!) : a(1) + 2*a(2) + 3*a(3) + ... + n*a(n) = n, a(1) + a(2) + ... + a(n) = k }.

The programs for A102462, there is no canonical definition to state claims against.
-/

/-! ## A102462.P10402547043261557546

`sqrt(A250029(n))`
-/

namespace A102462.P10402547043261557546
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A250029 n : ℝ)

end

end A102462.P10402547043261557546

/-! ## A102462.P1179484596133439623

`root(A250029(n), A046698(n)!)`
-/

namespace A102462.P1179484596133439623
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A250029 n : ℝ) ^ (1 / (Nat.factorial (A046698 n).toNat : ℝ))

end

end A102462.P1179484596133439623

/-! ## A102462.P14035318019395311778

`root(A250029(n), ratio[A000079(n)])`
-/

namespace A102462.P14035318019395311778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A250029 n : ℝ) ^ (1 / ((f1 (n + 1) : ℚ) / (f1 n : ℚ) : ℝ))

end

end A102462.P14035318019395311778

/-! ## A102462.P1917340541976566214

`root(A250029(n), ratio[A011782(n)])`
-/

namespace A102462.P1917340541976566214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A250029 n : ℝ) ^ (1 / ((f1 (n + 1) : ℚ) / (f1 n : ℚ) : ℝ))

end

end A102462.P1917340541976566214

/-! ## A102462.P3880788122878108001

`root(A250029(n), A046698(n+1))`
-/

namespace A102462.P3880788122878108001
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A250029 n : ℝ) ^ (1 / (A046698 (n + 1) : ℝ))

end

end A102462.P3880788122878108001

/-!
# A102466: Numbers such that the number of divisors is the sum of numbers of prime factors with and without repetitions.

The programs for A102466, the canonical program `A102466.P3139959994991755429` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A102466 has offset 1).

The definition of A102466 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A102466.P3139959994991755429

`lt[∏{p}[n, (n-1)/#], n]`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A102466

/-- `lt[∏{p}[n, (n-1)/#], n]` -/
def P3139959994991755429.Spec : Prop :=
  ∀ n, (P3139959994991755429.a n : ℤ) = A102466 (n + 1)

theorem P3139959994991755429.correct : P3139959994991755429.Spec := by
  intro n
  simp only [A102466, Nat.add_sub_cancel]

end A102466

/-! ## A102466.P14569101306122797755

`lt[∏{e}[n, #*(n-1)], n²]`
-/

namespace A102466.P14569101306122797755
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p : ℤ) * ((n : ℤ) - 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A102466.P14569101306122797755

namespace A102466

/-- `lt[∏{e}[n, #*(n-1)], n²]` -/
def P14569101306122797755.Spec : Prop :=
  ∀ n, (P14569101306122797755.a n : ℤ) = A102466 (n + 1)

end A102466

/-! ## A102466.P1769270586552811614

`A354144(n+2)`
-/

namespace A102466.P1769270586552811614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354144 (n + 2)

end

end A102466.P1769270586552811614

namespace A102466

/-- `A354144(n+2)` -/
def P1769270586552811614.Spec : Prop :=
  ∀ n, P1769270586552811614.a n = A102466 (n + 1)

end A102466

/-! ## A102466.P7596415018989806965

`lt[A135767(n+1), 1]+1`
-/

namespace A102466.P7596415018989806965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135767 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A102466.P7596415018989806965

namespace A102466

/-- `lt[A135767(n+1), 1]+1` -/
def P7596415018989806965.Spec : Prop :=
  ∀ n, (P7596415018989806965.a n : ℤ) = A102466 (n + 1)

end A102466

/-! ## A102466.P15466407480629535186

`eq[1, A014649(n+2)]+2`
-/

namespace A102466.P15466407480629535186
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014649 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A102466.P15466407480629535186

namespace A102466

/-- `eq[1, A014649(n+2)]+2` -/
def P15466407480629535186.Spec : Prop :=
  ∀ n, (P15466407480629535186.a n : ℤ) = A102466 (n + 1)

end A102466

/-! ## A102466.P17199389422841754870

`lt[A076413(n+2), 2]+2`
-/

namespace A102466.P17199389422841754870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076413 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A102466.P17199389422841754870

namespace A102466

/-- `lt[A076413(n+2), 2]+2` -/
def P17199389422841754870.Spec : Prop :=
  ∀ n, (P17199389422841754870.a n : ℤ) = A102466 (n + 1)

end A102466

/-! ## A102466.P5860302185813711192

`lt[A086971(n+2), 2]+2`
-/

namespace A102466.P5860302185813711192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086971 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A102466.P5860302185813711192

namespace A102466

/-- `lt[A086971(n+2), 2]+2` -/
def P5860302185813711192.Spec : Prop :=
  ∀ n, (P5860302185813711192.a n : ℤ) = A102466 (n + 1)

end A102466

/-! ## A102466.P11184449497024923462

`lt[A089233(n+2), 2]+2`
-/

namespace A102466.P11184449497024923462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089233 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A102466.P11184449497024923462

namespace A102466

/-- `lt[A089233(n+2), 2]+2` -/
def P11184449497024923462.Spec : Prop :=
  ∀ n, (P11184449497024923462.a n : ℤ) = A102466 (n + 1)

end A102466

/-! ## A102466.P18045471209741523332

`lt[A110475(n+2), 2]+2`
-/

namespace A102466.P18045471209741523332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110475 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A102466.P18045471209741523332

namespace A102466

/-- `lt[A110475(n+2), 2]+2` -/
def P18045471209741523332.Spec : Prop :=
  ∀ n, (P18045471209741523332.a n : ℤ) = A102466 (n + 1)

end A102466

/-! ## A102466.P1863980160989410952

`lt[A281116(n+2), 2]+2`
-/

namespace A102466.P1863980160989410952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281116 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A102466.P1863980160989410952

namespace A102466

/-- `lt[A281116(n+2), 2]+2` -/
def P1863980160989410952.Spec : Prop :=
  ∀ n, (P1863980160989410952.a n : ℤ) = A102466 (n + 1)

end A102466

/-! ## A102466.P11283973002233584893

`lt[A293227(n+2), 4]+2`
-/

namespace A102466.P11283973002233584893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293227 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A102466.P11283973002233584893

namespace A102466

/-- `lt[A293227(n+2), 4]+2` -/
def P11283973002233584893.Spec : Prop :=
  ∀ n, (P11283973002233584893.a n : ℤ) = A102466 (n + 1)

end A102466

/-! ## A102466.P14689460401366175567

`lt[n, A131233(n+2)]+2`
-/

namespace A102466.P14689460401366175567
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131233 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2

end

end A102466.P14689460401366175567

namespace A102466

/-- `lt[n, A131233(n+2)]+2` -/
def P14689460401366175567.Spec : Prop :=
  ∀ n, (P14689460401366175567.a n : ℤ) = A102466 (n + 1)

end A102466

/-! ## A102466.P1350442382080076599

`lt[A092976(n), A066882(n)+n]`
-/

namespace A102466.P1350442382080076599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092976 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066882 n + (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A102466.P1350442382080076599

namespace A102466

/-- `lt[A092976(n), A066882(n)+n]` -/
def P1350442382080076599.Spec : Prop :=
  ∀ n, (P1350442382080076599.a n : ℤ) = A102466 (n + 1)

end A102466

/-! ## A102466.P14126174695305062216

`∪[A059046(n+1), A068993(n+1)]`
-/

namespace A102466.P14126174695305062216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059046 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068993 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A102466.P14126174695305062216

namespace A102466

/-- `∪[A059046(n+1), A068993(n+1)]` -/
def P14126174695305062216.Spec : Prop :=
  ∀ n, (P14126174695305062216.a n : ℤ) = A102466 (n + 1)

end A102466

/-! ## A102466.P4224251061764692991

`∪[A000961(n+2), A001358(n+2)]`
-/

namespace A102466.P4224251061764692991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A102466.P4224251061764692991

namespace A102466

/-- `∪[A000961(n+2), A001358(n+2)]` -/
def P4224251061764692991.Spec : Prop :=
  ∀ n, (P4224251061764692991.a n : ℤ) = A102466 (n + 1)

end A102466

/-! ## A102466.P15830526832679318809

`∪[A000961(n+2), A037143(n+2)]`
-/

namespace A102466.P15830526832679318809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037143 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A102466.P15830526832679318809

namespace A102466

/-- `∪[A000961(n+2), A037143(n+2)]` -/
def P15830526832679318809.Spec : Prop :=
  ∀ n, (P15830526832679318809.a n : ℤ) = A102466 (n + 1)

end A102466

/-! ## A102466.P7598213359405219746

`∪[A000961(n+2), A084116(n+2)]`
-/

namespace A102466.P7598213359405219746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084116 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A102466.P7598213359405219746

namespace A102466

/-- `∪[A000961(n+2), A084116(n+2)]` -/
def P7598213359405219746.Spec : Prop :=
  ∀ n, (P7598213359405219746.a n : ℤ) = A102466 (n + 1)

end A102466

/-! ## A102466.P12904282998867934915

`eq[A001221(n+1), A008480(n+1)]+1`
-/

namespace A102466.P12904282998867934915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008480 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A102466.P12904282998867934915

namespace A102466

/-- `eq[A001221(n+1), A008480(n+1)]+1` -/
def P12904282998867934915.Spec : Prop :=
  ∀ n, (P12904282998867934915.a n : ℤ) = A102466 (n + 1)

end A102466

/-!
# A102467: Positive integers k such that d(k) <> Omega(k) + omega(k), where d = A000005, Omega = A001222 and omega = A001221.

The programs for A102467, the canonical program `A102467.P1597682533907029869` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A102467 has offset 1).

The definition of A102467 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A102467.P1597682533907029869

`lt[(1-n)², ∏{e}[n, n-2+#]]`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A102467

/-- `lt[(1-n)², ∏{e}[n, n-2+#]]` -/
def P1597682533907029869.Spec : Prop :=
  ∀ n, (P1597682533907029869.a n : ℤ) = A102467 (n + 1)

theorem P1597682533907029869.correct : P1597682533907029869.Spec := by
  intro n
  simp only [A102467, Nat.add_sub_cancel]

end A102467

/-! ## A102467.P18035537726197522239

`eq[1, n^C(2, A066882(n))]`
-/

namespace A102467.P18035537726197522239
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ Nat.choose 2 (A066882 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A102467.P18035537726197522239

namespace A102467

/-- `eq[1, n^C(2, A066882(n))]` -/
def P18035537726197522239.Spec : Prop :=
  ∀ n, (P18035537726197522239.a n : ℤ) = A102467 (n + 1)

end A102467

/-! ## A102467.P3966448196389254868

`comp[A102466(n+1)-1]+1`
-/

namespace A102467.P3966448196389254868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102466 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A102467.P3966448196389254868

namespace A102467

/-- `comp[A102466(n+1)-1]+1` -/
def P3966448196389254868.Spec : Prop :=
  ∀ n, (P3966448196389254868.a n : ℤ) = A102467 (n + 1)

end A102467

/-! ## A102467.P10273532826070175024

`lt[2*n, A183092(n+1)]+1`
-/

namespace A102467.P10273532826070175024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183092 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A102467.P10273532826070175024

namespace A102467

/-- `lt[2*n, A183092(n+1)]+1` -/
def P10273532826070175024.Spec : Prop :=
  ∀ n, (P10273532826070175024.a n : ℤ) = A102467 (n + 1)

end A102467

/-! ## A102467.P18371085433082202961

`eq[1, A000045(a(A135767(n)))]` with `a(0)=3, a(1)=1`
-/

namespace A102467.P18371085433082202961
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3, 1] fun n f2 =>
  A000045 (f2 (A135767 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A102467.P18371085433082202961

namespace A102467

/-- `eq[1, A000045(a(A135767(n)))]` -/
def P18371085433082202961.Spec : Prop :=
  ∀ n, (P18371085433082202961.a n : ℤ) = A102467 (n + 1)

end A102467

/-! ## A102467.P1412019315194224677

`eq[1, A265370(a(A135767(n)))]` with `a(0)=8, a(1)=1`
-/

namespace A102467.P1412019315194224677
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [8, 1] fun n f2 =>
  A265370 (f2 (A135767 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A102467.P1412019315194224677

namespace A102467

/-- `eq[1, A265370(a(A135767(n)))]` -/
def P1412019315194224677.Spec : Prop :=
  ∀ n, (P1412019315194224677.a n : ℤ) = A102467 (n + 1)

end A102467

/-! ## A102467.P11891618844557547792

`∩[A100959(n+1), A361102(n+1)]`
-/

namespace A102467.P11891618844557547792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361102 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A102467.P11891618844557547792

namespace A102467

/-- `∩[A100959(n+1), A361102(n+1)]` -/
def P11891618844557547792.Spec : Prop :=
  ∀ n, (P11891618844557547792.a n : ℤ) = A102467 (n + 1)

end A102467

/-! ## A102467.P1511951050883812822

`∩[A111087(n+1), A361102(n+1)]`
-/

namespace A102467.P1511951050883812822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361102 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A102467.P1511951050883812822

namespace A102467

/-- `∩[A111087(n+1), A361102(n+1)]` -/
def P1511951050883812822.Spec : Prop :=
  ∀ n, (P1511951050883812822.a n : ℤ) = A102467 (n + 1)

end A102467

/-! ## A102467.P14074035843191310609

`∩[A111087(n+1), A387335(n+1)]`
-/

namespace A102467.P14074035843191310609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387335 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A102467.P14074035843191310609

namespace A102467

/-- `∩[A111087(n+1), A387335(n+1)]` -/
def P14074035843191310609.Spec : Prop :=
  ∀ n, (P14074035843191310609.a n : ℤ) = A102467 (n + 1)

end A102467

/-! ## A102467.P11926278077051794449

`∩[A210994(n+1), A361102(n+1)]`
-/

namespace A102467.P11926278077051794449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210994 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361102 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A102467.P11926278077051794449

namespace A102467

/-- `∩[A210994(n+1), A361102(n+1)]` -/
def P11926278077051794449.Spec : Prop :=
  ∀ n, (P11926278077051794449.a n : ℤ) = A102467 (n + 1)

end A102467

/-! ## A102467.P10629303301766343999

`∩[A246716(n+1), A361102(n+1)]`
-/

namespace A102467.P10629303301766343999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246716 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361102 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A102467.P10629303301766343999

namespace A102467

/-- `∩[A246716(n+1), A361102(n+1)]` -/
def P10629303301766343999.Spec : Prop :=
  ∀ n, (P10629303301766343999.a n : ℤ) = A102467 (n + 1)

end A102467

/-! ## A102467.P6586218021491653393

`∩[A289553(n+1), A361102(n+1)]`
-/

namespace A102467.P6586218021491653393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289553 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361102 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A102467.P6586218021491653393

namespace A102467

/-- `∩[A289553(n+1), A361102(n+1)]` -/
def P6586218021491653393.Spec : Prop :=
  ∀ n, (P6586218021491653393.a n : ℤ) = A102467 (n + 1)

end A102467

/-! ## A102467.P5377010696390723526

`∪[A187039(n+1), A376384(n+1)]`
-/

namespace A102467.P5377010696390723526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187039 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376384 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A102467.P5377010696390723526

namespace A102467

/-- `∪[A187039(n+1), A376384(n+1)]` -/
def P5377010696390723526.Spec : Prop :=
  ∀ n, (P5377010696390723526.a n : ℤ) = A102467 (n + 1)

end A102467

/-! ## A102467.P11284968975475624983

`∪[A267117(n+1), A376384(n+1)]`
-/

namespace A102467.P11284968975475624983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376384 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A102467.P11284968975475624983

namespace A102467

/-- `∪[A267117(n+1), A376384(n+1)]` -/
def P11284968975475624983.Spec : Prop :=
  ∀ n, (P11284968975475624983.a n : ℤ) = A102467 (n + 1)

end A102467

/-! ## A102467.P3734576942683765071

`∪[A348097(n+1), A376384(n+1)]`
-/

namespace A102467.P3734576942683765071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348097 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376384 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A102467.P3734576942683765071

namespace A102467

/-- `∪[A348097(n+1), A376384(n+1)]` -/
def P3734576942683765071.Spec : Prop :=
  ∀ n, (P3734576942683765071.a n : ℤ) = A102467 (n + 1)

end A102467

/-! ## A102467.P7585273012890918509

`lt[A080256(n+1), A000005(n+1)]+1`
-/

namespace A102467.P7585273012890918509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080256 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A102467.P7585273012890918509

namespace A102467

/-- `lt[A080256(n+1), A000005(n+1)]+1` -/
def P7585273012890918509.Spec : Prop :=
  ∀ n, (P7585273012890918509.a n : ℤ) = A102467 (n + 1)

end A102467

/-! ## A102467.P6943662848439803329

`lt[A013928(2*n+1), A092976(n+1)]+1`
-/

namespace A102467.P6943662848439803329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013928 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092976 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A102467.P6943662848439803329

namespace A102467

/-- `lt[A013928(2*n+1), A092976(n+1)]+1` -/
def P6943662848439803329.Spec : Prop :=
  ∀ n, (P6943662848439803329.a n : ℤ) = A102467 (n + 1)

end A102467

/-! ## A102467.P13180915697304326238

`eq[1, A014963(A063753(A135767(n+1)+1))]+1`
-/

namespace A102467.P13180915697304326238
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A063753 (A135767 (n + 1) + 1).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A102467.P13180915697304326238

namespace A102467

/-- `eq[1, A014963(A063753(A135767(n+1)+1))]+1` -/
def P13180915697304326238.Spec : Prop :=
  ∀ n, (P13180915697304326238.a n : ℤ) = A102467 (n + 1)

end A102467

/-! ## A102467.P12001560785256031945

`A028310(lt[n, A284463(n)+1])`
-/

namespace A102467.P12001560785256031945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284463 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A102467.P12001560785256031945

namespace A102467

/-- `A028310(lt[n, A284463(n)+1])` -/
def P12001560785256031945.Spec : Prop :=
  ∀ n, P12001560785256031945.a n = A102467 (n + 1)

end A102467

/-! ## A102467.P16309375803354865226

`A028310(lt[n-1, A284463(n)])`
-/

namespace A102467.P16309375803354865226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284463 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A102467.P16309375803354865226

namespace A102467

/-- `A028310(lt[n-1, A284463(n)])` -/
def P16309375803354865226.Spec : Prop :=
  ∀ n, P16309375803354865226.a n = A102467 (n + 1)

end A102467

/-!
# A102468: a(n)! is the smallest factorial divisible by the numerator of Sum_{k=0...n} 1/k!, with a(0) = 1.

The programs for A102468, there is no canonical definition to state claims against.
-/

/-! ## A102468.P14792883436898043120

`A002034(A061354(n))`
-/

namespace A102468.P14792883436898043120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002034 (A061354 n).toNat

end

end A102468.P14792883436898043120

/-! ## A102468.P9701540526965053933

`gcd(A102469(n)², A000522(n))`
-/

namespace A102468.P9701540526965053933
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A102469 n ^ 2) (A000522 n)

end

end A102468.P9701540526965053933

/-! ## A102468.P14088774831681223836

`A014963(A315345(n))*A102469(n)`
-/

namespace A102468.P14088774831681223836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A315345 n).toNat * A102469 n

end

end A102468.P14088774831681223836

/-! ## A102468.P12265455173741982862

`A102469(n)+A096501(A015822(n+1))`
-/

namespace A102468.P12265455173741982862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102469 n + A096501 (A015822 (n + 1)).toNat

end

end A102468.P12265455173741982862

/-! ## A102468.P10237279906799429199

`A049077(A094802(n+1))*A102469(n)`
-/

namespace A102468.P10237279906799429199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049077 (A094802 (n + 1)).toNat * A102469 n

end

end A102468.P10237279906799429199

/-!
# A102469: Largest prime factor of numerator of Sum_{k=0...n} 1/k!, with a(0) = 1.

The programs for A102469, there is no canonical definition to state claims against.
-/

/-! ## A102469.P7785129579363644246

`A006530(A061354(n))`
-/

namespace A102469.P7785129579363644246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A061354 n).toNat

end

end A102469.P7785129579363644246

/-! ## A102469.P6317268351675334164

`A102468(n-and(2, A009204(n)))`
-/

namespace A102469.P6317268351675334164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102468 ((n : ℤ) - Int.land 2 (A009204 n)).toNat

end

end A102469.P6317268351675334164

/-! ## A102469.P3628106298090585198

`A102468(n)/A014963(A315345(n))`
-/

namespace A102469.P3628106298090585198
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A102468 n : ℚ) / (A014963 (A315345 n).toNat : ℚ)

end

end A102469.P3628106298090585198

/-! ## A102469.P16897999340035684231

`A102468(n)+A089798(A055998(n+1))`
-/

namespace A102469.P16897999340035684231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102468 n + A089798 (A055998 (n + 1)).toNat

end

end A102469.P16897999340035684231

/-! ## A102469.P2819963610577393633

`A102468(n)-A096501(A015822(n+1))`
-/

namespace A102469.P2819963610577393633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102468 n - A096501 (A015822 (n + 1)).toNat

end

end A102469.P2819963610577393633

/-!
# A102470: Numbers n such that denominator of Sum_{k=0 to n} 1/k! is n!.

The programs for A102470, there is no canonical definition to state claims against.
-/

/-! ## A102470.P13999358622671886067

`eq[1, A093101(n)]`
-/

namespace A102470.P13999358622671886067
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093101 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A102470.P13999358622671886067

/-! ## A102470.P1521440318077301931

`record[n/A093101(abs(1-n)+1)]`
-/

namespace A102470.P1521440318077301931
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A093101 (|1 - (n : ℤ)| + 1).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A102470.P1521440318077301931

/-! ## A102470.P13774732775527803177

`∑{d}[record[n/A093101(n)], A000010(#)]`
-/

namespace A102470.P13774732775527803177
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A093101 n : ℚ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, A000010 d

end

end A102470.P13774732775527803177

/-! ## A102470.P10249983869768583906

`A000007(n+1)+record[n/A093101(n)]`
-/

namespace A102470.P10249983869768583906
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A093101 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000007 (n + 1) : ℚ) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A102470.P10249983869768583906

/-! ## A102470.P12806608090069486634

`A007318(C(2, n))*record[n/A093101(n)]`
-/

namespace A102470.P12806608090069486634
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A093101 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007318 (Nat.choose 2 n) : ℚ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A102470.P12806608090069486634

/-! ## A102470.P16623996625361106961

`record[n/A093101(n)]+A000045(C(n, 64))`
-/

namespace A102470.P16623996625361106961
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A093101 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (A000045 (Nat.choose n 64) : ℚ)

end

end A102470.P16623996625361106961

/-! ## A102470.P14605073709565590976

`record[n/A093101(n)]^A014963(∑[n+1])`
-/

namespace A102470.P14605073709565590976
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A093101 n : ℚ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) ^ (A014963 (∑ j ∈ Finset.range (n + 1), f2 j) : ℤ)

end

end A102470.P14605073709565590976

/-! ## A102470.P2579119080437644080

`record[n/A093101(n)]+A008683(4*(n+1))`
-/

namespace A102470.P2579119080437644080
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A093101 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (A008683 (4 * (n + 1)) : ℚ)

end

end A102470.P2579119080437644080

/-!
# A102471: Numbers n such that the denominator of Sum_{k=0 to 2n} 1/k! is (2n)!.

The programs for A102471, there is no canonical definition to state claims against.
-/

/-! ## A102471.P2214208943472637231

`eq[1, A093101(2*n)]`
-/

namespace A102471.P2214208943472637231
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093101 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A102471.P2214208943472637231

/-! ## A102471.P6025309854153955597

`record[floor(n/(A093101(n)+1))]`
-/

namespace A102471.P6025309854153955597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / (A093101 n + 1 : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A102471.P6025309854153955597

/-! ## A102471.P1609311621158028431

`record[ceil(n/2)/A093101(n+1)]`
-/

namespace A102471.P1609311621158028431
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌈(n : ℚ) / 2⌉ : ℚ) / (A093101 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A102471.P1609311621158028431

/-! ## A102471.P6310765751007917037

`lt[A093101(A004277(n)), 2]`
-/

namespace A102471.P6310765751007917037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093101 (A004277 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A102471.P6310765751007917037

/-! ## A102471.P3841881909044095750

`lt[A093101(A005843(n)), 2]`
-/

namespace A102471.P3841881909044095750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093101 (A005843 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A102471.P3841881909044095750

/-! ## A102471.P1428546890121381555

`A110654(eq[1, A093101(n+1)])`
-/

namespace A102471.P1428546890121381555
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093101 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A102471.P1428546890121381555

/-! ## A102471.P1100572579802342581

`record[A004525(n)/A093101(n)²]`
-/

namespace A102471.P1100572579802342581
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004525 n : ℚ) / (A093101 n ^ 2 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A102471.P1100572579802342581

/-! ## A102471.P1886863493659411295

`record[A004526(n)/A093101(n)²]`
-/

namespace A102471.P1886863493659411295
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004526 n : ℚ) / (A093101 n ^ 2 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A102471.P1886863493659411295

/-! ## A102471.P10301194504217763523

`∑{d}[record[n/A093101(2*n)], A000010(#)]`
-/

namespace A102471.P10301194504217763523
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A093101 (2 * n) : ℚ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, A000010 d

end

end A102471.P10301194504217763523

/-! ## A102471.P13826398416042446175

`record[n/A093101(2*n)]+A008683(8*n+4)`
-/

namespace A102471.P13826398416042446175
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A093101 (2 * n) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (A008683 (8 * n + 4) : ℚ)

end

end A102471.P13826398416042446175

/-!
# A102472: Triangle read by rows. Let S(k) be the sequence defined by F(0)=0, F(1)=1, F(n-1) + (n+k)*F(n) = F(n+1). E.g. S(0) = 0, 1, 1, 3, 10, 43, 225, 1393, 9976, 81201, ... Then S(0), S(1), S(2), ... are written vertically, next to each other, with the initial term of each on the next row down.

The programs for A102472, there is no canonical definition to state claims against.
-/

/-! ## A102472.P15800336762058088150

`A062323(comp[∑[n]])`
-/

namespace A102472.P15800336762058088150
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062323 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A102472.P15800336762058088150

/-! ## A102472.P5013628861828894923

`A058294(A004201(n+1))`
-/

namespace A102472.P5013628861828894923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058294 (A004201 (n + 1)).toNat

end

end A102472.P5013628861828894923

/-! ## A102472.P6589385943583530069

`A058294(A061885(n)+1)`
-/

namespace A102472.P6589385943583530069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058294 (A061885 n + 1).toNat

end

end A102472.P6589385943583530069

/-! ## A102472.P17586593970265009924

`A102473(A038722(n+1))`
-/

namespace A102472.P17586593970265009924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102473 (A038722 (n + 1)).toNat

end

end A102472.P17586593970265009924

/-! ## A102472.P4370930372423743415

`A102473(A061579(n)+1)`
-/

namespace A102472.P4370930372423743415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102473 (A061579 n + 1).toNat

end

end A102472.P4370930372423743415

/-! ## A102472.P6690807290471300936

`A102473(A002024(n+1)²-n)`
-/

namespace A102472.P6690807290471300936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102473 (A002024 (n + 1) ^ 2 - (n : ℤ)).toNat

end

end A102472.P6690807290471300936

/-! ## A102472.P12782888217064022280

`A246654(∑[char[∑[n]]]+n)`
-/

namespace A102472.P12782888217064022280
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246654 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A102472.P12782888217064022280

/-!
# A102473: Triangle read by rows. Let S(k) be the sequence defined by F(0)=0, F(1)=1, F(n-1) + (n+k)*F(n) = F(n+1). E.g. S(0) = 0,1,1,3,10,43,225,1393,9976,81201, ... Then S(0), S(1), S(2), ... are written next to each other, vertically, with the initial term of each on the next row down. The order of the terms in the rows are then reversed.

The programs for A102473, there is no canonical definition to state claims against.
-/

/-! ## A102473.P15855483937029914699

`A058294(A063656(n)+1)`
-/

namespace A102473.P15855483937029914699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058294 (A063656 n + 1).toNat

end

end A102473.P15855483937029914699

/-! ## A102473.P17026959181667238675

`A102472(A038722(n+1))`
-/

namespace A102473.P17026959181667238675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102472 (A038722 (n + 1)).toNat

end

end A102473.P17026959181667238675

/-! ## A102473.P2364967101423784665

`A102472(A061579(n)+1)`
-/

namespace A102473.P2364967101423784665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102472 (A061579 n + 1).toNat

end

end A102473.P2364967101423784665

/-! ## A102473.P548794157905685533

`A102472(A093995(n+1)-n)`
-/

namespace A102473.P548794157905685533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102472 (A093995 (n + 1) - (n : ℤ)).toNat

end

end A102473.P548794157905685533

/-! ## A102473.P5603332987032946361

`A062323(A038722(n+1)+A002024(n+1))`
-/

namespace A102473.P5603332987032946361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062323 (A038722 (n + 1) + A002024 (n + 1)).toNat

end

end A102473.P5603332987032946361

/-! ## A102473.P12326730686000056241

`A246654(A380649(n+1))`
-/

namespace A102473.P12326730686000056241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246654 (A380649 (n + 1)).toNat

end

end A102473.P12326730686000056241

/-! ## A102473.P15405491196588904707

`A246654(A099375(n)+n)`
-/

namespace A102473.P15405491196588904707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246654 (A099375 n + (n : ℤ)).toNat

end

end A102473.P15405491196588904707

/-!
# A102475: a(n) = floor(Pi^(n/2)).

The programs for A102475, the canonical program `A102475.P2315238900426724186` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A102475 has offset 0).

The definition of A102475 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 403 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A102475.P2315238900426724186

`floor(π^(n/2))`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A102475

/-- `floor(π^(n/2))` -/
def P2315238900426724186.Spec : Prop :=
  ∀ n, P2315238900426724186.a n = A102475 n

theorem P2315238900426724186.correct : P2315238900426724186.Spec := by
  intro n
  simp only [A102475]

end A102475

/-! ## A102475.P13243612480954792116

`∑[A306604(n-char[1])]+1`
-/

namespace A102475.P13243612480954792116
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306604 (n - (if ∃ j, f2 j = n then 1 else 0))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A102475.P13243612480954792116

namespace A102475

/-- `∑[A306604(n-char[1])]+1` -/
def P13243612480954792116.Spec : Prop :=
  ∀ n, P13243612480954792116.a n = A102475 n

end A102475

/-! ## A102475.P5510340865354367637

`A306604(n)+a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A102475.P5510340865354367637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A306604 n + a (n - 1)

end

end A102475.P5510340865354367637

namespace A102475

/-- `A306604(n)+a(n-1)` -/
def P5510340865354367637.Spec : Prop :=
  ∀ n, P5510340865354367637.a n = A102475 n

end A102475

/-! ## A102475.P9568382443937740106

`ceil(A057428(n)+π^(n/2))`
-/

namespace A102475.P9568382443937740106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A057428 n : ℝ) + Real.pi ^ ((n : ℚ) / 2 : ℝ)⌉

end

end A102475.P9568382443937740106

namespace A102475

/-- `ceil(A057428(n)+π^(n/2))` -/
def P9568382443937740106.Spec : Prop :=
  ∀ n, P9568382443937740106.a n = A102475 n

end A102475

/-! ## A102475.P3053244495708770307

`ceil(π^(n/2)-A057427(n))`
-/

namespace A102475.P3053244495708770307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.pi ^ ((n : ℚ) / 2 : ℝ) - (A057427 n : ℝ)⌉

end

end A102475.P3053244495708770307

namespace A102475

/-- `ceil(π^(n/2)-A057427(n))` -/
def P3053244495708770307.Spec : Prop :=
  ∀ n, P3053244495708770307.a n = A102475 n

end A102475

/-! ## A102475.P16250837063828172552

`ceil(π^(n/2))-char[A007306(n)]`
-/

namespace A102475.P16250837063828172552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007306 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.pi ^ ((n : ℚ) / 2 : ℝ)⌉ - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A102475.P16250837063828172552

namespace A102475

/-- `ceil(π^(n/2))-char[A007306(n)]` -/
def P16250837063828172552.Spec : Prop :=
  ∀ n, P16250837063828172552.a n = A102475 n

end A102475

/-! ## A102475.P7613389366304286526

`ceil(π^(n/2))-char[A291769(n)]`
-/

namespace A102475.P7613389366304286526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291769 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.pi ^ ((n : ℚ) / 2 : ℝ)⌉ - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A102475.P7613389366304286526

namespace A102475

/-- `ceil(π^(n/2))-char[A291769(n)]` -/
def P7613389366304286526.Spec : Prop :=
  ∀ n, P7613389366304286526.a n = A102475 n

end A102475

/-! ## A102475.P12668394761463674437

`ceil(π^(n/2))-char[A319701(n+1)]`
-/

namespace A102475.P12668394761463674437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319701 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.pi ^ ((n : ℚ) / 2 : ℝ)⌉ - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A102475.P12668394761463674437

namespace A102475

/-- `ceil(π^(n/2))-char[A319701(n+1)]` -/
def P12668394761463674437.Spec : Prop :=
  ∀ n, P12668394761463674437.a n = A102475 n

end A102475

/-! ## A102475.P17875213281841162802

`ceil(π^(n/2))-and(1, A000040(n+1))`
-/

namespace A102475.P17875213281841162802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.pi ^ ((n : ℚ) / 2 : ℝ)⌉ - Int.land 1 (A000040 (n + 1))

end

end A102475.P17875213281841162802

namespace A102475

/-- `ceil(π^(n/2))-and(1, A000040(n+1))` -/
def P17875213281841162802.Spec : Prop :=
  ∀ n, P17875213281841162802.a n = A102475 n

end A102475

/-! ## A102475.P15997809199216858965

`A102477(n)+A057428(n)`
-/

namespace A102475.P15997809199216858965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102477 n + A057428 n

end

end A102475.P15997809199216858965

namespace A102475

/-- `A102477(n)+A057428(n)` -/
def P15997809199216858965.Spec : Prop :=
  ∀ n, P15997809199216858965.a n = A102475 n

end A102475

/-! ## A102475.P15820472385391233260

`A102477(n)-A057427(n)`
-/

namespace A102475.P15820472385391233260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102477 n - A057427 n

end

end A102475.P15820472385391233260

namespace A102475

/-- `A102477(n)-A057427(n)` -/
def P15820472385391233260.Spec : Prop :=
  ∀ n, P15820472385391233260.a n = A102475 n

end A102475

/-! ## A102475.P8664399668024747526

`A000007(n)+∑[A306604(n)]`
-/

namespace A102475.P8664399668024747526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306604 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102475.P8664399668024747526

namespace A102475

/-- `A000007(n)+∑[A306604(n)]` -/
def P8664399668024747526.Spec : Prop :=
  ∀ n, P8664399668024747526.a n = A102475 n

end A102475

/-! ## A102475.P12614244928103992008

`A028310(n)+∑[A306604(n)]-n`
-/

namespace A102475.P12614244928103992008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306604 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n + (∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ))

end

end A102475.P12614244928103992008

namespace A102475

/-- `A028310(n)+∑[A306604(n)]-n` -/
def P12614244928103992008.Spec : Prop :=
  ∀ n, P12614244928103992008.a n = A102475 n

end A102475

/-! ## A102475.P7047126807058538904

`∑[A306604(n)]^and(1, A000040(n+1))`
-/

namespace A102475.P7047126807058538904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306604 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) ^ (Int.land 1 (A000040 (n + 1)) : ℤ)

end

end A102475.P7047126807058538904

namespace A102475

/-- `∑[A306604(n)]^and(1, A000040(n+1))` -/
def P7047126807058538904.Spec : Prop :=
  ∀ n, P7047126807058538904.a n = (A102475 n : ℚ)

end A102475

/-! ## A102475.P4582630753079451706

`ceil(π^(n/2))-A007895(A035517(n))`
-/

namespace A102475.P4582630753079451706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.pi ^ ((n : ℚ) / 2 : ℝ)⌉ - A007895 (A035517 n).toNat

end

end A102475.P4582630753079451706

namespace A102475

/-- `ceil(π^(n/2))-A007895(A035517(n))` -/
def P4582630753079451706.Spec : Prop :=
  ∀ n, P4582630753079451706.a n = A102475 n

end A102475

/-! ## A102475.P1631719661868117826

`ceil(π^(n/2))-A003849(A035517(n)²)`
-/

namespace A102475.P1631719661868117826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.pi ^ ((n : ℚ) / 2 : ℝ)⌉ - A003849 (A035517 n ^ 2).toNat

end

end A102475.P1631719661868117826

namespace A102475

/-- `ceil(π^(n/2))-A003849(A035517(n)²)` -/
def P1631719661868117826.Spec : Prop :=
  ∀ n, P1631719661868117826.a n = A102475 n

end A102475

/-! ## A102475.P2906592808028174913

`A102477(and(1, A134062(n))+n)-1`
-/

namespace A102475.P2906592808028174913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102477 (Int.land 1 (A134062 n) + (n : ℤ)).toNat - 1

end

end A102475.P2906592808028174913

namespace A102475

/-- `A102477(and(1, A134062(n))+n)-1` -/
def P2906592808028174913.Spec : Prop :=
  ∀ n, P2906592808028174913.a n = A102475 n

end A102475

/-! ## A102475.P16543987284234306394

`ceil(π^(n/2))-A008683(A216047(n+1))`
-/

namespace A102475.P16543987284234306394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.pi ^ ((n : ℚ) / 2 : ℝ)⌉ - A008683 (A216047 (n + 1)).toNat

end

end A102475.P16543987284234306394

namespace A102475

/-- `ceil(π^(n/2))-A008683(A216047(n+1))` -/
def P16543987284234306394.Spec : Prop :=
  ∀ n, P16543987284234306394.a n = A102475 n

end A102475

/-!
# A102476: Least modulus with 2^n square roots of 1.

The programs for A102476, there is no canonical definition to state claims against.
-/

/-! ## A102476.P14419237824328969968

`a(n-1)*p?[A004524(n)]` with `a(0)=1, a(1)=3, a(2)=8`
-/

namespace A102476.P14419237824328969968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 8] fun n a =>
  a (n - 1) * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A102476.P14419237824328969968

/-! ## A102476.P8554573794330374602

`a(n-1)*A000040(n-1)` with `a(0)=1, a(1)=3, a(2)=8`
-/

namespace A102476.P8554573794330374602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 8] fun n a =>
  a (n - 1) * A000040 (n - 1)

end

end A102476.P8554573794330374602

/-! ## A102476.P2383028018980580341

`∏[p?[A004524(n)]]-A019590(n+1)`
-/

namespace A102476.P2383028018980580341
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - A019590 (n + 1)

end

end A102476.P2383028018980580341

/-! ## A102476.P11826630744358087769

`record[A000005(A103517(n))*A181811(n+1)]`
-/

namespace A102476.P11826630744358087769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A103517 n).toNat * A181811 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A102476.P11826630744358087769

/-! ## A102476.P4337859944668915153

`A061006(A006093(n+1))+∏[A046022(n+1)]`
-/

namespace A102476.P4337859944668915153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061006 (A006093 (n + 1)).toNat + ∏ j ∈ Finset.range (n + 1), f1 j

end

end A102476.P4337859944668915153

/-!
# A102477: a(n) = ceiling(Pi^(n/2)).

The programs for A102477, the canonical program `A102477.P4036510561896638930` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A102477 has offset 0).

The definition of A102477 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 403 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A102477.P4155678461009015545

`ceil(π^(n/2))`
-/

namespace A102477.P4155678461009015545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.pi ^ ((n : ℚ) / 2 : ℝ)⌉

end

end A102477.P4155678461009015545

namespace A102477

/-- `ceil(π^(n/2))` -/
def P4155678461009015545.Spec : Prop :=
  ∀ n, P4155678461009015545.a n = A102477 n

end A102477

/-! ## A102477.P16601368510666652399

`∑[A306604(n)]+1`
-/

namespace A102477.P16601368510666652399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306604 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A102477.P16601368510666652399

namespace A102477

/-- `∑[A306604(n)]+1` -/
def P16601368510666652399.Spec : Prop :=
  ∀ n, P16601368510666652399.a n = A102477 n

end A102477

/-! ## A102477.P2619864222629655809

`floor(A057427(n)+π^(n/2))`
-/

namespace A102477.P2619864222629655809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A057427 n : ℝ) + Real.pi ^ ((n : ℚ) / 2 : ℝ)⌋

end

end A102477.P2619864222629655809

namespace A102477

/-- `floor(A057427(n)+π^(n/2))` -/
def P2619864222629655809.Spec : Prop :=
  ∀ n, P2619864222629655809.a n = A102477 n

end A102477

/-! ## A102477.P4036510561896638930

`A102475(n)+C(n, C(n, n²))`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A102477

/-- `A102475(n)+C(n, C(n, n²))` -/
def P4036510561896638930.Spec : Prop :=
  ∀ n, P4036510561896638930.a n = A102477 n

theorem P4036510561896638930.correct : P4036510561896638930.Spec := by
  intro n
  simp only [A102477]

end A102477

/-! ## A102477.P8571734731746254811

`∑[A306604(A028310(n))]`
-/

namespace A102477.P8571734731746254811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306604 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102477.P8571734731746254811

namespace A102477

/-- `∑[A306604(A028310(n))]` -/
def P8571734731746254811.Spec : Prop :=
  ∀ n, P8571734731746254811.a n = A102477 n

end A102477

/-! ## A102477.P12306819472662718853

`A102475(n)+A057427(n)`
-/

namespace A102477.P12306819472662718853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102475 n + A057427 n

end

end A102477.P12306819472662718853

namespace A102477

/-- `A102475(n)+A057427(n)` -/
def P12306819472662718853.Spec : Prop :=
  ∀ n, P12306819472662718853.a n = A102477 n

end A102477

/-! ## A102477.P8311126776364188810

`A102475(n)-A057428(n)`
-/

namespace A102477.P8311126776364188810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102475 n - A057428 n

end

end A102477.P8311126776364188810

namespace A102477

/-- `A102475(n)-A057428(n)` -/
def P8311126776364188810.Spec : Prop :=
  ∀ n, P8311126776364188810.a n = A102477 n

end A102477

/-! ## A102477.P7527288725189071854

`A102475(n)+char[A007306(n)]`
-/

namespace A102477.P7527288725189071854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007306 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102475 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A102477.P7527288725189071854

namespace A102477

/-- `A102475(n)+char[A007306(n)]` -/
def P7527288725189071854.Spec : Prop :=
  ∀ n, P7527288725189071854.a n = A102477 n

end A102477

/-! ## A102477.P13656253010613204820

`2-∑[A000007(n)-A306604(n)]`
-/

namespace A102477.P13656253010613204820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n - A306604 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102477.P13656253010613204820

namespace A102477

/-- `2-∑[A000007(n)-A306604(n)]` -/
def P13656253010613204820.Spec : Prop :=
  ∀ n, P13656253010613204820.a n = A102477 n

end A102477

/-! ## A102477.P11492608948071611304

`A102475(n)+char[A003602(n+1)]`
-/

namespace A102477.P11492608948071611304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102475 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A102477.P11492608948071611304

namespace A102477

/-- `A102475(n)+char[A003602(n+1)]` -/
def P11492608948071611304.Spec : Prop :=
  ∀ n, P11492608948071611304.a n = A102477 n

end A102477

/-! ## A102477.P12788306545773054246

`A267683(p?[Δ[n²]])+A102475(n)`
-/

namespace A102477.P12788306545773054246
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267683 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat + A102475 n

end

end A102477.P12788306545773054246

namespace A102477

/-- `A267683(p?[Δ[n²]])+A102475(n)` -/
def P12788306545773054246.Spec : Prop :=
  ∀ n, P12788306545773054246.a n = A102477 n

end A102477

/-! ## A102477.P13008599088540440382

`A102475(n)+A081172(C(2, n+1))`
-/

namespace A102477.P13008599088540440382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102475 n + A081172 (Nat.choose 2 (n + 1))

end

end A102477.P13008599088540440382

namespace A102477

/-- `A102475(n)+A081172(C(2, n+1))` -/
def P13008599088540440382.Spec : Prop :=
  ∀ n, P13008599088540440382.a n = A102477 n

end A102477

/-! ## A102477.P3599772620870478702

`2*n+A102475(n)-A004273(n)`
-/

namespace A102477.P3599772620870478702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) + (A102475 n - A004273 n)

end

end A102477.P3599772620870478702

namespace A102477

/-- `2*n+A102475(n)-A004273(n)` -/
def P3599772620870478702.Spec : Prop :=
  ∀ n, P3599772620870478702.a n = A102477 n

end A102477

/-! ## A102477.P6597831006753287462

`floor(π^(n/2))+1-A290079(A000040(n+1))`
-/

namespace A102477.P6597831006753287462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.pi ^ ((n : ℚ) / 2 : ℝ)⌋ + (1 - A290079 (A000040 (n + 1)).toNat)

end

end A102477.P6597831006753287462

namespace A102477

/-- `floor(π^(n/2))+1-A290079(A000040(n+1))` -/
def P6597831006753287462.Spec : Prop :=
  ∀ n, P6597831006753287462.a n = A102477 n

end A102477

/-! ## A102477.P16875691382549132260

`A112400(A020639(n+1))+A102475(n)`
-/

namespace A102477.P16875691382549132260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112400 (A020639 (n + 1)).toNat + A102475 n

end

end A102477.P16875691382549132260

namespace A102477

/-- `A112400(A020639(n+1))+A102475(n)` -/
def P16875691382549132260.Spec : Prop :=
  ∀ n, P16875691382549132260.a n = A102477 n

end A102477

/-! ## A102477.P4780158049034256434

`A102475(n+1)+1-A306604(n+1)`
-/

namespace A102477.P4780158049034256434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102475 (n + 1) + (1 - A306604 (n + 1))

end

end A102477.P4780158049034256434

namespace A102477

/-- `A102475(n+1)+1-A306604(n+1)` -/
def P4780158049034256434.Spec : Prop :=
  ∀ n, P4780158049034256434.a n = A102477 n

end A102477

/-! ## A102477.P8377507421098794439

`A102475(n)+A002262(A000124(n))`
-/

namespace A102477.P8377507421098794439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102475 n + A002262 (A000124 n).toNat

end

end A102477.P8377507421098794439

namespace A102477

/-- `A102475(n)+A002262(A000124(n))` -/
def P8377507421098794439.Spec : Prop :=
  ∀ n, P8377507421098794439.a n = A102477 n

end A102477

/-!
# A102478: Numbers n such that the concatenations (2*n),(2*n-1) and (2*n),(2*n+1) give twin primes.

The programs for A102478, there is no canonical definition to state claims against.
-/

/-! ## A102478.P2885030567164555278

`record[A068700(A286378(n))/2]`
-/

namespace A102478.P2885030567164555278
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A068700 (A286378 n).toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A102478.P2885030567164555278

/-! ## A102478.P7178378027346783420

`record[A068700(A026238(n+2))/2]`
-/

namespace A102478.P7178378027346783420
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A068700 (A026238 (n + 2)).toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A102478.P7178378027346783420

/-! ## A102478.P13571675516429544868

`record[A068700(A032742(n+1))/2]`
-/

namespace A102478.P13571675516429544868
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A068700 (A032742 (n + 1)).toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A102478.P13571675516429544868

/-! ## A102478.P7283957103323116208

`record[A068700(A246552(n)+1)/2]`
-/

namespace A102478.P7283957103323116208
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A068700 (A246552 n + 1).toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A102478.P7283957103323116208

/-! ## A102478.P17977011704490676610

`record[A068700(A065648(n))/2]`
-/

namespace A102478.P17977011704490676610
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A068700 (A065648 n).toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A102478.P17977011704490676610

/-! ## A102478.P11178687301775762589

`record[A068700(A003963(n+1))/2]`
-/

namespace A102478.P11178687301775762589
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A068700 (A003963 (n + 1)).toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A102478.P11178687301775762589

/-! ## A102478.P3537580511859074507

`∩[A030457(n+1), A054211(n+1)]/2`
-/

namespace A102478.P3537580511859074507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030457 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054211 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A102478.P3537580511859074507

/-! ## A102478.P6135751462270192351

`A014682(record[A068700(A286378(n))])`
-/

namespace A102478.P6135751462270192351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068700 (A286378 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A102478.P6135751462270192351

/-! ## A102478.P862154105238722069

`record[A068700(A020986(n))/2]`
-/

namespace A102478.P862154105238722069
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A068700 (A020986 n).toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A102478.P862154105238722069

/-! ## A102478.P7560172005928132348

`A026741(record[A068700(A020986(n))])`
-/

namespace A102478.P7560172005928132348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068700 (A020986 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A102478.P7560172005928132348

/-!
# A102479: Triangle read by rows: row n contains the numbers C(n,k)^(k-1) for 0 <= k <= n-1, n >= 1.

The programs for A102479, there is no canonical definition to state claims against.
-/

/-! ## A102479.P14442256170494086724

`A102480(comp[∑[n+1]])`
-/

namespace A102479.P14442256170494086724
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102480 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A102479.P14442256170494086724

/-! ## A102479.P12171047218019215298

`and(-1, A102480(comp[∑[n-1]]))`
-/

namespace A102479.P12171047218019215298
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A102480 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n))

end

end A102479.P12171047218019215298

/-! ## A102479.P17743968949962557713

`A219206(comp[∑[n+1]])/C(∑[char[∑[n]]], n-C(∑[char[∑[n]]], 2))`
-/

namespace A102479.P17743968949962557713
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f4 j = n then 1 else 0

def f8 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f7 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f8 j

open Classical in
def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f7 j = n then 1 else 0

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A219206 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) : ℚ) / (Nat.choose (∑ j ∈ Finset.range (n + 1), f3 j) ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f6 j) 2 : ℤ)).toNat : ℚ)

end

end A102479.P17743968949962557713

/-! ## A102479.P14773376530590163235

`A325191(n)^log2(A232089(n))`
-/

namespace A102479.P14773376530590163235
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A325191 n : ℝ) ^ (Real.logb 2 (A232089 n : ℝ))

end

end A102479.P14773376530590163235

/-! ## A102479.P10462038070022989676

`A074909(n)^(A002262(n)-1)`
-/

namespace A102479.P10462038070022989676
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074909 n : ℚ) ^ (A002262 n - 1 : ℤ)

end

end A102479.P10462038070022989676

/-!
# A102480: Triangle read by rows: row n contains the numbers C(n,k)^(k-1) for 0 <= k <= n, n >= 0.

The programs for A102480, the canonical program `A102480.P6644944660085184188` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A102480 has offset 0).

The definition of A102480 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 367 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A102480.P6644944660085184188

`A007318(n)^(A002262(n)-1)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A102480

/-- `A007318(n)^(A002262(n)-1)` -/
def P6644944660085184188.Spec : Prop :=
  ∀ n, P6644944660085184188.a n = (A102480 n : ℚ)

end A102480

/-! ## A102480.P9590154854114667414

`(A014473(n)+1)^A023443(A002262(n))`
-/

namespace A102480.P9590154854114667414
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014473 n + 1 : ℚ) ^ (A023443 (A002262 n).toNat : ℤ)

end

end A102480.P9590154854114667414

namespace A102480

/-- `(A014473(n)+1)^A023443(A002262(n))` -/
def P9590154854114667414.Spec : Prop :=
  ∀ n, P9590154854114667414.a n = (A102480 n : ℚ)

end A102480

/-! ## A102480.P4794626100712996979

`A007318(n)^A025581(A038722(n+1))`
-/

namespace A102480.P4794626100712996979
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007318 n : ℚ) ^ (A025581 (A038722 (n + 1)).toNat : ℤ)

end

end A102480.P4794626100712996979

namespace A102480

/-- `A007318(n)^A025581(A038722(n+1))` -/
def P4794626100712996979.Spec : Prop :=
  ∀ n, P4794626100712996979.a n = (A102480 n : ℚ)

end A102480

/-! ## A102480.P12162945931000914923

`A007318(n)^(A026100(A026098(abs(1-n)+1))-1)`
-/

namespace A102480.P12162945931000914923
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007318 n : ℚ) ^ (A026100 (A026098 (|1 - (n : ℤ)| + 1).toNat).toNat - 1 : ℤ)

end

end A102480.P12162945931000914923

namespace A102480

/-- `A007318(n)^(A026100(A026098(abs(1-n)+1))-1)` -/
def P12162945931000914923.Spec : Prop :=
  ∀ n, P12162945931000914923.a n = (A102480 n : ℚ)

end A102480

/-! ## A102480.P6903457993501269779

`(A285118(n)+A285116(n))^A023443(A002262(n))`
-/

namespace A102480.P6903457993501269779
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A285118 n + A285116 n : ℚ) ^ (A023443 (A002262 n).toNat : ℤ)

end

end A102480.P6903457993501269779

namespace A102480

/-- `(A285118(n)+A285116(n))^A023443(A002262(n))` -/
def P6903457993501269779.Spec : Prop :=
  ∀ n, P6903457993501269779.a n = (A102480 n : ℚ)

end A102480

/-! ## A102480.P14621026722151207400

`(A176348(n)/A176346(n))^A023443(A002262(n))`
-/

namespace A102480.P14621026722151207400
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A176348 n : ℚ) / (A176346 n : ℚ)) ^ (A023443 (A002262 n).toNat : ℤ)

end

end A102480.P14621026722151207400

namespace A102480

/-- `(A176348(n)/A176346(n))^A023443(A002262(n))` -/
def P14621026722151207400.Spec : Prop :=
  ∀ n, P14621026722151207400.a n = (A102480 n : ℚ)

end A102480

/-! ## A102480.P6103957264615667403

`A219206(n)/A007318(n)`
-/

namespace A102480.P6103957264615667403
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A219206 n : ℚ) / (A007318 n : ℚ)

end

end A102480.P6103957264615667403

namespace A102480

/-- `A219206(n)/A007318(n)` -/
def P6103957264615667403.Spec : Prop :=
  ∀ n, P6103957264615667403.a n = (A102480 n : ℚ)

end A102480

/-! ## A102480.P15789109536149310734

`A219207(n)/A008459(n)`
-/

namespace A102480.P15789109536149310734
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A219207 n : ℚ) / (A008459 n : ℚ)

end

end A102480.P15789109536149310734

namespace A102480

/-- `A219207(n)/A008459(n)` -/
def P15789109536149310734.Spec : Prop :=
  ∀ n, P15789109536149310734.a n = (A102480 n : ℚ)

end A102480

/-! ## A102480.P12851377157020577281

`A219207(n)/A007318(n)²`
-/

namespace A102480.P12851377157020577281
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A219207 n : ℚ) / (A007318 n ^ 2 : ℚ)

end

end A102480.P12851377157020577281

namespace A102480

/-- `A219207(n)/A007318(n)²` -/
def P12851377157020577281.Spec : Prop :=
  ∀ n, P12851377157020577281.a n = (A102480 n : ℚ)

end A102480

/-! ## A102480.P14820660762042642518

`A219206(n)/A219207(n)*A219206(n)`
-/

namespace A102480.P14820660762042642518
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A219206 n : ℚ) / (A219207 n : ℚ) * (A219206 n : ℚ)

end

end A102480.P14820660762042642518

namespace A102480

/-- `A219206(n)/A219207(n)*A219206(n)` -/
def P14820660762042642518.Spec : Prop :=
  ∀ n, P14820660762042642518.a n = (A102480 n : ℚ)

end A102480

/-! ## A102480.P11232285399840889782

`A219206(n)²/A219207(n)`
-/

namespace A102480.P11232285399840889782
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A219206 n ^ 2 : ℚ) / (A219207 n : ℚ)

end

end A102480.P11232285399840889782

namespace A102480

/-- `A219206(n)²/A219207(n)` -/
def P11232285399840889782.Spec : Prop :=
  ∀ n, P11232285399840889782.a n = (A102480 n : ℚ)

end A102480

/-!
# A102481: Table read by rows: T(n,k) = highest minimal weight of additive code of length n over GF(4) containing 2^k words (n >= 1, 1 <= k <= 2n).

The programs for A102481, there is no canonical definition to state claims against.
-/

/-! ## A102481.P761330046350651808

`A004736(A183017(3*n+1)+floor(n/2))`
-/

namespace A102481.P761330046350651808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A183017 (3 * n + 1) + ⌊(n : ℚ) / 2⌋).toNat

end

end A102481.P761330046350651808

/-! ## A102481.P11290023826760597555

`A136480(record[A175948(n+1)])`
-/

namespace A102481.P11290023826760597555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175948 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136480 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A102481.P11290023826760597555

/-! ## A102481.P3146987624649919205

`A004736(∑[A331218(n)^n])`
-/

namespace A102481.P3146987624649919205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331218 n ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A102481.P3146987624649919205

/-! ## A102481.P15315982974248951225

`A004736(round(log(A207976(n+1))))`
-/

namespace A102481.P15315982974248951225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (SequenceMachineLib.roundAway (Real.log (A207976 (n + 1) : ℝ))).toNat

end

end A102481.P15315982974248951225

/-! ## A102481.P6722455439793620430

`A004736(A008619(n)%A114613(n+1))`
-/

namespace A102481.P6722455439793620430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (Int.tmod (A008619 n) (A114613 (n + 1))).toNat

end

end A102481.P6722455439793620430

/-!
# A102482: Table read by rows: T(n,k) = highest minimal weight of linear code of length n over GF(4) containing 4^k words (n >= 1, 1 <= k <= n).

The programs for A102482, there is no canonical definition to state claims against.
-/

/-! ## A102482.P4398069896912466840

`A102481(2*(n+1))`
-/

namespace A102482.P4398069896912466840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102481 (2 * (n + 1))

end

end A102482.P4398069896912466840

/-! ## A102482.P11255777279497963722

`A102481(n+2+n)%11`
-/

namespace A102482.P11255777279497963722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A102481 (n + 2 + n)) 11

end

end A102482.P11255777279497963722

/-! ## A102482.P2450526752890939364

`or(char[2], A102481(A005843(n+1)))`
-/

namespace A102482.P2450526752890939364
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A102481 (A005843 (n + 1)).toNat)

end

end A102482.P2450526752890939364

/-! ## A102482.P11954200618650721737

`A102481(n+2+n)/A008683(A014963(n+1))²`
-/

namespace A102482.P11954200618650721737
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A102481 (n + 2 + n) : ℚ) / (A008683 (A014963 (n + 1)).toNat ^ 2 : ℚ)

end

end A102482.P11954200618650721737

/-! ## A102482.P9222619979016189199

`A102481(n+2+n)/A001222(record[A014963(n+2)])`
-/

namespace A102482.P9222619979016189199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A102481 (n + 2 + n) : ℚ) / (A001222 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat : ℚ)

end

end A102482.P9222619979016189199

/-!
# A102484: Numbers of the concatenated form 9nn9.

The programs for A102484, the canonical program `A102484.P8514199961919784412` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A102484 has offset 1).

The definition of A102484 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055642, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A102484.P8514199961919784412

`9*(1+10^(2*A055642(n)+1))+n*(10+10^(1+A055642(n)))`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A102484

/-- `9*(1+10^(2*A055642(n)+1))+n*(10+10^(1+A055642(n)))` -/
def P8514199961919784412.Spec : Prop :=
  ∀ n, P8514199961919784412.a n = (A102484 (n + 1) : ℚ)

end A102484

/-!
# A102485: a(n) = 5*3^n - 4*2^n.

The programs for A102485, the canonical program `A102485.P7070884402818879828` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A102485 has offset 0).

The definition of A102485 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5*3^n-4*2^n` (program `A102485.P7070884402818879828`, by `A102485.P7070884402818879828.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A102485.P7070884402818879828

`5*3^n-4*2^n`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A102485

/-- `5*3^n-4*2^n` -/
def P7070884402818879828.Spec : Prop :=
  ∀ n, P7070884402818879828.a n = A102485 n

theorem P7070884402818879828.correct : P7070884402818879828.Spec := by
  intro n
  simp only [A102485]

end A102485

/-! ## A102485.P612562592855203369

`ogf((1+2x)/(1-5x+6x^2))`
-/

namespace A102485.P612562592855203369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2] [1, -5, 6] n

end

end A102485.P612562592855203369

namespace A102485

/-- `ogf((1+2x)/(1-5x+6x^2))` -/
def P612562592855203369.Spec : Prop :=
  ∀ n, P612562592855203369.a n = A102485 n

end A102485

/-! ## A102485.P1129222022337247779

`∑[abs(Δ[A168605(n+3)])]`
-/

namespace A102485.P1129222022337247779
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168605 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102485.P1129222022337247779

namespace A102485

/-- `∑[abs(Δ[A168605(n+3)])]` -/
def P1129222022337247779.Spec : Prop :=
  ∀ n, P1129222022337247779.a n = A102485 n

end A102485

/-! ## A102485.P9329353005738385847

`ceil(A151821(n+1)+3*a(n-1))` with `a(0)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A102485.P9329353005738385847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A151821 (n + 1) + 3 * a (n - 1)

end

end A102485.P9329353005738385847

namespace A102485

/-- `ceil(A151821(n+1)+3*a(n-1))` -/
def P9329353005738385847.Spec : Prop :=
  ∀ n, P9329353005738385847.a n = A102485 n

end A102485

/-! ## A102485.P1803107673420891803

`(A005030(n)-A020707(n))%A005030(n)`
-/

namespace A102485.P1803107673420891803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005030 n - A020707 n) (A005030 n)

end

end A102485.P1803107673420891803

namespace A102485

/-- `(A005030(n)-A020707(n))%A005030(n)` -/
def P1803107673420891803.Spec : Prop :=
  ∀ n, P1803107673420891803.a n = A102485 n

end A102485

/-! ## A102485.P16503396090118162038

`Δ[A245804(n)+A134063(n)]`
-/

namespace A102485.P16503396090118162038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245804 n + A134063 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A102485.P16503396090118162038

namespace A102485

/-- `Δ[A245804(n)+A134063(n)]` -/
def P16503396090118162038.Spec : Prop :=
  ∀ n, P16503396090118162038.a n = A102485 n

end A102485

/-! ## A102485.P16128175991996636545

`Δ[A134931(n)-A020707(n)]`
-/

namespace A102485.P16128175991996636545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134931 n - A020707 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A102485.P16128175991996636545

namespace A102485

/-- `Δ[A134931(n)-A020707(n)]` -/
def P16128175991996636545.Spec : Prop :=
  ∀ n, P16128175991996636545.a n = A102485 n

end A102485

/-! ## A102485.P13861293075403083102

`Δ[A210448(n)-A099754(n)]`
-/

namespace A102485.P13861293075403083102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210448 n - A099754 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A102485.P13861293075403083102

namespace A102485

/-- `Δ[A210448(n)-A099754(n)]` -/
def P13861293075403083102.Spec : Prop :=
  ∀ n, P13861293075403083102.a n = A102485 n

end A102485

/-! ## A102485.P12628419471183407732

`Δ[A053156(n+1)+A001117(n)]`
-/

namespace A102485.P12628419471183407732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053156 (n + 1) + A001117 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A102485.P12628419471183407732

namespace A102485

/-- `Δ[A053156(n+1)+A001117(n)]` -/
def P12628419471183407732.Spec : Prop :=
  ∀ n, P12628419471183407732.a n = A102485 n

end A102485

/-! ## A102485.P587521753504357016

`Δ[A134063(n+1)+A101052(n)]`
-/

namespace A102485.P587521753504357016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134063 (n + 1) + A101052 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A102485.P587521753504357016

namespace A102485

/-- `Δ[A134063(n+1)+A101052(n)]` -/
def P587521753504357016.Spec : Prop :=
  ∀ n, P587521753504357016.a n = A102485 n

end A102485

/-! ## A102485.P257725219136900413

`Δ[A101052(n+1)-A007051(n)]`
-/

namespace A102485.P257725219136900413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101052 (n + 1) - A007051 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A102485.P257725219136900413

namespace A102485

/-- `Δ[A101052(n+1)-A007051(n)]` -/
def P257725219136900413.Spec : Prop :=
  ∀ n, P257725219136900413.a n = A102485 n

end A102485

/-! ## A102485.P12804596703032377407

`Δ[A003462(n+1)-A135913(n)]`
-/

namespace A102485.P12804596703032377407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003462 (n + 1) - A135913 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A102485.P12804596703032377407

namespace A102485

/-- `Δ[A003462(n+1)-A135913(n)]` -/
def P12804596703032377407.Spec : Prop :=
  ∀ n, P12804596703032377407.a n = A102485 n

end A102485

/-! ## A102485.P2333693252256783399

`Δ[A007051(n)+2*A101052(n)]`
-/

namespace A102485.P2333693252256783399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007051 n + 2 * A101052 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A102485.P2333693252256783399

namespace A102485

/-- `Δ[A007051(n)+2*A101052(n)]` -/
def P2333693252256783399.Spec : Prop :=
  ∀ n, P2333693252256783399.a n = A102485 n

end A102485

/-! ## A102485.P16356620611572849026

`Δ[A168583(n+3)-A099754(n)]`
-/

namespace A102485.P16356620611572849026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168583 (n + 3) - A099754 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A102485.P16356620611572849026

namespace A102485

/-- `Δ[A168583(n+3)-A099754(n)]` -/
def P16356620611572849026.Spec : Prop :=
  ∀ n, P16356620611572849026.a n = A102485 n

end A102485

/-! ## A102485.P5618622184078357773

`Δ[A003462(n)-Δ[A135913(n)]]`
-/

namespace A102485.P5618622184078357773
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135913 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003462 n - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A102485.P5618622184078357773

namespace A102485

/-- `Δ[A003462(n)-Δ[A135913(n)]]` -/
def P5618622184078357773.Spec : Prop :=
  ∀ n, P5618622184078357773.a n = A102485 n

end A102485

/-!
# A102486: a(n) = 4*a(n-1) - 5*a(n-2).

The programs for A102486, the canonical program `A102486.P13871036396575024077` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A102486 has offset 0).

The definition of A102486 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*a(n-1)-5*a(n-2)` (program `A102486.P13871036396575024077`, by `A102486.P13871036396575024077.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A102486.P13871036396575024077

`4*a(n-1)-5*a(n-2)` with `a(0)=2, a(1)=6`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A102486

/-- `4*a(n-1)-5*a(n-2)` -/
def P13871036396575024077.Spec : Prop :=
  ∀ n, P13871036396575024077.a n = A102486 n

theorem P13871036396575024077.correct : P13871036396575024077.Spec := by
  intro n
  simp only [A102486]

end A102486

/-! ## A102486.P457511165830019851

`ogf((2-2x)/(1-4x+5x^2))`
-/

namespace A102486.P457511165830019851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -2] [1, -4, 5] n

end

end A102486.P457511165830019851

namespace A102486

/-- `ogf((2-2x)/(1-4x+5x^2))` -/
def P457511165830019851.Spec : Prop :=
  ∀ n, P457511165830019851.a n = A102486 n

end A102486

/-! ## A102486.P2960728542407477487

`∏[4-5/a(n-1)]` with `a(0)=2, a(1)=3`
-/

namespace A102486.P2960728542407477487
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [2, 3] fun n f1 =>
  4 - 5 / f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A102486.P2960728542407477487

namespace A102486

/-- `∏[4-5/a(n-1)]` -/
def P2960728542407477487.Spec : Prop :=
  ∀ n, P2960728542407477487.a n = (A102486 n : ℚ)

end A102486

/-! ## A102486.P17791636580407628844

`(a(n-1)-a(n-2))/(1/2)²-a(n-2)` with `a(0)=2, a(1)=6`
-/

namespace A102486.P17791636580407628844
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2, 6] fun n a =>
  (a (n - 1) - a (n - 2)) / ((1 : ℚ) / 2) ^ 2 - a (n - 2)

end

end A102486.P17791636580407628844

namespace A102486

/-- `(a(n-1)-a(n-2))/(1/2)²-a(n-2)` -/
def P17791636580407628844.Spec : Prop :=
  ∀ n, P17791636580407628844.a n = (A102486 n : ℚ)

end A102486

/-! ## A102486.P16667284154496817775

`A139011(n)+A099456(n)`
-/

namespace A102486.P16667284154496817775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139011 n + A099456 n

end

end A102486.P16667284154496817775

namespace A102486

/-- `A139011(n)+A099456(n)` -/
def P16667284154496817775.Spec : Prop :=
  ∀ n, P16667284154496817775.a n = A102486 n

end A102486

/-! ## A102486.P1571929304709738573

`Δ[Δ[A139011(n)-A139011(n+1)]]`
-/

namespace A102486.P1571929304709738573
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139011 n - A139011 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A102486.P1571929304709738573

namespace A102486

/-- `Δ[Δ[A139011(n)-A139011(n+1)]]` -/
def P1571929304709738573.Spec : Prop :=
  ∀ n, P1571929304709738573.a n = A102486 n

end A102486

/-!
# A102487: Numbers in base-12 representation that can be written with decimal digits.

The programs for A102487, there is no canonical definition to state claims against.
-/

/-! ## A102487.P418817634193076825

`comp[A102488(n+1)]`
-/

namespace A102487.P418817634193076825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102488 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A102487.P418817634193076825

/-! ## A102487.P12622373500481612195

`comp[record[A102488(A328399(n))]]`
-/

namespace A102487.P12622373500481612195
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102488 (A328399 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A102487.P12622373500481612195

/-! ## A102487.P411485982081980154

`comp[A102488(A028310(n))]%A051799(n)`
-/

namespace A102487.P411485982081980154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102488 (A028310 n).toNat

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (A051799 n)

end

end A102487.P411485982081980154

/-! ## A102487.P7273441668058919072

`A033999(n)²*comp[A102488(A028310(n))]`
-/

namespace A102487.P7273441668058919072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102488 (A028310 n).toNat

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2 * (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A102487.P7273441668058919072

/-! ## A102487.P17570027005800292943

`lt[A190600(n), 10]`
-/

namespace A102487.P17570027005800292943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190600 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A102487.P17570027005800292943

/-! ## A102487.P872574591131588643

`eq[A007953(A049872(n)), A053832(n)]`
-/

namespace A102487.P872574591131588643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A049872 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053832 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A102487.P872574591131588643

/-! ## A102487.P2518098223859438909

`eq[A054055(A049872(n)), A190600(n)]`
-/

namespace A102487.P2518098223859438909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 (A049872 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190600 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A102487.P2518098223859438909

/-! ## A102487.P16568861885495359146

`2*n-(n-2*floor(n/10)-∑{e}[val(∏{p}[n^3, #], 11), #])`
-/

namespace A102487.P16568861885495359146
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∏ p ∈ Nat.primeFactors (f2 n), p) 11

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - ((n : ℤ) - 2 * ⌊(n : ℚ) / 10⌋ - ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ))

end

end A102487.P16568861885495359146

/-! ## A102487.P10285691910303057127

`record[A244158(n)+n-n%10]`
-/

namespace A102487.P10285691910303057127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244158 n + ((n : ℤ) - ((n % 10 : ℕ) : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A102487.P10285691910303057127

/-! ## A102487.P4404294752835138772

`∑[2*A014029(n²)]-2+n`
-/

namespace A102487.P4404294752835138772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A014029 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2 + (n : ℤ)

end

end A102487.P4404294752835138772

/-! ## A102487.P13191114982864483622

`A053188(n*(n+1))+2*floor(n/10)`
-/

namespace A102487.P13191114982864483622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053188 (n * (n + 1)) + 2 * ⌊(n : ℚ) / 10⌋

end

end A102487.P13191114982864483622

/-! ## A102487.P15060360769562012972

`A028898(A056143(n))`
-/

namespace A102487.P15060360769562012972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028898 (A056143 n).toNat

end

end A102487.P15060360769562012972

/-! ## A102487.P9007845232231870425

`∑[A326625(A123895(n))]`
-/

namespace A102487.P9007845232231870425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326625 (A123895 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102487.P9007845232231870425

/-! ## A102487.P18207542784866376239

`∑[and(3, A062157(n^A014029(n²)))]`
-/

namespace A102487.P18207542784866376239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A062157 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A014029 (n ^ 2) : ℤ))).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102487.P18207542784866376239

/-!
# A102488: Numbers in base-12 representation that cannot be written with decimal digits.

The programs for A102488, there is no canonical definition to state claims against.
-/

/-! ## A102488.P18280466103471846167

`comp[A102487(n+1)]`
-/

namespace A102488.P18280466103471846167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102487 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A102488.P18280466103471846167

/-! ## A102488.P18053463582246763255

`lt[9, A190600(n)]`
-/

namespace A102488.P18053463582246763255
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190600 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A102488.P18053463582246763255

/-! ## A102488.P9423109221366786368

`eq[1, A190600(A190600(n)+2)]`
-/

namespace A102488.P9423109221366786368
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190600 (A190600 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A102488.P9423109221366786368

/-! ## A102488.P2649009241790496853

`eq[3, A146532(3*A190600(n))]`
-/

namespace A102488.P2649009241790496853
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146532 (3 * A190600 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A102488.P2649009241790496853

/-! ## A102488.P16729130351582004454

`eq[A190600(A017641(n)), A190600(n)]`
-/

namespace A102488.P16729130351582004454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190600 (A017641 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190600 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A102488.P16729130351582004454

/-!
# A102489: Take the decimal representation of n and read it as if it were written in hexadecimal.

The programs for A102489, there is no canonical definition to state claims against.
-/

/-! ## A102489.P1061574184439033469

`comp[A102490(n+1)]%A038772(3*n+1)`
-/

namespace A102489.P1061574184439033469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102490 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (A038772 (3 * n + 1))

end

end A102489.P1061574184439033469

/-! ## A102489.P6260046384514382906

`comp[A102490(n+1)]%A069832(n+1)`
-/

namespace A102489.P6260046384514382906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102490 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (A069832 (n + 1))

end

end A102489.P6260046384514382906

/-! ## A102489.P15502810838624522647

`eq[A007953(A057946(n)), A053836(n)]`
-/

namespace A102489.P15502810838624522647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A057946 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053836 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A102489.P15502810838624522647

/-! ## A102489.P6898057383014032593

`eq[A051022(A057946(n)), A055645(n)]`
-/

namespace A102489.P6898057383014032593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051022 (A057946 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055645 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A102489.P6898057383014032593

/-! ## A102489.P11775086775041971792

`A028899(A051022(n))`
-/

namespace A102489.P11775086775041971792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028899 (A051022 n).toNat

end

end A102489.P11775086775041971792

/-! ## A102489.P8044987788500472278

`eq[1, A028920(A092531(n)+1)]`
-/

namespace A102489.P8044987788500472278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028920 (A092531 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A102489.P8044987788500472278

/-! ## A102489.P5122408783478372108

`A054899(A056143(n))/2+n`
-/

namespace A102489.P5122408783478372108
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054899 (A056143 n).toNat : ℚ) / 2 + (n : ℚ)

end

end A102489.P5122408783478372108

/-!
# A102490: Numbers in base-16 representation that cannot be written with decimal digits.

The programs for A102490, there is no canonical definition to state claims against.
-/

/-! ## A102490.P2719396577112138420

`comp[A102489(n)]`
-/

namespace A102490.P2719396577112138420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102489 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A102490.P2719396577112138420

/-! ## A102490.P11195375231087525443

`lt[n, A102489(A057946(n))]`
-/

namespace A102490.P11195375231087525443
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102489 (A057946 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A102490.P11195375231087525443

/-! ## A102490.P8980167575556607003

`lt[A007953(A057946(n)), A053836(n)]`
-/

namespace A102490.P8980167575556607003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A057946 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053836 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A102490.P8980167575556607003

/-! ## A102490.P12056704453825405637

`lt[A055645(n), A051022(A057946(n))]`
-/

namespace A102490.P12056704453825405637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055645 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051022 (A057946 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A102490.P12056704453825405637

/-! ## A102490.P16795644822067535844

`lt[A028899(A055645(n)), n]`
-/

namespace A102490.P16795644822067535844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028899 (A055645 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A102490.P16795644822067535844

/-! ## A102490.P1247903025053814976

`lt[A007953(A055645(n)), A053836(n)]`
-/

namespace A102490.P1247903025053814976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A055645 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053836 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A102490.P1247903025053814976

/-! ## A102490.P9750422592492092317

`lt[A007953(A055645(n)), n-15*A054900(n)]`
-/

namespace A102490.P9750422592492092317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A055645 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 15 * A054900 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A102490.P9750422592492092317

/-! ## A102490.P5336395601249649039

`lt[A007953(A055645(n)), (A217558(n)+n)/17]`
-/

namespace A102490.P5336395601249649039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A055645 n).toNat

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A217558 n + (n : ℤ) : ℚ) / 17

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A102490.P5336395601249649039

/-! ## A102490.P12459393884901029672

`comp[A028899(A051022(n))%A155945(n+1)]`
-/

namespace A102490.P12459393884901029672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028899 (A051022 n).toNat) (A155945 (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A102490.P12459393884901029672

/-! ## A102490.P732520324223764426

`eq[1, A028920(A092531(n))]`
-/

namespace A102490.P732520324223764426
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028920 (A092531 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A102490.P732520324223764426

/-!
# A102491: Numbers whose base-20 representation can be written with decimal digits.

The programs for A102491, there is no canonical definition to state claims against.
-/

/-! ## A102491.P6510148008705348644

`eq[2*A055966(n), A055966(2*n)]`
-/

namespace A102491.P6510148008705348644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055966 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055966 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A102491.P6510148008705348644

/-! ## A102491.P18150445162025313241

`eq[2*A055967(n), A055967(2*n)]`
-/

namespace A102491.P18150445162025313241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055967 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055967 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A102491.P18150445162025313241

/-! ## A102491.P248468420258038942

`eq[A056963(n), A078898(A056963(2*n))]`
-/

namespace A102491.P248468420258038942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056963 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A056963 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A102491.P248468420258038942

/-! ## A102491.P10951946060705878060

`eq[A005843(A055966(n)), A055966(2*n)]`
-/

namespace A102491.P10951946060705878060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A055966 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055966 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A102491.P10951946060705878060

/-! ## A102491.P9315387832772421843

`A060018(n²+2)-n%10`
-/

namespace A102491.P9315387832772421843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060018 (n ^ 2 + 2) - ((n % 10 : ℕ) : ℤ)

end

end A102491.P9315387832772421843

/-! ## A102491.P15508135596289385818

`A028899(A056143(n))`
-/

namespace A102491.P15508135596289385818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028899 (A056143 n).toNat

end

end A102491.P15508135596289385818

/-! ## A102491.P7198426051347514888

`A081594(A051022(n))`
-/

namespace A102491.P7198426051347514888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081594 (A051022 n).toNat

end

end A102491.P7198426051347514888

/-! ## A102491.P6011088130020269621

`eq[1, A025826(A054899(n))]`
-/

namespace A102491.P6011088130020269621
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025826 (A054899 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A102491.P6011088130020269621

/-! ## A102491.P9309196069114593485

`∑[A070481(A123895(n)²)]`
-/

namespace A102491.P9309196069114593485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070481 (A123895 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102491.P9309196069114593485

/-! ## A102491.P3070758205398630094

`2*n-A010879(A087019(n))`
-/

namespace A102491.P3070758205398630094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A010879 (A087019 n).toNat

end

end A102491.P3070758205398630094

/-! ## A102491.P9291323288628879120

`A053186((n+1)²-A010889(n))`
-/

namespace A102491.P9291323288628879120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053186 (((n + 1) ^ 2 : ℤ) - A010889 n).toNat

end

end A102491.P9291323288628879120

/-! ## A102491.P17932758552039517600

`record[2*n-A039723(A055643(n))]`
-/

namespace A102491.P17932758552039517600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A039723 (A055643 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A102491.P17932758552039517600

/-! ## A102491.P12838832327816478027

`(2*n-A010879(n))%A000124(n²)`
-/

namespace A102491.P12838832327816478027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((2 * n : ℤ) - A010879 n) (A000124 (n ^ 2))

end

end A102491.P12838832327816478027

/-! ## A102491.P9551334171380430461

`A000038((n+1)²)+2*n-A010879(n)`
-/

namespace A102491.P9551334171380430461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 ((n + 1) ^ 2) + ((2 * n : ℤ) - A010879 n)

end

end A102491.P9551334171380430461

/-!
# A102492: Numbers in base-20 representation that cannot be written with decimal digits.

The programs for A102492, there is no canonical definition to state claims against.
-/

/-! ## A102492.P14815645401041372021

`comp[A102491(n+1)]`
-/

namespace A102492.P14815645401041372021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102491 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A102492.P14815645401041372021

/-! ## A102492.P7590062321164291130

`comp[record[A102491(A328399(n))]]`
-/

namespace A102492.P7590062321164291130
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102491 (A328399 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A102492.P7590062321164291130

/-! ## A102492.P18328450718306475451

`comp[eq[2*A055966(n), A055966(2*n)]]`
-/

namespace A102492.P18328450718306475451
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055966 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055966 (2 * n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A102492.P18328450718306475451

/-! ## A102492.P12033296351851559567

`comp[eq[2*A055967(n), A055967(2*n)]]`
-/

namespace A102492.P12033296351851559567
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055967 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055967 (2 * n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A102492.P12033296351851559567

/-! ## A102492.P9948786738713158272

`A102494(5*n+4)-(4*n+3)`
-/

namespace A102492.P9948786738713158272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102494 (5 * n + 4) - (4 * n + 3 : ℤ)

end

end A102492.P9948786738713158272

/-! ## A102492.P11363869022769537055

`comp[A028899(A056143(n))]`
-/

namespace A102492.P11363869022769537055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028899 (A056143 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A102492.P11363869022769537055

/-! ## A102492.P17792826160103267543

`comp[A081594(A051022(n))]`
-/

namespace A102492.P17792826160103267543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081594 (A051022 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A102492.P17792826160103267543

/-! ## A102492.P10310446005410052408

`eq[0, A242683(A059995(n))]`
-/

namespace A102492.P10310446005410052408
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242683 ((A059995 n).toNat + 90)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A102492.P10310446005410052408

/-! ## A102492.P1597543461509516850

`∑[A070562(A055641(n)^n)]+n`
-/

namespace A102492.P1597543461509516850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070562 (A055641 n ^ n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A102492.P1597543461509516850

/-!
# A102493: Numbers in base-60 representation that can be written with decimal digits.

The programs for A102493, the canonical program `A102493.P17760226261126790933` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A102493 has offset 1).

The definition of A102493 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A102493.P10495620562103821229

`eq[A039723(A055643(n)), A055643(n)]`
-/

namespace A102493.P10495620562103821229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039723 (A055643 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055643 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A102493.P10495620562103821229

namespace A102493

/-- `eq[A039723(A055643(n)), A055643(n)]` -/
def P10495620562103821229.Spec : Prop :=
  ∀ n, (P10495620562103821229.a n : ℤ) = A102493 (n + 1)

end A102493

/-! ## A102493.P13858059777892013505

`A081597(A051022(n))`
-/

namespace A102493.P13858059777892013505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081597 (A051022 n).toNat

end

end A102493.P13858059777892013505

namespace A102493

/-- `A081597(A051022(n))` -/
def P13858059777892013505.Spec : Prop :=
  ∀ n, P13858059777892013505.a n = A102493 (n + 1)

end A102493

/-! ## A102493.P17147171578610869163

`A292579(record[A073835(n)])`
-/

namespace A102493.P17147171578610869163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073835 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292579 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A102493.P17147171578610869163

namespace A102493

/-- `A292579(record[A073835(n)])` -/
def P17147171578610869163.Spec : Prop :=
  ∀ n, P17147171578610869163.a n = A102493 (n + 1)

end A102493

/-! ## A102493.P16627549477085560205

`A081597(A338754(n)/11)`
-/

namespace A102493.P16627549477085560205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081597 (SequenceMachineLib.roundAway ((A338754 n : ℚ) / 11)).toNat

end

end A102493.P16627549477085560205

namespace A102493

/-- `A081597(A338754(n)/11)` -/
def P16627549477085560205.Spec : Prop :=
  ∀ n, P16627549477085560205.a n = A102493 (n + 1)

end A102493

/-! ## A102493.P17760226261126790933

`A001281(A056143(n)+n)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A102493

/-- `A001281(A056143(n)+n)` -/
def P17760226261126790933.Spec : Prop :=
  ∀ n, P17760226261126790933.a n = A102493 (n + 1)

theorem P17760226261126790933.correct : P17760226261126790933.Spec := by
  intro n
  simp only [A102493, Nat.add_sub_cancel]

end A102493

/-! ## A102493.P11319845543934816689

`A004525(A056143(n)+n)`
-/

namespace A102493.P11319845543934816689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A056143 n + (n : ℤ)).toNat

end

end A102493.P11319845543934816689

namespace A102493

/-- `A004525(A056143(n)+n)` -/
def P11319845543934816689.Spec : Prop :=
  ∀ n, P11319845543934816689.a n = A102493 (n + 1)

end A102493

/-! ## A102493.P4779225923286618147

`A004526(A056143(n)+n)`
-/

namespace A102493.P4779225923286618147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A056143 n + (n : ℤ)).toNat

end

end A102493.P4779225923286618147

namespace A102493

/-- `A004526(A056143(n)+n)` -/
def P4779225923286618147.Spec : Prop :=
  ∀ n, P4779225923286618147.a n = A102493 (n + 1)

end A102493

/-! ## A102493.P16937822217936198571

`A014682(A056143(n)+n)`
-/

namespace A102493.P16937822217936198571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A056143 n + (n : ℤ)).toNat

end

end A102493.P16937822217936198571

namespace A102493

/-- `A014682(A056143(n)+n)` -/
def P16937822217936198571.Spec : Prop :=
  ∀ n, P16937822217936198571.a n = A102493 (n + 1)

end A102493

/-! ## A102493.P9210579754689940839

`A025480(A056143(n)+n)`
-/

namespace A102493.P9210579754689940839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A056143 n + (n : ℤ)).toNat

end

end A102493.P9210579754689940839

namespace A102493

/-- `A025480(A056143(n)+n)` -/
def P9210579754689940839.Spec : Prop :=
  ∀ n, P9210579754689940839.a n = A102493 (n + 1)

end A102493

/-! ## A102493.P6061545430727219895

`A004524(A056143(n)+1+n)`
-/

namespace A102493.P6061545430727219895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A056143 n + 1 + (n : ℤ)).toNat

end

end A102493.P6061545430727219895

namespace A102493

/-- `A004524(A056143(n)+1+n)` -/
def P6061545430727219895.Spec : Prop :=
  ∀ n, P6061545430727219895.a n = A102493 (n + 1)

end A102493

/-! ## A102493.P12538250655757496183

`A028242(A056143(n)+1+n)`
-/

namespace A102493.P12538250655757496183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A056143 n + 1 + (n : ℤ)).toNat

end

end A102493.P12538250655757496183

namespace A102493

/-- `A028242(A056143(n)+1+n)` -/
def P12538250655757496183.Spec : Prop :=
  ∀ n, P12538250655757496183.a n = A102493 (n + 1)

end A102493

/-! ## A102493.P9154270287725162550

`A057979(A056143(n)+1+n)`
-/

namespace A102493.P9154270287725162550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A056143 n + 1 + (n : ℤ)).toNat

end

end A102493.P9154270287725162550

namespace A102493

/-- `A057979(A056143(n)+1+n)` -/
def P9154270287725162550.Spec : Prop :=
  ∀ n, P9154270287725162550.a n = A102493 (n + 1)

end A102493

/-! ## A102493.P17524157976084808507

`A123108(A056143(n)+1+n)`
-/

namespace A102493.P17524157976084808507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A056143 n + 1 + (n : ℤ)).toNat

end

end A102493.P17524157976084808507

namespace A102493

/-- `A123108(A056143(n)+1+n)` -/
def P17524157976084808507.Spec : Prop :=
  ∀ n, P17524157976084808507.a n = A102493 (n + 1)

end A102493

/-! ## A102493.P14353031774851255808

`A002265(2*(A056143(n)+n))`
-/

namespace A102493.P14353031774851255808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * (A056143 n + (n : ℤ))).toNat

end

end A102493.P14353031774851255808

namespace A102493

/-- `A002265(2*(A056143(n)+n))` -/
def P14353031774851255808.Spec : Prop :=
  ∀ n, P14353031774851255808.a n = A102493 (n + 1)

end A102493

/-! ## A102493.P4524403110184325965

`A002265(lcm(2, A056143(n)+1+n))`
-/

namespace A102493.P4524403110184325965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (Int.lcm 2 (A056143 n + 1 + (n : ℤ)))

end

end A102493.P4524403110184325965

namespace A102493

/-- `A002265(lcm(2, A056143(n)+1+n))` -/
def P4524403110184325965.Spec : Prop :=
  ∀ n, P4524403110184325965.a n = A102493 (n + 1)

end A102493

/-! ## A102493.P18057435334185698442

`A004526(A102491(n+1)+A051022(n))`
-/

namespace A102493.P18057435334185698442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A102491 (n + 1) + A051022 n).toNat

end

end A102493.P18057435334185698442

namespace A102493

/-- `A004526(A102491(n+1)+A051022(n))` -/
def P18057435334185698442.Spec : Prop :=
  ∀ n, P18057435334185698442.a n = A102493 (n + 1)

end A102493

/-! ## A102493.P11295212826990671870

`A081596(A051022(n))+A008592(A054899(n))`
-/

namespace A102493.P11295212826990671870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081596 (A051022 n).toNat + A008592 (A054899 n).toNat

end

end A102493.P11295212826990671870

namespace A102493

/-- `A081596(A051022(n))+A008592(A054899(n))` -/
def P11295212826990671870.Spec : Prop :=
  ∀ n, P11295212826990671870.a n = A102493 (n + 1)

end A102493

/-!
# A102494: Numbers in base-60 representation that cannot be written with decimal digits.

The programs for A102494, the canonical program `A102494.P7805800785029602726` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A102494 has offset 1).

The definition of A102494 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A102494.P7805800785029602726

`comp[A102493(n+1)]`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A102494

/-- `comp[A102493(n+1)]` -/
def P7805800785029602726.Spec : Prop :=
  ∀ n, (P7805800785029602726.a n : ℤ) = A102494 (n + 1)

theorem P7805800785029602726.correct : P7805800785029602726.Spec := by
  intro n
  simp only [A102494, Nat.add_sub_cancel]

end A102494

/-! ## A102494.P2465739721376448166

`10*(A185284(A211990(n+1))+1)+n`
-/

namespace A102494.P2465739721376448166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * (A185284 (A211990 (n + 1)).toNat + 1) + (n : ℤ)

end

end A102494.P2465739721376448166

namespace A102494

/-- `10*(A185284(A211990(n+1))+1)+n` -/
def P2465739721376448166.Spec : Prop :=
  ∀ n, P2465739721376448166.a n = A102494 (n + 1)

end A102494

/-!
# A102495: Integers k such that there exist integers x,y,z from {1,2,...,k-1} for which x*y*z = (k-x)*(k-y)*(k-z) and the factors x, y, z are all different from any of k-x, k-y, k-z (this is always the case for odd k; and x,y,z must differ from k/2 for even k).

The programs for A102495, there is no canonical definition to state claims against.
-/

/-! ## A102495.P12652289316938095892

`A033949(lt[A276060(3*n+1), A084938(3*n+2)])`
-/

namespace A102495.P12652289316938095892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276060 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084938 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033949 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A102495.P12652289316938095892

/-! ## A102495.P2439183708268600948

`A009023(A032559(n+1)+A009041(n+1))`
-/

namespace A102495.P2439183708268600948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009023 (A032559 (n + 1) + A009041 (n + 1)).toNat

end

end A102495.P2439183708268600948

/-! ## A102495.P5044993911524169258

`A208770(lt[A208744(3*(n+1)), A208767(2*n+1)])`
-/

namespace A102495.P5044993911524169258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208744 (3 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208767 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208770 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A102495.P5044993911524169258

/-! ## A102495.P7692571708836655213

`A208770(lt[A127313(3*n+2), A035469(3*(n+1))])`
-/

namespace A102495.P7692571708836655213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127313 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035469 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208770 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A102495.P7692571708836655213

/-!
# A102496: Values of n for which the concatenation of the form 1nn1 (sequence A100846) are primes.

The programs for A102496, there is no canonical definition to state claims against.
-/

/-! ## A102496.P8963422141698142253

`lt[∑{e}[A100846(n), #], 2]`
-/

namespace A102496.P8963422141698142253
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100846 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A102496.P8963422141698142253

/-!
# A102497: Primes of the concatenated form 1nn1 where n is an integer >=0.

The programs for A102497, there is no canonical definition to state claims against.
-/

/-! ## A102497.P12474257467424887069

`A100846(A102496(n+1))`
-/

namespace A102497.P12474257467424887069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100846 (A102496 (n + 1)).toNat

end

end A102497.P12474257467424887069

/-! ## A102497.P2247839611983441259

`p?[A100846(n)]`
-/

namespace A102497.P2247839611983441259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100846 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A102497.P2247839611983441259

/-! ## A102497.P14616558052548681670

`∩[A068896(n+1), A100846(n)]`
-/

namespace A102497.P14616558052548681670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068896 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100846 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A102497.P14616558052548681670

/-! ## A102497.P6962932747877819792

`∩[A297994(n+1), A100846(n)]`
-/

namespace A102497.P6962932747877819792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297994 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100846 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A102497.P6962932747877819792

/-! ## A102497.P9565350422358985332

`∩[A100846(n), A297994(A008619(2*n))]`
-/

namespace A102497.P9565350422358985332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100846 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297994 (A008619 (2 * n)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A102497.P9565350422358985332

/-!
# A102499: Primes of the concatenated form 3nn3.

The programs for A102499, there is no canonical definition to state claims against.
-/

/-! ## A102499.P16525999313973166998

`A100896(A102498(n))`
-/

namespace A102499.P16525999313973166998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100896 (A102498 n).toNat

end

end A102499.P16525999313973166998

/-! ## A102499.P12734019653576515663

`p?[A100896(n)]`
-/

namespace A102499.P12734019653576515663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100896 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A102499.P12734019653576515663

/-! ## A102499.P16042801128787925535

`∩[A297994(n+1), A100896(n)]`
-/

namespace A102499.P16042801128787925535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297994 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100896 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A102499.P16042801128787925535

/-! ## A102499.P14082211536119717580

`p?[A102484(n+1)+A100846(n)-A100897(n)]`
-/

namespace A102499.P14082211536119717580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102484 (n + 1) + (A100846 n - A100897 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A102499.P14082211536119717580

