import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C002
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A293800: Number of multisets of nonempty words with a total of n letters over quinary alphabet containing the fifth letter such that within each prefix of a word every letter of the alphabet is at least as frequent as the subsequent alphabet letter.

The programs for A293800, there is no canonical definition to state claims against.
-/

/-! ## A293800.P1307765408847079935

`A293735(n+5)-A293734(n+5)`
-/

namespace A293800.P1307765408847079935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293735 (n + 5) - A293734 (n + 5)

end

end A293800.P1307765408847079935

/-! ## A293800.P12511340649353799868

`A293109(A167499(n+4))`
-/

namespace A293800.P12511340649353799868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293109 (A167499 (n + 4)).toNat

end

end A293800.P12511340649353799868

/-! ## A293800.P2082397165738515101

`A293109(A167614(n+4)+2)`
-/

namespace A293800.P2082397165738515101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293109 (A167614 (n + 4) + 2).toNat

end

end A293800.P2082397165738515101

/-! ## A293800.P14659436473671110165

`A293109(A253145(n+4)+5)`
-/

namespace A293800.P14659436473671110165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293109 (A253145 (n + 4) + 5).toNat

end

end A293800.P14659436473671110165

/-! ## A293800.P7101316912996221442

`A293109(A052905(n+3)-(n-4))`
-/

namespace A293800.P7101316912996221442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293109 (A052905 (n + 3) - ((n : ℤ) - 4)).toNat

end

end A293800.P7101316912996221442

/-!
# A293801: Number of multisets of nonempty words with a total of n letters over senary alphabet containing the sixth letter such that within each prefix of a word every letter of the alphabet is at least as frequent as the subsequent alphabet letter.

The programs for A293801, there is no canonical definition to state claims against.
-/

/-! ## A293801.P11666442272480637827

`A293736(n+6)-A293735(n+6)`
-/

namespace A293801.P11666442272480637827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293736 (n + 6) - A293735 (n + 6)

end

end A293801.P11666442272480637827

/-! ## A293801.P9545727499058550893

`A293109(A166136(n+5))`
-/

namespace A293801.P9545727499058550893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293109 (A166136 (n + 5)).toNat

end

end A293801.P9545727499058550893

/-! ## A293801.P13505835542626846694

`A293109(A167499(n+5)+1)`
-/

namespace A293801.P13505835542626846694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293109 (A167499 (n + 5) + 1).toNat

end

end A293801.P13505835542626846694

/-! ## A293801.P7157253935308441766

`A293109(A000124(n+6)+5)`
-/

namespace A293801.P7157253935308441766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293109 (A000124 (n + 6) + 5).toNat

end

end A293801.P7157253935308441766

/-! ## A293801.P12772384545162773157

`A293109(eq[7, A002260(n+1)])`
-/

namespace A293801.P12772384545162773157
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293109 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A293801.P12772384545162773157

/-!
# A293802: Number of multisets of nonempty words with a total of n letters over septenary alphabet containing the seventh letter such that within each prefix of a word every letter of the alphabet is at least as frequent as the subsequent alphabet letter.

The programs for A293802, there is no canonical definition to state claims against.
-/

/-! ## A293802.P12214430124413671004

`A293737(n+7)-A293736(n+7)`
-/

namespace A293802.P12214430124413671004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293737 (n + 7) - A293736 (n + 7)

end

end A293802.P12214430124413671004

/-! ## A293802.P9186117561645954164

`A293109(eq[7, A002262(n)])`
-/

namespace A293802.P9186117561645954164
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293109 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A293802.P9186117561645954164

/-! ## A293802.P2588437156964648059

`A293109(A000124(n+7)+6)`
-/

namespace A293802.P2588437156964648059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293109 (A000124 (n + 7) + 6).toNat

end

end A293802.P2588437156964648059

/-! ## A293802.P14927952064019378698

`A293109(eq[8, A002260(n+1)])`
-/

namespace A293802.P14927952064019378698
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293109 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A293802.P14927952064019378698

/-! ## A293802.P5299671700806117469

`A293109(A052905(n+6)-A004273(n+3))`
-/

namespace A293802.P5299671700806117469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293109 (A052905 (n + 6) - A004273 (n + 3)).toNat

end

end A293802.P5299671700806117469

/-!
# A293803: Number of multisets of nonempty words with a total of n letters over octonary alphabet containing the eighth letter such that within each prefix of a word every letter of the alphabet is at least as frequent as the subsequent alphabet letter.

The programs for A293803, there is no canonical definition to state claims against.
-/

/-! ## A293803.P8188829348725338212

`A293738(n+8)-A293737(n+8)`
-/

namespace A293803.P8188829348725338212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293738 (n + 8) - A293737 (n + 8)

end

end A293803.P8188829348725338212

/-! ## A293803.P14262614781232138582

`A293109(A167499(n+7)+3)`
-/

namespace A293803.P14262614781232138582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293109 (A167499 (n + 7) + 3).toNat

end

end A293803.P14262614781232138582

/-! ## A293803.P11398521200978013120

`A293109(A000124(n+8)+7)`
-/

namespace A293803.P11398521200978013120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293109 (A000124 (n + 8) + 7).toNat

end

end A293803.P11398521200978013120

/-! ## A293803.P4811433413225918070

`A293109(A000096(n+7)+9)`
-/

namespace A293803.P4811433413225918070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293109 (A000096 (n + 7) + 9).toNat

end

end A293803.P4811433413225918070

/-! ## A293803.P3125072197811251326

`A293109(A000217(n+8)+8)`
-/

namespace A293803.P3125072197811251326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293109 (A000217 (n + 8) + 8).toNat

end

end A293803.P3125072197811251326

/-!
# A293804: Number of multisets of nonempty words with a total of n letters over nonary alphabet containing the ninth letter such that within each prefix of a word every letter of the alphabet is at least as frequent as the subsequent alphabet letter.

The programs for A293804, there is no canonical definition to state claims against.
-/

/-! ## A293804.P2876639653278822416

`A293739(n+9)-A293738(n+9)`
-/

namespace A293804.P2876639653278822416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293739 (n + 9) - A293738 (n + 9)

end

end A293804.P2876639653278822416

/-! ## A293804.P4782076542878304090

`A293109(A000096(n+8)+10)`
-/

namespace A293804.P4782076542878304090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293109 (A000096 (n + 8) + 10).toNat

end

end A293804.P4782076542878304090

/-! ## A293804.P18214694909963868960

`A293109(A000217(n+10)-(n+1))`
-/

namespace A293804.P18214694909963868960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293109 (A000217 (n + 10) - (n + 1 : ℤ)).toNat

end

end A293804.P18214694909963868960

/-! ## A293804.P2306774950325043385

`A293109(A161680(n+11)-(n+1))`
-/

namespace A293804.P2306774950325043385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293109 (A161680 (n + 11) - (n + 1 : ℤ)).toNat

end

end A293804.P2306774950325043385

/-! ## A293804.P14704336180435111741

`A293109(A052905(n+8)-A004273(n+4))`
-/

namespace A293804.P14704336180435111741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293109 (A052905 (n + 8) - A004273 (n + 4)).toNat

end

end A293804.P14704336180435111741

/-!
# A293805: Number of multisets of nonempty words with a total of n letters over denary alphabet containing the tenth letter such that within each prefix of a word every letter of the alphabet is at least as frequent as the subsequent alphabet letter.

The programs for A293805, there is no canonical definition to state claims against.
-/

/-! ## A293805.P12543104932304600061

`A293740(n+10)-A293739(n+10)`
-/

namespace A293805.P12543104932304600061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293740 (n + 10) - A293739 (n + 10)

end

end A293805.P12543104932304600061

/-! ## A293805.P10064849186549437431

`A293109(A167487(n+9)+3)`
-/

namespace A293805.P10064849186549437431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293109 (A167487 (n + 9) + 3).toNat

end

end A293805.P10064849186549437431

/-! ## A293805.P18077499777545410197

`A293109(A133263(n+10)+8)`
-/

namespace A293805.P18077499777545410197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293109 (A133263 (n + 10) + 8).toNat

end

end A293805.P18077499777545410197

/-! ## A293805.P14857219326214248394

`A293109(A000217(n+10)+10)`
-/

namespace A293805.P14857219326214248394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293109 (A000217 (n + 10) + 10).toNat

end

end A293805.P14857219326214248394

/-! ## A293805.P12288909823217323845

`A293109(A161680(n+11)+10)`
-/

namespace A293805.P12288909823217323845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293109 (A161680 (n + 11) + 10).toNat

end

end A293805.P12288909823217323845

/-!
# A293806: a(0) = a(1) = 1; a(n) = [x^n] Product_{k=1..n-1} 1/(1 - x^a(k)).

The programs for A293806, there is no canonical definition to state claims against.
-/

/-! ## A293806.P9593470068065154344

`gcd(A010815(A244456(n+7)), A106244(2*n+1))`
-/

namespace A293806.P9593470068065154344
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A010815 (A244456 (n + 7)).toNat) (A106244 (2 * n + 1))

end

end A293806.P9593470068065154344

/-!
# A293807: a(0) = a(1) = 1; a(n) = [x^n] Product_{k=1..n-1} 1/(1 - x^a(k))^a(k).

The programs for A293807, there is no canonical definition to state claims against.
-/

/-! ## A293807.P1211103498122169873

`A300411(n)-A076020(A059481(n))`
-/

namespace A293807.P1211103498122169873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300411 n - A076020 (A059481 n).toNat

end

end A293807.P1211103498122169873

/-! ## A293807.P16070898923310014622

`A300411(n)-A324091(A088518(n))`
-/

namespace A293807.P16070898923310014622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300411 n - A324091 (A088518 n).toNat

end

end A293807.P16070898923310014622

/-! ## A293807.P8876974875425782038

`A313117(A211544(n)^A267266(n+1))`
-/

namespace A293807.P8876974875425782038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313117 (SequenceMachineLib.roundAway ((A211544 n : ℚ) ^ (A267266 (n + 1) : ℤ))).toNat

end

end A293807.P8876974875425782038

/-! ## A293807.P10289235285443020703

`A313117(A267266(n+1)²*A211544(n))`
-/

namespace A293807.P10289235285443020703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313117 (A267266 (n + 1) ^ 2 * A211544 n).toNat

end

end A293807.P10289235285443020703

/-!
# A293808: Number T(n,k) of multisets of exactly k nonempty words with a total of n letters over n-ary alphabet such that within each prefix of a word every letter of the alphabet is at least as frequent as the subsequent alphabet letter; triangle T(n,k), n>=0, 0<=k<=n, read by rows.

The programs for A293808, there is no canonical definition to state claims against.
-/

/-! ## A293808.P11726755606922828305

`A122922(A109971(n))+A120060(n)`
-/

namespace A293808.P11726755606922828305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122922 (A109971 n).toNat + A120060 n

end

end A293808.P11726755606922828305

/-! ## A293808.P971284129198052142

`A290222(n)+A081221(A290235(n))`
-/

namespace A293808.P971284129198052142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290222 n + A081221 (A290235 n).toNat

end

end A293808.P971284129198052142

/-! ## A293808.P17010980575136500974

`A096653(n)-A001221(A111820(n))`
-/

namespace A293808.P17010980575136500974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096653 n - A001221 (A111820 n).toNat

end

end A293808.P17010980575136500974

/-! ## A293808.P10581354954688650370

`A265356(A292506(n)%A123660(n))`
-/

namespace A293808.P10581354954688650370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265356 (Int.tmod (A292506 n) (A123660 (n + 35))).toNat

end

end A293808.P10581354954688650370

/-! ## A293808.P3170601337720379373

`or(A160498(A286781(n)), A290222(n))`
-/

namespace A293808.P3170601337720379373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A160498 (A286781 n).toNat) (A290222 n)

end

end A293808.P3170601337720379373

/-!
# A293809: Number of multisets of exactly n nonempty words with a total of 2n letters over 2n-ary alphabet such that within each prefix of a word every letter of the alphabet is at least as frequent as the subsequent alphabet letter.

The programs for A293809, there is no canonical definition to state claims against.
-/

/-! ## A293809.P5600597023043605957

`A293808(∑[4*n])`
-/

namespace A293809.P5600597023043605957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293808 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A293809.P5600597023043605957

/-! ## A293809.P5919808204760022828

`record[A003982(n)*A293808(n)]`
-/

namespace A293809.P5919808204760022828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A293808 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A293809.P5919808204760022828

/-! ## A293809.P1117059495484033771

`record[A293808((n+1)*A004526(n))]`
-/

namespace A293809.P1117059495484033771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293808 ((n + 1 : ℤ) * A004526 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A293809.P1117059495484033771

/-! ## A293809.P813165324401482063

`A293808(A106232(n+1))-A000007(n)`
-/

namespace A293809.P813165324401482063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293808 (A106232 (n + 1)).toNat - A000007 n

end

end A293809.P813165324401482063

/-! ## A293809.P3325413289750241795

`record[A293808(A028242(n+1)+A000217(n))]`
-/

namespace A293809.P3325413289750241795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293808 (A028242 (n + 1) + A000217 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A293809.P3325413289750241795

/-! ## A293809.P8563709965215618938

`record[A293808(A001971(n))]`
-/

namespace A293809.P8563709965215618938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293808 (A001971 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A293809.P8563709965215618938

/-! ## A293809.P8572836157054364047

`record[A293808(2*A002262(n)²)]`
-/

namespace A293809.P8572836157054364047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293808 (2 * A002262 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A293809.P8572836157054364047

/-! ## A293809.P11396651931478373814

`record[A293808(A005843(A133819(n+1)))]`
-/

namespace A293809.P11396651931478373814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293808 (A005843 (A133819 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A293809.P11396651931478373814

/-!
# A293810: The truncated kernel function of n: the product of distinct primes dividing n, but excluding the largest prime divisor of n.

The programs for A293810, the canonical program `A293810.P17932194511883239640` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A293810 has offset 1).

The definition of A293810 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A293810.P17932194511883239640

`A007947(n+1)/A006530(n+1)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A293810

/-- `A007947(n+1)/A006530(n+1)` -/
def P17932194511883239640.Spec : Prop :=
  ∀ n, P17932194511883239640.a n = (A293810 (n + 1) : ℚ)

end A293810

/-! ## A293810.P16339960017385749645

`A051119(∏{p}[n+1, #])`
-/

namespace A293810.P16339960017385749645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051119 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A293810.P16339960017385749645

namespace A293810

/-- `A051119(∏{p}[n+1, #])` -/
def P16339960017385749645.Spec : Prop :=
  ∀ n, P16339960017385749645.a n = A293810 (n + 1)

end A293810

/-! ## A293810.P16543688828798515708

`A052126(∏{p}[n+1, #])`
-/

namespace A293810.P16543688828798515708
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A293810.P16543688828798515708

namespace A293810

/-- `A052126(∏{p}[n+1, #])` -/
def P16543688828798515708.Spec : Prop :=
  ∀ n, P16543688828798515708.a n = A293810 (n + 1)

end A293810

/-! ## A293810.P10380444002481481253

`A284600(∏{p}[n+1, #])`
-/

namespace A293810.P10380444002481481253
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284600 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A293810.P10380444002481481253

namespace A293810

/-- `A284600(∏{p}[n+1, #])` -/
def P10380444002481481253.Spec : Prop :=
  ∀ n, P10380444002481481253.a n = A293810 (n + 1)

end A293810

/-! ## A293810.P11906826791736826488

`A302776(∏{p}[n+1, #])`
-/

namespace A293810.P11906826791736826488
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302776 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A293810.P11906826791736826488

namespace A293810

/-- `A302776(∏{p}[n+1, #])` -/
def P11906826791736826488.Spec : Prop :=
  ∀ n, P11906826791736826488.a n = A293810 (n + 1)

end A293810

/-! ## A293810.P13201137734729420299

`A327499(∏{p}[n+1, #])`
-/

namespace A293810.P13201137734729420299
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327499 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A293810.P13201137734729420299

namespace A293810

/-- `A327499(∏{p}[n+1, #])` -/
def P13201137734729420299.Spec : Prop :=
  ∀ n, P13201137734729420299.a n = A293810 (n + 1)

end A293810

/-! ## A293810.P8525971007589098708

`A338669(∏{p}[n+1, #])`
-/

namespace A293810.P8525971007589098708
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338669 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A293810.P8525971007589098708

namespace A293810

/-- `A338669(∏{p}[n+1, #])` -/
def P8525971007589098708.Spec : Prop :=
  ∀ n, P8525971007589098708.a n = A293810 (n + 1)

end A293810

/-! ## A293810.P5917180953822752389

`A345933(∏{p}[n+1, #])`
-/

namespace A293810.P5917180953822752389
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345933 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A293810.P5917180953822752389

namespace A293810

/-- `A345933(∏{p}[n+1, #])` -/
def P5917180953822752389.Spec : Prop :=
  ∀ n, P5917180953822752389.a n = A293810 (n + 1)

end A293810

/-! ## A293810.P1509799871520533544

`A345942(∏{p}[n+1, #])`
-/

namespace A293810.P1509799871520533544
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345942 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A293810.P1509799871520533544

namespace A293810

/-- `A345942(∏{p}[n+1, #])` -/
def P1509799871520533544.Spec : Prop :=
  ∀ n, P1509799871520533544.a n = A293810 (n + 1)

end A293810

/-! ## A293810.P13428484005831251837

`A346089(∏{p}[n+1, #])`
-/

namespace A293810.P13428484005831251837
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346089 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A293810.P13428484005831251837

namespace A293810

/-- `A346089(∏{p}[n+1, #])` -/
def P13428484005831251837.Spec : Prop :=
  ∀ n, P13428484005831251837.a n = A293810 (n + 1)

end A293810

/-! ## A293810.P13603284747373897417

`A351425(∏{p}[n+1, #])`
-/

namespace A293810.P13603284747373897417
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351425 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A293810.P13603284747373897417

namespace A293810

/-- `A351425(∏{p}[n+1, #])` -/
def P13603284747373897417.Spec : Prop :=
  ∀ n, P13603284747373897417.a n = A293810 (n + 1)

end A293810

/-! ## A293810.P14781932384538221266

`(n+1)/A217434(n+1)`
-/

namespace A293810.P14781932384538221266
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A217434 (n + 1) : ℚ)

end

end A293810.P14781932384538221266

namespace A293810

/-- `(n+1)/A217434(n+1)` -/
def P14781932384538221266.Spec : Prop :=
  ∀ n, P14781932384538221266.a n = (A293810 (n + 1) : ℚ)

end A293810

/-! ## A293810.P12153806624045445914

`A051119(A007947(n+1))`
-/

namespace A293810.P12153806624045445914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051119 (A007947 (n + 1)).toNat

end

end A293810.P12153806624045445914

namespace A293810

/-- `A051119(A007947(n+1))` -/
def P12153806624045445914.Spec : Prop :=
  ∀ n, P12153806624045445914.a n = A293810 (n + 1)

end A293810

/-! ## A293810.P3668565218800810232

`A052126(A076618(n+1)-1)`
-/

namespace A293810.P3668565218800810232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (A076618 (n + 1) - 1).toNat

end

end A293810.P3668565218800810232

namespace A293810

/-- `A052126(A076618(n+1)-1)` -/
def P3668565218800810232.Spec : Prop :=
  ∀ n, P3668565218800810232.a n = A293810 (n + 1)

end A293810

/-! ## A293810.P16664301250777162451

`A052126((n+1)/A003557(n+1))`
-/

namespace A293810.P16664301250777162451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A003557 (n + 1) : ℚ))).toNat

end

end A293810.P16664301250777162451

namespace A293810

/-- `A052126((n+1)/A003557(n+1))` -/
def P16664301250777162451.Spec : Prop :=
  ∀ n, P16664301250777162451.a n = A293810 (n + 1)

end A293810

/-! ## A293810.P6283493028212291221

`A064549(n+1)/A253560(n+1)`
-/

namespace A293810.P6283493028212291221
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064549 (n + 1) : ℚ) / (A253560 (n + 1) : ℚ)

end

end A293810.P6283493028212291221

namespace A293810

/-- `A064549(n+1)/A253560(n+1)` -/
def P6283493028212291221.Spec : Prop :=
  ∀ n, P6283493028212291221.a n = (A293810 (n + 1) : ℚ)

end A293810

/-! ## A293810.P10500310273278516500

`A334085(n+1)/A085392(n+1)`
-/

namespace A293810.P10500310273278516500
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A334085 (n + 1) : ℚ) / (A085392 (n + 1) : ℚ)

end

end A293810.P10500310273278516500

namespace A293810

/-- `A334085(n+1)/A085392(n+1)` -/
def P10500310273278516500.Spec : Prop :=
  ∀ n, P10500310273278516500.a n = (A293810 (n + 1) : ℚ)

end A293810

/-! ## A293810.P17004076157293584234

`A342768(n+1)/A102631(n+1)`
-/

namespace A293810.P17004076157293584234
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A342768 (n + 1) : ℚ) / (A102631 (n + 1) : ℚ)

