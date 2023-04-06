DOSSIER_TEMP=/workspace/workspace/INTEGRATION_CONTINUE/tmp_folder
## Etape 1 - Preparation de l'environnement
if [ -d $DOSSIER_TEMP ]; then
    rm -rf $DOSSIER_TEMP
fi
mkdir $DOSSIER_TEMP
git clone ..... $DOSSIER_TEMP
## Etape 2 - Lancement du conteneur
docker run ......
## Etape 3 - Lancement des tests
TEST_STATUS=true
if [ -d $DOSSIER_TEMP/tests ]; then
    for ELEM_TEST in \
        $(ls $DOSSIER_TEMP/tests); do
        RET=$(curl localhost:$PORT/tests/$ELEM_TEST 2>/dev/null)
        echo "$ELEM_TEST => $RET"
        if
            [ "$RET" != "true" ]
        then
            TEST_STATUS=false
        fi
    done
    if
        [ "$TEST_STATUS" == "true" ]
    then
        exit 0
    else
        exit 1
    fi
else
    echo "Le dossier tests n'existe pas"
    exit 1
fi