end

end A293810.P17004076157293584234

namespace A293810

/-- `A342768(n+1)/A102631(n+1)` -/
def P17004076157293584234.Spec : Prop :=
  ∀ n, P17004076157293584234.a n = (A293810 (n + 1) : ℚ)

end A293810

/-! ## A293810.P14174555768699634306

`gcd(A007947(n+1), A351168(n+1))`
-/

namespace A293810.P14174555768699634306
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007947 (n + 1)) (A351168 (n + 1))

end

end A293810.P14174555768699634306

namespace A293810

/-- `gcd(A007947(n+1), A351168(n+1))` -/
def P14174555768699634306.Spec : Prop :=
  ∀ n, (P14174555768699634306.a n : ℤ) = A293810 (n + 1)

end A293810

/-! ## A293810.P17170424890995803443

`gcd(A062953(n+1), A351419(n+1))`
-/

namespace A293810.P17170424890995803443
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A062953 (n + 1)) (A351419 (n + 1))

end

end A293810.P17170424890995803443

namespace A293810

/-- `gcd(A062953(n+1), A351419(n+1))` -/
def P17170424890995803443.Spec : Prop :=
  ∀ n, (P17170424890995803443.a n : ℤ) = A293810 (n + 1)

end A293810

/-!
# A293811: "Look twice to the left" sequence starting with 1,2 (see comment).

The programs for A293811, there is no canonical definition to state claims against.
-/

/-! ## A293811.P320003996564460960

`A000034(A023545(record[A134292(n+1)]))`
-/

namespace A293811.P320003996564460960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134292 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A023545 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A293811.P320003996564460960

/-! ## A293811.P6877928858307346

`A106035(A229621(n+1))%A010723(A146558(n+1))`
-/

namespace A293811.P6877928858307346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A106035 (A229621 (n + 1)).toNat) (A010723 (A146558 (n + 1)).toNat)

end

end A293811.P6877928858307346

/-! ## A293811.P17777034374461131951

`A040001(and(A281197(n+5), A286762(n+1))+1)`
-/

namespace A293811.P17777034374461131951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (Int.land (A281197 (n + 5)) (A286762 (n + 1)) + 1).toNat

end

end A293811.P17777034374461131951

/-! ## A293811.P12884018668613322328

`A177704(A354788(n)+A340325(n+2))`
-/

namespace A293811.P12884018668613322328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177704 (A354788 n + A340325 (n + 2)).toNat

end

end A293811.P12884018668613322328

/-!
# A293813: Number of partitions of n into nontrivial divisors of n.

The programs for A293813, there is no canonical definition to state claims against.
-/

/-! ## A293813.P7782874527311205561

`A211110(n)-(1-C(n, n²))`
-/

namespace A293813.P7782874527311205561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211110 n - (1 - (Nat.choose n (n ^ 2) : ℤ))

end

end A293813.P7782874527311205561

/-! ## A293813.P5453483363110370858

`A211110(n)-A157928(n)`
-/

namespace A293813.P5453483363110370858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211110 n - A157928 n

end

end A293813.P5453483363110370858

/-! ## A293813.P16166921652986770987

`A211110(n)-A115955(C(3, n²))`
-/

namespace A293813.P16166921652986770987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211110 n - A115955 (Nat.choose 3 (n ^ 2))

end

end A293813.P16166921652986770987

/-! ## A293813.P13440059460908990918

`A211110(n)-A211110(C(n, n²))`
-/

namespace A293813.P13440059460908990918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211110 n - A211110 (Nat.choose n (n ^ 2))

end

end A293813.P13440059460908990918

/-! ## A293813.P6096710801810102571

`A211110(n)-A057427(A032741(n))`
-/

namespace A293813.P6096710801810102571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211110 n - A057427 (A032741 n).toNat

end

end A293813.P6096710801810102571

/-! ## A293813.P17142352193027669468

`A211110(n)-A057427(A319410(n))`
-/

namespace A293813.P17142352193027669468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211110 n - A057427 (A319410 n).toNat

end

end A293813.P17142352193027669468

/-! ## A293813.P5317619394021395969

`A211110(n)-A057427(A028310(n)-1)`
-/

namespace A293813.P5317619394021395969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211110 n - A057427 (A028310 n - 1).toNat

end

end A293813.P5317619394021395969

/-! ## A293813.P9294812618713042081

`A211110(n)+A293814(n)-A211111(n)`
-/

namespace A293813.P9294812618713042081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211110 n + (A293814 n - A211111 n)

end

end A293813.P9294812618713042081

/-! ## A293813.P3541213701952135636

`A211110(n)-A057427(n-A057427(n))`
-/

namespace A293813.P3541213701952135636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211110 n - A057427 ((n : ℤ) - A057427 n).toNat

end

end A293813.P3541213701952135636

/-! ## A293813.P5999587932217600319

`A211110(n)-A003415(lt[A003415(n), 2])`
-/

namespace A293813.P5999587932217600319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211110 n - A003415 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A293813.P5999587932217600319

/-! ## A293813.P2073525876407141456

`A211110(n)-A069283(A008578(n+1))`
-/

namespace A293813.P2073525876407141456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211110 n - A069283 (A008578 (n + 1)).toNat

end

end A293813.P2073525876407141456

/-! ## A293813.P5691937396130418898

`A211110(n)-A000035(eq[1, A211110(n)])`
-/

namespace A293813.P5691937396130418898
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211110 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211110 n - A000035 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A293813.P5691937396130418898

/-! ## A293813.P9313699765343155663

`A102460((n+1)²)+A211110(n)-1`
-/

namespace A293813.P9313699765343155663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102460 ((n + 1) ^ 2) + (A211110 n - 1)

end

end A293813.P9313699765343155663

/-!
# A293814: Number of partitions of n into distinct nontrivial divisors of n.

The programs for A293814, there is no canonical definition to state claims against.
-/

/-! ## A293814.P620136611252564496

`A211111(n)-A157928(n)`
-/

namespace A293814.P620136611252564496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211111 n - A157928 n

end

end A293814.P620136611252564496

/-! ## A293814.P2298636264224061650

`A211111(n)-A057427(A032741(n))`
-/

namespace A293814.P2298636264224061650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211111 n - A057427 (A032741 n).toNat

end

end A293814.P2298636264224061650

/-! ## A293814.P12746540044394195015

`A211111(n)-A057427(A319410(n))`
-/

namespace A293814.P12746540044394195015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211111 n - A057427 (A319410 n).toNat

end

end A293814.P12746540044394195015

/-! ## A293814.P12369992270930524744

`A211111(n)-A178334(A211261(n+1))`
-/

namespace A293814.P12369992270930524744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211111 n - A178334 (A211261 (n + 1)).toNat

end

end A293814.P12369992270930524744

/-! ## A293814.P7814262564827978433

`A211111(n)-A211111(A319410(n)+1)`
-/

namespace A293814.P7814262564827978433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211111 n - A211111 (A319410 n + 1).toNat

end

end A293814.P7814262564827978433

/-! ## A293814.P5420067753222937027

`A211111(n)-A057427(A028310(n)-1)`
-/

namespace A293814.P5420067753222937027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211111 n - A057427 (A028310 n - 1).toNat

end

end A293814.P5420067753222937027

/-! ## A293814.P12207912647594681655

`A211111(n)-A057427(n-A057427(n))`
-/

namespace A293814.P12207912647594681655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211111 n - A057427 ((n : ℤ) - A057427 n).toNat

end

end A293814.P12207912647594681655

/-! ## A293814.P4979246373768618029

`A211111(n)-A267870(2*n+1)`
-/

namespace A293814.P4979246373768618029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211111 n - A267870 (2 * n + 1)

end

end A293814.P4979246373768618029

/-! ## A293814.P17502433112586430739

`A211111(n)-A072273(A008578(n+1))`
-/

namespace A293814.P17502433112586430739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211111 n - A072273 (A008578 (n + 1)).toNat

end

end A293814.P17502433112586430739

/-! ## A293814.P6055370437329653476

`A211111(n)-A057427(A086520(n))`
-/

namespace A293814.P6055370437329653476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211111 n - A057427 (A086520 n).toNat

end

end A293814.P6055370437329653476

/-! ## A293814.P7645186508775464657

`A211111(n)-A211111(A099375(A019362(n+1)))`
-/

namespace A293814.P7645186508775464657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211111 n - A211111 (A099375 (A019362 (n + 1)).toNat).toNat

end

end A293814.P7645186508775464657

/-! ## A293814.P1938924481672601161

`A028310(A211111(n))-A057427(n)`
-/

namespace A293814.P1938924481672601161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A211111 n).toNat - A057427 n

end

end A293814.P1938924481672601161

/-! ## A293814.P13696775399383030416

`A028310(A211111(n))-A211111(2*n+1)`
-/

namespace A293814.P13696775399383030416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A211111 n).toNat - A211111 (2 * n + 1)

end

end A293814.P13696775399383030416

/-! ## A293814.P14813197280194237195

`A211111(n)-A211111(A131507(A008794(n)))`
-/

namespace A293814.P14813197280194237195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211111 n - A211111 (A131507 (A008794 n).toNat).toNat

end

end A293814.P14813197280194237195

/-! ## A293814.P9202941169834128508

`A211111(n)-A211111(A005100(A092976(n)))`
-/

namespace A293814.P9202941169834128508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211111 n - A211111 (A005100 (A092976 n).toNat).toNat

end

end A293814.P9202941169834128508

/-! ## A293814.P10038380354079148978

`A211111(n)-A211111(A225245(n²))`
-/

namespace A293814.P10038380354079148978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211111 n - A211111 (A225245 (n ^ 2)).toNat

end

end A293814.P10038380354079148978

/-!
# A293817: Numbers k such that m=2*k is the middle side in a Heronian triangle with sides m-13, m , m+13.

The programs for A293817, the canonical program `A293817.P9961978938100800036` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A293817 has offset 0).

The definition of A293817 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A293817.P9961978938100800036

`4*a(n-3)-a(n-6)` with `a(0)=13, a(1)=14, a(2)=19, a(3)=26, a(4)=37, a(5)=62`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A293817

/-- `4*a(n-3)-a(n-6)` -/
def P9961978938100800036.Spec : Prop :=
  ∀ n, P9961978938100800036.a n = A293817 n

theorem P9961978938100800036.correct : P9961978938100800036.Spec := by
  intro n
  simp only [A293817]

end A293817

/-!
# A293818: Number of integer-sided polygons having perimeter n, modulo rotations and reflections.

The programs for A293818, there is no canonical definition to state claims against.
-/

/-! ## A293818.P17567528008966535108

`A291857(n+4)-Δ[A000029(n+3)]`
-/

namespace A293818.P17567528008966535108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000029 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291857 (n + 4) - (f1 (n + 1) - f1 n)

end

end A293818.P17567528008966535108

/-! ## A293818.P11628374509073078342

`floor(sqrt(sqrt(A355089(3*n+4))))`
-/

namespace A293818.P11628374509073078342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (Real.sqrt (A355089 (3 * n + 4) : ℝ))⌋

end

end A293818.P11628374509073078342

/-! ## A293818.P15624186852066353825

`A120036(n)+A000196(A000244(n))`
-/

namespace A293818.P15624186852066353825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120036 n + A000196 (A000244 n).toNat

end

end A293818.P15624186852066353825

/-! ## A293818.P4406430866435732884

`A364913(n)+A003056(A130463(n))`
-/

namespace A293818.P4406430866435732884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364913 n + A003056 (A130463 n).toNat

end

end A293818.P4406430866435732884

/-! ## A293818.P902988348656077695

`A070556(n+1)+A003056(A000108(n+1))`
-/

namespace A293818.P902988348656077695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070556 (n + 1) + A003056 (A000108 (n + 1)).toNat

end

end A293818.P902988348656077695

/-!
# A293820: Number of integer-sided polygons having perimeter n, modulo rotations but not reflections.

The programs for A293820, the canonical program `A293820.P14058606410134119236` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A293820 has offset 3).

The definition of A293820 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 338 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A293820.P14058606410134119236

`A052823(n+3)-A052551(n+1)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A293820

/-- `A052823(n+3)-A052551(n+1)` -/
def P14058606410134119236.Spec : Prop :=
  ∀ n, P14058606410134119236.a n = A293820 (n + 3)

theorem P14058606410134119236.correct : P14058606410134119236.Spec := by
  intro n
  simp only [A293820, Nat.add_sub_cancel]

end A293820

/-! ## A293820.P13303946324375459954

`A008965(n+3)-A016116(n+3)`
-/

namespace A293820.P13303946324375459954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008965 (n + 3) - A016116 (n + 3)

end

end A293820.P13303946324375459954

namespace A293820

/-- `A008965(n+3)-A016116(n+3)` -/
def P13303946324375459954.Spec : Prop :=
  ∀ n, P13303946324375459954.a n = A293820 (n + 3)

end A293820

/-! ## A293820.P4356177090025477071

`A008965(n+3)-Δ[A027383(n+2)]`
-/

namespace A293820.P4356177090025477071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027383 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008965 (n + 3) - (f1 (n + 1) - f1 n)

end

end A293820.P4356177090025477071

namespace A293820

/-- `A008965(n+3)-Δ[A027383(n+2)]` -/
def P4356177090025477071.Spec : Prop :=
  ∀ n, P4356177090025477071.a n = A293820 (n + 3)

end A293820

/-! ## A293820.P517142372745395988

`A008965(n+3)-Δ[A029744(n+5)]`
-/

namespace A293820.P517142372745395988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029744 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008965 (n + 3) - (f1 (n + 1) - f1 n)

end

end A293820.P517142372745395988

namespace A293820

/-- `A008965(n+3)-Δ[A029744(n+5)]` -/
def P517142372745395988.Spec : Prop :=
  ∀ n, P517142372745395988.a n = A293820 (n + 3)

end A293820

/-! ## A293820.P4097013821710442938

`A000031(n+3)-(A016116(n+3)+1)`
-/

namespace A293820.P4097013821710442938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000031 (n + 3) - (A016116 (n + 3) + 1)

end

end A293820.P4097013821710442938

namespace A293820

/-- `A000031(n+3)-(A016116(n+3)+1)` -/
def P4097013821710442938.Spec : Prop :=
  ∀ n, P4097013821710442938.a n = A293820 (n + 3)

end A293820

/-! ## A293820.P11447122972179119493

`A000031(n+3)-A000051(A008619(n+1))`
-/

namespace A293820.P11447122972179119493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000031 (n + 3) - A000051 (A008619 (n + 1)).toNat

end

end A293820.P11447122972179119493

namespace A293820

/-- `A000031(n+3)-A000051(A008619(n+1))` -/
def P11447122972179119493.Spec : Prop :=
  ∀ n, P11447122972179119493.a n = A293820 (n + 3)

end A293820

/-! ## A293820.P5251039262754639691

`A052823(n+3)-A000225(A008619(n+1))`
-/

namespace A293820.P5251039262754639691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052823 (n + 3) - A000225 (A008619 (n + 1)).toNat

end

end A293820.P5251039262754639691

namespace A293820

/-- `A052823(n+3)-A000225(A008619(n+1))` -/
def P5251039262754639691.Spec : Prop :=
  ∀ n, P5251039262754639691.a n = A293820 (n + 3)

end A293820

/-! ## A293820.P12590102720705088482

`A008965(n+3)-A011782(A266977(n+1))`
-/

namespace A293820.P12590102720705088482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008965 (n + 3) - A011782 (A266977 (n + 1)).toNat

end

end A293820.P12590102720705088482

namespace A293820

/-- `A008965(n+3)-A011782(A266977(n+1))` -/
def P12590102720705088482.Spec : Prop :=
  ∀ n, P12590102720705088482.a n = A293820 (n + 3)

end A293820

/-! ## A293820.P16276813386071130171

`A008965(n+3)-A011782(A008619(n+3))`
-/

namespace A293820.P16276813386071130171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008965 (n + 3) - A011782 (A008619 (n + 3)).toNat

end

end A293820.P16276813386071130171

namespace A293820

/-- `A008965(n+3)-A011782(A008619(n+3))` -/
def P16276813386071130171.Spec : Prop :=
  ∀ n, P16276813386071130171.a n = A293820 (n + 3)

end A293820

/-!
# A293821: Number of integer-sided quadrilaterals having perimeter n, modulo rotations but not reflections.

The programs for A293821, there is no canonical definition to state claims against.
-/

/-! ## A293821.P14888199626988790480

`ceil(∑[gcd(∑[n+1]², ∑[∑[n%2]])]/2)`
-/

namespace A293821.P14888199626988790480
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd ((∑ j ∈ Finset.range (n + 1), f2 j) ^ 2) (∑ j ∈ Finset.range (n + 1), f3 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2⌉

end

end A293821.P14888199626988790480

/-! ## A293821.P9503337423075336108

`ceil(∑[ceil(((n+1)/2)^gcd(2, n+1))/2])`
-/

namespace A293821.P9503337423075336108
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌈((n + 1 : ℚ) / 2) ^ Nat.gcd 2 (n + 1)⌉ : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A293821.P9503337423075336108

/-! ## A293821.P9241786317638850181

`ceil(A159693(n+1)/2)`
-/

namespace A293821.P9241786317638850181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A159693 (n + 1) : ℚ) / 2⌉

end

end A293821.P9241786317638850181

/-! ## A293821.P16573267185093414234

`ceil(∑[A000463(n+1)/2])`
-/

namespace A293821.P16573267185093414234
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000463 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A293821.P16573267185093414234

/-! ## A293821.P10769234885728200478

`ceil(∑[A110003(2*n+1)/2])`
-/

namespace A293821.P10769234885728200478
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110003 (2 * n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A293821.P10769234885728200478

/-! ## A293821.P2569024531656629756

`floor(∑[A000463(abs(1-n)+2)/2])`
-/

namespace A293821.P2569024531656629756
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000463 (|1 - (n : ℤ)| + 2).toNat : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A293821.P2569024531656629756

/-! ## A293821.P10821771133907255419

`A065033(∑[gcd(∑[n+1]², ∑[∑[n%2]])])`
-/

namespace A293821.P10821771133907255419
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd ((∑ j ∈ Finset.range (n + 1), f2 j) ^ 2) (∑ j ∈ Finset.range (n + 1), f3 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A293821.P10821771133907255419

/-! ## A293821.P9559496614337052099

`A065033(∑[ceil(((n+1)/2)^gcd(2, n+1))])`
-/

namespace A293821.P9559496614337052099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n + 1 : ℚ) / 2) ^ Nat.gcd 2 (n + 1)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A293821.P9559496614337052099

/-! ## A293821.P11318963208204369701

`A065033(A159693(n+1))`
-/

namespace A293821.P11318963208204369701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A159693 (n + 1)).toNat

end

end A293821.P11318963208204369701

/-! ## A293821.P9942010345790476713

`A065033(∑[A000463(n+1)])`
-/

namespace A293821.P9942010345790476713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A293821.P9942010345790476713

/-!
# A293822: Number of integer-sided pentagons having perimeter n, modulo rotations but not reflections.

The programs for A293822, there is no canonical definition to state claims against.
-/

/-! ## A293822.P17820606881768874257

`A293819(∑[n+2]+6)`
-/

namespace A293822.P17820606881768874257
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293819 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A293822.P17820606881768874257

/-! ## A293822.P7293340162445813626

`A327042(n)+A196050(A202705(n))`
-/

namespace A293822.P7293340162445813626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327042 n + A196050 (A202705 n).toNat

end

end A293822.P7293340162445813626

/-!
# A293823: Number of integer-sided hexagons having perimeter n, modulo rotations but not reflections.

The programs for A293823, there is no canonical definition to state claims against.
-/

/-! ## A293823.P8260320242481173813

`A293819(∑[n+3]+9)`
-/

namespace A293823.P8260320242481173813
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293819 (∑ j ∈ Finset.range (n + 1), f1 j + 9)

end

end A293823.P8260320242481173813

/-! ## A293823.P13167154552349745080

`A105223(A327048(2*n)-n)`
-/

namespace A293823.P13167154552349745080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105223 (A327048 (2 * n) - (n : ℤ)).toNat

end

end A293823.P13167154552349745080

/-! ## A293823.P15646079005778469144

`∑[A354445(∑[A161597(2*n+1)])]`
-/

namespace A293823.P15646079005778469144
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161597 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354445 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A293823.P15646079005778469144

/-! ## A293823.P11604838892450781741

`A343386(n)+A126851(A215930(n))`
-/

namespace A293823.P11604838892450781741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343386 n + A126851 (A215930 n).toNat

end

end A293823.P11604838892450781741

/-!
# A293824: Numbers k such that 28*10^k + 1 is prime.

The programs for A293824, there is no canonical definition to state claims against.
-/

/-! ## A293824.P226375944848402284

`eq[A089051(A080248(n)), A089051(n)]`
-/

namespace A293824.P226375944848402284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089051 (A080248 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089051 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A293824.P226375944848402284

/-! ## A293824.P13307988066269719788

`lt[A023893(n), A071234(A071287(n))]`
-/

namespace A293824.P13307988066269719788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023893 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071234 (A071287 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A293824.P13307988066269719788

/-! ## A293824.P17988717945068799713

`eq[A241641(A135229(n)), A348460(n+1)]`
-/

namespace A293824.P17988717945068799713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241641 (A135229 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348460 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A293824.P17988717945068799713

/-! ## A293824.P6839390214215164588

`lt[A001399(n), A006694(A044689(n+1))]`
-/

namespace A293824.P6839390214215164588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001399 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006694 (A044689 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A293824.P6839390214215164588

/-!
# A293828: Numbers k such that (d(k), d(k+1)) = (0,0) in the base-2 digits d(i) of Pi.

The programs for A293828, there is no canonical definition to state claims against.
-/

/-! ## A293828.P970646347908887294

`∩[A320300(n+1)-1, A320300(n+1)]`
-/

namespace A293828.P970646347908887294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320300 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320300 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A293828.P970646347908887294

/-! ## A293828.P6721618695418787949

`eq[-A004601(n+2), A155482(n)]`
-/

namespace A293828.P6721618695418787949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A004601 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155482 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A293828.P6721618695418787949

/-! ## A293828.P12978533877468612601

`eq[cosh(A155482(n)), A180433(n+1)]`
-/

namespace A293828.P12978533877468612601
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cosh (A155482 n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180433 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℝ)) n

end

end A293828.P12978533877468612601

/-! ## A293828.P9345558307848921368

`lt[A004601(n+2), A180433(A028310(n))]`
-/

namespace A293828.P9345558307848921368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004601 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180433 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A293828.P9345558307848921368

/-! ## A293828.P5122706760835421968

`lt[1-A180433(n+1), A180433(A028310(n))]`
-/

namespace A293828.P5122706760835421968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A180433 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180433 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A293828.P5122706760835421968

/-! ## A293828.P545090514395391941

`lt[A004601(n+2), A180433(A004601(n+2)+n)]`
-/

namespace A293828.P545090514395391941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004601 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180433 (A004601 (n + 2) + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A293828.P545090514395391941

/-! ## A293828.P15016120735067788527

`lt[A004601(n+2), A180433(A233583(n+1))]`
-/

namespace A293828.P15016120735067788527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004601 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180433 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A293828.P15016120735067788527

/-!
# A293829: Numbers k such that (d(k), d(k+1)) = (0,1) in the base-2 digits d(i) of Pi.

The programs for A293829, there is no canonical definition to state claims against.
-/

/-! ## A293829.P12134852738045715873

`A293830(n+1)+A051480(2*(n+1))`
-/

namespace A293829.P12134852738045715873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293830 (n + 1) + A051480 (2 * (n + 1))

end

end A293829.P12134852738045715873

/-! ## A293829.P7142911332983208796

`∑[A051480(2*n+1)+A051480(2*(n+1))]`
-/

namespace A293829.P7142911332983208796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051480 (2 * n + 1) + A051480 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A293829.P7142911332983208796

/-! ## A293829.P6531095927978245950

`lt[0, n*A155482(n)]`
-/

namespace A293829.P6531095927978245950
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A155482 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A293829.P6531095927978245950

/-! ## A293829.P15751844819995387903

`eq[1, A155482(n+1)]+1`
-/

namespace A293829.P15751844819995387903
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155482 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A293829.P15751844819995387903

/-! ## A293829.P5854536057014862153

`eq[1, Δ[A004601(n+2)]]+1`
-/

namespace A293829.P5854536057014862153
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004601 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A293829.P5854536057014862153

/-! ## A293829.P15946402425602032464

`eq[A054977(n), A155482(n)]`
-/

namespace A293829.P15946402425602032464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155482 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A293829.P15946402425602032464

/-! ## A293829.P5498678681219996719

`eq[A057427(n), A155482(n)]`
-/

namespace A293829.P5498678681219996719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155482 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A293829.P5498678681219996719

/-! ## A293829.P18179103804580633629

`eq[A141044(n), A155482(n)]`
-/

namespace A293829.P18179103804580633629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141044 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155482 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A293829.P18179103804580633629

/-! ## A293829.P10014270459074524276

`eq[A155482(n), A158388(n)]`
-/

namespace A293829.P10014270459074524276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155482 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A293829.P10014270459074524276

/-! ## A293829.P9927022438255199376

`eq[A155482(n), A261143(n)]`
-/

namespace A293829.P9927022438255199376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155482 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261143 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A293829.P9927022438255199376

/-! ## A293829.P13406619706851510377

`eq[A155482(n), A294619(n)]`
-/

namespace A293829.P13406619706851510377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155482 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294619 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A293829.P13406619706851510377

/-! ## A293829.P12178258966219987172

`eq[A057428(n)², A155482(n)]`
-/

namespace A293829.P12178258966219987172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155482 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A293829.P12178258966219987172

/-! ## A293829.P9853700314595596637

`eq[A134824(n)², A155482(n)]`
-/

namespace A293829.P9853700314595596637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155482 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A293829.P9853700314595596637

/-! ## A293829.P8068247873175965375

`eq[A132126(n+1), A155482(n)]`
-/

namespace A293829.P8068247873175965375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155482 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A293829.P8068247873175965375

/-! ## A293829.P804503711944002693

`eq[A155482(n), A358691(n+1)]`
-/

namespace A293829.P804503711944002693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155482 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358691 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A293829.P804503711944002693

/-! ## A293829.P8980724051578870916

`eq[char[A004601(n+2)+n], A000038(n)]`
-/

namespace A293829.P8980724051578870916
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004601 (n + 2) + (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A293829.P8980724051578870916

/-! ## A293829.P17563999582450739266

`eq[1, A004601(n+2)*A047255(a(n-1)+1)]` with `a(0)=2`
-/

namespace A293829.P17563999582450739266
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f2 =>
  A004601 (n + 2) * A047255 (f2 (n - 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A293829.P17563999582450739266

/-! ## A293829.P3766785612693006344

`eq[A155482(n), A178334(A178334(n))]`
-/

namespace A293829.P3766785612693006344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155482 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 (A178334 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A293829.P3766785612693006344

/-! ## A293829.P9123640423463054700

`lt[A180433(n+1), A180433(A028310(n))]`
-/

namespace A293829.P9123640423463054700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180433 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180433 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A293829.P9123640423463054700

/-!
# A293830: Numbers k such that (d(k), d(k+1)) = (1,0) in the base-2 digits d(i) of Pi.

The programs for A293830, there is no canonical definition to state claims against.
-/

/-! ## A293830.P8452987318636198210

`A004711(∑[A051480(2*n+1)])`
-/

namespace A293830.P8452987318636198210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051480 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004711 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A293830.P8452987318636198210

/-! ## A293830.P4534803465027328475

`A293829(n+1)-A051480(2*(n+1))`
-/

namespace A293830.P4534803465027328475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293829 (n + 1) - A051480 (2 * (n + 1))

end

end A293830.P4534803465027328475

/-! ## A293830.P2306967465267458825

`lt[A155482(n), 0]`
-/

namespace A293830.P2306967465267458825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155482 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A293830.P2306967465267458825

/-! ## A293830.P13508586556277146128

`eq[1, Δ[A180433(n+1)]]+1`
-/

namespace A293830.P13508586556277146128
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180433 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A293830.P13508586556277146128

/-! ## A293830.P608592516208674313

`eq[A057428(n), A155482(n)]`
-/

namespace A293830.P608592516208674313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155482 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A293830.P608592516208674313

/-! ## A293830.P9191299467097831199

`eq[A134824(n), A155482(n)]`
-/

namespace A293830.P9191299467097831199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155482 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A293830.P9191299467097831199

/-! ## A293830.P2315803713390356445

`eq[2, A054977(n)-A155482(n)]`
-/

namespace A293830.P2315803713390356445
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n - A155482 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A293830.P2315803713390356445

/-! ## A293830.P16223368502475821185

`eq[2, A057427(n)-A155482(n)]`
-/

namespace A293830.P16223368502475821185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n - A155482 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A293830.P16223368502475821185

/-! ## A293830.P8043078392439251182

`eq[2, A158388(n)-A155482(n)]`
-/

namespace A293830.P8043078392439251182
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 n - A155482 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A293830.P8043078392439251182

/-! ## A293830.P11785817723116114413

`eq[2, A141044(n)²-A155482(n)]`
-/

namespace A293830.P11785817723116114413
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141044 n ^ 2 - A155482 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A293830.P11785817723116114413

/-! ## A293830.P15244811595266613481

`lt[A180433(A028310(n)), A180433(n+1)]`
-/

namespace A293830.P15244811595266613481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180433 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180433 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A293830.P15244811595266613481

/-! ## A293830.P9697862965563437039

`eq[2, A178334(A178334(n))-A155482(n)]`
-/

namespace A293830.P9697862965563437039
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 (A178334 n).toNat - A155482 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A293830.P9697862965563437039

/-! ## A293830.P6419049391300230286

`lt[A004601(n+2), A004601(A028310(n)+1)]`
-/

namespace A293830.P6419049391300230286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004601 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004601 (A028310 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A293830.P6419049391300230286

/-! ## A293830.P4828248963865636563

`lt[A180433(A004601(n+2)+n), A180433(n+1)]`
-/

namespace A293830.P4828248963865636563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180433 (A004601 (n + 2) + (n : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180433 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A293830.P4828248963865636563

/-! ## A293830.P10496812186096974680

`lt[A180433(A233583(n+1)), A180433(n+1)]`
-/

namespace A293830.P10496812186096974680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180433 (A233583 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180433 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A293830.P10496812186096974680

/-! ## A293830.P12779546200825246510

`lt[A004601(n+2), A004601(A233583(n+1)+1)]`
-/

namespace A293830.P12779546200825246510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004601 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004601 (A233583 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A293830.P12779546200825246510

/-! ## A293830.P17281325083892328702

`eq[1, A083652(a(n-1))*A180433(n+1)]` with `a(0)=0`
-/

namespace A293830.P17281325083892328702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  A083652 (f2 (n - 1)).toNat * A180433 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A293830.P17281325083892328702

/-!
# A293831: Numbers k such that (d(k), d(k+1)) = (1,1) in the base-2 digits d(i) of Pi.

The programs for A293831, there is no canonical definition to state claims against.
-/

/-! ## A293831.P15811067663542699693

`A004711(record[(n+1)/A320298(n+1)])`
-/

namespace A293831.P15811067663542699693
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A320298 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004711 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A293831.P15811067663542699693

/-! ## A293831.P13849004859162845912

`∩[A004711(n+1)-1, A004711(n+1)]`
-/

namespace A293831.P13849004859162845912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004711 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004711 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A293831.P13849004859162845912

/-! ## A293831.P12398023129695547778

`A004711(eq[1, A004711(n+2)-A004711(n+1)]+1)`
-/

namespace A293831.P12398023129695547778
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004711 (n + 2) - A004711 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004711 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A293831.P12398023129695547778

/-! ## A293831.P6371525426867022739

`∩[A004711(n+1), A057428(n+1)+A004711(n+1)]`
-/

namespace A293831.P6371525426867022739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004711 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (n + 1) + A004711 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A293831.P6371525426867022739

/-! ## A293831.P2375049118385977333

`eq[A155482(n), A180433(n+1)]`
-/

namespace A293831.P2375049118385977333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155482 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180433 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A293831.P2375049118385977333

/-! ## A293831.P9345616866517790781

`eq[1, A155482(n)+A004601(n+2)]`
-/

namespace A293831.P9345616866517790781
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155482 n + A004601 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A293831.P9345616866517790781

/-! ## A293831.P10263121698481047218

`record[(n+1)*A004601(A004601(n+2)+n+2)]`
-/

namespace A293831.P10263121698481047218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A004601 (A004601 (n + 2) + (n : ℤ) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A293831.P10263121698481047218

/-!
# A293833: Number of primes p with A020330(n) < p < A020330(n+1).

The programs for A293833, the canonical program `A293833.P17653983058469119188` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A293833 has offset 1).

The definition of A293833 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 254 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A293833.P17653983058469119188

`Δ[A000720(A020330(n+1))]`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A293833

/-- `Δ[A000720(A020330(n+1))]` -/
def P17653983058469119188.Spec : Prop :=
  ∀ n, P17653983058469119188.a n = A293833 (n + 1)

theorem P17653983058469119188.correct : P17653983058469119188.Spec := by
  intro n
  simp only [A293833, Nat.add_sub_cancel]

end A293833

/-! ## A293833.P9195860456412025137

`Δ[A000720((n+1)*A076877(n+1))]`
-/

namespace A293833.P9195860456412025137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 ((n + 1 : ℤ) * A076877 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A293833.P9195860456412025137

namespace A293833

/-- `Δ[A000720((n+1)*A076877(n+1))]` -/
def P9195860456412025137.Spec : Prop :=
  ∀ n, P9195860456412025137.a n = A293833 (n + 1)

end A293833

/-! ## A293833.P11802527904077365920

`Δ[A000720((n+1)*(A003817(n+1)+2))]`
-/

namespace A293833.P11802527904077365920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 ((n + 1 : ℤ) * (A003817 (n + 1) + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A293833.P11802527904077365920

namespace A293833

/-- `Δ[A000720((n+1)*(A003817(n+1)+2))]` -/
def P11802527904077365920.Spec : Prop :=
  ∀ n, P11802527904077365920.a n = A293833 (n + 1)

end A293833

/-! ## A293833.P3509121403228171743

`Δ[A000720((n+1)*(A004755(n+1)-n))]`
-/

namespace A293833.P3509121403228171743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 ((n + 1 : ℤ) * (A004755 (n + 1) - (n : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A293833.P3509121403228171743

namespace A293833

/-- `Δ[A000720((n+1)*(A004755(n+1)-n))]` -/
def P3509121403228171743.Spec : Prop :=
  ∀ n, P3509121403228171743.a n = A293833 (n + 1)

theorem P3509121403228171743.correct : P3509121403228171743.Spec := by
  intro n
  simp only [A293833, Nat.add_sub_cancel, A293833.P3509121403228171743.f1, A293833.P3509121403228171743.a, A293833.P17653983058469119188.f1, A293833.P17653983058469119188.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A004755, A004755.P18071614157387427853.a, A020330, A020330.P7025260452739219137.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A293833

/-! ## A293833.P448604205106789051

`Δ[A000720((n+1)*(A035327(n+1)+n+3))]`
-/

namespace A293833.P448604205106789051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 ((n + 1 : ℤ) * (A035327 (n + 1) + (n + 3 : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A293833.P448604205106789051

namespace A293833

/-- `Δ[A000720((n+1)*(A035327(n+1)+n+3))]` -/
def P448604205106789051.Spec : Prop :=
  ∀ n, P448604205106789051.a n = A293833 (n + 1)

end A293833

/-! ## A293833.P3003903456077537587

`Δ[A000720((n+1)*(A206332(n+1)-(n-1)))]`
-/

namespace A293833.P3003903456077537587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 ((n + 1 : ℤ) * (A206332 (n + 1) - ((n : ℤ) - 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A293833.P3003903456077537587

namespace A293833

/-- `Δ[A000720((n+1)*(A206332(n+1)-(n-1)))]` -/
def P3003903456077537587.Spec : Prop :=
  ∀ n, P3003903456077537587.a n = A293833 (n + 1)

theorem P3003903456077537587.correct : P3003903456077537587.Spec := by
  intro n
  simp only [A293833, Nat.add_sub_cancel, A293833.P3003903456077537587.f1, A293833.P3003903456077537587.a, A293833.P17653983058469119188.f1, A293833.P17653983058469119188.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A020330, A020330.P7025260452739219137.a, A206332, A206332.P9847070516523007032.a, A004755, A004755.P18071614157387427853.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A293833

/-! ## A293833.P3560966242851982836

`Δ[A000720(A253608(n+1)+A006257(n+1))]`
-/

namespace A293833.P3560966242851982836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A253608 (n + 1) + A006257 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A293833.P3560966242851982836

namespace A293833

/-- `Δ[A000720(A253608(n+1)+A006257(n+1))]` -/
def P3560966242851982836.Spec : Prop :=
  ∀ n, P3560966242851982836.a n = A293833 (n + 1)

end A293833

/-! ## A293833.P1179952238743239427

`Δ[A033270(A020330(n+1))]%A000041(n+3)`
-/

namespace A293833.P1179952238743239427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033270 (A020330 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A000041 (n + 3))

end

end A293833.P1179952238743239427

namespace A293833

/-- `Δ[A033270(A020330(n+1))]%A000041(n+3)` -/
def P1179952238743239427.Spec : Prop :=
  ∀ n, P1179952238743239427.a n = A293833 (n + 1)

end A293833

/-! ## A293833.P13204721891490695257

`Δ[A033270(A020330(n+1))%A000040(n+1)²]`
-/

namespace A293833.P13204721891490695257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033270 (A020330 (n + 1)).toNat) (A000040 (n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A293833.P13204721891490695257

namespace A293833

/-- `Δ[A033270(A020330(n+1))%A000040(n+1)²]` -/
def P13204721891490695257.Spec : Prop :=
  ∀ n, P13204721891490695257.a n = A293833 (n + 1)

end A293833

/-! ## A293833.P9086337463016528764

`Δ[A033270(A020330(n+1))+A020639(2*(n+1))]`
-/

namespace A293833.P9086337463016528764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033270 (A020330 (n + 1)).toNat + A020639 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A293833.P9086337463016528764

namespace A293833

/-- `Δ[A033270(A020330(n+1))+A020639(2*(n+1))]` -/
def P9086337463016528764.Spec : Prop :=
  ∀ n, P9086337463016528764.a n = A293833 (n + 1)

end A293833

/-!
# A293835: a(n) = smallest number (in absolute value) not yet in the sequence such that the arithmetic mean of the first n terms a(1), a(2), ..., a(n) is an integer; a(1)=1. No two numbers with the same absolute value may appear. Preference is given to positive values of a(n).

The programs for A293835, there is no canonical definition to state claims against.
-/

/-! ## A293835.P6116942408701887218

`Δ[lcm(n, A293836(A028310(n)))]`
-/

namespace A293835.P6116942408701887218
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A293836 (A028310 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A293835.P6116942408701887218

/-! ## A293835.P15392768286579416053

`A000007(n)+Δ[A293836(A028310(n))]`
-/

namespace A293835.P15392768286579416053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293836 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (f1 (n + 1) - f1 n)

end

end A293835.P15392768286579416053

/-! ## A293835.P11358757724906384527

`Δ[A293836(A028310(n))+A057427(n)]`
-/

namespace A293835.P11358757724906384527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293836 (A028310 n).toNat + A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A293835.P11358757724906384527

/-! ## A293835.P17740553266679108797

`A151909(n)+Δ[A293836(A028310(n))]`
-/

namespace A293835.P17740553266679108797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293836 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151909 n + (f1 (n + 1) - f1 n)

end

end A293835.P17740553266679108797

/-! ## A293835.P14458666033254208229

`Δ[A293836(A028310(n))]+A080054(n)%2`
-/

namespace A293835.P14458666033254208229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293836 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + Int.tmod (A080054 n) 2

end

end A293835.P14458666033254208229

/-! ## A293835.P15041861215552798636

`Δ[A293836(A028310(n))-A135560(2*n+1)]`
-/

namespace A293835.P15041861215552798636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293836 (A028310 n).toNat - A135560 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A293835.P15041861215552798636

/-! ## A293835.P5683975917995145761

`Δ[A293836(A028310(n))-A014963(4*n+2)]`
-/

namespace A293835.P5683975917995145761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293836 (A028310 n).toNat - A014963 (4 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A293835.P5683975917995145761

/-! ## A293835.P2113624205841241284

`Δ[A293836(A028310(n))+A034444(A034444(n+1))]`
-/

namespace A293835.P2113624205841241284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293836 (A028310 n).toNat + A034444 (A034444 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A293835.P2113624205841241284

/-! ## A293835.P15032877999916945960

`A293836(n+1)+A000007(n)-A293836(A028310(n))`
-/

namespace A293835.P15032877999916945960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293836 (n + 1) + (A000007 n - A293836 (A028310 n).toNat)

end

end A293835.P15032877999916945960

/-!
# A293836: Partial sums of A293835.

The programs for A293836, there is no canonical definition to state claims against.
-/

/-! ## A293836.P2290444698618775754

`∑[A293835(n+1)]`
-/

namespace A293836.P2290444698618775754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293835 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A293836.P2290444698618775754

/-! ## A293836.P1346035141295898180

`abs(∑[A293835(-xor(n, -1))])`
-/

namespace A293836.P1346035141295898180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293835 (-Int.xor (n : ℤ) (-1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A293836.P1346035141295898180

/-! ## A293836.P781958122205478537

`A293835(n%(n+1)+1)+a(n-1)` with `a(0)=1`
-/

namespace A293836.P781958122205478537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A293835 (n % (n + 1) + 1) + a (n - 1)

end

end A293836.P781958122205478537

/-! ## A293836.P12763289436365681296

`A005843(∑[A293835(-xor(n, -1))])/2`
-/

namespace A293836.P12763289436365681296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293835 (-Int.xor (n : ℤ) (-1)).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005843 (∑ j ∈ Finset.range (n + 1), f1 j).toNat : ℚ) / 2

end

end A293836.P12763289436365681296

/-! ## A293836.P8448998243295436036

`A293835(A028310(n)+1)+a(n-1)` with `a(0)=1`
-/

namespace A293836.P8448998243295436036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A293835 (A028310 n + 1).toNat + a (n - 1)

end

end A293836.P8448998243295436036

/-! ## A293836.P6482629973576772032

`A293835(n+1)+a(A004273(n)-n)` with `a(0)=1`
-/

namespace A293836.P6482629973576772032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A293835 (n + 1) + a (A004273 n - (n : ℤ)).toNat

end

end A293836.P6482629973576772032

/-! ## A293836.P850912650285280842

`A293835(n+1)+A000038(n)+a(n-1)` with `a(0)=1`
-/

namespace A293836.P850912650285280842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A293835 (n + 1) + (A000038 n + a (n - 1))

end

end A293836.P850912650285280842

/-! ## A293836.P18340434785843259489

`A293835(n+1)+a(n-A000034(2*n))` with `a(0)=1`
-/

namespace A293836.P18340434785843259489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A293835 (n + 1) + a ((n : ℤ) - A000034 (2 * n)).toNat

end

end A293836.P18340434785843259489

/-! ## A293836.P6890400562926922862

`a(n-1)+A293835(n+1)%A188050(n)` with `a(0)=1`
-/

namespace A293836.P6890400562926922862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A293835 (n + 1)) (A188050 n)

end

end A293836.P6890400562926922862

/-! ## A293836.P776814643683361142

`(n+1)*A293837(n+1)`
-/

namespace A293836.P776814643683361142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A293837 (n + 1)

end

end A293836.P776814643683361142

/-!
# A293837: a(n) = A293836(n)/n.

The programs for A293837, there is no canonical definition to state claims against.
-/

/-! ## A293837.P7657323286152895173

`A293836(n+1)/(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A293837.P7657323286152895173
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A293836 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A293837.P7657323286152895173

/-! ## A293837.P1542192925141261310

`∑[A293835(n+1)]/(n+1)`
-/

namespace A293837.P1542192925141261310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293835 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (n + 1 : ℚ)

end

end A293837.P1542192925141261310

/-! ## A293837.P16126854003159952043

`A008585(A293836(n+1))%A016789(n)`
-/

namespace A293837.P16126854003159952043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008585 (A293836 (n + 1)).toNat) (A016789 n)

end

end A293837.P16126854003159952043

/-! ## A293837.P15364015854587167574

`A008585(∑[A293835(n+1)])%A016789(n)`
-/

namespace A293837.P15364015854587167574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293835 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008585 (∑ j ∈ Finset.range (n + 1), f1 j).toNat) (A016789 n)

end

end A293837.P15364015854587167574

/-! ## A293837.P8879170488723878112

`(n+1)^A008683(A020483(n))*A293836(n+1)`
-/

namespace A293837.P8879170488723878112
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A008683 (A020483 n).toNat : ℤ) * (A293836 (n + 1) : ℚ)

end

end A293837.P8879170488723878112

/-! ## A293837.P2492485210230083489

`(n+1)^A008683(A001134(n+1))*A293836(n+1)`
-/

namespace A293837.P2492485210230083489
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A008683 (A001134 (n + 1)).toNat : ℤ) * (A293836 (n + 1) : ℚ)

end

end A293837.P2492485210230083489

/-! ## A293837.P9113500832942736000

`(n+1)^A008683(A027746(n+1))*A293836(n+1)`
-/

namespace A293837.P9113500832942736000
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A008683 (A027746 (n + 1)).toNat : ℤ) * (A293836 (n + 1) : ℚ)

end

end A293837.P9113500832942736000

/-!
# A293838: "Look once to the left" sequence starting with 1,2 (see comment).

The programs for A293838, the canonical program `A293838.P10928558950782925109` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A293838 has offset 1).

The definition of A293838 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A293838.P10928558950782925109

`a(n-1-2^floor(log2(n-1)))` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A293838

/-- `a(n-1-2^floor(log2(n-1)))` -/
def P10928558950782925109.Spec : Prop :=
  ∀ n, (P10928558950782925109.a n : ℤ) = A293838 (n + 1)

theorem P10928558950782925109.correct : P10928558950782925109.Spec := by
  intro n
  simp only [A293838, Nat.add_sub_cancel]

end A293838

/-! ## A293838.P16989070963576329081

`A164349(n)+1`
-/

namespace A293838.P16989070963576329081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164349 n + 1

end

end A293838.P16989070963576329081

namespace A293838

/-- `A164349(n)+1` -/
def P16989070963576329081.Spec : Prop :=
  ∀ n, P16989070963576329081.a n = A293838 (n + 1)

end A293838

/-! ## A293838.P8593853798996232427

`char[∑[A101403(n)]]+1`
-/

namespace A293838.P8593853798996232427
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101403 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + 1

end

end A293838.P8593853798996232427

namespace A293838

/-- `char[∑[A101403(n)]]+1` -/
def P8593853798996232427.Spec : Prop :=
  ∀ n, (P8593853798996232427.a n : ℤ) = A293838 (n + 1)

end A293838

/-! ## A293838.P4372169757109745808

`A101266(abs(1-n))+1`
-/

namespace A293838.P4372169757109745808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101266 |1 - (n : ℤ)|.toNat + 1

end

end A293838.P4372169757109745808

namespace A293838

/-- `A101266(abs(1-n))+1` -/
def P4372169757109745808.Spec : Prop :=
  ∀ n, P4372169757109745808.a n = A293838 (n + 1)

end A293838

/-! ## A293838.P11726328799241218484

`char[A246439(n+1)]+1`
-/

namespace A293838.P11726328799241218484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246439 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + 1

end

end A293838.P11726328799241218484

namespace A293838

/-- `char[A246439(n+1)]+1` -/
def P11726328799241218484.Spec : Prop :=
  ∀ n, (P11726328799241218484.a n : ℤ) = A293838 (n + 1)

end A293838

/-! ## A293838.P1915143880664312331

`2-char[A246438(n+1)]`
-/

namespace A293838.P1915143880664312331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246438 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A293838.P1915143880664312331

namespace A293838

/-- `2-char[A246438(n+1)]` -/
def P1915143880664312331.Spec : Prop :=
  ∀ n, P1915143880664312331.a n = A293838 (n + 1)

end A293838

/-! ## A293838.P9368494044520549869

`A000041(1-Δ[A164349(n)])`
-/

namespace A293838.P9368494044520549869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164349 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (1 - (f1 (n + 1) - f1 n)).toNat

end

end A293838.P9368494044520549869

namespace A293838

/-- `A000041(1-Δ[A164349(n)])` -/
def P9368494044520549869.Spec : Prop :=
  ∀ n, P9368494044520549869.a n = A293838 (n + 1)

end A293838

/-! ## A293838.P13666674217024265849

`A000108(1-Δ[A164349(n)])`
-/

namespace A293838.P13666674217024265849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164349 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (1 - (f1 (n + 1) - f1 n)).toNat

end

end A293838.P13666674217024265849

namespace A293838

/-- `A000108(1-Δ[A164349(n)])` -/
def P13666674217024265849.Spec : Prop :=
  ∀ n, P13666674217024265849.a n = A293838 (n + 1)

end A293838

/-! ## A293838.P8856622082365423702

`A000010(2-Δ[A164349(n)])`
-/

namespace A293838.P8856622082365423702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164349 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (2 - (f1 (n + 1) - f1 n)).toNat

end

end A293838.P8856622082365423702

namespace A293838

/-- `A000010(2-Δ[A164349(n)])` -/
def P8856622082365423702.Spec : Prop :=
  ∀ n, P8856622082365423702.a n = A293838 (n + 1)

end A293838

/-! ## A293838.P11935347904278477687

`A000045(2-Δ[A164349(n)])`
-/

namespace A293838.P11935347904278477687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164349 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 - (f1 (n + 1) - f1 n)).toNat

end

end A293838.P11935347904278477687

namespace A293838

/-- `A000045(2-Δ[A164349(n)])` -/
def P11935347904278477687.Spec : Prop :=
  ∀ n, P11935347904278477687.a n = A293838 (n + 1)

end A293838

/-! ## A293838.P339164655573448279

`A001222(3-Δ[A164349(n)])`
-/

namespace A293838.P339164655573448279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164349 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (3 - (f1 (n + 1) - f1 n)).toNat

end

end A293838.P339164655573448279

namespace A293838

/-- `A001222(3-Δ[A164349(n)])` -/
def P339164655573448279.Spec : Prop :=
  ∀ n, P339164655573448279.a n = A293838 (n + 1)

end A293838

/-! ## A293838.P14191529258248732980

`A007318(3-Δ[A164349(n)])`
-/

namespace A293838.P14191529258248732980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164349 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (3 - (f1 (n + 1) - f1 n)).toNat

end

end A293838.P14191529258248732980

namespace A293838

/-- `A007318(3-Δ[A164349(n)])` -/
def P14191529258248732980.Spec : Prop :=
  ∀ n, P14191529258248732980.a n = A293838 (n + 1)

end A293838

/-! ## A293838.P7949731214392957704

`A061579(a(1-A164349(n)))` with `a(0)=1`
-/

namespace A293838.P7949731214392957704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A061579 (a (1 - A164349 n).toNat).toNat

end

end A293838.P7949731214392957704

namespace A293838

/-- `A061579(a(1-A164349(n)))` -/
def P7949731214392957704.Spec : Prop :=
  ∀ n, P7949731214392957704.a n = A293838 (n + 1)

end A293838

/-! ## A293838.P2621882161018648237

`2-A000007(n*A164349(n))`
-/

namespace A293838.P2621882161018648237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A000007 ((n : ℤ) * A164349 n).toNat

end

end A293838.P2621882161018648237

namespace A293838

/-- `2-A000007(n*A164349(n))` -/
def P2621882161018648237.Spec : Prop :=
  ∀ n, P2621882161018648237.a n = A293838 (n + 1)

end A293838

/-! ## A293838.P13825069414647651646

`2/A054977(n*A164349(n))`
-/

namespace A293838.P13825069414647651646
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A054977 ((n : ℤ) * A164349 n).toNat : ℚ)

end

end A293838.P13825069414647651646

namespace A293838

/-- `2/A054977(n*A164349(n))` -/
def P13825069414647651646.Spec : Prop :=
  ∀ n, P13825069414647651646.a n = (A293838 (n + 1) : ℚ)

end A293838

/-! ## A293838.P6160802363111146896

`A005897(n*A164349(n))%3`
-/

namespace A293838.P6160802363111146896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005897 ((n : ℤ) * A164349 n).toNat) 3

end

end A293838.P6160802363111146896

namespace A293838

/-- `A005897(n*A164349(n))%3` -/
def P6160802363111146896.Spec : Prop :=
  ∀ n, P6160802363111146896.a n = A293838 (n + 1)

end A293838

/-! ## A293838.P10432824000623657024

`A227643(eq[2, A227643(n)]*A164349(n))`
-/

namespace A293838.P10432824000623657024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227643 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227643 ((SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) * A164349 n).toNat

end

end A293838.P10432824000623657024

namespace A293838

/-- `A227643(eq[2, A227643(n)]*A164349(n))` -/
def P10432824000623657024.Spec : Prop :=
  ∀ n, P10432824000623657024.a n = A293838 (n + 1)

end A293838

/-!
# A293839: E.g.f.: exp(Sum_{n>=1} A000009(n)*x^n/n).

The programs for A293839, there is no canonical definition to state claims against.
-/

/-! ## A293839.P603989395867875654

`A293908(∑[n]+n)`
-/

namespace A293839.P603989395867875654
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293908 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A293839.P603989395867875654

/-! ## A293839.P4545388356578669077

`gcd(A000038(n), A293908(A000096(n)))`
-/

namespace A293839.P4545388356578669077
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A293908 (A000096 n).toNat)

end

end A293839.P4545388356578669077

/-! ## A293839.P6971662399543769669

`lcm(A048896(n), A293908(A000096(n)))`
-/

namespace A293839.P6971662399543769669
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A048896 n) (A293908 (A000096 n).toNat)

end

end A293839.P6971662399543769669

/-! ## A293839.P1160784230412665743

`A014963(A157352(n+1))*A293908(A000096(n))`
-/

namespace A293839.P1160784230412665743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A157352 (n + 1)).toNat * A293908 (A000096 n).toNat

end

end A293839.P1160784230412665743

/-! ## A293839.P17786297451332874113

`A293908(A000096(n))^A014963(A034262(n+1))`
-/

namespace A293839.P17786297451332874113
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A293908 (A000096 n).toNat : ℚ) ^ (A014963 (A034262 (n + 1)).toNat : ℤ)

end

end A293839.P17786297451332874113

/-!
# A293840: E.g.f.: exp(Sum_{n>=1} A000009(n)*x^n).

The programs for A293840, there is no canonical definition to state claims against.
-/

/-! ## A293840.P12622749598641775374

`A293908(∑[n+2]-1)`
-/

namespace A293840.P12622749598641775374
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293908 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A293840.P12622749598641775374

/-! ## A293840.P2360948186319642505

`or(1, A293908(A034856(n+1)))`
-/

namespace A293840.P2360948186319642505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A293908 (A034856 (n + 1)).toNat)

end

end A293840.P2360948186319642505

/-! ## A293840.P15307084712043947113

`A010048(C(n, 2))*A293908(A034856(n+1))`
-/

namespace A293840.P15307084712043947113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010048 (Nat.choose n 2) * A293908 (A034856 (n + 1)).toNat

end

end A293840.P15307084712043947113

/-! ## A293840.P15575275332749524626

`A293908(A034856(n+1))*A293908(A000124(n))`
-/

namespace A293840.P15575275332749524626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293908 (A034856 (n + 1)).toNat * A293908 (A000124 n).toNat

end

end A293840.P15575275332749524626

/-!
# A293841: E.g.f.: exp(Sum_{n>=1} n*A000009(n)*x^n).

The programs for A293841, there is no canonical definition to state claims against.
-/

/-! ## A293841.P17705317821860399369

`A293908(∑[n+3])`
-/

namespace A293841.P17705317821860399369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293908 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A293841.P17705317821860399369

/-! ## A293841.P15805757508839904971

`A293908(A141214(n))%A278178(n+2)`
-/

namespace A293841.P15805757508839904971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A293908 (A141214 n).toNat) (A278178 (n + 2))

end

end A293841.P15805757508839904971

/-! ## A293841.P5556827929005292937

`A293908(A141214(n))^A061906(n)`
-/

namespace A293841.P5556827929005292937
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A293908 (A141214 n).toNat : ℚ) ^ (A061906 n : ℤ)

end

end A293841.P5556827929005292937

/-! ## A293841.P13774108392004989075

`A293908(A141214(n))^A139337(n)`
-/

namespace A293841.P13774108392004989075
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A293908 (A141214 n).toNat : ℚ) ^ (A139337 n : ℤ)

end

end A293841.P13774108392004989075

/-!
# A293842: Numbers k such that 3*10^k - 31 is prime.

The programs for A293842, there is no canonical definition to state claims against.
-/

/-! ## A293842.P9394844422048277877

`A133493(a(n-1)+2)` with `a(0)=2, a(1)=3`
-/

namespace A293842.P9394844422048277877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  A133493 (a (n - 1) + 2).toNat

end

end A293842.P9394844422048277877

/-! ## A293842.P2215915738645020376

`A129128(A176074(n+1))`
-/

namespace A293842.P2215915738645020376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129128 (A176074 (n + 1)).toNat

end

end A293842.P2215915738645020376

/-!
# A293844: Number of chains in the partially ordered (by subspace inclusion) set of all subspaces of the vector space GF(2)^n.

The programs for A293844, there is no canonical definition to state claims against.
-/

/-! ## A293844.P14783748991797552146

`∑[round(A000010(C((n+1)²+1, n))/2)]`
-/

namespace A293844.P14783748991797552146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000010 (Nat.choose ((n + 1) ^ 2 + 1) n) : ℚ) / 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A293844.P14783748991797552146

/-!
# A293846: Numbers such that k is the altitude of a Heronian triangle with sides m-13, m, m+13.

The programs for A293846, the canonical program `A293846.P6852825768010279530` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A293846 has offset 0).

The definition of A293846 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A293846.P6852825768010279530

`4*a(n-3)-a(n-6)` with `a(0)=9, a(1)=24, a(2)=39, a(3)=60, a(4)=105, a(5)=156`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A293846

/-- `4*a(n-3)-a(n-6)` -/
def P6852825768010279530.Spec : Prop :=
  ∀ n, P6852825768010279530.a n = A293846 n

theorem P6852825768010279530.correct : P6852825768010279530.Spec := by
  intro n
  simp only [A293846]

end A293846

/-! ## A293846.P4178340665666293671

`A293817(n+4)-2*A293817(n+1)`
-/

namespace A293846.P4178340665666293671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293817 (n + 4) - 2 * A293817 (n + 1)

end

end A293846.P4178340665666293671

namespace A293846

/-- `A293817(n+4)-2*A293817(n+1)` -/
def P4178340665666293671.Spec : Prop :=
  ∀ n, P4178340665666293671.a n = A293846 n

end A293846

/-! ## A293846.P10079906435716331166

`A293817(n+4)-A005843(A293817(n+1))`
-/

namespace A293846.P10079906435716331166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293817 (n + 4) - A005843 (A293817 (n + 1)).toNat

end

end A293846.P10079906435716331166

namespace A293846

/-- `A293817(n+4)-A005843(A293817(n+1))` -/
def P10079906435716331166.Spec : Prop :=
  ∀ n, P10079906435716331166.a n = A293846 n

end A293846

/-!
# A293847: E.g.f.: exp(Sum_{n>=1} n!*x^n).

The programs for A293847, there is no canonical definition to state claims against.
-/

/-! ## A293847.P12464371899913449893

`A026277(a(n-1)*∑[n]+1)` with `a(0)=1, a(1)=1`
-/

namespace A293847.P12464371899913449893
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A026277 (a (n - 1) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + 1).toNat

end

end A293847.P12464371899913449893

/-!
# A293848: E.g.f.: exp(Sum_{n>=1} n^n*x^n).

The programs for A293848, there is no canonical definition to state claims against.
-/

/-! ## A293848.P14607024849601069940

`A338232(n)+A000203(A064624(n))`
-/

namespace A293848.P14607024849601069940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338232 n + A000203 (A064624 n).toNat

end

end A293848.P14607024849601069940

/-!
# A293849: Expansion of e.g.f.: exp(Sum_{n>=1} n^(n-1)*x^n).

The programs for A293849, there is no canonical definition to state claims against.
-/

/-! ## A293849.P3305353628873526845

`A154125(A380514(n))`
-/

namespace A293849.P3305353628873526845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154125 (A380514 n).toNat

end

end A293849.P3305353628873526845

/-!
# A293850: Number of set partitions of [n^2] that are invariant under a permutation consisting of n n-cycles.

The programs for A293850, there is no canonical definition to state claims against.
-/

/-! ## A293850.P9075212949016700369

`A162663(2*n²)`
-/

namespace A293850.P9075212949016700369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162663 (2 * n ^ 2)

end

end A293850.P9075212949016700369

/-! ## A293850.P6062936308752663833

`gcd(A088157(n), A162663(A001105(n)))`
-/

namespace A293850.P6062936308752663833
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A088157 n) (A162663 (A001105 n).toNat)

end

end A293850.P6062936308752663833

/-! ## A293850.P18334704306330704258

`lcm(A033999(n), A162663(A001105(n)))`
-/

namespace A293850.P18334704306330704258
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A162663 (A001105 n).toNat)

end

end A293850.P18334704306330704258

/-! ## A293850.P17211805189801949893

`or(A000007(n), A162663(A001105(n)))`
-/

namespace A293850.P17211805189801949893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A162663 (A001105 n).toNat)

end

end A293850.P17211805189801949893

/-! ## A293850.P17871034658029362174

`A162663(A001105(n))+A000007(n+1)`
-/

namespace A293850.P17871034658029362174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162663 (A001105 n).toNat + A000007 (n + 1)

end

end A293850.P17871034658029362174

/-!
# A293854: G.f. A(x) = Sum_{n>=0} a(n)*x^n satisfies A(x) = 1/(1 - a(0)*x - a(0)*x^2/(1 - a(1)*x - a(1)*x^2/(1 - a(2)*x - a(2)*x^2/(1 - ... )))), a continued fraction.

The programs for A293854, there is no canonical definition to state claims against.
-/

/-! ## A293854.P1004296131546084500

`floor(root(A336525(n+1), 3))`
-/

namespace A293854.P1004296131546084500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A336525 (n + 1) : ℝ) ^ (1 / (3 : ℝ))⌋

end

end A293854.P1004296131546084500

/-! ## A293854.P12466333713514385868

`A055086(A123417(n+1)-n)`
-/

namespace A293854.P12466333713514385868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (A123417 (n + 1) - (n : ℤ)).toNat

end

end A293854.P12466333713514385868

/-! ## A293854.P14022936424761185152

`A271078(n+4)-A047168(n+1)`
-/

namespace A293854.P14022936424761185152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271078 (n + 4) - A047168 (n + 1)

end

end A293854.P14022936424761185152

/-! ## A293854.P10483756309668227740

`A321994(n+1)+A053507((n+1)/∏{p}[n+1, #])`
-/

namespace A293854.P10483756309668227740
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321994 (n + 1) + A053507 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))).toNat

end

end A293854.P10483756309668227740

/-!
# A293855: G.f. A(x) = Sum_{n>=0} a(n)*x^n satisfies A(x) = 1/(1 - x^a(1) - x^a(2)/(1 - x^a(3) - x^a(4)/(1 - x^a(5) - x^a(6)/(1 - ... )))), a continued fraction.

The programs for A293855, there is no canonical definition to state claims against.
-/

/-! ## A293855.P13402252277663690049

`∑[A152545(A054405(n))*A182097(n)]`
-/

namespace A293855.P13402252277663690049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152545 (A054405 n).toNat * A182097 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A293855.P13402252277663690049

/-! ## A293855.P12020256867897485699

`floor(A135519(n+1)/A370583(3*n+1))`
-/

namespace A293855.P12020256867897485699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A135519 (n + 1) : ℚ) / (A370583 (3 * n + 1) : ℚ)⌋

end

end A293855.P12020256867897485699

/-! ## A293855.P5975317485451838615

`A276581(A148088(n))`
-/

namespace A293855.P5975317485451838615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276581 (A148088 n).toNat

end

end A293855.P5975317485451838615

/-! ## A293855.P5540497158851017026

`A276571(A287966(n))`
-/

namespace A293855.P5540497158851017026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276571 (A287966 n).toNat

end

end A293855.P5540497158851017026

/-! ## A293855.P5706989153600485648

`A100617(A092566(n))`
-/

namespace A293855.P5706989153600485648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100617 (A092566 n).toNat

end

end A293855.P5706989153600485648

/-!
# A293856: Numbers k such that (32*10^k + 319)/9 is prime.

The programs for A293856, there is no canonical definition to state claims against.
-/

/-! ## A293856.P11470187366652524671

`A000194(A141414(n)+A017533(n))`
-/

namespace A293856.P11470187366652524671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A141414 n + A017533 n).toNat

end

end A293856.P11470187366652524671

/-! ## A293856.P11138834096025824646

`eq[A242062(n), A334948(A313704(n))]`
-/

namespace A293856.P11138834096025824646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242062 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334948 (A313704 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A293856.P11138834096025824646

/-! ## A293856.P729619641913724743

`A000194(A017533(n)-(1-A141414(n)))`
-/

namespace A293856.P729619641913724743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A017533 n - (1 - A141414 n)).toNat

end

end A293856.P729619641913724743

/-! ## A293856.P8106693459757511424

`eq[A308180(A026374(n)), A308184(n+1)]`
-/

namespace A293856.P8106693459757511424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308180 (A026374 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308184 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A293856.P8106693459757511424

/-!
# A293857: a(n) is the number of permutations {c_1..c_n} of {1..n} for which c_1 - c_2 + ... + (-1)^(n-1)*c_n are squares.

The programs for A293857, there is no canonical definition to state claims against.
-/

/-! ## A293857.P8576135992984635162

`A010551(n)*A293984(n)`
-/

namespace A293857.P8576135992984635162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010551 n * A293984 n

end

end A293857.P8576135992984635162

/-! ## A293857.P13925877103208146602

`A145893(∑[n])*A293984(n)`
-/

namespace A293857.P13925877103208146602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145893 (∑ j ∈ Finset.range (n + 1), f1 j) * A293984 n

end

end A293857.P13925877103208146602

/-! ## A293857.P15239216866744617248

`∏[A065033(n)]*A293984(n)`
-/

namespace A293857.P15239216866744617248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A293984 n

end

end A293857.P15239216866744617248

/-! ## A293857.P10756367594563113527

`∏[A008621(A004275(n))]*A293984(n)`
-/

namespace A293857.P10756367594563113527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A004275 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A293984 n

end

end A293857.P10756367594563113527

/-! ## A293857.P2120714549919134987

`∏[A034851(A000124(n))]*A293984(n)`
-/

namespace A293857.P2120714549919134987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034851 (A000124 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A293984 n

end

end A293857.P2120714549919134987

/-!
# A293859: Prime factors of numbers of the form k^2 + 10.

The programs for A293859, there is no canonical definition to state claims against.
-/

/-! ## A293859.P6664434772675214978

`∪[A033201(n+1), A106889(n+1)]`
-/

namespace A293859.P6664434772675214978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033201 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106889 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A293859.P6664434772675214978

/-! ## A293859.P17989815959775897577

`p?[A005408(n)-A010685(A008616(n))]`
-/

namespace A293859.P17989815959775897577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n - A010685 (A008616 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A293859.P17989815959775897577

/-! ## A293859.P16229713176989443180

`p?[A005843(n)-A265723(A008616(n))]`
-/

namespace A293859.P16229713176989443180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n - A265723 (A008616 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A293859.P16229713176989443180

/-! ## A293859.P11509707242483782029

`p?[A004275(n)-A000034(A008616(n))-20]`
-/

namespace A293859.P11509707242483782029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 n - A000034 (A008616 n).toNat - 20

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A293859.P11509707242483782029

/-! ## A293859.P17801426040379216856

`∪[A106889(n+1), A155488(n+1)]`
-/

namespace A293859.P17801426040379216856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106889 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155488 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A293859.P17801426040379216856

/-! ## A293859.P8600721776561187961

`∪[A155488(n+1), A236045(n+1)]`
-/

namespace A293859.P8600721776561187961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155488 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236045 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A293859.P8600721776561187961

/-! ## A293859.P9850176686378565489

`∪[A155488(n+1), A262203(n+1)]`
-/

namespace A293859.P9850176686378565489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155488 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262203 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A293859.P9850176686378565489

/-! ## A293859.P6153315900208954809

`∪[A155488(n+1), A325957(n+1)]`
-/

namespace A293859.P6153315900208954809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155488 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325957 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A293859.P6153315900208954809

/-! ## A293859.P6057446778628607532

`p?[(n+1)*gcd(4, A029014(n))]`
-/

namespace A293859.P6057446778628607532
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * Int.gcd 4 (A029014 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A293859.P6057446778628607532

/-! ## A293859.P5100197298827188741

`p?[gcd(n+1, floor((n+1)^A163819(n+1)))]`
-/

namespace A293859.P5100197298827188741
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) ⌊(n + 1 : ℚ) ^ (A163819 (n + 1) : ℤ)⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A293859.P5100197298827188741

/-! ## A293859.P14974200931177153141

`p?[xor(A131670(2*n)², A047415(n+2))]`
-/

namespace A293859.P14974200931177153141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A131670 (2 * n) ^ 2) (A047415 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A293859.P14974200931177153141

/-!
# A293860: a(0) = 0, a(1) = 1; a(n) = n! * [x^n] exp(n*x) * Sum_{k=1..n-1} a(k)*x^k/k!.

The programs for A293860, there is no canonical definition to state claims against.
-/

/-! ## A293860.P12124601659630647861

`n²*A065330(∑[n!²])`
-/

namespace A293860.P12124601659630647861
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A065330 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A293860.P12124601659630647861

/-!
# A293861: Primes of the form (k - 1) * k * (k + 1) +- 1, k >= 1.

The programs for A293861, there is no canonical definition to state claims against.
-/

/-! ## A293861.P10080363142150286518

`∪[A100698(n+1), A116581(n+1)]`
-/

namespace A293861.P10080363142150286518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100698 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116581 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A293861.P10080363142150286518

/-! ## A293861.P4141952844550549865

`p?[A213389(n)-a(n-1)-n]` with `a(0)=1`
-/

namespace A293861.P4141952844550549865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A213389 n - f1 (n - 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A293861.P4141952844550549865

/-! ## A293861.P8537176438759951550

`∪[A116581(n+1), p?[A061600(n)]]`
-/

namespace A293861.P8537176438759951550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116581 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061600 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).toNat.Prime) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A293861.P8537176438759951550

/-! ## A293861.P9882035224707257802

`p?[Δ[A317714(n+1)-A097066(n)]]`
-/

namespace A293861.P9882035224707257802
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317714 (n + 1) - A097066 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A293861.P9882035224707257802

/-! ## A293861.P4188132415174740817

`p?[A062157(n)+A007531(A004526(n))]`
-/

namespace A293861.P4188132415174740817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 n + A007531 (A004526 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A293861.P4188132415174740817

/-! ## A293861.P1337117834166050134

`p?[A103452(n)+A007531(A003056(n))]`
-/

namespace A293861.P1337117834166050134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103452 n + A007531 (A003056 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A293861.P1337117834166050134

/-! ## A293861.P7993567025615056333

`p?[A007531(A004526(n))-A033999(n)]`
-/

namespace A293861.P7993567025615056333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007531 (A004526 n).toNat - A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A293861.P7993567025615056333

/-! ## A293861.P5122651679794790555

`∪[p?[(n+1)^3-n], p?[(n-1)^3-n]]`
-/

namespace A293861.P5122651679794790555
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 3 : ℤ) - (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) ^ 3 - (n : ℤ)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f4 (SequenceMachineLib.nth (fun j => (f4 j).toNat.Prime) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

end

end A293861.P5122651679794790555

/-!
# A293864: a(0) = a(1) = 1; a(n) = n! * [x^n] (Sum_{k=0..n-1} a(k)*x^k/k!)^n.

The programs for A293864, there is no canonical definition to state claims against.
-/

/-! ## A293864.P18172723101483162246

`n!*A177752(n)`
-/

namespace A293864.P18172723101483162246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A177752 n

end

end A293864.P18172723101483162246

/-! ## A293864.P8390353627297419441

`A000142(n)*A177752(n)`
-/

namespace A293864.P8390353627297419441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A177752 n

end

end A293864.P8390353627297419441

/-! ## A293864.P8088145323582479034

`A177752(n)*A214078(n²)`
-/

namespace A293864.P8088145323582479034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177752 n * A214078 (n ^ 2)

end

end A293864.P8088145323582479034

/-! ## A293864.P9416939198410357720

`∏[A007318(∑[n]+1)]*A177752(n)`
-/

namespace A293864.P9416939198410357720
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f2 j + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A177752 n

end

end A293864.P9416939198410357720

/-!
# A293865: Number of self-intersecting walks of length n on a square lattice such that at each point the angle turns 90 degrees.

The programs for A293865, there is no canonical definition to state claims against.
-/

/-! ## A293865.P4488060584606538048

`(A322419(n)-A336662(n))/2`
-/

namespace A293865.P4488060584606538048
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322419 n - A336662 n : ℚ) / 2

end

end A293865.P4488060584606538048

/-! ## A293865.P2991437490279696535

`(A151798(n)*A189722(A233583(n+1)))%A336662(n)/2`
-/

namespace A293865.P2991437490279696535
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.tmod (A151798 n * A189722 (A233583 (n + 1)).toNat) (A336662 n) : ℚ) / 2

end

end A293865.P2991437490279696535

/-! ## A293865.P3615660444391592726

`A110654(A322419(n)-A336662(n))`
-/

namespace A293865.P3615660444391592726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A322419 n - A336662 n).toNat

end

end A293865.P3615660444391592726

/-!
# A293867: Record high values in A293843.

The programs for A293867, there is no canonical definition to state claims against.
-/

/-! ## A293867.P3045118259865549132

`record[A293843(n+1)]`
-/

namespace A293867.P3045118259865549132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293843 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A293867.P3045118259865549132

/-! ## A293867.P368433518172152041

`A293843(A293868(n+1))`
-/

namespace A293867.P368433518172152041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293843 (A293868 (n + 1)).toNat

end

end A293867.P368433518172152041

/-! ## A293867.P8929277303832159792

`A175127(n+2)+A163352(A001405(n))`
-/

namespace A293867.P8929277303832159792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175127 (n + 2) + A163352 (A001405 n).toNat

end

end A293867.P8929277303832159792

/-! ## A293867.P10661374771955089151

`A296150(A004154(n))+A247814(2*n+5)`
-/

namespace A293867.P10661374771955089151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296150 (A004154 n).toNat + A247814 (2 * n + 5)

end

end A293867.P10661374771955089151

/-!
# A293868: Indices of record high values in A293843.

The programs for A293868, there is no canonical definition to state claims against.
-/

/-! ## A293868.P13121991134547764437

`A350356(A215930(n))+2^n`
-/

namespace A293868.P13121991134547764437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350356 (A215930 n).toNat + (2 ^ n : ℤ)

end

end A293868.P13121991134547764437

/-! ## A293868.P6813585622012296792

`A048621(A054341(n)+A001700(n))`
-/

namespace A293868.P6813585622012296792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048621 (A054341 n + A001700 n).toNat

end

end A293868.P6813585622012296792

/-! ## A293868.P4750428275279357247

`A392708(A001006(n))+A000079(n)`
-/

namespace A293868.P4750428275279357247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392708 (A001006 n).toNat + A000079 n

end

end A293868.P4750428275279357247

/-!
# A293869: Square array whose n-th row lists all numbers having n as a substring, n >= 1; read by falling antidiagonals.

The programs for A293869, there is no canonical definition to state claims against.
-/

/-! ## A293869.P11129355220129311802

`A292690(comp[∑[n]])`
-/

namespace A293869.P11129355220129311802
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292690 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A293869.P11129355220129311802

/-! ## A293869.P18418246258245397304

`gcd(A000038(n), A292690(A014132(n+1)))`
-/

namespace A293869.P18418246258245397304
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A292690 (A014132 (n + 1)).toNat)

end

end A293869.P18418246258245397304

/-! ## A293869.P9371984474417567337

`abs(A033999(n)*A292690(A014132(n+1)))`
-/

namespace A293869.P9371984474417567337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A033999 n * A292690 (A014132 (n + 1)).toNat|

end

end A293869.P9371984474417567337

/-! ## A293869.P2675398039514329504

`A292690(A014132(n+1))+A008683(4*(n+1))`
-/

namespace A293869.P2675398039514329504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292690 (A014132 (n + 1)).toNat + A008683 (4 * (n + 1))

end

end A293869.P2675398039514329504

/-! ## A293869.P4765035497060048171

`A005117(abs((-1)^n))*A292690(A014132(n+1))`
-/

namespace A293869.P4765035497060048171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 |(-1) ^ n|.toNat * A292690 (A014132 (n + 1)).toNat

end

end A293869.P4765035497060048171

/-! ## A293869.P929697836041792183

`A006530(abs((-1)^n))*A292690(A014132(n+1))`
-/

namespace A293869.P929697836041792183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 |(-1) ^ n|.toNat * A292690 (A014132 (n + 1)).toNat

end

end A293869.P929697836041792183

/-! ## A293869.P12551672453116987997

`A007318(C(n, 2))*A292690(A014132(n+1))`
-/

namespace A293869.P12551672453116987997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 2) * A292690 (A014132 (n + 1)).toNat

end

end A293869.P12551672453116987997

/-!
# A293870: Numbers having '10' as substring of their digits.

The programs for A293870, there is no canonical definition to state claims against.
-/

/-! ## A293870.P5228327594544224022

`A293869(A166136(n+8)+4)`
-/

namespace A293870.P5228327594544224022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293869 (A166136 (n + 8) + 4).toNat

end

end A293870.P5228327594544224022

/-! ## A293870.P15279626046797020897

`A293869(A167499(n+8)+5)`
-/

namespace A293870.P15279626046797020897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293869 (A167499 (n + 8) + 5).toNat

end

end A293870.P15279626046797020897

/-! ## A293870.P6737513501315387024

`A293869(A253145(n+8)+10)`
-/

namespace A293870.P6737513501315387024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293869 (A253145 (n + 8) + 10).toNat

end

end A293870.P6737513501315387024

/-! ## A293870.P16874255710264226806

`A293869(A000096(n+8)+11)`
-/

namespace A293870.P16874255710264226806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293869 (A000096 (n + 8) + 11).toNat

end

end A293870.P16874255710264226806

/-! ## A293870.P13053679654610004838

`A293869(A000217(n+9)+10)`
-/

namespace A293870.P13053679654610004838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293869 (A000217 (n + 9) + 10).toNat

end

end A293870.P13053679654610004838

/-! ## A293870.P6823400021109810707

`A293869(eq[11, A131818(n+1)])`
-/

namespace A293870.P6823400021109810707
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293869 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A293870.P6823400021109810707

/-! ## A293870.P6825921285049420197

`A293869(A000124(n+10)-n-1)`
-/

namespace A293870.P6825921285049420197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293869 (A000124 (n + 10) - (n : ℤ) - 1).toNat

end

end A293870.P6825921285049420197

/-!
# A293871: Numbers having 11 as substring of their digits.

The programs for A293871, there is no canonical definition to state claims against.
-/

/-! ## A293871.P6400504933472410871

`lt[A321537(n), A321537(A222226(n))]`
-/

namespace A293871.P6400504933472410871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321537 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321537 (A222226 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A293871.P6400504933472410871

/-! ## A293871.P5375013015677471863

`A293869(A000217(n+10)+11)`
-/

namespace A293871.P5375013015677471863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293869 (A000217 (n + 10) + 11).toNat

end

end A293871.P5375013015677471863

/-! ## A293871.P2404210305418262766

`∩[A171901(n+1), A366207(n+1)]`
-/

namespace A293871.P2404210305418262766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171901 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366207 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A293871.P2404210305418262766

/-! ## A293871.P8606576771959460894

`eq[gcd(11, A196922(n+4)), A321537(n)]`
-/

namespace A293871.P8606576771959460894
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 11 (A196922 (n + 4))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321537 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A293871.P8606576771959460894

/-!
# A293872: Numbers having '12' as a substring of their digits.

The programs for A293872, there is no canonical definition to state claims against.
-/

/-! ## A293872.P377006235046185745

`A293869(A000217(n+11)+12)`
-/

namespace A293872.P377006235046185745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293869 (A000217 (n + 11) + 12).toNat

end

end A293872.P377006235046185745

/-!
# A293874: Numbers having '14' as substring of their digits.

The programs for A293874, there is no canonical definition to state claims against.
-/

/-! ## A293874.P3668073825849816564

`A293869(A000217(n+13)+14)`
-/

namespace A293874.P3668073825849816564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293869 (A000217 (n + 13) + 14).toNat

end

end A293874.P3668073825849816564

/-! ## A293874.P18400571311619021802

`A293869(eq[15, A131818(n+1)])`
-/

namespace A293874.P18400571311619021802
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293869 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A293874.P18400571311619021802

/-!
# A293875: Numbers having '15' as substring of their digits.

The programs for A293875, there is no canonical definition to state claims against.
-/

/-! ## A293875.P3777327997492427382

`A293869(eq[16, A131818(n+1)])`
-/

namespace A293875.P3777327997492427382
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293869 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A293875.P3777327997492427382

/-!
# A293876: Numbers having '16' as substring of their digits / decimal expansion.

The programs for A293876, there is no canonical definition to state claims against.
-/

/-! ## A293876.P17099806047715509047

`A157271(A293877(n+1)+A293875(n+1))`
-/

namespace A293876.P17099806047715509047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (A293877 (n + 1) + A293875 (n + 1)).toNat

end

end A293876.P17099806047715509047

/-! ## A293876.P17741678356044155521

`A157271(A293880(n+1)+A293872(n+1))`
-/

namespace A293876.P17741678356044155521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (A293880 (n + 1) + A293872 (n + 1)).toNat

end

end A293876.P17741678356044155521

/-!
# A293880: Numbers having '20' as substring of their digits.

The programs for A293880, there is no canonical definition to state claims against.
-/

/-! ## A293880.P7861677102084415613

`lt[A268643(n), A055641(A131835(n+1))]`
-/

namespace A293880.P7861677102084415613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 (A131835 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A293880.P7861677102084415613

/-! ## A293880.P4391482676693476102

`lt[A268643(n), A055641(A217394(n+1))]`
-/

namespace A293880.P4391482676693476102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 (A217394 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A293880.P4391482676693476102

/-! ## A293880.P683491030265465902

`lt[A268643(n), A055641(A217399(n+1))]`
-/

namespace A293880.P683491030265465902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 (A217399 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A293880.P683491030265465902

/-! ## A293880.P2081735742313293137

`lt[A268643(n), A055641(A217400(n+1))]`
-/

namespace A293880.P2081735742313293137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 (A217400 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A293880.P2081735742313293137

/-! ## A293880.P5232928343554930225

`lt[A268643(n), A055641(A217402(n+1))]`
-/

namespace A293880.P5232928343554930225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 (A217402 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A293880.P5232928343554930225

/-!
# A293881: Number T(n,k) of linear chord diagrams having n chords and minimal chord length k (or k=0 if n=0); triangle T(n,k), n>=0, 0<=k<=n, read by rows.

The programs for A293881, there is no canonical definition to state claims against.
-/

/-! ## A293881.P8184349720244543434

`A362308(n)-A002262(A083961(n+1))`
-/

namespace A293881.P8184349720244543434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362308 n - A002262 (A083961 (n + 1)).toNat

end

end A293881.P8184349720244543434

/-! ## A293881.P14404699921928084110

`A129011(A262071(n)^A007732(n+1))`
-/

namespace A293881.P14404699921928084110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129011 (SequenceMachineLib.roundAway ((A262071 n : ℚ) ^ (A007732 (n + 1) : ℤ))).toNat

end

end A293881.P14404699921928084110

/-! ## A293881.P15483801748324032848

`A129011(A262071(n)%A220306(n+1))`
-/

namespace A293881.P15483801748324032848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129011 (Int.tmod (A262071 n) (A220306 (n + 1))).toNat

end

end A293881.P15483801748324032848

/-! ## A293881.P8204686572564064908

`A129011(A262071(n))%A335732(n+1)`
-/

namespace A293881.P8204686572564064908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A129011 (A262071 n).toNat) (A335732 (n + 1))

end

end A293881.P8204686572564064908

/-! ## A293881.P4060155672005922505

`A129011(C(A262071(n), A007732(n+1)))`
-/

namespace A293881.P4060155672005922505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129011 (Nat.choose (A262071 n).toNat (A007732 (n + 1)).toNat)

end

end A293881.P4060155672005922505

/-!
# A293883: Number of sets of nonempty words with a total of n letters over binary alphabet containing the second letter such that within each prefix of a word every letter of the alphabet is at least as frequent as the subsequent alphabet letter.

The programs for A293883, there is no canonical definition to state claims against.
-/

/-! ## A293883.P7658052911892231922

`A293741(n+2)-A000009(n+2)`
-/

namespace A293883.P7658052911892231922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293741 (n + 2) - A000009 (n + 2)

end

end A293883.P7658052911892231922

/-! ## A293883.P13694794471075523708

`record[A000007(n)-(A000009(n)-A293741(n))]`
-/

namespace A293883.P13694794471075523708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n - (A000009 n - A293741 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A293883.P13694794471075523708

/-! ## A293883.P13580618603302452532

`record[A293113(∑[n]+2)]`
-/

namespace A293883.P13580618603302452532
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293113 (∑ j ∈ Finset.range (n + 1), f2 j + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A293883.P13580618603302452532

/-! ## A293883.P7881701519170412004

`A293113(∑[n+2]+3)`
-/

namespace A293883.P7881701519170412004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293113 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A293883.P7881701519170412004

/-! ## A293883.P5167699095736611361

`record[gcd(A293113(n), A303913(n))]`
-/

namespace A293883.P5167699095736611361
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A293113 n) (A303913 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A293883.P5167699095736611361

/-!
# A293884: Number of sets of nonempty words with a total of n letters over ternary alphabet containing the third letter such that within each prefix of a word every letter of the alphabet is at least as frequent as the subsequent alphabet letter.

The programs for A293884, there is no canonical definition to state claims against.
-/

/-! ## A293884.P4768390667640726893

`A293742(n+3)-A293741(n+3)`
-/

namespace A293884.P4768390667640726893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293742 (n + 3) - A293741 (n + 3)

end

end A293884.P4768390667640726893

/-! ## A293884.P17847142048680897834

`A293113(A167614(n+2))`
-/

namespace A293884.P17847142048680897834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293113 (A167614 (n + 2)).toNat

end

end A293884.P17847142048680897834

/-! ## A293884.P120939949943728357

`A293113(A052905(n)+8)`
-/

namespace A293884.P120939949943728357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293113 (A052905 n + 8).toNat

end

end A293884.P120939949943728357

/-! ## A293884.P6501260996872663013

`record[A293113(A167499(n)-2)]`
-/

namespace A293884.P6501260996872663013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293113 (A167499 n - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A293884.P6501260996872663013

/-! ## A293884.P14249895146856057777

`A293113(A340266(n+2)+1)`
-/

namespace A293884.P14249895146856057777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293113 (A340266 (n + 2) + 1).toNat

end

end A293884.P14249895146856057777

/-!
# A293885: Number of sets of nonempty words with a total of n letters over quaternary alphabet containing the fourth letter such that within each prefix of a word every letter of the alphabet is at least as frequent as the subsequent alphabet letter.

The programs for A293885, there is no canonical definition to state claims against.
-/

/-! ## A293885.P4426168074962338580

`A293743(n+4)-A293742(n+4)`
-/

namespace A293885.P4426168074962338580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293743 (n + 4) - A293742 (n + 4)

end

end A293885.P4426168074962338580

/-! ## A293885.P14531989014232408191

`A293113(A133263(n+4)+2)`
-/

namespace A293885.P14531989014232408191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293113 (A133263 (n + 4) + 2).toNat

end

end A293885.P14531989014232408191

/-! ## A293885.P4688829399743205428

`A293113(A166136(n+3)-2)`
-/

namespace A293885.P4688829399743205428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293113 (A166136 (n + 3) - 2).toNat

end

end A293885.P4688829399743205428

/-! ## A293885.P5433242197325193488

`A293113(A134869(n+4)+3)`
-/

namespace A293885.P5433242197325193488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293113 (A134869 (n + 4) + 3).toNat

end

end A293885.P5433242197325193488

/-! ## A293885.P17309288187438279347

`A293113(A000217(n+4)+4)`
-/

namespace A293885.P17309288187438279347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293113 (A000217 (n + 4) + 4).toNat

end

end A293885.P17309288187438279347

/-!
# A293886: Number of sets of nonempty words with a total of n letters over quinary alphabet containing the fifth letter such that within each prefix of a word every letter of the alphabet is at least as frequent as the subsequent alphabet letter.

The programs for A293886, there is no canonical definition to state claims against.
-/

/-! ## A293886.P4422396471638158544

`A293744(n+5)-A293743(n+5)`
-/

namespace A293886.P4422396471638158544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293744 (n + 5) - A293743 (n + 5)

end

end A293886.P4422396471638158544

/-! ## A293886.P16573171201121889479

`A293113(A167499(n+4))`
-/

namespace A293886.P16573171201121889479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293113 (A167499 (n + 4)).toNat

end

end A293886.P16573171201121889479

/-! ## A293886.P2261081664988077384

`A293113(A253145(n+4)+5)`
-/

namespace A293886.P2261081664988077384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293113 (A253145 (n + 4) + 5).toNat

end

end A293886.P2261081664988077384

/-! ## A293886.P14111590713544600778

`A293113(A000217(n+6)-(n+1))`
-/

namespace A293886.P14111590713544600778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293113 (A000217 (n + 6) - (n + 1 : ℤ)).toNat

end

end A293886.P14111590713544600778

/-! ## A293886.P4567651469432624729

`record[A293113(A061579(A055999(n)))]`
-/

namespace A293886.P4567651469432624729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293113 (A061579 (A055999 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A293886.P4567651469432624729

/-!
# A293887: Number of sets of nonempty words with a total of n letters over senary alphabet containing the sixth letter such that within each prefix of a word every letter of the alphabet is at least as frequent as the subsequent alphabet letter.

The programs for A293887, there is no canonical definition to state claims against.
-/

/-! ## A293887.P10478427520487129824

`A293745(n+6)-A293744(n+6)`
-/

namespace A293887.P10478427520487129824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293745 (n + 6) - A293744 (n + 6)

end

end A293887.P10478427520487129824

/-! ## A293887.P14297573921544978286

`A293113(A166136(n+5))`
-/

namespace A293887.P14297573921544978286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293113 (A166136 (n + 5)).toNat

end

end A293887.P14297573921544978286

/-! ## A293887.P13695332992393110636

`A293113(eq[6, A002262(n)])`
-/

namespace A293887.P13695332992393110636
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293113 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A293887.P13695332992393110636

/-! ## A293887.P3468942386054147879

`A293113(A133263(n+6)+4)`
-/

namespace A293887.P3468942386054147879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293113 (A133263 (n + 6) + 4).toNat

end

end A293887.P3468942386054147879

/-! ## A293887.P13577765198038250796

`A293113(eq[7, A002260(n+1)])`
-/

namespace A293887.P13577765198038250796
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293113 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A293887.P13577765198038250796

/-!
# A293888: Number of sets of nonempty words with a total of n letters over septenary alphabet containing the seventh letter such that within each prefix of a word every letter of the alphabet is at least as frequent as the subsequent alphabet letter.

The programs for A293888, there is no canonical definition to state claims against.
-/

/-! ## A293888.P6115122877628600166

`A293746(n+7)-A293745(n+7)`
-/

namespace A293888.P6115122877628600166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293746 (n + 7) - A293745 (n + 7)

end

end A293888.P6115122877628600166

/-! ## A293888.P11201726851169391332

`A293113(eq[7, A002262(n)])`
-/

namespace A293888.P11201726851169391332
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293113 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A293888.P11201726851169391332

/-! ## A293888.P5675242997881597202

`A293113(A166136(n+6)+1)`
-/

namespace A293888.P5675242997881597202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293113 (A166136 (n + 6) + 1).toNat

end

end A293888.P5675242997881597202

/-! ## A293888.P8094519489735199202

`A293113(eq[8, A002260(n+1)])`
-/

namespace A293888.P8094519489735199202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293113 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A293888.P8094519489735199202

/-! ## A293888.P10790058756796716157

`A293113(A133263(n+2)+A008706(n+6))`
-/

namespace A293888.P10790058756796716157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293113 (A133263 (n + 2) + A008706 (n + 6)).toNat

end

end A293888.P10790058756796716157

/-!
# A293889: Number of sets of nonempty words with a total of n letters over octonary alphabet containing the eighth letter such that within each prefix of a word every letter of the alphabet is at least as frequent as the subsequent alphabet letter.

The programs for A293889, there is no canonical definition to state claims against.
-/

/-! ## A293889.P2894067765863502012

`A293747(n+8)-A293746(n+8)`
-/

namespace A293889.P2894067765863502012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293747 (n + 8) - A293746 (n + 8)

end

end A293889.P2894067765863502012

/-! ## A293889.P10837468181688182445

`A293113(A166136(n+7)+2)`
-/

namespace A293889.P10837468181688182445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293113 (A166136 (n + 7) + 2).toNat

end

end A293889.P10837468181688182445

/-! ## A293889.P9211525821025709751

`A293113(A000124(n+8)+7)`
-/

namespace A293889.P9211525821025709751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293113 (A000124 (n + 8) + 7).toNat

end

end A293889.P9211525821025709751

/-! ## A293889.P291569895022681351

`A293113(A000096(n+7)+9)`
-/

namespace A293889.P291569895022681351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293113 (A000096 (n + 7) + 9).toNat

end

end A293889.P291569895022681351

/-! ## A293889.P9677049611481044022

`A293113(A000217(n+8)+8)`
-/

namespace A293889.P9677049611481044022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293113 (A000217 (n + 8) + 8).toNat

end

end A293889.P9677049611481044022

/-!
# A293890: Number of sets of nonempty words with a total of n letters over nonary alphabet containing the ninth letter such that within each prefix of a word every letter of the alphabet is at least as frequent as the subsequent alphabet letter.

The programs for A293890, there is no canonical definition to state claims against.
-/

/-! ## A293890.P6448160718245908231

`A293748(n+9)-A293747(n+9)`
-/

namespace A293890.P6448160718245908231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293748 (n + 9) - A293747 (n + 9)

end

end A293890.P6448160718245908231

/-! ## A293890.P7312463247575094862

`A293113(eq[9, A002262(n)])`
-/

namespace A293890.P7312463247575094862
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293113 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A293890.P7312463247575094862

/-! ## A293890.P10509418804134652397

`A293113(A000096(n+8)+10)`
-/

namespace A293890.P10509418804134652397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293113 (A000096 (n + 8) + 10).toNat

end

end A293890.P10509418804134652397

/-! ## A293890.P12199940346550079496

`A293113(A055999(n+6)+15)`
-/

namespace A293890.P12199940346550079496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293113 (A055999 (n + 6) + 15).toNat

end

end A293890.P12199940346550079496

/-! ## A293890.P15563092713054093891

`A293113(A000217(n+10)-(n+1))`
-/

namespace A293890.P15563092713054093891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293113 (A000217 (n + 10) - (n + 1 : ℤ)).toNat

end

end A293890.P15563092713054093891

/-!
# A293891: Number of sets of nonempty words with a total of n letters over denary alphabet containing the tenth letter such that within each prefix of a word every letter of the alphabet is at least as frequent as the subsequent alphabet letter.

The programs for A293891, there is no canonical definition to state claims against.
-/

/-! ## A293891.P7366491532316885315

`A293749(n+10)-A293748(n+10)`
-/

namespace A293891.P7366491532316885315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293749 (n + 10) - A293748 (n + 10)

end

end A293891.P7366491532316885315

/-! ## A293891.P6092902315064019391

`A293113(eq[10, A002262(n)])`
-/

namespace A293891.P6092902315064019391
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293113 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A293891.P6092902315064019391

/-! ## A293891.P4359171982073075085

`A293113(A167487(n+9)+3)`
-/

namespace A293891.P4359171982073075085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293113 (A167487 (n + 9) + 3).toNat

end

end A293891.P4359171982073075085

/-! ## A293891.P1340706813045373230

`A293113(A166136(n+9)+4)`
-/

namespace A293891.P1340706813045373230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293113 (A166136 (n + 9) + 4).toNat

end

end A293891.P1340706813045373230

/-! ## A293891.P10165853855585527885

`A293113(A000217(n+10)+10)`
-/

namespace A293891.P10165853855585527885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293113 (A000217 (n + 10) + 10).toNat

end

end A293891.P10165853855585527885

/-!
# A293893: Numbers n such that A083722(n) > 1 and A083722(n) occurs later in A083722.

The programs for A293893, there is no canonical definition to state claims against.
-/

/-! ## A293893.P5245529685945806305

`A018252(A293892(A293894(n+1))+n)`
-/

namespace A293893.P5245529685945806305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (A293892 (A293894 (n + 1)).toNat + (n : ℤ)).toNat

end

end A293893.P5245529685945806305

/-! ## A293893.P4807199540371937547

`A076563(A293894(n+1))`
-/

namespace A293893.P4807199540371937547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076563 (A293894 (n + 1)).toNat

end

end A293893.P4807199540371937547

/-!
# A293894: Numbers n such that A083722(n) > 1 and A083722(n) occurs earlier in A083722.

The programs for A293894, there is no canonical definition to state claims against.
-/

/-! ## A293894.P14051386616548901972

`A070229(A293893(n+1))`
-/

namespace A293894.P14051386616548901972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070229 (A293893 (n + 1)).toNat

end

end A293894.P14051386616548901972

/-! ## A293894.P15767010743089640023

`A137800(A100793(n)+1)`
-/

namespace A293894.P15767010743089640023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137800 (A100793 n + 1).toNat

end

end A293894.P15767010743089640023

/-!
# A293895: Number of proper divisors of n of the form 3k+1.

The programs for A293895, the canonical program `A293895.P5570247358903279074` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A293895 has offset 1).

The definition of A293895 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A293895.P13260524006453525681

`val(A293221(n+1), 2)`
-/

namespace A293895.P13260524006453525681
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A293221 (n + 1)).toNat 2

end

end A293895.P13260524006453525681

namespace A293895

/-- `val(A293221(n+1), 2)` -/
def P13260524006453525681.Spec : Prop :=
  ∀ n, (P13260524006453525681.a n : ℤ) = A293895 (n + 1)

end A293895

/-! ## A293895.P8683779167832493888

`A001817(n+1)-A079978(n)`
-/

namespace A293895.P8683779167832493888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001817 (n + 1) - A079978 n

end

end A293895.P8683779167832493888

namespace A293895

/-- `A001817(n+1)-A079978(n)` -/
def P8683779167832493888.Spec : Prop :=
  ∀ n, P8683779167832493888.a n = A293895 (n + 1)

end A293895

/-! ## A293895.P2948928451258312851

`A293899(n+1)+A293896(n+1)`
-/

namespace A293895.P2948928451258312851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293899 (n + 1) + A293896 (n + 1)

end

end A293895.P2948928451258312851

namespace A293895

/-- `A293899(n+1)+A293896(n+1)` -/
def P2948928451258312851.Spec : Prop :=
  ∀ n, P2948928451258312851.a n = A293895 (n + 1)

theorem P2948928451258312851.correct : P2948928451258312851.Spec := by
  intro n
  simp only [A293895, Nat.add_sub_cancel, A293895.P2948928451258312851.a, A293895.P5570247358903279074.f1, A293895.P5570247358903279074.a, A057427, A057427.P3058147525557661423.a, A079978, A079978.P10382542118278163374.a, A293896, A293896.P8621911693602830936.a, A293899, A293899.P5665492798636299173.a, A000007, A000007.P6599383543502402472.a, A279060, A279060.P16013489652105091246.f1, A279060.P16013489652105091246.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A293895

/-! ## A293895.P9875239269057637671

`A001817(n+1)+A011655(n)-1`
-/

namespace A293895.P9875239269057637671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001817 (n + 1) + (A011655 n - 1)

end

end A293895.P9875239269057637671

namespace A293895

/-- `A001817(n+1)+A011655(n)-1` -/
def P9875239269057637671.Spec : Prop :=
  ∀ n, P9875239269057637671.a n = A293895 (n + 1)

end A293895

/-! ## A293895.P9749265048063223387

`A293896(2*(n+1))-A319995(n+1)`
-/

namespace A293895.P9749265048063223387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293896 (2 * (n + 1)) - A319995 (n + 1)

end

end A293895.P9749265048063223387

namespace A293895

/-- `A293896(2*(n+1))-A319995(n+1)` -/
def P9749265048063223387.Spec : Prop :=
  ∀ n, P9749265048063223387.a n = A293895 (n + 1)

end A293895

/-! ## A293895.P8616777115357787494

`A293896(2*(n+1))-A320005(2*(n+1))`
-/

namespace A293895.P8616777115357787494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293896 (2 * (n + 1)) - A320005 (2 * (n + 1))

end

end A293895.P8616777115357787494

namespace A293895

/-- `A293896(2*(n+1))-A320005(2*(n+1))` -/
def P8616777115357787494.Spec : Prop :=
  ∀ n, P8616777115357787494.a n = A293895 (n + 1)

end A293895

/-! ## A293895.P6947320846093139444

`∑{d}[n+1, A001817(#)*A157658((n+1)/#)]`
-/

namespace A293895.P6947320846093139444
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001817 d * A157658 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A293895.P6947320846093139444

namespace A293895

/-- `∑{d}[n+1, A001817(#)*A157658((n+1)/#)]` -/
def P6947320846093139444.Spec : Prop :=
  ∀ n, P6947320846093139444.a n = A293895 (n + 1)

end A293895

/-! ## A293895.P5570247358903279074

`∑{d}[n+1, A057427(#-1)*A079978((n+1)/#-1)]`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A293895

/-- `∑{d}[n+1, A057427(#-1)*A079978((n+1)/#-1)]` -/
def P5570247358903279074.Spec : Prop :=
  ∀ n, P5570247358903279074.a n = A293895 (n + 1)

theorem P5570247358903279074.correct : P5570247358903279074.Spec := by
  intro n
  simp only [A293895, Nat.add_sub_cancel]

end A293895

/-! ## A293895.P2361003176065515892

`A002324(n+1)+A293896(n+1)-A049347(n)`
-/

namespace A293895.P2361003176065515892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002324 (n + 1) + (A293896 (n + 1) - A049347 n)

end

end A293895.P2361003176065515892

namespace A293895

/-- `A002324(n+1)+A293896(n+1)-A049347(n)` -/
def P2361003176065515892.Spec : Prop :=
  ∀ n, P2361003176065515892.a n = A293895 (n + 1)

end A293895

/-! ## A293895.P7774932269627078736

`A001817(n+1)+A293896(n+2)-A001822(n+2)`
-/

namespace A293895.P7774932269627078736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001817 (n + 1) + (A293896 (n + 2) - A001822 (n + 2))

end

end A293895.P7774932269627078736

namespace A293895

/-- `A001817(n+1)+A293896(n+2)-A001822(n+2)` -/
def P7774932269627078736.Spec : Prop :=
  ∀ n, P7774932269627078736.a n = A293895 (n + 1)

end A293895

/-! ## A293895.P16783578826503674376

`A320001(A354091(n+1))`
-/

namespace A293895.P16783578826503674376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320001 (A354091 (n + 1)).toNat

end

end A293895.P16783578826503674376

namespace A293895

/-- `A320001(A354091(n+1))` -/
def P16783578826503674376.Spec : Prop :=
  ∀ n, P16783578826503674376.a n = A293895 (n + 1)

end A293895

/-!
# A293896: Number of proper divisors of n of the form 3k+2.

The programs for A293896, the canonical program `A293896.P8621911693602830936` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A293896 has offset 1).

The definition of A293896 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A293896.P1684763202423029447

`val(A293222(n+1), 2)`
-/

namespace A293896.P1684763202423029447
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A293222 (n + 1)).toNat 2

end

end A293896.P1684763202423029447

namespace A293896

/-- `val(A293222(n+1), 2)` -/
def P1684763202423029447.Spec : Prop :=
  ∀ n, (P1684763202423029447.a n : ℤ) = A293896 (n + 1)

end A293896

/-! ## A293896.P2003207976077540596

`A001822(n+1)-char[a(n-1)+3]` with `a(0)=1`
-/

namespace A293896.P2003207976077540596
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) + 3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001822 (n + 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A293896.P2003207976077540596

namespace A293896

/-- `A001822(n+1)-char[a(n-1)+3]` -/
def P2003207976077540596.Spec : Prop :=
  ∀ n, P2003207976077540596.a n = A293896 (n + 1)

end A293896

/-! ## A293896.P13067226322942561921

`A001822(n+1)-char[A016777(n)]`
-/

namespace A293896.P13067226322942561921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001822 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A293896.P13067226322942561921

namespace A293896

/-- `A001822(n+1)-char[A016777(n)]` -/
def P13067226322942561921.Spec : Prop :=
  ∀ n, P13067226322942561921.a n = A293896 (n + 1)

end A293896

/-! ## A293896.P13733228225874118885

`A293895(n+1)-A293899(n+1)`
-/

namespace A293896.P13733228225874118885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293895 (n + 1) - A293899 (n + 1)

end

end A293896.P13733228225874118885

namespace A293896

/-- `A293895(n+1)-A293899(n+1)` -/
def P13733228225874118885.Spec : Prop :=
  ∀ n, P13733228225874118885.a n = A293896 (n + 1)

theorem P13733228225874118885.correct : P13733228225874118885.Spec := by
  intro n
  simp only [A293896, Nat.add_sub_cancel, A293896.P13733228225874118885.a, A293896.P8621911693602830936.a, A279060, A279060.P16013489652105091246.f1, A279060.P16013489652105091246.a, A293895, A293895.P5570247358903279074.f1, A293895.P5570247358903279074.a, A293899, A293899.P5665492798636299173.a, A057427, A057427.P3058147525557661423.a, A079978, A079978.P10382542118278163374.a, A000007, A000007.P6599383543502402472.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A293896

/-! ## A293896.P8621911693602830936

`A293895(2*(n+1))-A279060(n+1)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A293896

/-- `A293895(2*(n+1))-A279060(n+1)` -/
def P8621911693602830936.Spec : Prop :=
  ∀ n, P8621911693602830936.a n = A293896 (n + 1)

theorem P8621911693602830936.correct : P8621911693602830936.Spec := by
  intro n
  simp only [A293896, Nat.add_sub_cancel]

end A293896

/-! ## A293896.P11575399045984171126

`A293895(2*(n+1))-A320001(2*(n+1))`
-/

namespace A293896.P11575399045984171126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293895 (2 * (n + 1)) - A320001 (2 * (n + 1))

end

end A293896.P11575399045984171126

namespace A293896

/-- `A293895(2*(n+1))-A320001(2*(n+1))` -/
def P11575399045984171126.Spec : Prop :=
  ∀ n, P11575399045984171126.a n = A293896 (n + 1)

end A293896

/-! ## A293896.P18257760181808587898

`∑{d}[n+1, A001822(#)*A157658((n+1)/#)]`
-/

namespace A293896.P18257760181808587898
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001822 d * A157658 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A293896.P18257760181808587898

namespace A293896

/-- `∑{d}[n+1, A001822(#)*A157658((n+1)/#)]` -/
def P18257760181808587898.Spec : Prop :=
  ∀ n, P18257760181808587898.a n = A293896 (n + 1)

end A293896

/-! ## A293896.P10969188511528327889

`A001822(n+1)-A011655(A011655(n)+n)`
-/

namespace A293896.P10969188511528327889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001822 (n + 1) - A011655 (A011655 n + (n : ℤ)).toNat

end

end A293896.P10969188511528327889

namespace A293896

/-- `A001822(n+1)-A011655(A011655(n)+n)` -/
def P10969188511528327889.Spec : Prop :=
  ∀ n, P10969188511528327889.a n = A293896 (n + 1)

end A293896

/-! ## A293896.P16192245850238543736

`A293895(n+1)+A049347(n)-A002324(n+1)`
-/

namespace A293896.P16192245850238543736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293895 (n + 1) + (A049347 n - A002324 (n + 1))

end

end A293896.P16192245850238543736

namespace A293896

/-- `A293895(n+1)+A049347(n)-A002324(n+1)` -/
def P16192245850238543736.Spec : Prop :=
  ∀ n, P16192245850238543736.a n = A293896 (n + 1)

end A293896

/-! ## A293896.P14477671219427498891

`A320005(A354091(n+1))`
-/

namespace A293896.P14477671219427498891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320005 (A354091 (n + 1)).toNat

end

end A293896.P14477671219427498891

namespace A293896

/-- `A320005(A354091(n+1))` -/
def P14477671219427498891.Spec : Prop :=
  ∀ n, P14477671219427498891.a n = A293896 (n + 1)

end A293896

/-!
# A293897: Sum of proper divisors of n of the form 3k+1.

The programs for A293897, the canonical program `A293897.P15372755132286244762` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A293897 has offset 1).

The definition of A293897 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A293897.P6123625907545919341

`A078181((n+1)/3^val(n+1, 3))%(∑[n%3]+n^(n²%3))`
-/

namespace A293897.P6123625907545919341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A078181 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (3 ^ SequenceMachineLib.valuation (n + 1) 3 : ℚ))).toNat) ((∑ j ∈ Finset.range (n + 1), f1 j + n ^ (n ^ 2 % 3) : ℕ) : ℤ)

end

end A293897.P6123625907545919341

namespace A293897

/-- `A078181((n+1)/3^val(n+1, 3))%(∑[n%3]+n^(n²%3))` -/
def P6123625907545919341.Spec : Prop :=
  ∀ n, P6123625907545919341.a n = A293897 (n + 1)

end A293897

/-! ## A293897.P15372755132286244762

`A078181(n+1)%A080031(n)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A293897

/-- `A078181(n+1)%A080031(n)` -/
def P15372755132286244762.Spec : Prop :=
  ∀ n, P15372755132286244762.a n = A293897 (n + 1)

theorem P15372755132286244762.correct : P15372755132286244762.Spec := by
  intro n
  simp only [A293897, Nat.add_sub_cancel]

end A293897

/-! ## A293897.P17975156860111636373

`A078181(n+1)-(n+1)*A079978(n)`
-/

namespace A293897.P17975156860111636373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078181 (n + 1) - (n + 1 : ℤ) * A079978 n

end

end A293897.P17975156860111636373

namespace A293897

/-- `A078181(n+1)-(n+1)*A079978(n)` -/
def P17975156860111636373.Spec : Prop :=
  ∀ n, P17975156860111636373.a n = A293897 (n + 1)

end A293897

/-! ## A293897.P15567044512628012312

`∑{d}[n+1, A078181(#)*A157658((n+1)/#)]`
-/

namespace A293897.P15567044512628012312
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A078181 d * A157658 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A293897.P15567044512628012312

namespace A293897

/-- `∑{d}[n+1, A078181(#)*A157658((n+1)/#)]` -/
def P15567044512628012312.Spec : Prop :=
  ∀ n, P15567044512628012312.a n = A293897 (n + 1)

end A293897

/-! ## A293897.P17440830180172699848

`∑{d}[n+1, (#%(n+1))%A187307(#)]`
-/

namespace A293897.P17440830180172699848
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Int.tmod ((d % (n + 1) : ℕ) : ℤ) (A187307 d)

end

end A293897.P17440830180172699848

namespace A293897

/-- `∑{d}[n+1, (#%(n+1))%A187307(#)]` -/
def P17440830180172699848.Spec : Prop :=
  ∀ n, P17440830180172699848.a n = A293897 (n + 1)

end A293897

/-! ## A293897.P475096567335815393

`A078181((n+1)*3^(n%2))%(∑[n%3]+n^(n²%3))`
-/

namespace A293897.P475096567335815393
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A078181 ((n + 1) * 3 ^ (n % 2))) ((∑ j ∈ Finset.range (n + 1), f1 j + n ^ (n ^ 2 % 3) : ℕ) : ℤ)

end

end A293897.P475096567335815393

namespace A293897

/-- `A078181((n+1)*3^(n%2))%(∑[n%3]+n^(n²%3))` -/
def P475096567335815393.Spec : Prop :=
  ∀ n, P475096567335815393.a n = A293897 (n + 1)

end A293897

/-! ## A293897.P5602777919684607565

`A002262(A078181(n+1)+∑[n])`
-/

namespace A293897.P5602777919684607565
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A078181 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A293897.P5602777919684607565

namespace A293897

/-- `A002262(A078181(n+1)+∑[n])` -/
def P5602777919684607565.Spec : Prop :=
  ∀ n, P5602777919684607565.a n = A293897 (n + 1)

end A293897

/-! ## A293897.P5997130874005539002

`∑{d}[A319991(n+1), A048675(A014963(#))]`
-/

namespace A293897.P5997130874005539002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319991 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A048675 (A014963 d).toNat

end

end A293897.P5997130874005539002

namespace A293897

/-- `∑{d}[A319991(n+1), A048675(A014963(#))]` -/
def P5997130874005539002.Spec : Prop :=
  ∀ n, P5997130874005539002.a n = A293897 (n + 1)

end A293897

/-!
# A293898: Sum of proper divisors of n of the form 3k+2.

The programs for A293898, the canonical program `A293898.P15182913839119431634` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A293898 has offset 1).

The definition of A293898 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A293898.P15182913839119431634

`∑{d}[n+1, A078182(#)*A157658((n+1)/#)]`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A293898

/-- `∑{d}[n+1, A078182(#)*A157658((n+1)/#)]` -/
def P15182913839119431634.Spec : Prop :=
  ∀ n, P15182913839119431634.a n = A293898 (n + 1)

theorem P15182913839119431634.correct : P15182913839119431634.Spec := by
  intro n
  simp only [A293898, Nat.add_sub_cancel]

end A293898

/-! ## A293898.P10173875500397380862

`A078182(n+1)%A080029(A028310(n))`
-/

namespace A293898.P10173875500397380862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A078182 (n + 1)) (A080029 (A028310 n).toNat)

end

end A293898.P10173875500397380862

namespace A293898

/-- `A078182(n+1)%A080029(A028310(n))` -/
def P10173875500397380862.Spec : Prop :=
  ∀ n, P10173875500397380862.a n = A293898 (n + 1)

end A293898

/-! ## A293898.P11098673303498483877

`∑{d}[n+1, (#%(n+1))%A130481(#)]`
-/

namespace A293898.P11098673303498483877
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Int.tmod ((d % (n + 1) : ℕ) : ℤ) (A130481 d)

end

end A293898.P11098673303498483877

namespace A293898

/-- `∑{d}[n+1, (#%(n+1))%A130481(#)]` -/
def P11098673303498483877.Spec : Prop :=
  ∀ n, P11098673303498483877.a n = A293898 (n + 1)

end A293898

/-! ## A293898.P8136759589908800468

`A002262(A078182(n+1)+∑[n])`
-/

namespace A293898.P8136759589908800468
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A078182 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A293898.P8136759589908800468

namespace A293898

/-- `A002262(A078182(n+1)+∑[n])` -/
def P8136759589908800468.Spec : Prop :=
  ∀ n, P8136759589908800468.a n = A293898 (n + 1)

end A293898

/-! ## A293898.P16149069078532177518

`A004736(∑[n+1]-A078182(n+1))-1`
-/

namespace A293898.P16149069078532177518
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A078182 (n + 1)).toNat - 1

end

end A293898.P16149069078532177518

namespace A293898

/-- `A004736(∑[n+1]-A078182(n+1))-1` -/
def P16149069078532177518.Spec : Prop :=
  ∀ n, P16149069078532177518.a n = A293898 (n + 1)

end A293898

/-! ## A293898.P17835964884444328584

`A025581(A000096(n)-A078182(n+1))`
-/

namespace A293898.P17835964884444328584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (A000096 n - A078182 (n + 1)).toNat

end

end A293898.P17835964884444328584

namespace A293898

/-- `A025581(A000096(n)-A078182(n+1))` -/
def P17835964884444328584.Spec : Prop :=
  ∀ n, P17835964884444328584.a n = A293898 (n + 1)

end A293898

/-!
# A293899: Number of proper divisors of the form 3k+1 minus number of proper divisors of the form 3k+2.

The programs for A293899, the canonical program `A293899.P5665492798636299173` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A293899 has offset 1).

The definition of A293899 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A293895, A293896, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A293899.P5665492798636299173

`A293895(n+1)-A293896(n+1)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A293899

/-- `A293895(n+1)-A293896(n+1)` -/
def P5665492798636299173.Spec : Prop :=
  ∀ n, P5665492798636299173.a n = A293899 (n + 1)

theorem P5665492798636299173.correct : P5665492798636299173.Spec := by
  intro n
  simp only [A293899, Nat.add_sub_cancel]

end A293899

/-! ## A293899.P4540543651124890677

`A002324(n+1)-∑[(-2)^(∑[n]%3)]`
-/

namespace A293899.P4540543651124890677
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-2) ^ ((∑ j ∈ Finset.range (n + 1), f2 j) % 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002324 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A293899.P4540543651124890677

namespace A293899

/-- `A002324(n+1)-∑[(-2)^(∑[n]%3)]` -/
def P4540543651124890677.Spec : Prop :=
  ∀ n, P4540543651124890677.a n = A293899 (n + 1)

end A293899

/-! ## A293899.P17958155463561448273

`A002324(n+1)-A049347(n)`
-/

namespace A293899.P17958155463561448273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002324 (n + 1) - A049347 n

end

end A293899.P17958155463561448273

namespace A293899

/-- `A002324(n+1)-A049347(n)` -/
def P17958155463561448273.Spec : Prop :=
  ∀ n, P17958155463561448273.a n = A293899 (n + 1)

end A293899

/-! ## A293899.P18419476631822256229

`A002324(n+1)+A130784(n)-2`
-/

namespace A293899.P18419476631822256229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002324 (n + 1) + (A130784 n - 2)

end

end A293899.P18419476631822256229

namespace A293899

/-- `A002324(n+1)+A130784(n)-2` -/
def P18419476631822256229.Spec : Prop :=
  ∀ n, P18419476631822256229.a n = A293899 (n + 1)

end A293899

/-! ## A293899.P8462077614540200453

`∑{d}[n+1, A002324(#)*A157658((n+1)/#)]`
-/

namespace A293899.P8462077614540200453
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A002324 d * A157658 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A293899.P8462077614540200453

namespace A293899

/-- `∑{d}[n+1, A002324(#)*A157658((n+1)/#)]` -/
def P8462077614540200453.Spec : Prop :=
  ∀ n, P8462077614540200453.a n = A293899 (n + 1)

end A293899

/-! ## A293899.P16304338726878330974

`∑{d}[n+1, A000086(#)*A344617((n+1)/#)]`
-/

namespace A293899.P16304338726878330974
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000086 d * A344617 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A293899.P16304338726878330974

namespace A293899

/-- `∑{d}[n+1, A000086(#)*A344617((n+1)/#)]` -/
def P16304338726878330974.Spec : Prop :=
  ∀ n, P16304338726878330974.a n = A293899 (n + 1)

end A293899

/-! ## A293899.P15517229477709812693

`∑{d}[n+1, A049347(#-1)*A057427((n+1)/#-1)]`
-/

namespace A293899.P15517229477709812693
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A049347 (d - 1) * A057427 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A293899.P15517229477709812693

namespace A293899

/-- `∑{d}[n+1, A049347(#-1)*A057427((n+1)/#-1)]` -/
def P15517229477709812693.Spec : Prop :=
  ∀ n, P15517229477709812693.a n = A293899 (n + 1)

end A293899

/-! ## A293899.P5082637520130881117

`A057078(n+2)+A002324(n+1)`
-/

namespace A293899.P5082637520130881117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057078 (n + 2) + A002324 (n + 1)

end

end A293899.P5082637520130881117

namespace A293899

/-- `A057078(n+2)+A002324(n+1)` -/
def P5082637520130881117.Spec : Prop :=
  ∀ n, P5082637520130881117.a n = A293899 (n + 1)

end A293899

/-! ## A293899.P5082875242555226194

`A002324(n+1)-A102283(n+1)`
-/

namespace A293899.P5082875242555226194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002324 (n + 1) - A102283 (n + 1)

end

end A293899.P5082875242555226194

namespace A293899

/-- `A002324(n+1)-A102283(n+1)` -/
def P5082875242555226194.Spec : Prop :=
  ∀ n, P5082875242555226194.a n = A293899 (n + 1)

end A293899

/-! ## A293899.P1380034535003329017

`A002324(n+1)-A106510(n+1)`
-/

namespace A293899.P1380034535003329017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002324 (n + 1) - A106510 (n + 1)

end

end A293899.P1380034535003329017

namespace A293899

/-- `A002324(n+1)-A106510(n+1)` -/
def P1380034535003329017.Spec : Prop :=
  ∀ n, P1380034535003329017.a n = A293899 (n + 1)

end A293899

/-! ## A293899.P3450568667078964565

`A049347(A049347(n)+n)+A002324(n+1)`
-/

namespace A293899.P3450568667078964565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 (A049347 n + (n : ℤ)).toNat + A002324 (n + 1)

end

end A293899.P3450568667078964565

namespace A293899

/-- `A049347(A049347(n)+n)+A002324(n+1)` -/
def P3450568667078964565.Spec : Prop :=
  ∀ n, P3450568667078964565.a n = A293899 (n + 1)

end A293899

/-! ## A293899.P18176029264826854123

`A002324(n+1)-A010892(2*n+1)`
-/

namespace A293899.P18176029264826854123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002324 (n + 1) - A010892 (2 * n + 1)

end

end A293899.P18176029264826854123

namespace A293899

/-- `A002324(n+1)-A010892(2*n+1)` -/
def P18176029264826854123.Spec : Prop :=
  ∀ n, P18176029264826854123.a n = A293899 (n + 1)

end A293899

